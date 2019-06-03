% 13.単一化
declare X Y Z W
X = [a Z]
Y = [W b]
X = Y
{Browse X#Y#Z#W}

/* x = ['a' z], y = [w 'b'], x = y
をベクトルを含む連立方程式と見なすと、それをどのように解いても同じ解が得られるのは明らか。*/

/* 注：単一化をどのような順序で行っても結果が同じになるというのは、ある連立方程式をどのような順番（手順）で解いても同じ結果になるということにたぶん含まれていて、それは「等しいものは等しいものに置き換えられる」という参照透明性が前提となる。このことから、単一代入変数であること（値可変変数でないこと）が順序独立性のために必要であるということがわかる。*/
