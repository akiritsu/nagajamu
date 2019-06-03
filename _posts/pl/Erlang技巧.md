---
layout: post
title: Erlang技巧
---

* content
{:toc}




作者：某文
链接：https://www.zhihu.com/question/27432214/answer/37829556
来源：知乎
著作权归作者所有，转载请联系作者获得授权。

有意思的日常小总结：
1. Erlang Shell小技巧：
v(Line). %%把Line行函数重新执行一次
v(-1). %%把前一行的函数重新执行一次

rr(Module).%%把Module中的Record加载到Shell中，【超有用】
rr("*/*"). %%把在这个子目录下的所有Module里面的Record给加载到Shell里面

2. receive after Time
这个Time最大值是50*24*60*60*1000，当时间大于50天时（这种场景真是少之又少），就会报错：
所以要把Time拆成小于最大值的列表：
 normalize(Time) –>
      Limit = 49*24*60*60,
      [Time rem Limit | lists:duplicate(Time div Limit, Limit)].

loop([T|Next]}) –>
    receive
        {Server, Ref, cancel} –>
          Server ! {Ref, ok}
        after T*1000 –>
          if Next =:= [] –>
              Server ! {done, S#state.name};
              Next =/= [] –>
              loop(Next})
          end    end.
用于把信箱中特定的消息清空：
flush_timeouts() ->
	receive
		{timeout, TRef, ?MODULE} when is_reference(TRef) ->
			flush_timeouts()
	after 0 ->
		ok
	end.

3.相比于在列表List尾加数据:
1> List = [1,2,3].
[1,2,3]
2> lists:reverse([4|lists:reverse(List)]).
[1,2,3,4]
或：
3>List++[4]
Binary可以在头或尾任意加数据：
4> Bin = <<1,2,3>>.
<<1,2,3>>
5> <<Bin/binary,4>>.
<<1,2,3,4>>
4. gen_server 的call_back函数返回值里面有一个timeout时间：如init/1的返回值：
{ok,State} | {ok,State,Timeout} | {ok,State,hibernate}
| {stop,Reason} | ignore
State = term()
Timeout = int()>=0 | infinity
Reason = term()
If an integer timeout value is provided, a timeout will occur unless a request or a message is received within Timeout milliseconds. A timeout is represented by the atom timeout which should be handled by the handle_info/2 callback function. The atom infinity can be used to wait indefinitely, this is the default value.

gen_server 设置了超时后，一旦超时触发，就会产生一条由原子timerout构成的带外信息，这个消息将由handle_info/2处理，该机制常用于处理服务器 在超时时间内未收到任何请求的情况下，用它来唤醒服务器燕执行一些指定的操作。一个众所周知的技巧：让iniit/1函尽快结束以免 start_link(....)挂起。些些同时，你也能确保服务器立即跑到指定的handle_info/2处理timeout处继续执行未完成的更加 耗时的操作。
上一节出自Eralng OTP并发实践P95：

5. 保护式(guard)中如果出错，不会crash，只能返回false:

case 1=:1 of
    true when not erlang:length(t) =:= 1 orelse true ->
          ok;
    _ ->
        error
end.
Result is: error
保护式中对t (atom) 求length会出错，本应crash掉，但因为在保护式中，默认出错后结束此保护式计算并返回false，这也是为什么保护式不接受复杂的函数，只能用erlang的bif来做的原因之一。

6.如果是把本节点上所有的Erlang节点都杀死（测试时非常有用）：
killall beam.smp

7.对于gen_server标准的进程，可以使用sys模块来对进程做你想要做的任何处理：允许自定义trace函数， 记录所有类型的事件等等。 它非常完善且可以很好地用于开发。 但
它会稍微影响处于生产 环境的系统， 因为它没有把IO重定向到远程的shell中， 而且他没有限制trace消息的速度。
如查看一个进程的数据：
sys:get_status(whereis(Server)).
8.rpc:call/4 会把使用io:format的打印字符在本地打印：
(foo@host) rpc:call('bar@host', io, format, ["~p", [test]]).
这会在foo节点上打印test。
这是因为rpc:call时会默认把本节点的group_leader传过去
所以：如果使上面的操作在远程节点上直接打印出来：
erl -sname a
(a@localhost)1> global:register_name(global_io_srv, group_leader()).
yes
erl -sname b
(b@localhost)1> net_kernel:connect(a@localhost).
true
(b@localhost)2> io:format(global:whereis_name(global_io_srv),"it should be printed on remote node~n",[]).
ok
9.使用receive达到收消息时不同的优先级：
receive ->
           {priority_msg, Data1} -> priority(Data1)
        after
           0 ->
             receive
        	{priority_msg, Data1} -> priority(Data1)
                {normal_msg, Data2} -> normal(Data2)
             end
        end.
10.如果想生成非常长的list 如：
lists:seq(1,64000000).
非常慢且一次性占用超多的内在(有可能造成进程crash)。
可以转为动态生成的方式：
-module(lazy).
-export([seq/2]).

seq(M, N) when M =< N ->
    fun() -> [M | seq(M+1, N)] end;
seq(_, _) ->
    fun () -> [] end.
