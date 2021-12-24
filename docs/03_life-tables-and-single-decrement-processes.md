# Life tables and single decrement processes



:::{.rmdimportant}
**KEY CONCEPT**

A **life table** is one of the most important demographic tools for summarizing the mortality experience of a cohort.
:::

### Cohort life tables with lifeline data {.unnumbered}

Since a life table summarizes the experience of a cohort, let's start by building a life table from the lifelines of a small hypothetical cohort based actual people born January 1, 1800^[This section uses the example from PHG pgs. 39-41].



Below, a lifelines plot like we drew in [week 1](#person-periods), except time is measured from age $x = 0$, and everybody in this real birth cohort was born January 1, 1800^[From PHG Figure 3.1]:

<img src="03_life-tables-and-single-decrement-processes_files/figure-html/cohort_lifelines_plot-1.png" width="672" />
<br><br>

<details>
<summary>
Number $l_0$ of live births (i.e., number surviving to exact age $x = 0$)?</summary>
$l_{0} = 10$
</details>

<details>
<summary>Number of deaths ${}_{n}d_{x}$ between ages $x = 0$ and $x+n = 1$?</summary>
${}_{1}d_{0} = 1$
</details>

<details>
<summary>
Number $l_x$ still alive at exact age $x = 1$?</summary>
$l_{1} = l_0 - {}_{1}d_{0} = 9$

So in general:

$$l_{x+n} = l_x - {}_{n}d_{x}$$
</details>

<details>
<summary>
Probability of death ${}_{n}q_{x}$ between ages $x = 0$ and $x+n = 1$?</summary>
$$
{}_{1}q_{0} = \frac{{}_{1}d_{0}}{l_0}
             = 0.1
$$

So in general:

$${}_{n}q_{x} = \frac{{}_{n}d_{x}}{l_x}$$
</details>

<details>
<summary>
Probability of survival ${}_{n}p_{x}$ between ages $x = 0$ and $x+n = 1$?</summary>
$$
{}_{1}p_{0} = l_1 / l_0
              = 1 - {}_{1}q_{0}
              = 0.9
$$

For general $x$:

$${}_{n}p_{x} = l_{x+n} / l_x = 1 - {}_{n}q_{x}$$
</details>

<details>
<summary>Number of person-years ${}_{n}A_x$ lived by those who died between ages $x$ and $x+n$?</summary>
For general $x$:

$$
{}_{n}A_x =
  \sum_{i \in \textsf{dead}_x} \left(\textsf{(Exact age at death)}_i - x\right)
$$

But for these $x = 0$ (i.e., infants):

$$\begin{align}
{}_{1}A_0
  &= \sum_{i \in \textsf{dead}_0} \left(\textsf{(Exact age at death)}_i - 0\right) \\
  &= \sum_{i \in \textsf{dead}_0} \textsf{(Exact age at death)}_i \\
  &= 0.07
\end{align}$$
</details>

<details>
<summary>What is the average number of person-years lived ${}_{n}a_x$ by those who died between ages $x$ and $x+n$?<br>
**Hint:** It's the average of a similar figure we've seen already, thus a ratio of that sum to a count we've seen already.</summary>
For general age group starting at exact age $x$:

$${}_{n}a_x = \frac{{}_{n}A_x}{{}_{n}d_x}$$

But for these $x = 0$ (i.e., infants):

$$
{}_{1}a_0
  = \frac{{}_{1}A_0}{{}_{1}d_0}
  = \frac{
    0.07
  }{
    1
  }
  = 0.07
$$
</details>

<details>
<summary>
Person-years lived ${}_{n}L_{x}$ between ages $x = 0$ and $x+n = 1$?</summary>
$$\begin{align}
  {}_{n}L_{x}
    &= \begin{pmatrix}
      \textsf{Person-years lived} \\
      \textsf{between ages } x \textsf{ and } x+n \\
      \textsf{among survivors to age } x+n
    \end{pmatrix}
    \times \begin{pmatrix}
      \textsf{Width of } [x,x+n)\\
      \textsf{age interval}
    \end{pmatrix}
    + \begin{pmatrix}
      \textsf{Person-years lived} \\
      \textsf{between ages } x \textsf{ and } x+n \\
      \textsf{among those who died} \\
      \textsf{before age } x+n
    \end{pmatrix} \\
    &=  \begin{pmatrix}
      \textsf{Survivor count} \\
      \textsf{weighted by} \\
      \textsf{interval width} \\
    \end{pmatrix}
    + \begin{pmatrix}
      \textsf{Fractional person-years} \\
      \textsf{lived by the now deceased}
    \end{pmatrix} \\
    &= \left(l_{x+n} \times n\right) + {_n}_{}A_x
\end{align}$$

This should look familiar to our expression of person-years from [week 1](#person-periods): $PY[0,1] = \sum_1^P N_i \times \Delta_i$

So for these 1800 birth cohort infants:

$$\begin{align}
{}_{1}L_0
  &= l_1 \times 1
  + \sum_{i \in \textsf{dead}_0} \left(\textsf{(Exact age at death)}_i - 0\right) \\
  &= l_1  + \sum_{i \in \textsf{dead}_0} \textsf{(Exact age at death)}_i \\
  &= 9 + 0.07 \\
  &= 9.07
\end{align}$$

Recall that ${}_{n}a_x = \frac{{}_{n}A_x}{{}_{n}d_x}$

Thus ${}_{n}A_x = {}_{n}a_x \times {}_{n}d_x$

Thus $L_x = l_{x+n} \times n + {_n}_{}a_x \times {}_{n}d_x$

This becomes useful when doing **period life tables** because:

* You can't calculate ${}_{n}A_x$ directly
* So you can't calculate $L_x$ from ${}_{n}A_x$ directly
* So you borrow values from a model or another population
* But you want ${}_{n}A_x$ estimates that aren't contaminated by another population's size
<br><br>
</details>

<details>
<summary>Person-years $T_x$ lived above exact age $x = 0$?</summary>
$$\begin{align}
  T_0
    &= \textsf{Total person years lived from birth to death} \\
    &= \sum_i \textsf{(Exact age at death)}_i \\
    &= \sum_{a=0}^\infty {}_{n}L_a
\end{align}$$

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**
<details>
<summary>Okay that was too easy, what about $T_{20}$? Let's do it with R code.</summary>
More generally:

$$T_x = \sum_{a=x}^\infty {}_{n}L_a$$

Easy to think about, but funky to do in practice.

Let's walk through how you'd do it with R code.

Say you have a cohort life table in a `data.frame` with two columns:

* `x`: Exact age $x$ at the beginning of each age interval
* `L`: Person-years ${}_{n}L_x$ lived in the age interval

It looks like this:

<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; '>
 <thead>
  <tr>
   <th style="text-align:right;"> x </th>
   <th style="text-align:right;"> L </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 9.07 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 32.22 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 40.00 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 76.41 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 62.12 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 60.00 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 60.00 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 59.60 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;"> 36.96 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 9.48 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;">  </td>
  </tr>
</tbody>
</table>

To create a column `T` storing $T_x$ values, do this (assuming you have `dplyr` installed and loaded):


```r
saving_you_some_time <- cohort_lt_xL %>%
  dplyr::mutate(
    T = rev(L) %>% # Reverse person-years column so sum back to x = 0
      dplyr::coalesce(0) %>% # Replace the missing value at x = 80 so you can...
      cumsum() %>% # ... take the cumulative sum of person years
      rev() # Finally, reverse the cumulative sum back in age order
  )
saving_you_some_time %>%
  knitr::kable() %>%
  kableExtra::kable_paper("hover", full_width = FALSE, position = "left")
```

<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; '>
 <thead>
  <tr>
   <th style="text-align:right;"> x </th>
   <th style="text-align:right;"> L </th>
   <th style="text-align:right;"> T </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 9.07 </td>
   <td style="text-align:right;"> 445.86 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 32.22 </td>
   <td style="text-align:right;"> 436.79 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 40.00 </td>
   <td style="text-align:right;"> 404.57 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 76.41 </td>
   <td style="text-align:right;"> 364.57 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 62.12 </td>
   <td style="text-align:right;"> 288.16 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 60.00 </td>
   <td style="text-align:right;"> 226.04 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 60.00 </td>
   <td style="text-align:right;"> 166.04 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 59.60 </td>
   <td style="text-align:right;"> 106.04 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;"> 36.96 </td>
   <td style="text-align:right;"> 46.44 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 9.48 </td>
   <td style="text-align:right;"> 9.48 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;"> 0.00 </td>
  </tr>
</tbody>
</table>

You're welcome.
</details>

:::
</details>

<details>
<summary>What is the life expectancy at birth, i.e., life expectancy $e_x^0$ at age $x = 0$?<br>
**Hint:** It's the per-survivor average of a value we've already calculated, so it's a ratio of that value and another one we've already calculated.</summary>
$$\begin{align}
  e_0^0
    &= \frac{
      \textsf{Person-years lived after age } x=0 \textsf{ (i.e., total person-years)}
    }{
      \textsf{People alive after age } x=0 \textsf{ (i.e., live births)}
    } \\
    &= T_0/l_0
    = 445.86
    / 10
    = 44.586
\end{align}$$

So for general exact age $x$:

$$e_x^0 = T_x/l_x$$

</details>

<details>
<summary>What is the mortality rate ${}_{n}m_x$ in the cohort between ages $x$ and $x+n$</summary>
* This is just a cohort age-specific rate
* Using life table notation, it is:

$$
{}_{1}m_0
  = {}_{1}d_0 / {}_{1}L_0
  = 1
  / 9.07
  = 0.1102536
$$
</details>
<br><br>

<center>🤯🤯🤯</center>

**QUESTION:** Why did we just learn all of those values?

**ANSWER:** Three reasons:

1. I'm evil
2. Their relationships and values help create **period life tables**
3. Their values (and operations on them) are interesting in and of themselves

* We'll see examples of those last two points in later sections.
* You've already seen ample evidence of the first point.

Now let's put all these values together into our first cohort life table:

<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; '>
 <thead>
  <tr>
   <th style="text-align:right;"> $x$ </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $x+n$ </th>
   <th style="text-align:right;"> $l_x$ </th>
   <th style="text-align:right;"> ${}_{n}d_x$ </th>
   <th style="text-align:right;"> ${}_{n}q_x$ </th>
   <th style="text-align:right;"> ${}_{n}p_x$ </th>
   <th style="text-align:right;"> $L_x$ </th>
   <th style="text-align:right;"> $T_x$ </th>
   <th style="text-align:right;"> $e_x^0$ </th>
   <th style="text-align:right;"> ${}_{n}m_x$ </th>
   <th style="text-align:right;"> ${}_{n}a_x$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.1000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.9000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 9.07 </td>
   <td style="text-align:right;border-left:1px solid;"> 445.86 </td>
   <td style="text-align:right;border-left:1px solid;"> 44.58600 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.1102536 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.07 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 4 </td>
   <td style="text-align:right;border-left:1px solid;"> 5 </td>
   <td style="text-align:right;border-left:1px solid;"> 9 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.1111111 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.8888889 </td>
   <td style="text-align:right;border-left:1px solid;"> 32.22 </td>
   <td style="text-align:right;border-left:1px solid;"> 436.79 </td>
   <td style="text-align:right;border-left:1px solid;"> 48.53222 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0310366 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.22 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;border-left:1px solid;"> 5 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 8 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 1.0000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 40.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 404.57 </td>
   <td style="text-align:right;border-left:1px solid;"> 50.57125 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0000000 </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 20 </td>
   <td style="text-align:right;border-left:1px solid;"> 8 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.1250000 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.8750000 </td>
   <td style="text-align:right;border-left:1px solid;"> 76.41 </td>
   <td style="text-align:right;border-left:1px solid;"> 364.57 </td>
   <td style="text-align:right;border-left:1px solid;"> 45.57125 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0130873 </td>
   <td style="text-align:right;border-left:1px solid;"> 6.41 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 30 </td>
   <td style="text-align:right;border-left:1px solid;"> 7 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.1428571 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.8571429 </td>
   <td style="text-align:right;border-left:1px solid;"> 62.12 </td>
   <td style="text-align:right;border-left:1px solid;"> 288.16 </td>
   <td style="text-align:right;border-left:1px solid;"> 41.16571 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0160979 </td>
   <td style="text-align:right;border-left:1px solid;"> 2.12 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 40 </td>
   <td style="text-align:right;border-left:1px solid;"> 6 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 1.0000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 60.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 226.04 </td>
   <td style="text-align:right;border-left:1px solid;"> 37.67333 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0000000 </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 50 </td>
   <td style="text-align:right;border-left:1px solid;"> 6 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 1.0000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 60.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 166.04 </td>
   <td style="text-align:right;border-left:1px solid;"> 27.67333 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0000000 </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 60 </td>
   <td style="text-align:right;border-left:1px solid;"> 6 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.1666667 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.8333333 </td>
   <td style="text-align:right;border-left:1px solid;"> 59.60 </td>
   <td style="text-align:right;border-left:1px solid;"> 106.04 </td>
   <td style="text-align:right;border-left:1px solid;"> 17.67333 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0167785 </td>
   <td style="text-align:right;border-left:1px solid;"> 9.60 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 70 </td>
   <td style="text-align:right;border-left:1px solid;"> 5 </td>
   <td style="text-align:right;border-left:1px solid;"> 2 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.4000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.6000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 36.96 </td>
   <td style="text-align:right;border-left:1px solid;"> 46.44 </td>
   <td style="text-align:right;border-left:1px solid;"> 9.28800 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0541126 </td>
   <td style="text-align:right;border-left:1px solid;"> 3.48 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 80 </td>
   <td style="text-align:right;border-left:1px solid;"> 3 </td>
   <td style="text-align:right;border-left:1px solid;"> 3 </td>
   <td style="text-align:right;border-left:1px solid;"> 1.0000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.0000000 </td>
   <td style="text-align:right;border-left:1px solid;"> 9.48 </td>
   <td style="text-align:right;border-left:1px solid;"> 9.48 </td>
   <td style="text-align:right;border-left:1px solid;"> 3.16000 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.3164557 </td>
   <td style="text-align:right;border-left:1px solid;"> 3.16 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
  </tr>
</tbody>
</table>

## Period life tables

:::{.rmdimportant}
**KEY CONCEPTS**

> A **period life table** shows what *would happen* to a cohort *if* it were subjected for all of its life to the mortality conditions of that period.
> 
> -- PHG pg. 42 (bolding added)

| Cohort life table | Period life table |
| ----------------- | ----------------- |
| Actual cohort | Synthetic (aka hypothetical) cohort  |
| *Records* cohort's *real* experience | *Model* of what *would* happen |

:::

<details>
<summary>Why create a period life table, even if you have cohort data?</summary>
* Cohort data is unavailable:
    * **Example:** By law, full individual-level U.S. Census records only available starting 72 years ago, reducing sample size for many sub-populations
* Cohort data is outdated:
    * **Example:** ${}_{1}q_{80}$ constructed this year requires data from people born 1941
* Cohort data is incomplete or erroneous:
    * **Example:** Employee termination records for large front line workforce tend to be missing or incorrectly logged
</details>
<br><br>

<details>
<summary>Which of the values we've covered so far would be hard to come by in classic demographic data. Why?</summary>
* Total or average person-years lived in age intervals (don't have exact person years)
* Probabilities of death or survival (don't have cohort data or separated count data)
* Person-years lived in age interval (but can estimate using [week 2](#estimating-person-periods) methods)
</details>
<br><br>

### The central importance of ${}_{n}q_x$ and ${}_{n}a_x$ {.unnumbered}

Once you know ${}_{n}q_x$, you can calculate the rest of life table unknowns.

Recall that:

* ${}_{n}q_x = {}_{n}d_x / l_x$ (unavailable in period data)
* ${}_{n}L_x = n \cdot l_{x+n} + {}_{n}a_x \cdot {}_{n}d_x$ (approximated from period data, but we want synthetic cohort rates under period mortality conditions)
* ${}_{n}m_x = {}_{n}d_x / {}_{n}L_x$ (measured directly from period data)

PHG pg. 43 exploits these equations to derive ${}_{n}q_x$ from two life table columns $\color{dodgerblue}{\textsf{available in period data}}$ and one unknown parameter $\color{darkorange}{\textsf{unavailable in period data}}$:

\begin{equation}
  \color{darkorange}{{}_{n}q_x} = \frac{
    \color{dodgerblue}{n} \cdot \color{dodgerblue}{{}_{n}{m_x}}
  }{
    1 + \left(
      \color{dodgerblue}{n} - \color{darkorange}{{}_{n}a_x}
    \right)\color{dodgerblue}{{}_{n}{m_x}}
  }
  (\#eq:nqxperiod)
\end{equation}

If we can estimate ${}_{n}a_x$, we can estimate ${}_{n}q_x$ and the rest of the period life table

So we need some...

## Strategies for ${}_{n}m_x$ $\rightarrow$ ${}_{n}q_x$ conversion

### Direct observation

* You can use exact ages at death to estimate ${}_{n}a_x$
* Yet the values are distorted by within-interval age distribution
* So usually this is a bad idea

### Graduation of the age-specific mortality rate (${}_{n}m_x$) function

* If you know how ${}_{n}m_x$ is changing within an age interval, you can estimate the distribution of deaths within the interval.
* Graduation methods are based on estimates of the slopes of ${}_{n}m_x$ and age structure ${}_{n}C_x$ across age groups, which serve as proxies for the slopes of ${}_{n}m_x$ within age groups.

Let's demonstrate the application of a graduation method [@keyfitz1990world] using the R package `demogR`, including it's `goodman` data set presenting aggregate vital registration data for women from Venezuela (1965), Madagascar (1966), and the United States (1967).

From the package documentation:

> For type="kf", the default, the first two values of nax estimated using Keyfitz and Fleiger's (1990) regression method. For type="cd", Coale and Demeny's method (1983) is used. The Coale-Demeny method uses different coefficients depending on the level of early mortality. As a result, this method may work better for high-mortality populations.

We'll build a life table for Venezuela 1965. In your problem set for this week, you'll compare the results of this graduation-based life table to one [Using rules of thumb] below.


```r
data(goodman)
vlt <- with(goodman, life.table(x = age, nKx = ven.nKx, nDx = ven.nDx))
vlt %>%
  knitr::kable() %>%
  kableExtra::kable_paper("hover", full_width = FALSE, position = "left")
```

<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; '>
 <thead>
  <tr>
   <th style="text-align:right;"> x </th>
   <th style="text-align:right;"> nax </th>
   <th style="text-align:right;"> nMx </th>
   <th style="text-align:right;"> nqx </th>
   <th style="text-align:right;"> lx </th>
   <th style="text-align:right;"> ndx </th>
   <th style="text-align:right;"> nLx </th>
   <th style="text-align:right;"> Tx </th>
   <th style="text-align:right;"> ex </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.1483 </td>
   <td style="text-align:right;"> 0.0461 </td>
   <td style="text-align:right;"> 0.0443 </td>
   <td style="text-align:right;"> 1.0000 </td>
   <td style="text-align:right;"> 0.0443 </td>
   <td style="text-align:right;"> 0.9622 </td>
   <td style="text-align:right;"> 67.70 </td>
   <td style="text-align:right;"> 67.70 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 1.5000 </td>
   <td style="text-align:right;"> 0.0057 </td>
   <td style="text-align:right;"> 0.0226 </td>
   <td style="text-align:right;"> 0.9557 </td>
   <td style="text-align:right;"> 0.0216 </td>
   <td style="text-align:right;"> 3.7687 </td>
   <td style="text-align:right;"> 66.74 </td>
   <td style="text-align:right;"> 69.84 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0012 </td>
   <td style="text-align:right;"> 0.0058 </td>
   <td style="text-align:right;"> 0.9341 </td>
   <td style="text-align:right;"> 0.0055 </td>
   <td style="text-align:right;"> 4.6568 </td>
   <td style="text-align:right;"> 62.97 </td>
   <td style="text-align:right;"> 67.41 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0007 </td>
   <td style="text-align:right;"> 0.0036 </td>
   <td style="text-align:right;"> 0.9286 </td>
   <td style="text-align:right;"> 0.0034 </td>
   <td style="text-align:right;"> 4.6347 </td>
   <td style="text-align:right;"> 58.31 </td>
   <td style="text-align:right;"> 62.80 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0011 </td>
   <td style="text-align:right;"> 0.0054 </td>
   <td style="text-align:right;"> 0.9253 </td>
   <td style="text-align:right;"> 0.0050 </td>
   <td style="text-align:right;"> 4.6138 </td>
   <td style="text-align:right;"> 53.68 </td>
   <td style="text-align:right;"> 58.01 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0013 </td>
   <td style="text-align:right;"> 0.0065 </td>
   <td style="text-align:right;"> 0.9202 </td>
   <td style="text-align:right;"> 0.0060 </td>
   <td style="text-align:right;"> 4.5863 </td>
   <td style="text-align:right;"> 49.07 </td>
   <td style="text-align:right;"> 53.32 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0017 </td>
   <td style="text-align:right;"> 0.0086 </td>
   <td style="text-align:right;"> 0.9143 </td>
   <td style="text-align:right;"> 0.0079 </td>
   <td style="text-align:right;"> 4.5516 </td>
   <td style="text-align:right;"> 44.48 </td>
   <td style="text-align:right;"> 48.65 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0022 </td>
   <td style="text-align:right;"> 0.0109 </td>
   <td style="text-align:right;"> 0.9064 </td>
   <td style="text-align:right;"> 0.0098 </td>
   <td style="text-align:right;"> 4.5074 </td>
   <td style="text-align:right;"> 39.93 </td>
   <td style="text-align:right;"> 44.05 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0033 </td>
   <td style="text-align:right;"> 0.0163 </td>
   <td style="text-align:right;"> 0.8966 </td>
   <td style="text-align:right;"> 0.0146 </td>
   <td style="text-align:right;"> 4.4463 </td>
   <td style="text-align:right;"> 35.42 </td>
   <td style="text-align:right;"> 39.51 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0042 </td>
   <td style="text-align:right;"> 0.0209 </td>
   <td style="text-align:right;"> 0.8820 </td>
   <td style="text-align:right;"> 0.0184 </td>
   <td style="text-align:right;"> 4.3639 </td>
   <td style="text-align:right;"> 30.97 </td>
   <td style="text-align:right;"> 35.12 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0055 </td>
   <td style="text-align:right;"> 0.0273 </td>
   <td style="text-align:right;"> 0.8636 </td>
   <td style="text-align:right;"> 0.0236 </td>
   <td style="text-align:right;"> 4.2588 </td>
   <td style="text-align:right;"> 26.61 </td>
   <td style="text-align:right;"> 30.81 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0083 </td>
   <td style="text-align:right;"> 0.0406 </td>
   <td style="text-align:right;"> 0.8400 </td>
   <td style="text-align:right;"> 0.0341 </td>
   <td style="text-align:right;"> 4.1146 </td>
   <td style="text-align:right;"> 22.35 </td>
   <td style="text-align:right;"> 26.61 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 55 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0111 </td>
   <td style="text-align:right;"> 0.0542 </td>
   <td style="text-align:right;"> 0.8059 </td>
   <td style="text-align:right;"> 0.0436 </td>
   <td style="text-align:right;"> 3.9202 </td>
   <td style="text-align:right;"> 18.24 </td>
   <td style="text-align:right;"> 22.63 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0231 </td>
   <td style="text-align:right;"> 0.1090 </td>
   <td style="text-align:right;"> 0.7622 </td>
   <td style="text-align:right;"> 0.0831 </td>
   <td style="text-align:right;"> 3.6035 </td>
   <td style="text-align:right;"> 14.32 </td>
   <td style="text-align:right;"> 18.78 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0214 </td>
   <td style="text-align:right;"> 0.1015 </td>
   <td style="text-align:right;"> 0.6792 </td>
   <td style="text-align:right;"> 0.0689 </td>
   <td style="text-align:right;"> 3.2235 </td>
   <td style="text-align:right;"> 10.71 </td>
   <td style="text-align:right;"> 15.77 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0338 </td>
   <td style="text-align:right;"> 0.1558 </td>
   <td style="text-align:right;"> 0.6103 </td>
   <td style="text-align:right;"> 0.0951 </td>
   <td style="text-align:right;"> 2.8136 </td>
   <td style="text-align:right;"> 7.49 </td>
   <td style="text-align:right;"> 12.27 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.0485 </td>
   <td style="text-align:right;"> 0.2164 </td>
   <td style="text-align:right;"> 0.5152 </td>
   <td style="text-align:right;"> 0.1115 </td>
   <td style="text-align:right;"> 2.2971 </td>
   <td style="text-align:right;"> 4.68 </td>
   <td style="text-align:right;"> 9.08 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 2.5000 </td>
   <td style="text-align:right;"> 0.1137 </td>
   <td style="text-align:right;"> 0.4426 </td>
   <td style="text-align:right;"> 0.4037 </td>
   <td style="text-align:right;"> 0.1787 </td>
   <td style="text-align:right;"> 1.5717 </td>
   <td style="text-align:right;"> 2.38 </td>
   <td style="text-align:right;"> 5.89 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 85 </td>
   <td style="text-align:right;"> 3.5868 </td>
   <td style="text-align:right;"> 0.2788 </td>
   <td style="text-align:right;"> 1.0000 </td>
   <td style="text-align:right;"> 0.2250 </td>
   <td style="text-align:right;"> 0.2250 </td>
   <td style="text-align:right;"> 0.8070 </td>
   <td style="text-align:right;"> 0.81 </td>
   <td style="text-align:right;"> 3.59 </td>
  </tr>
</tbody>
</table>

### Borrowing average person-years lived (${}_{n}a_x$) values from another population

* If your ${}_{n}m_x$ curve is similar to another population, perhaps the ${}_{n}a_x$ values are similar, too
* The question is, how to find a similar enough model life table?
* You'll learn a lot more about this in [CS&SS/SOC/STAT 563](https://soc.washington.edu/courses/2019/spring/soc/563/a) (Statistical Demography & Data Science).

### Using rules of thumb

In this course, we'll focus on rules of thumb. As we'll see, it turns out that these rules of thumb are often good enough.

#### Assume people die on average half-way through interval (${}_{n}a_x = n/2$) {#nax-mid-period-assumption .unnumbered}

PHG introduce this at the beginning of the period life table section, but I think it makes more sense to put it here. Under this assumption:

$$
{}_{n}q_x
  = \frac{
    n \cdot {}_{n}{m_x}
  }{
    1 + \frac{1}{2} \cdot n \cdot {}_{n}m_x
  }
  = \frac{2n \cdot {}_{n}m_x}{2 + n \cdot {}_{n}m_x}
$$

<details>
<summary>Under what conditions is this assumption exactly true?</summary>
* Linear growth or decline in death count during the period (remember the midpoint theorem from [week 1](#person-periods-method3))
* Deaths distributed symmetrically about the mid-period
* The shorter the period, the more linear the death curve, and the more reasonable this assumption
</details>
<br>

#### Assume constant death rate ${}_{n}m_x$ throughout the interval {#plt-constant-death-rate .unnumbered}

Under this assumption:

$$
{}_{n}q_x = 1 - e^{-n \cdot {}_{n}m_x}
$$
s
Equating the right hand side in the equation above to that of \@ref(eq:nqxperiod) reveals that:

$$
{}_{n}a_x = n + \frac{1}{{}_{n}m_x} - \frac{n}{1 - e^{-n \cdot {}_{n}m_x}} < n/2
$$

The final inequality means that assuming constant death rate further assumes that deaths are concentrated near the beginning of age intervals.

<details>
<summary>Look back at the mortality pattern covered in [week 2](#week2). where in the life history is the constant death rate assumption least realistic?</summary>
* Early childhood (rapidly declining death rate)
* After age 30 (rapidly increasing death rate^[Oh, goodie for me!])
</details>

### Life table results are fairly insensitive to error in choice of ${}_{n}a_x$ {.unnumbered}

The re-written ${}_{n}m_x \rightarrow {}_{n}q_x$ conversion equation reveals that ${}_{n}a_x$ is multiplied by ${}_{n}q_x$ before entering the formula

$$
{}_{n}q_x = \frac{
  n \cdot {}_{n}m_x
}{
  1 + n \cdot {}_{n}m_x - \color{red}{{}_{n}a_x \cdot {}_{n}m_x}
}
$$

* Global death rate $\approx$ 0.012
* So an error of 2 years in one ${}_{n}a_x$ means ${}_{n}q_x$ off by < 1%
* i.e., a small number < 1 is multiplied by another small number < 1 to yield an even smaller number
* So your choice among rules of thumb, etc., matters less than you think it does
* But still check the robustness of your results as much as you can

## The very young ages

* Life table results are very sensitive to procedures for very young age groups, where mortality rates rapidly decline and the ${}_{n}a_0 = n/2$ assumption breaks down.
* The methods cited in this part of the book are slightly outdated, but still widely used. You'll learn a lot more about how to model very young age group mortality in [CS&SS/SOC/STAT 563](https://soc.washington.edu/courses/2019/spring/soc/563/a) (Statistical Demography & Data Science).

## The open-ended age interval

:::{.rmdimportant}
**KEY CONCEPT**

For the oldest age group starting with age $x = x^*$, age interval length $n = \infty$. This age group is called the **open-ended interval**.

Ideally, choose $x^*$ so that a very small fraction of individuals survive to it
:::

Because $n = \infty$:

* ${}_{\infty}q_{x^*} = 1$ ("In the end, we're all dead.")
* ${}_{\infty}p_{x^*} = 1 - {}_{\infty}q_{x^*}= 0$ (In the end, none of us lives.)
* ${}_{\infty}d_{x^*} = l_{x^*}$ (Good to know since we can't observe who dies after $\infty$ years)

Recall that:

$$
{}_{\infty}m_{x^*} = \frac{
  {}_{\infty}d_{x^*}
}{
  {}_{\infty}L_{x^*}
} \rightarrow {}_{\infty}L_{x^*} = \frac{
  {}_{\infty}d_{x^*}
}{
  {}_{\infty}m_{x^*}
}
$$

Plugging in ${}_{\infty}d_{x^*} = l_{x^*}$:

$$
{}_{\infty}L_{x^*} = \frac{l_{x^*}}{{}_{\infty}m_{x^*}}
$$

Both numerator and denominator are things we can observe within a period.

</details>

## Review of the steps for period life table construction



Let's walk through the steps of life table construction using the `tidyverse` in R and data on age-specific mortality in Ukraine in 2013.

Here's the data:

<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; '>
 <thead>
  <tr>
   <th style="text-align:right;"> x </th>
   <th style="text-align:right;"> nmx </th>
   <th style="text-align:right;"> nx </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.007944 </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.000356 </td>
   <td style="text-align:right;"> 4 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 0.000188 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0.000242 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 0.000585 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 0.000995 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 0.001631 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 0.002710 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 0.003953 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 0.004959 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 0.006789 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 0.009500 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 55 </td>
   <td style="text-align:right;"> 0.013552 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;"> 0.020463 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 0.027443 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 0.042396 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 0.064624 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 0.106022 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 85 </td>
   <td style="text-align:right;"> 0.166193 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 90 </td>
   <td style="text-align:right;"> 0.253785 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0.378184 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0.412131 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 105 </td>
   <td style="text-align:right;"> 0.500136 </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 1.368043 </td>
   <td style="text-align:right;">  </td>
  </tr>
</tbody>
</table>

### Step 1: Adopt a set of ${}_{n}a_x$ values {.unnumbered}

For simplicity, we'll adopt the [constant death rate](#plt-constant-death-rate) assumption, which means:

$$
{}_{n}a_x = n + \frac{1}{{}_{n}m_x} - \frac{n}{1 - e^{-n \cdot {}_{n}m_x}}
$$

```r
ukr_plt_5x1_2013 <- ukr_mx_5x1_2013 %>%
  dplyr::mutate(nax = nx + (nmx)^(-1) - (nx / (1 - exp(-nx * nmx))))
```


### Step 2: Convert ${}_{n}m_x$ to ${}_{n}q_x$ {.unnumbered}

Under our rule of thumb:

$$
{}_{n}q_x = 1 - e^{-n \cdot {}_{n}m_x}
$$
In code:


```r
ukr_plt_5x1_2013 <- ukr_plt_5x1_2013 %>%
  dplyr::mutate(
    nx = dplyr::lead(x) - x,
    nqx = (1 - exp(-nx*nmx)) %>% # Assume constant death rate in interval
      dplyr::coalesce(1)
  )
```

### Step 3: Compute ${}_{n}p_x = 1 - {}_{n}q_x$ {.unnumbered}


```r
ukr_plt_5x1_2013 <- ukr_plt_5x1_2013 %>%
  dplyr::mutate(npx = 1 - nqx)
```

### Step 4: Choose a *radix* $l_0$ {.unnumbered}

By setting an arbitrary starting population size, you can calculate the remaining columns from what you've computed so far. It doesn't really matter what the radix is, so long as it is positive.


```r
l0 <- 1
```

### Step 5: Compute the remaining $l_x$ values from ${}_{n}p_x$ values {.unnumbered}

$$
l_1 = l_0 \times {}_{1}p_0 \\
l_5 = l_1 \times {}_{4}p_1 \\
\vdots
$$
In code, these requires iteration:


```r
lx <- l0
x <- ukr_plt_5x1_2013$x
npx <- ukr_plt_5x1_2013$npx
for (a in x[-length(x)]) {
  l <- lx[which(x == a)] * npx[which(x == a)]
  lx <- c(lx, l)
}
ukr_plt_5x1_2013$lx <- lx
```

### Step 6: Derive ${}_{n}d_x$ as $l_x - l{x+n}$ or $l_x * {}_{n}q_x$ {.unnumbered}


```r
ukr_plt_5x1_2013 <- ukr_plt_5x1_2013 %>%
  dplyr::mutate(ndx = lx * nqx)
```

### Step 7: Derive person-years lived between ages $x$ and $x+n$ {.unnumbered}

Recall that:

$${}_{n}L_x = n \cdot l_{x+n} + {}_{n}a_x * {}_{n}d_x$$

```r
ukr_plt_5x1_2013 <- ukr_plt_5x1_2013 %>%
  dplyr::mutate(nLx = dplyr::case_when(
    nqx != 1 ~ nx * dplyr::lead(lx) + nax * ndx,
    nqx == 1 ~ lx / nmx
  ))
```

### Step 8: Derive $T_x = \sum_{a=1}^\infty {}_{n}L_x$ {.unnumbered}


```r
ukr_plt_5x1_2013 <- ukr_plt_5x1_2013 %>%
  dplyr::mutate(Tx = rev(nLx) %>% dplyr::coalesce(0) %>% cumsum() %>% rev())
```

### Step 9: Derive life expectancy $e^0_x$ at age $x$ {.unnumbered}

Recall that $e^0_x = T_x/l_x$


```r
ukr_plt_5x1_2013 <- ukr_plt_5x1_2013 %>%
  dplyr::mutate(e0x = Tx/lx)
```

Let's take a look at our constructed period life table for Ukraine 2013.

<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; '>
 <thead>
  <tr>
   <th style="text-align:right;"> x </th>
   <th style="text-align:right;"> nmx </th>
   <th style="text-align:right;"> nax </th>
   <th style="text-align:right;"> nqx </th>
   <th style="text-align:right;"> npx </th>
   <th style="text-align:right;"> lx </th>
   <th style="text-align:right;"> ndx </th>
   <th style="text-align:right;"> nLx </th>
   <th style="text-align:right;"> Tx </th>
   <th style="text-align:right;"> e0x </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.007944 </td>
   <td style="text-align:right;"> 0.499338 </td>
   <td style="text-align:right;"> 0.0079125 </td>
   <td style="text-align:right;"> 0.9920875 </td>
   <td style="text-align:right;"> 1.0000000 </td>
   <td style="text-align:right;"> 0.0079125 </td>
   <td style="text-align:right;"> 0.9960385 </td>
   <td style="text-align:right;"> 71.2809009 </td>
   <td style="text-align:right;"> 71.2809009 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.000356 </td>
   <td style="text-align:right;"> 1.999525 </td>
   <td style="text-align:right;"> 0.0014230 </td>
   <td style="text-align:right;"> 0.9985770 </td>
   <td style="text-align:right;"> 0.9920875 </td>
   <td style="text-align:right;"> 0.0014117 </td>
   <td style="text-align:right;"> 3.9655258 </td>
   <td style="text-align:right;"> 70.2848624 </td>
   <td style="text-align:right;"> 70.8454290 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 0.000188 </td>
   <td style="text-align:right;"> 2.499608 </td>
   <td style="text-align:right;"> 0.0009396 </td>
   <td style="text-align:right;"> 0.9990604 </td>
   <td style="text-align:right;"> 0.9906757 </td>
   <td style="text-align:right;"> 0.0009308 </td>
   <td style="text-align:right;"> 4.9510514 </td>
   <td style="text-align:right;"> 66.3193366 </td>
   <td style="text-align:right;"> 66.9435354 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0.000242 </td>
   <td style="text-align:right;"> 2.499496 </td>
   <td style="text-align:right;"> 0.0012093 </td>
   <td style="text-align:right;"> 0.9987907 </td>
   <td style="text-align:right;"> 0.9897449 </td>
   <td style="text-align:right;"> 0.0011969 </td>
   <td style="text-align:right;"> 4.9457320 </td>
   <td style="text-align:right;"> 61.3682853 </td>
   <td style="text-align:right;"> 62.0041411 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 0.000585 </td>
   <td style="text-align:right;"> 2.498781 </td>
   <td style="text-align:right;"> 0.0029207 </td>
   <td style="text-align:right;"> 0.9970793 </td>
   <td style="text-align:right;"> 0.9885481 </td>
   <td style="text-align:right;"> 0.0028873 </td>
   <td style="text-align:right;"> 4.9355187 </td>
   <td style="text-align:right;"> 56.4225533 </td>
   <td style="text-align:right;"> 57.0761853 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 0.000995 </td>
   <td style="text-align:right;"> 2.497927 </td>
   <td style="text-align:right;"> 0.0049626 </td>
   <td style="text-align:right;"> 0.9950374 </td>
   <td style="text-align:right;"> 0.9856608 </td>
   <td style="text-align:right;"> 0.0048915 </td>
   <td style="text-align:right;"> 4.9160651 </td>
   <td style="text-align:right;"> 51.4870346 </td>
   <td style="text-align:right;"> 52.2360579 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 0.001631 </td>
   <td style="text-align:right;"> 2.496602 </td>
   <td style="text-align:right;"> 0.0081218 </td>
   <td style="text-align:right;"> 0.9918782 </td>
   <td style="text-align:right;"> 0.9807693 </td>
   <td style="text-align:right;"> 0.0079656 </td>
   <td style="text-align:right;"> 4.8839054 </td>
   <td style="text-align:right;"> 46.5709695 </td>
   <td style="text-align:right;"> 47.4841217 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 0.002710 </td>
   <td style="text-align:right;"> 2.494354 </td>
   <td style="text-align:right;"> 0.0134586 </td>
   <td style="text-align:right;"> 0.9865414 </td>
   <td style="text-align:right;"> 0.9728037 </td>
   <td style="text-align:right;"> 0.0130926 </td>
   <td style="text-align:right;"> 4.8312129 </td>
   <td style="text-align:right;"> 41.6870641 </td>
   <td style="text-align:right;"> 42.8524949 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 0.003953 </td>
   <td style="text-align:right;"> 2.491765 </td>
   <td style="text-align:right;"> 0.0195710 </td>
   <td style="text-align:right;"> 0.9804290 </td>
   <td style="text-align:right;"> 0.9597111 </td>
   <td style="text-align:right;"> 0.0187825 </td>
   <td style="text-align:right;"> 4.7514446 </td>
   <td style="text-align:right;"> 36.8558512 </td>
   <td style="text-align:right;"> 38.4030694 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 0.004959 </td>
   <td style="text-align:right;"> 2.489669 </td>
   <td style="text-align:right;"> 0.0244901 </td>
   <td style="text-align:right;"> 0.9755099 </td>
   <td style="text-align:right;"> 0.9409286 </td>
   <td style="text-align:right;"> 0.0230435 </td>
   <td style="text-align:right;"> 4.6467964 </td>
   <td style="text-align:right;"> 32.1044066 </td>
   <td style="text-align:right;"> 34.1199173 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 0.006789 </td>
   <td style="text-align:right;"> 2.485857 </td>
   <td style="text-align:right;"> 0.0333753 </td>
   <td style="text-align:right;"> 0.9666247 </td>
   <td style="text-align:right;"> 0.9178852 </td>
   <td style="text-align:right;"> 0.0306347 </td>
   <td style="text-align:right;"> 4.5124057 </td>
   <td style="text-align:right;"> 27.4576102 </td>
   <td style="text-align:right;"> 29.9139932 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 0.009500 </td>
   <td style="text-align:right;"> 2.480209 </td>
   <td style="text-align:right;"> 0.0463895 </td>
   <td style="text-align:right;"> 0.9536105 </td>
   <td style="text-align:right;"> 0.8872504 </td>
   <td style="text-align:right;"> 0.0411591 </td>
   <td style="text-align:right;"> 4.3325398 </td>
   <td style="text-align:right;"> 22.9452046 </td>
   <td style="text-align:right;"> 25.8610238 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 55 </td>
   <td style="text-align:right;"> 0.013552 </td>
   <td style="text-align:right;"> 2.471769 </td>
   <td style="text-align:right;"> 0.0655153 </td>
   <td style="text-align:right;"> 0.9344847 </td>
   <td style="text-align:right;"> 0.8460913 </td>
   <td style="text-align:right;"> 0.0554319 </td>
   <td style="text-align:right;"> 4.0903119 </td>
   <td style="text-align:right;"> 18.6126648 </td>
   <td style="text-align:right;"> 21.9984116 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;"> 0.020463 </td>
   <td style="text-align:right;"> 2.457376 </td>
   <td style="text-align:right;"> 0.0972549 </td>
   <td style="text-align:right;"> 0.9027451 </td>
   <td style="text-align:right;"> 0.7906594 </td>
   <td style="text-align:right;"> 0.0768955 </td>
   <td style="text-align:right;"> 3.7577807 </td>
   <td style="text-align:right;"> 14.5223529 </td>
   <td style="text-align:right;"> 18.3673943 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 0.027443 </td>
   <td style="text-align:right;"> 2.442845 </td>
   <td style="text-align:right;"> 0.1282172 </td>
   <td style="text-align:right;"> 0.8717828 </td>
   <td style="text-align:right;"> 0.7137639 </td>
   <td style="text-align:right;"> 0.0915168 </td>
   <td style="text-align:right;"> 3.3347969 </td>
   <td style="text-align:right;"> 10.7645722 </td>
   <td style="text-align:right;"> 15.0814180 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 0.042396 </td>
   <td style="text-align:right;"> 2.411741 </td>
   <td style="text-align:right;"> 0.1910191 </td>
   <td style="text-align:right;"> 0.8089809 </td>
   <td style="text-align:right;"> 0.6222471 </td>
   <td style="text-align:right;"> 0.1188611 </td>
   <td style="text-align:right;"> 2.8035922 </td>
   <td style="text-align:right;"> 7.4297753 </td>
   <td style="text-align:right;"> 11.9402329 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 0.064624 </td>
   <td style="text-align:right;"> 2.365600 </td>
   <td style="text-align:right;"> 0.2761130 </td>
   <td style="text-align:right;"> 0.7238870 </td>
   <td style="text-align:right;"> 0.5033860 </td>
   <td style="text-align:right;"> 0.1389914 </td>
   <td style="text-align:right;"> 2.1507711 </td>
   <td style="text-align:right;"> 4.6261831 </td>
   <td style="text-align:right;"> 9.1901305 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 0.106022 </td>
   <td style="text-align:right;"> 2.280149 </td>
   <td style="text-align:right;"> 0.4114598 </td>
   <td style="text-align:right;"> 0.5885402 </td>
   <td style="text-align:right;"> 0.3643946 </td>
   <td style="text-align:right;"> 0.1499337 </td>
   <td style="text-align:right;"> 1.4141754 </td>
   <td style="text-align:right;"> 2.4754120 </td>
   <td style="text-align:right;"> 6.7932186 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 85 </td>
   <td style="text-align:right;"> 0.166193 </td>
   <td style="text-align:right;"> 2.157685 </td>
   <td style="text-align:right;"> 0.5643713 </td>
   <td style="text-align:right;"> 0.4356287 </td>
   <td style="text-align:right;"> 0.2144609 </td>
   <td style="text-align:right;"> 0.1210356 </td>
   <td style="text-align:right;"> 0.7282831 </td>
   <td style="text-align:right;"> 1.0612366 </td>
   <td style="text-align:right;"> 4.9483926 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 90 </td>
   <td style="text-align:right;"> 0.253785 </td>
   <td style="text-align:right;"> 1.984947 </td>
   <td style="text-align:right;"> 0.7188663 </td>
   <td style="text-align:right;"> 0.2811337 </td>
   <td style="text-align:right;"> 0.0934253 </td>
   <td style="text-align:right;"> 0.0671603 </td>
   <td style="text-align:right;"> 0.2646347 </td>
   <td style="text-align:right;"> 0.3329534 </td>
   <td style="text-align:right;"> 3.5638463 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0.378184 </td>
   <td style="text-align:right;"> 1.755400 </td>
   <td style="text-align:right;"> 0.8490671 </td>
   <td style="text-align:right;"> 0.1509329 </td>
   <td style="text-align:right;"> 0.0262650 </td>
   <td style="text-align:right;"> 0.0223007 </td>
   <td style="text-align:right;"> 0.0589680 </td>
   <td style="text-align:right;"> 0.0683188 </td>
   <td style="text-align:right;"> 2.6011336 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0.412131 </td>
   <td style="text-align:right;"> 1.696604 </td>
   <td style="text-align:right;"> 0.8726295 </td>
   <td style="text-align:right;"> 0.1273705 </td>
   <td style="text-align:right;"> 0.0039643 </td>
   <td style="text-align:right;"> 0.0034593 </td>
   <td style="text-align:right;"> 0.0083937 </td>
   <td style="text-align:right;"> 0.0093508 </td>
   <td style="text-align:right;"> 2.3587780 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 105 </td>
   <td style="text-align:right;"> 0.500136 </td>
   <td style="text-align:right;"> 1.552660 </td>
   <td style="text-align:right;"> 0.9179708 </td>
   <td style="text-align:right;"> 0.0820292 </td>
   <td style="text-align:right;"> 0.0005049 </td>
   <td style="text-align:right;"> 0.0004635 </td>
   <td style="text-align:right;"> 0.0009268 </td>
   <td style="text-align:right;"> 0.0009570 </td>
   <td style="text-align:right;"> 1.8954033 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 1.368043 </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;"> 1.0000000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.0000414 </td>
   <td style="text-align:right;"> 0.0000414 </td>
   <td style="text-align:right;"> 0.0000303 </td>
   <td style="text-align:right;"> 0.0000303 </td>
   <td style="text-align:right;"> 0.7309712 </td>
  </tr>
</tbody>
</table>

And do a quick sanity check using key figures from the Human Mortality Database's (much more sophisticated) life table for Ukraine 2013:

<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; '>
 <thead>
  <tr>
   <th style="text-align:right;"> Age </th>
   <th style="text-align:right;"> qx </th>
   <th style="text-align:right;"> Lx </th>
   <th style="text-align:right;"> ex </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0.00789 </td>
   <td style="text-align:right;"> 99316 </td>
   <td style="text-align:right;"> 71.35 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.00142 </td>
   <td style="text-align:right;"> 396498 </td>
   <td style="text-align:right;"> 70.92 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 0.00094 </td>
   <td style="text-align:right;"> 495107 </td>
   <td style="text-align:right;"> 67.02 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0.00120 </td>
   <td style="text-align:right;"> 494617 </td>
   <td style="text-align:right;"> 62.08 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 0.00287 </td>
   <td style="text-align:right;"> 493672 </td>
   <td style="text-align:right;"> 57.15 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 0.00492 </td>
   <td style="text-align:right;"> 491741 </td>
   <td style="text-align:right;"> 52.31 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 0.00810 </td>
   <td style="text-align:right;"> 488598 </td>
   <td style="text-align:right;"> 47.55 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 0.01353 </td>
   <td style="text-align:right;"> 483445 </td>
   <td style="text-align:right;"> 42.92 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 0.01959 </td>
   <td style="text-align:right;"> 475339 </td>
   <td style="text-align:right;"> 38.47 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 0.02455 </td>
   <td style="text-align:right;"> 464934 </td>
   <td style="text-align:right;"> 34.19 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 0.03331 </td>
   <td style="text-align:right;"> 451602 </td>
   <td style="text-align:right;"> 29.98 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 0.04636 </td>
   <td style="text-align:right;"> 433842 </td>
   <td style="text-align:right;"> 25.93 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 55 </td>
   <td style="text-align:right;"> 0.06578 </td>
   <td style="text-align:right;"> 409732 </td>
   <td style="text-align:right;"> 22.06 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;"> 0.09757 </td>
   <td style="text-align:right;"> 376917 </td>
   <td style="text-align:right;"> 18.43 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 0.13077 </td>
   <td style="text-align:right;"> 334503 </td>
   <td style="text-align:right;"> 15.14 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 0.18811 </td>
   <td style="text-align:right;"> 282149 </td>
   <td style="text-align:right;"> 12.02 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 75 </td>
   <td style="text-align:right;"> 0.28547 </td>
   <td style="text-align:right;"> 216305 </td>
   <td style="text-align:right;"> 9.20 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 80 </td>
   <td style="text-align:right;"> 0.41279 </td>
   <td style="text-align:right;"> 142688 </td>
   <td style="text-align:right;"> 6.86 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 85 </td>
   <td style="text-align:right;"> 0.58088 </td>
   <td style="text-align:right;"> 73044 </td>
   <td style="text-align:right;"> 4.94 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 90 </td>
   <td style="text-align:right;"> 0.74529 </td>
   <td style="text-align:right;"> 25483 </td>
   <td style="text-align:right;"> 3.53 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0.86806 </td>
   <td style="text-align:right;"> 5170 </td>
   <td style="text-align:right;"> 2.54 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 100 </td>
   <td style="text-align:right;"> 0.93923 </td>
   <td style="text-align:right;"> 540 </td>
   <td style="text-align:right;"> 1.91 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 105 </td>
   <td style="text-align:right;"> 0.97189 </td>
   <td style="text-align:right;"> 27 </td>
   <td style="text-align:right;"> 1.52 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 1.00000 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 1.32 </td>
  </tr>
</tbody>
</table>

:::{.rmdtip}
**KEY CONCEPT**

We worked through a life table with five-year age intervals.

A life table with one-year age intervals is often called a **complete life table**
:::

### Visualizing life table columns {.unnumbered}

![From PHG pg. 52](./images/visualizing-life-table-columns.png)

## Interpreting the life table

You can combine column values at different ages in meaningful ways:

* $l_y / l_x = {}_{y-x}p_x$: Probability of surviving from age $x$ to age $y$
    * **Special case:** $p(x) = l_x/l_0$  is probability of surviving from birth to age $x$
* $1 - l_y/l_x = {}_{y-x}q_x$ Probability of dying between ages $x$ and $y$
    * **Special case:** $1 - p(x) = 1 - l_x/l_0 = {}_{x}d_0/l_0$ is the cumulative probability of dying before reaching age $x$
* $\left(l_y - l_z\right)/l_x$: Probability that one who reaches age $x$ dies between ages $z$ and $y$
    * **Special case:** $\left(l_y - l_x\right)/l_0$ Probability that someone born will die between ages $x$ and $y$
* $\left(T_y - T_z\right)/l_x$: Expected person years lived between ages $y$ and $z$ by someone who reaches age $x$

You'll be asked about these and more in the problem set

## The life table conceived as a stationary population

:::{.rmdimportant}
**KEY CONCEPT**

A **stationary population** meets the following demographic conditions:

1. Constant age-specific death rates over time
2. Constant flow of births
3. Age-specific net migration rates are zero

We'll see how these conditions result in zero population growth.
:::

Interpreting life table columns in a stationary population:

* $l_x = l_0 \cdot {}_{x}p_0$: Number of persons who reach age $x$ in any calendar year
* ${}_{n}L_x$: Number of persons alive at any point in time between ages $x$ and $x+n$
* $T_x$: Number of persons alive at any point in time above age $x$, so that $T_0$ is total population size
* ${}_{n}d_x$: Annual number of deaths between ages $x$ and $x+n$
* $e_0^0$: Mean age at death for persons dying in any particular year^[For recently published additional caveats to the interpretation of average lifespan in stationary populations, see Wrigley-Field and Feehan 2021: https://read.dukeupress.edu/demography/article/doi/10.1215/00703370-9639692/293327/In-a-Stationary-Population-the-Average-Lifespan-of]

Other useful results **specific to a stationary population**:

* $CBR = CDR = 1/e^0_0$
* Death rate above age $x$: ${}_{\infty}M_{x} = 1/e_x^0$
* Age structure ${}_{n}C_x = {}_{n}L_x/T_0 \approx \frac{l_{x+n/2}}{l_0} \cdot n \cdot CBR$

Why are these results useful:

* You can use them to calculate missing demographic statistics from those you have
* They're often approximately correct even in a non-stationary population, at least one that grows slowly, or is not observed for too long
* But be careful, especially with the assumption that $e_0^0$ is mean age at death

## Mortality as a continuous process

:::{.rmdimportant}
**KEY CONCEPT**

**Force of mortality**: The mortality rate measured over an infinitesimally small amount of time.

$$
\mu(x) = \lim_{n \rightarrow 0}\left[\frac{l(x) - l(x+n)}{n \cdot l(x)}\right] = \frac{-d\text{ln(l(x))}}{dx}
$$
:::

From the force of mortality, we find that:

$$
l(z) = l(y)e^{-\int_y^z \mu(x)dx}
$$

Very important finding here: The proportion change in cohort size between two ages is completely a function of the sum of the force of mortality between those two ages. Look familiar?

PHG go on to define continuous equivalents of other life table columns

## Life table construction revisited

This section of PHG is fairly advanced. It's main contribution is that it warns that using the observed period mortality rate schedule ${}_{n}M_x$ to approximate the cohort rate schedule ${}_{n}n_x$ can sometime lead to distortions.

Other than mentioning this, we won't cover it in class.

## Decomposing a difference in life expectancies

The difference between two life expectancies at birth $e^0_0(2) - e_0^0(1)$ can be decomposed into separate contributions ${}_{n}\Delta_x$ from each age group:

$$
e^0_0(2) - e_0^0(1) = \sum_0^\infty {}_{n}\Delta_xx
$$

An age-specific difference contribution ${}_{n}\Delta_x$ can itself be decomposed into two main components:

$${}_{n}\Delta_x = \frac{l_x^1}{l_0^1} \cdot \left(\frac{{}_{n}L_x^2}{l_x^2} - \frac{{}_{n}L_x^1}{l_x^1}\right) + \frac{T^2_{x+n}}{l_0^1} \cdot \left(\frac{l_x^1}{l_0^2} - \frac{l_{x+n}^1}{l_{x+n}^2}\right)$$

* $\frac{l_x^1}{l_0^1} \cdot \left(\frac{{}_{n}L_x^2}{l_x^2} - \frac{{}_{n}L_x^1}{l_x^1}\right)$ is the **direct effect** of the change in mortality rates between ages $x$ and $x+n$ on life expectancy at birth.
* $\frac{T^2_{x+n}}{l_0^1} \cdot \left(\frac{l_x^1}{l_0^2} - \frac{l_{x+n}^1}{l_{x+n}^2}\right)$ are the **indirect effect** and **interaction effects** resulting from future person-years to be added (or subtracted) because additional (or fewer) survivors at age $x+n$ are exposed to new mortality conditions.
* The open-ended interval has no indirect effects because there are no future age groups to observe, thus ${}_{\infty}\Delta_x = \frac{l_x^1}{l_0^1} \cdot \left(\frac{T_x^2}{l_x^2} - \frac{T_x^1}{l_x^1}\right)$
* These results could be extended to any life expectancy $e_a^0$ by replace all $l_0$ with $l_a$ and estimating ${}_{n}\Delta_n$ for $x \geq a$

## Adaptation of the life table for studying other single decrement processes

In some processes, there are multiple ways to exit:

* Multiple ways to die
* Multiple reasons for leaving a company
* Etc.

These are called **multiple decrement processes** and we'll cover them next week. PHG identify 3 circumstances when a multiple decrement process can reasonably be treated like a single decrement process. For example, death due to multiple causes can be collapsed into death from a single cause.

Can you think of a case where this might not be a good idea?
