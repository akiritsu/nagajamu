---
title: LaTeX 插入数学公式技巧
---
目录：
<!-- TOC -->

- [大括号（分段函数、公式组）](#%E5%A4%A7%E6%8B%AC%E5%8F%B7%E5%88%86%E6%AE%B5%E5%87%BD%E6%95%B0%E5%85%AC%E5%BC%8F%E7%BB%84)
- [矩阵](#%E7%9F%A9%E9%98%B5)

<!-- /TOC -->
## 大括号（分段函数、公式组）

### 分段函数

```latex
$$ f(x)=\left\{
\begin{aligned}
x & = & \cos(t) \\
y & = & \sin(t) \\
z & = & \frac xy
\end{aligned}
\right.
$$
```
$$ f(x)=\left\{
\begin{aligned}
x & = & \cos(t) \\
y & = & \sin(t) \\
z & = & \frac xy
\end{aligned}
\right.
$$

### 公式组（右对齐）

```latex
$$
\left\{  
\begin{array}{**rcl**}
  IF_{k}(\hat{t}_{k,m})=IF_{m}(\hat{t}_{k,m}), & \\
  IF_{k}(\hat{t}_{k,m}) \pm h= IF_{m}(\hat{t}_{k,m}) \pm h  , &\\
  \left |IF'_{k}(\hat{t}_{k,m} - IF'_{m}(\hat{t}_{k,m} \right |\geq d , &   
\end{array}
\right. 
$$
```
$$
\left\{  
\begin{array}{**rcl**}
  IF_{k}(\hat{t}_{k,m})=IF_{m}(\hat{t}_{k,m}), & \\
  IF_{k}(\hat{t}_{k,m}) \pm h= IF_{m}(\hat{t}_{k,m}) \pm h  , &\\
  \left |IF'_{k}(\hat{t}_{k,m} - IF'_{m}(\hat{t}_{k,m} \right |\geq d , &   
\end{array}
\right. 
$$


### 公式组（左右两部分）

```latex
$$
\left\{  
  \begin{array}{**lr**}  
  x=\dfrac{3\pi}{2}(1+2t)\cos(\dfrac{3\pi}{2}(1+2t)), &  \\  
  y=s, & 0\leq s\leq L,|t|\leq1.\\  
  z=\dfrac{3\pi}{2}(1+2t)\sin(\dfrac{3\pi}{2}(1+2t)), &    
  \end{array}  
\right.  
$$
```
$$
\left\{  
  \begin{array}{**lr**}  
  x=\dfrac{3\pi}{2}(1+2t)\cos(\dfrac{3\pi}{2}(1+2t)), &  \\  
  y=s, & 0\leq s\leq L,|t|\leq1.\\  
  z=\dfrac{3\pi}{2}(1+2t)\sin(\dfrac{3\pi}{2}(1+2t)), &    
  \end{array}  
\right.  
$$

## 矩阵

**关键字**：<br>
无括号：matrix，圆括号：pmatrix，方括号：bmatrix，大括号：Bmatrix，行列式：vmatrix，范数“矩阵”：Vmatrix

**基本二维矩阵**：
```latex
$$
\begin{bmatrix}
a & b \\
c & d
\end{bmatrix}
$$
```
$$
\begin{bmatrix}
a & b \\
c & d
\end{bmatrix}
$$

**n乘n矩阵**：
```latex
$$
\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\
\vdots & \ddots & \vdots \\
a_{n1} & \cdots & a_{nn}
\end{bmatrix}
$$
```
$$
\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\
\vdots & \ddots & \vdots \\
a_{n1} & \cdots & a_{nn}
\end{bmatrix}
$$

**上三角矩阵**（无元素空置即可）

```latex
$$
\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\
 & \ddots & \vdots \\
& \ & a_{nn}
\end{bmatrix}
$$
```
$$
\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\
 & \ddots & \vdots \\
& \ & a_{nn}
\end{bmatrix}
$$