1> Lists = lazy:seq(1, 64000000).
#Fun<lazy.0.26378159>
2> hd(Lists()).
1
3> Lists2 = tl(Lists()).
#Fun<lazy.0.26378159>
4> hd(Lists2()).
2


11.进程中邮箱里面的存着的messages会在每个新message来之后重新匹配一次：
start(State) ->
  {ok, spawn(fun() -> loop(State) end)}.

loop(State) ->
  receive
    first_msg when State == nil ->
      io:format("first_msg when state == nil"),
      loop(first_msg);
    second_msg when State == first_msg ->
      io:format("second_msg when state == first_msg"),
      loop(second_msg)
  end.

1> {ok, Pid} = msg_test:start(nil).
{ok,<0.53.0>}
2> Pid ! nil.
nil
3> Pid ! second_msg.
second_msg
4> Pid ! first_msg.
first_msg when state == nilfirst_msg
second_msg when state == first_msg
12. erlang:get_stacktrace()
Get the call stack back-trace (stacktrace) of the last exception in the calling process as a list of {Module,Function,Arity,Location} tuples.

得到的此进程最后一次的exception，如果你在没有发生exception处查看堆栈调用，就应该：

Trace = try throw(42) catch 42 -> erlang:get_stacktrace() end,
erlang:display(Trace)
erlang call stack

13.tail recursion 与 recursion的区别例子：
求值2的5次幂
使用非尾递归实现：
pow(x, 1) -> x;
pow(x, N) -> x * pow(x, N-1).
其调用过程：
pow(2,5)
2 * pow(2, 4)
2 * (2 * pow(2, 3))
2 * (2 * (2 * pow(2, 2)))
2 * (2 * (2 * (2 * pow(2, 1))))
2 * (2 * (2 * (2 * 2)))
32
注意到真正的计算开始是在最后的pow(2, 1)然后再一步步反推回pow(2,5)才得到的结果。
再看看尾递归的实现
tail_pow(x, 1, acc) -> x * acc;
tail_pow(x, N, acc) -> tail_pow(x, N-1, acc * x).
其调用过程：
tail_pow(2, 5, 1)
tail_pow(2, 4, 4)
tail_pow(2, 3, 8)
tail_pow(2, 2, 16)
tail_pow(2, 1, 32)
32
可以看出他的求值顺序就是从5到1的，两点一对比，可以更加理解Joe所说的：
The important thing to note about tail-recursive functions is that they can run in loops without consuming stack space. Such function are called “iterative functions.
使用以上2个例子求2的1次幂到2的64次幂之和(不要使用等比数列求和公式2的65次幂-1。。）
对比下时间会更加直观。可以这样：
timer:tc(fun() -> lists:foldl(fun(x,acc) -> pow(2,x)+ acc end, 0, lists:seq(1,64)) end).
timer:tc(fun() -> lists:foldl(fun(x,acc) -> tail_pow(2,x,1)+ acc end, 0, lists:seq(1,64)) end).
gen_server的loop就是尾递归的典范。
如果你觉得理解了，请尝试用纯erlang实现高效的lists:append/2和lists:concat/1
（不要借助于lists模块的函数和 ++ 哦）
测试用例：
mylist:append(lists:seq(1,1000000), lists:seq(1000001,2000000))
mylists:concat([begin lists:seq(1,10) end||Small <- lists:seq(1,1000000)]).
看看你会用多久～
14.如果你发现crash时的堆椎调用信息不够详细或太过详细，都可以使用
erlang:system_flag(backtrace_depth,10).
来调整，默认为8。
15.判断非空列表
case List of
    [_|_] -> do_not_empty_work(List);
    _ -> do_other_work(List)
end
16.io_lib:format/2里面的占位符自动补全功能。
1010> \{\{Year, Month, Day}, {Hour, Min, Sec\}\} = calendar:local_time(),
      lists:flatten(io_lib:format("~4..0w~2..0w~2..0w~2..0w~2..0w~2..0w",[Year, Month, Day, Hour, Min, Sec])).
"20151015184620"
17. 保护式中andalso/orelse与;/,的区别
andalso/orelse如果表达式crash掉，那么整个表达式会返回false, 后者则只是crash部分返回false.
21> F1 = fun(X)when X/0 == 0; true -> X;
21> (X) -> X+1 end.
#Fun<erl_eval.6.54118792>
22> F1(10).
10
23> F2 = fun(X)when X/0 == 0 orelse true -> X;
23> (X) -> X + 1 end.
#Fun<erl_eval.6.54118792>
24> F2(10).
11
18. 当我们在shell里面得到的结果是List，shell会尝试把结果变成a printable string，
1> [65,66,67,68,69].
"ABCDE"
如果我们只想看到原始的值，可以使用shell:strings(false).来关掉这个这个猜的功能。
19.有一些库提供源码的同时，也提供了beam的ez包，那么，你可以直接解压ez包到code:lib_dir().目录下，就可以直接当基础库使用了，不需要每次都去重编这个库。比如：rabbitmq-erlang-client。
20. 如果节点是以-heart启动的，杀掉他最安全的方式就是进入shell，然后init:stop().
21.
