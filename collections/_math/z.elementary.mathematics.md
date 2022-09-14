---
title: 初等数学定理
---

<!-- TOC -->

- [二项式定理](#%E4%BA%8C%E9%A1%B9%E5%BC%8F%E5%AE%9A%E7%90%86)
- [三角函数](#%E4%B8%89%E8%A7%92%E5%87%BD%E6%95%B0)
- [正弦定理、余弦定理、正切定理、余切定理](#%E6%AD%A3%E5%BC%A6%E5%AE%9A%E7%90%86%E4%BD%99%E5%BC%A6%E5%AE%9A%E7%90%86%E6%AD%A3%E5%88%87%E5%AE%9A%E7%90%86%E4%BD%99%E5%88%87%E5%AE%9A%E7%90%86)

<!-- /TOC -->

## 二项式定理

英语：Binomial theorem

二项式的幂的代数展开。

根据二项式定理，可以将 x+y 的任意次幂展开为和的形式，即：

$$
(x+y)^{n}={n \choose 0}x^{n}y^{0}+{n \choose 1}x^{n-1}y^{1}+{n \choose 2}x^{n-2}y^{2}+\cdots +{n \choose n-1}x^{1}y^{n-1}+{n \choose n}x^{0}y^{n},
$$

其中每个 $$ {\tbinom nk} $$ 为一个称作二项式系数的特定正整数，其等于 $$ {\frac {n!}{k!(n-k)!}} $$ 。

使用求和符号，可写作：

$$
(x+y)^{n}=\sum _{k=0}^{n}{n \choose k}x^{n-k}y^{k}=\sum _{k=0}^{n}{n \choose k}x^{k}y^{n-k}
$$

后面的表达式只是将根据 x 与 y 的对称性得出的，通过比较发现公式中的二项式系数也是对称的。

### 数学归纳法证明

当 n=1，

$$
(a+b)^{1}=\sum _{k=0}^{1}{1 \choose k}a^{1-k}b^{k}={1 \choose 0}a^{1}b^{0}+{1 \choose 1}a^{0}b^{1}=a+b
$$

假设二项展开式在 n=m 时成立。若 n=m+1，

$$
{\displaystyle {\begin{aligned}(a+b)^{m+1}&=a(a+b)^{m}+b(a+b)^{m}
\\&=a\sum _{k=0}^{m}{m \choose k}a^{m-k}b^{k}+b\sum _{j=0}^{m}{m \choose j}a^{m-j}b^{j}
\\&=\sum _{k=0}^{m}{m \choose k}a^{m-k+1}b^{k}+\sum _{j=0}^{m}{m \choose j}a^{m-j}b^{j+1}\ \ \ \ \ {\text{( 將 }}a{\text{, }}b{\text{) }}
\\&=a^{m+1}+\sum _{k=1}^{m}{m \choose k}a^{m-k+1}b^{k}+\sum _{j=0}^{m}{m \choose j}a^{m-j}b^{j+1}\ \ \ \ \ {\text{ 取出 }}k=0{\text{ 的項 }}
\\&=a^{m+1}+\sum _{k=1}^{m}{m \choose k}a^{m-k+1}b^{k}+\sum _{k=1}^{m+1}{m \choose k-1}a^{m-k+1}b^{k}\ \ \ \ \ {\text{設 }}j=k-1\\&=a^{m+1}+\sum _{k=1}^{m}{m \choose k}a^{m-k+1}b^{k}+\sum _{k=1}^{m}{m \choose k-1}a^{m+1-k}b^{k}+b^{m+1}\ \ \ \ \ {\text{取出 }}k=m+1{\text{項 }}\\&=a^{m+1}+b^{m+1}+\sum _{k=1}^{m}\left[{m \choose k}+{m \choose k-1}\right]a^{m+1-k}b^{k}\ \ \ \ \ {\text{兩者加起 }}\\&=a^{m+1}+b^{m+1}+\sum _{k=1}^{m}{m+1 \choose k}a^{m+1-k}b^{k}\ \ \ \ \ {\text{套用帕斯卡法則 }}\\&=\sum _{k=0}^{m+1}{m+1 \choose k}a^{m+1-k}b^{k}\end{aligned}}}
$$

## 三角函数

### 正弦函数、余弦函数

**正弦函数**： $$ y = \sin x $$

符号：sin，英语：Sine

数学意义：对边与斜边之比；与余割函数互为倒数。

性质：最小正周期为 2π，函数图像于原点对称，奇函数，定义域(-∞,∞)，值域[-1,1]，不动点为 0

函数图像：
![](http://math001.com/wp-content/uploads/trigonometry/sin_arcsin.gif)
特定值：

- 当 x 取 $$ \frac {(4n+1)\pi }{2} $$ （n 为整数）时，函数有最大值 1；
- 当 x 取 $$ \frac {(4n+3)\pi }{2} $$ （n 为整数）时，函数有最小值 -1；
- 当 x 取 $$ k\pi $$ (k 为整数）时，函数为 0。
- 当 x 取 $$ \frac{\pi}{6} $$ 时，函数为 $$\frac{1}{2}$$ 。
- 当 x 取 $$ \frac{\pi}{4} $$ 时，函数为 $$\frac{\sqrt{2}}{2}$$ 。
- 当 x 取 $$ \frac{\pi}{6} $$ 时，函数为 $$\frac{\sqrt{3}}{2}$$ 。

**反正弦函数**： $$y = \arcsin x$$

符号： $$\arcsin、\sin ^{-1} $$ ，英文：Arcsine

数学意义：正弦值的反函数（正弦函数不是双射函数，无反函数）

性质：奇函数，定义域[-1, 1]，值域 $$\left[-\frac\pi 2, \frac\pi 2\right]$$ ，于原点对称，严格递增

反正弦函数与反余弦函数图像：
![](http://math001.com/wp-content/uploads/trigonometry/arcsinx_arccosx.gif)

**恒等式**

用其他三角函数表示：

$$
sin\theta
= \sqrt{1 - \cos^2\theta}
= \frac{\tan\theta}{\sqrt{1 + \tan^2\theta}}
= \frac{1}{\csc\theta}
= \frac{\sqrt{\sec^2\theta - 1}}{\sec\theta}
= \frac{1}{\sqrt{1 + \cot^2\theta}}
$$

两角和公式： $$\sin (x+y)=\sin x \cos y + \cos x \sin y $$

两角差公式： $$\sin (x-y)=\sin x \cos y - \cos x \sin y$$

二倍角公式： $$\sin 2\theta = \sin \theta \cos \theta $$

三倍角公式： $$\sin 3\theta = 3 \sin \theta- 4 \sin^3\theta$$

半角公式： $$\sin \frac{\theta}{2} = \pm\, \sqrt\frac{1 - \cos \theta}{2}$$

和化积公式： $$\sin \theta + \sin \phi = 2 \sin\left( \frac{\theta + \phi}{2} \right) \cos\left( \frac{\theta - \phi}{2} \right)$$

差化积公式： $$\sin \theta - \sin \phi = 2 \cos\left({\theta + \phi \over 2}\right) \sin\left({\theta - \phi\over 2}\right)$$

万能公式： $${\displaystyle \sin \alpha ={\frac {2\tan {\frac {\alpha }{2}}}{1+\tan ^{2}{\frac {\alpha }{2}}}}}$$

余弦函数： $$ y = \cos x $$

符号：cos，英语：Cosine

数学意义：邻边与斜边之比；与正割函数互为倒数。

性质：最小正周期为 2π，函数图像于 Y 轴对称，偶函数，定义域(-∞,∞)，值域[-1,1]，不动点为 0.7390851332152...

函数图像：
![](http://math001.com/wp-content/uploads/trigonometry/cos_arecos.gif)
特定值：

- 当 x 取 $$ 2n\pi $$ （n 为整数）时，函数有最大值 1；
- 当 x 取 $$ (2n+1)\pi $$ （n 为整数）时，函数有最小值 -1；
- 当 x 取 $$ k\pi + \frac{\pi}{2}$$ (k 为整数）时，函数为 0。
- 当 x 取 $$ \frac{\pi}{6} $$ 时，函数为 $$\frac{1}{\sqrt{3}}{2}$$ 。
- 当 x 取 $$ \frac{\pi}{4} $$ 时，函数为 $$\frac{\sqrt{2}}{2}$$ 。
- 当 x 取 $$ \frac{\pi}{6} $$ 时，函数为 $$\frac{1}{2}$$ 。

**反余弦函数**： $$y = \arccos x$$

符号： $$\arccos、\cos ^{-1} $$ ，英文：Arccosine

数学意义：余弦值的反函数（余弦函数不是双射函数，无反函数）

性质：奇函数，定义域[-1, 1]，值域 $$[0, \pi]$$ ，严格递减，对称于点 $$ (0,{\frac {\pi }{2}}) $$

**恒等式**

用其他三角函数表示：

$$
\cos\theta
= \sqrt{1 - \sin^2\theta}
= \frac{1}{\sqrt{1 + \tan^2\theta}}
= \frac{\sqrt{\csc^2\theta - 1}}{\csc\theta}
= \frac{1}{\sec\theta}
= \frac{\cot\theta}{\sqrt{1 + \cot^2\theta}}
$$

两角和公式： $$\cos (x + y)=\cos x \cos y - \sin x \sin y$$

两角差公式： $$\cos (x - y)=\cos x \cos y + \sin x \sin y$$

二倍角公式： $$ \cos(2\theta )=\cos ^{2}\theta -\sin ^{2}\theta =2\cos ^{2}\theta -1=1-2\sin ^{2}\theta $$

三倍角公式： $$\cos 3\theta = 4 \cos^3\theta - 3 \cos \theta$$

半角公式： $$\cos \frac{\theta}{2} = \pm\, \sqrt\frac{1 + \cos \theta}{2}$$

幂约减公式： $$ \cos^2\theta = \frac{1 + \cos 2\theta}{2}$$ $$\cos^3\theta = \frac{3 \cos\theta + \cos 3\theta}{4}$$

和化积公式： $$\cos \theta + \cos \phi = 2 \cos\left( \frac{\theta + \phi} {2} \right) \cos\left( \frac{\theta - \phi}{2} \right)$$

差化积公式： $$ \cos \theta - \cos \phi = -2\sin\left( {\theta + \phi \over 2}\right) \sin\left({\theta - \phi \over 2}\right)$$

万能公式： $$ \cos\alpha = \frac{1 - \tan^2 \frac{\alpha}{2}}{1 + \tan ^2 \frac{\alpha }{2}} $$

### 正切函数、余切函数

**正切函数**： $$ y = \tan x $$

符号：tan，英语：Tangent

数学意义：对边与邻边之比；与余切函数互为倒数。

性质：最小正周期为 π，函数图像于原点对称，奇函数，定义域 $$\{x|x≠kπ+π/2, k∈Z\} $$ ，值域 (-∞,∞)，不动点为 0

函数图像：
![](http://math001.com/wp-content/uploads/trigonometry/tan_cot.gif)

特定值：

- 当 x 取 $$ k\pi$$ (k 为整数）时，函数为 0。
- 当 x 取 $$ \frac{\pi}{4} $$ 时，函数为 1。

**恒等式**

用其他三角函数表示：

$$
\tan\theta
= \frac{\sin\theta}{\sqrt{1 - \sin^2\theta}}
= \frac{\sqrt{1 - \cos^2\theta}}{\cos \theta}
= \frac{1}{\cot\theta}
= \sqrt{\sec^2\theta - 1}
= \frac{1}{\sqrt{\csc^2\theta - 1}}
$$

和差公式： $$\tan(\theta\pm\psi)=\frac{\tan\theta\pm\tan\psi}{1\mp\tan\theta\tan\psi}$$

二倍角公式： $$\begin{align}\tan 2\theta &= \frac{2 \tan \theta} {1 - \tan^2 \theta}\\
& = \frac{1}{1-\tan\theta}-\frac{1}{1+\tan\theta}\\
\end{align}$$

三倍角公式： $$\tan 3\theta ={\frac  {3\tan \theta -\tan ^{3}\theta }{1-3\tan ^{2}\theta }}$$

半角公式： $$\begin{align} \tan \frac{\theta}{2} &= \csc \theta - \cot \theta \\ &= \pm\, \sqrt{1 - \cos \theta \over 1 + \cos \theta} \\ &= \frac{\sin \theta}{1 + \cos \theta} \\ &= \frac{1-\cos \theta}{\sin \theta} \\ &= \frac{\cos \theta+\sin \theta-1}{\cos \theta-\sin \theta+1} \end{align}$$

**余切函数**

余切函数： $$ y = \cot x $$

符号：cot、ctg，英语：Cotangent

数学意义：邻边与对边之比；与正切函数互为倒数。

性质：最小正周期为 π，函数图像于原点对称，奇函数，定义域 $$\{x\|x≠kπ, k∈Z\} $$ ，值域 (-∞,∞)，不动点为 0.8603335901348...

- 当 x 取 $$ k\pi + \frac{\pi}{2}$$ (k 为整数）时，函数为 0。
- 当 x 取 $$ \frac{\pi}{4} $$ 时，函数为 1。

**恒等式**

用其他三角函数表示：

$$
\cot\theta
= {\sqrt{1-\sin ^{2}\theta } \over \sin \theta}
= {\cos \theta  \over {\sqrt  {1-\cos ^{2}\theta }}}
= {1 \over \tan \theta }
= {1 \over {\sqrt  {\sec ^{2}\theta -1}}}
= {\sqrt  {\csc ^{2}\theta -1}}
$$

和差角公式： $$\cot(\theta \pm \psi )={\frac  {\cot \theta \cot \psi \mp 1}{\cot \psi \pm \cot \theta }}$$

半角公式： $${\begin{aligned}\cot {\frac  {\theta }{2}}&=\csc \theta +\cot \theta \\&=\pm \,{\sqrt  {1+\cos \theta  \over 1-\cos \theta }}\\&={\frac  {\sin \theta }{1-\cos \theta }}\\&={\frac  {1+\cos \theta }{\sin \theta }}\\&={\frac  {\cos \theta -\sin \theta +1}{\cos \theta +\sin \theta -1}}\end{aligned}}$$

二倍角公式： $${\displaystyle {\begin{aligned}\cot 2\theta &={\frac {\cot ^{2}\theta -1}{2\cot \theta }}\\&={\frac {1}{\cot \theta -1}}-{\frac {1}{\cot \theta +1}}\\\end{aligned}}}$$

三倍角公式： $$\cot 3\theta ={\frac  {\cot ^{3}\theta -3\cot \theta }{3\cot ^{2}\theta -1}}$$

### 正割函数、余割函数

在单位圆上，正割函数位于割线上，因此将此函数命名为正割函数。

**正割函数**： $$ y = \sec x $$

符号：sec，英语：secant

数学意义：斜边与邻边之比；与余弦函数互为倒数。

函数图像：![](http://math001.com/wp-content/uploads/trigonometry/secx.gif)

**余割函数**： $$ y = \csc x $$

符号：csc，英语：cosecant

数学意义：斜边与对边之比；与正弦函数互为倒数。

函数图像：![](http://math001.com/wp-content/uploads/trigonometry/cscx.gif)

### 正矢函数、余矢函数、半正矢函数、半余矢函数

**正矢函数**

符号：versin，英语：Versine、Versed sine

定义： $$versin\theta = 2\sin^2\left(\frac{\theta}{2}\right) = 1 - \cos \theta$$

**余矢函数**

符号：coversin、cvs，英语：Coversed sine、Coversine

定义： $$coversin\theta =versin\left({\frac{\pi }{2}}-\theta \right)=1-\sin \theta $$

**半正矢函数**

符号：haversin，英语：Haversed sine、Haversine

定义： $$haversin\theta ={\frac  {versin\theta }{2}}={\frac  {1-\cos \theta }{2}}$$

**半余矢函数**

符号：hacoversin，英语：Hacoversed sine、Hacoversine

定义： $$hacoversin\theta ={\frac  {coversin}\theta}{2}}={\frac  {1-\sin \theta }{2}}$$

## 正弦定理、余弦定理、正切定理、余切定理

**正弦定理**

对于任意 $$ \triangle ABC，a、b、c $$ 分别为 $$ \angle A、\angle B、\angle C $$ 的对边， $$ R $$ 为 $$ \triangle ABC $$ 的外接圆半径，则有： $$ {\frac {a}{\sin \angle A}}={\frac {b}{\sin \angle B}}={\frac {c}{\sin \angle C}}=2R$$

**余弦定理**

余弦定理（也叫做余弦公式）是勾股定理的扩展： $$c^2=a^2+b^2-2ab\cos C$$

也表示为： $$\cos C=\frac{a^2+b^2-c^2}{2ab}$$

余弦定律用于在一个三角形的两个边和一个角已知时确定第三边。

**正切定理**

在平面三角形中，任意两条边的和除以第一条边减第二条边的差所得的商等于这两条边的对角的和的一半的正切除以第一条边对角减第二条边对角的差的一半的正切所得的商。

即： $$ \frac{a-b}{a+b}=\frac{\mathrm{tan}\, \frac{\alpha -\beta }{2}}{\mathrm{tan}\, \frac{\alpha +\beta }{2}} $$

**余切定理**

某个角一半的余切等于半周长减去这个角所对的边长再除以三角形的内切圆半径。

假设 $$ \alpha ,\beta ,\gamma $$ 是三角形的三个内角，a, b, c 是与之对应的三个对边，若 $$ {\displaystyle \zeta ={\sqrt {\frac {1}{s}}(s-a)(s-b)(s-c)}} $$ （这个三角形的内切圆半径），其中： $${\displaystyle s={\frac {a+b+c}{2}}}$$ （s 就是三角形的半周长）。

那么，余切定理告诉我们： $$\cot{ \frac{\alpha}{2 }} = \frac{s-a}{\zeta }$$

以及： $${\displaystyle {\frac {\cot(\alpha /2)}{s-a}}={\frac {\cot(\beta /2)}{s-b}}={\frac {\cot(\gamma /2)}{s-c}}}$$
