---
layout: post
title: 编译器的inline策略
---

* content
{:toc}



作者：比目鱼
链接：https://www.zhihu.com/question/65633138/answer/233145555
来源：知乎
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

总之inline只是对编译器的一个建议，建议编译器在可能的情况下在调用点展开函数体，但是是否展开完全取决于编译器自己. 另外即使没有声明成inline的函数也可能因为被优化而展开。有的编译器甚至直接忽略inline关键字.C++编译器对inline的处理基本就是遵循上面的原则，但是遵循ISO或者GNU标准的C编译器对inline的处理就略微诡异了.用Clang尝试编译类似如下一段C代码（不是C++）. 当编译优化设置为-O0时，链接器报告找不到符号foo，当优化设置为-O2时，却能正常编译. inline int foo(int a, int b) { return a + b; }

int main(int argc, char *argv[])
{
    return foo(1, 2);
}
这是为什么？从C标准文档ISO/IEC 9899可以找到答案.1. ANSI C, ISO/IEC C89/C90：标准中没有inline关键字.2. GNU C89/C90：(a) static inline：函数名标识符的作用域为当前编译单元（translation unit），允许其他编译单元中有重名定义. 这里的inline建议编译器，函数在被调用时可以直接展开函数体，但是否展开取决于编译器.（譬如，如果优化级别为-O0，则必须按函数地址调用，此时编译器会忽略inline请求，将函数编译为普通函数；或者，出现了递归调用，编译器也无法内联这个函数）(b) inline：在当前编译单元内，和static inline语义相同，都是建议编译器在当前编译单元内展开函数体（是否展开取决于编译器）. 但同时编译器会对该函数生成一份普通函数的代码，在其他编译单元内可以调用，与普通的extern函数调用无异.(c) extern inline：相当诡异. 这样的函数定义只为内联而提供. 如果强行用普通函数调用方式调用该函数（譬如，优化级别为-O0，或者按函数指针调用），则链接器会认为存在另一个同名的普通函数. 如果没有这个同名普通函数的定义，则链接器会报告找不到符号.3. ISO/IEC C99/C11：(a) static inline：和GNU C89/C90中的语义完全相同.(b) inline：很类似GNU C89/C90中的extern inline. 标准文档中的解释相当晦涩：允许（但不要求）编译器在当前编译单元内展开函数体（原文的描述是“相比正常的函数调用机制，让内联函数调用尽可能快”，而文档下面的脚注中提到，可能的选择是“内联替换”，见ISO/IEC 9899:1999或ISO/IEC 9899:2011），是否内联由编译器设计者自行决定，同时也允许外部存在同名的普通函数定义. 经测试最新版本的Clang和GCC在标准-std=c99和-std=c11下会在可以内联的情况下（例如优化级别为-O2）采用内联版本.但标准文档中同时也规定了，若在函数原型中加入extern，则相应的内联函数定义成为所谓的“外部定义”，行为和GNU C89/C90的inline相同：在当前编译单元中建议编译器展开函数体，同时生成一份普通函数的代码，在其他编译单元中也可调用.(c) extern inline：标准文档中未见extern inline的定义.4. GNU C99/C11：采用与ISO/IEC C99/C11相同的语义.最新版本的Clang和GCC默认均采用GNU C11标准，因此会出现不优化代码时找不到内联函数符号的错误.




编译器内部会有一个阈值，在编译一个函数的时候，会计算每条语句所贡献的值（这个值编译器内部有一个映射算法），加完看是否超过，超过就不做inline，不超过就inline。当然这中间还有一些check看看是否能inline之类的。不同的优化选项这个值会不一样，来tradeoff 性能和空间。这个是llvm的代码，参数就是这个阈值，这个值是可以变化的。Pass *llvm::createFunctionInliningPass(int Threshold) {  return new SimpleInliner(llvm::getInlineParams(Threshold));}

作者：陆明非
链接：https://www.zhihu.com/question/65633138/answer/233899689
来源：知乎
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

