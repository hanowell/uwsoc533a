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
* Using lifetable notation, it is:

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

<details>
<summary>Which of the values we've covered so far would be hard to come by in classic demographic data. Why?</summary>
* Total or average person-years lived in age intervals (don't have exact person years)
* Probabilities of death or survival (don't have cohort data or separated count data)
* Person-years lived in age interval (but can estimate using [week 2](#estimating-person-periods) methods)
</details>
<br><br>

## Strategies for ${}_{n}m_x$ $\rightarrow$ ${}_{n}q_x$ conversion

<details>
<summary>Why is converting rates to probabilities important for creating period life tables?</summary>
We often have access to period rates, but not probabilities (cohort measures)
</details>
<br>

### Direction observation (duh)

### Graduation of the age-specific mortality rate (${}_{n}m_x$) function

### Borrowing average person-years lived (${}_{n}a_x$) values from another population

### Using rules of thumb

## The very young ages

## The open-ended age interval

## Review of the steps for period life table construction

## Interpreting the life table

## The life table conceived as a stationary population

## Mortality as a continuous process

## Life table construction revisited

## Decomposing a difference in life expectancies

## Adaptation of the life table for studying other single decrement processes

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

### Beware of the all-cause attrition hegemon
:::
