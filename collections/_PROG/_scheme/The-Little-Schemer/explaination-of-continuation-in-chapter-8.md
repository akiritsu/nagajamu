Let's step through an example; maybe that will help. :-) For simplicity, I'm just going to use listas the collector/continuation, which will just return a list with the arguments to the continuation.

```scheme
(multirember&co 'foo '(foo bar) list)
At the start,a = 'foo
lat = '(foo bar)
col = list
At the first iteration, the (eq? (car lat) a) condition matches, since lat is not empty, and the first element of lat is 'foo. This sets up the next recursion to multirember&co thusly:a = 'foo
lat = '(bar)
col = (lambda (newlat seen)
        (list newlat (cons 'foo seen))
At the next iteration, the else matches: since lat is not empty, and the first element of lat is 'bar (and not 'foo). Thus, for the next recursion, we then have:a = 'foo
lat = '()
col = (lambda (newlat seen)
        ((lambda (newlat seen)
           (list newlat (cons 'foo seen)))
         (cons 'bar newlat)
         seen))
For ease of human reading (and avoid confusion), we can rename the parameters (due to lexical scoping), without any change to the program's semantics:col = (lambda (newlat1 seen1)
        ((lambda (newlat2 seen2)
           (list newlat2 (cons 'foo seen2)))
         (cons 'bar newlat1)
         seen1))
Finally, the (null? lat) clause matches, since lat is now empty. So we call(col '() '())
which expands to:((lambda (newlat1 seen1)
   ((lambda (newlat2 seen2)
      (list newlat2 (cons 'foo seen2)))
    (cons 'bar newlat1)
    seen1))
 '() '())
which (when substituting newlat1 = '() and seen1 = '()) becomes((lambda (newlat2 seen2)
   (list newlat2 (cons 'foo seen2)))
 (cons 'bar '())
 '())
or (evaluating (cons 'bar '()))((lambda (newlat2 seen2)
   (list newlat2 (cons 'foo seen2)))
 '(bar)
 '())
Now, substituting the values newlat2 = '(bar) and seen2 = '(), we get(list '(bar) (cons 'foo '()))
or, in other words,(list '(bar) '(foo))
to give our final result of'((bar) (foo))
```
