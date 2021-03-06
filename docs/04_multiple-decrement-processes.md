# Multiple decrement processes

:::{.rmdnote}
## Learning objectives {.unnumbered}

* Explain the multiple decrement extension of a single decrement process, and give examples of its applicability to demographic research
* Learn how to summarize a cohort's experience of a multiple decrement process using a multiple decrement table
* Construct a period multiple decrement table
* Understand the applicability of associated single decrement tables (and their special case of cause-deleted life tables)
* Construct an associated single decrement table under varying assumptions about the estimation of cause-specific person-periods lived among those who succumb to a decrement
* Decompose a difference between two life expectancies into its age- and cause-specific components
* Extend the concept of a stationary population to the multiple decrement case, and how to use a life table to find relations among its key metrics
:::



## Multiple decrement tables for a real cohort

:::{.rmdimportant}
**KEY CONCEPT**

A **multiple decrement process** extends a single decrement process to consider multiple modes of exit.

A **multiple decrement life table** is a tabular summary of such a process.
:::

To extend a life table to consider multiple decrement causes, just add...

* ${}_{n}d_x^i$: Number of decrements from cause $i$ between ages $x$ and $x+n$
* ${}_{n}q_x^i = {}_{n}d_x^i/l_x$: Probability of leaving the table from cause $i$ between ages $x$ and $x+n$ for someone who reached age $x$
* ${}_{n}m_x^i = {}_{n}d_x^i/{}_{n}L_x$: Rate of decrement from cause $i$ between ages $x$ and $x+n$
* $l_x^i = \sum_{a=x}^\infty {}_{n}d_a^i$: Number of persons reaching age $x$ who will eventually succumb to cause $i$

... to all of the tables already in a single decrement life table
<br><br>

<details>
<summary>Which cause-specific analogues of life table columns are missing above and why? **Tap for answer**</summary>
* $e_x^i$: expected time until decrement to cause $i$. Those who later succumb to cause $i$ cannot be identified at age $x$ because they might succumb to another cause first
* Thus ${}_{n}L_x^i$, $T_x^i$, and ${}_{n}a_x^i$ excluded for similar reasons

**Question:** So why is $l_x^i$ included if it suffers from similar conceptual issues??

**Answer:**

* To calculate $l_x^i/l_x$, proportion of people aged $x$ who eventually succumb to cause $i$. **Examples:** Probability that marriage ends in divorce. Probability that employee leaves due to layoffs.
* The base of that probability, $l_x$ can be identified b age $x$
* Probabilities with $l_x^i$ as a base can't be identified because who don't know who will eventually succumb due to $i$
</details>
<br><br>

<details>
<summary>What must cause-specific decrements sum to? That is, what is $\sum_i {}_{n}d_x^i$? **Tap for answer**</summary>
The total number of all-cause decrements!

$$\sum_i {}_{n}d_x^i = {}_{n}d_x$$
</details>
<br>

<details>
<summary>So what must cause-specific decrements rates sum to? That is, what is $\sum_i {}_{n}m_x^i$? **Tap for answer**</summary>
The all-cause decrement rate!

$$
\sum_i {}_{n}m_x^i
  = \sum_i \frac{{}_{n}d_x^i}{{}_{n}L_x}
  = \frac{{}_{n}d_x}{{}_{n}L_x}
  = {}_{n}m_x
$$
</details>
<br>

<details>
<summary>What must cause-specific decrement probabilities sum to? That is, what is $\sum_i {}_{n}q_x^i$? **Tap for answer**</summary>
The all-cause decrement probability!

$$
\sum_i {}_{n}q_x^i
  = \sum_i \frac{{}_{n}d_x^i}{l_x}
  = \frac{{}_{n}d_x}{l_x}
  = {}_{n}q_x
$$
</details>
<br>

<details>
<summary>So what must $l_x^i$ sum to? **Tap for answer**</summary>
Recall that $l_x^i = \sum_{a=x}^\infty {}_{n}d_a^i$. So:

$$
\sum_i l_x^i
  = \sum_i \sum_{a=x}^\infty {}_{n}d_x^i
  = \sum_{a=x}^\infty {}_{n}d_a
  = l_x
$$

The sum of people who will eventually succumb to each cause is the sum of all people who will eventually succumb to any cause, which is equal to the number of survivors at age $x$.
</details>
<br>

Let's work through a mutliple decrement lifelines plot, again based on 10 real people born January 1, 1800^[From PHG Figure 4.1].

* M = Married
* D = Died

<img src="04_multiple-decrement-processes_files/figure-html/cohort_mdlt_setup-1.png" width="672" />

<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; '>
 <thead>
  <tr>
   <th style="text-align:right;"> $x$ </th>
   <th style="text-align:right;"> $l_x$ </th>
   <th style="text-align:right;"> ${}_{n}d_x^D$ </th>
   <th style="text-align:right;"> ${}_{n}d_x^M$ </th>
   <th style="text-align:right;"> ${}_{n}d_x$ </th>
   <th style="text-align:right;"> ${}_{n}q_x^D$ </th>
   <th style="text-align:right;"> ${}_{n}q_x^M$ </th>
   <th style="text-align:right;"> ${}_{n}q_x$ </th>
   <th style="text-align:right;"> $l_x^D$ </th>
   <th style="text-align:right;"> $l_x^M$ </th>
   <th style="text-align:right;"> ${}_{n}L_x$ </th>
   <th style="text-align:right;"> ${}_{n}m_x^D$ </th>
   <th style="text-align:right;"> ${}_{n}m_x^M$ </th>
   <th style="text-align:right;"> ${}_{n}m_x$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.10 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.10 </td>
   <td style="text-align:right;border-left:1px solid;"> 4 </td>
   <td style="text-align:right;border-left:1px solid;"> 6 </td>
   <td style="text-align:right;border-left:1px solid;"> 9.07 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.11 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.11 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 9 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.11 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.11 </td>
   <td style="text-align:right;border-left:1px solid;"> 3 </td>
   <td style="text-align:right;border-left:1px solid;"> 6 </td>
   <td style="text-align:right;border-left:1px solid;"> 32.22 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.03 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;border-left:1px solid;"> 8 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 2 </td>
   <td style="text-align:right;border-left:1px solid;"> 6 </td>
   <td style="text-align:right;border-left:1px solid;"> 40.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;border-left:1px solid;"> 8 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 3 </td>
   <td style="text-align:right;border-left:1px solid;"> 4 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.12 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.38 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.50 </td>
   <td style="text-align:right;border-left:1px solid;"> 2 </td>
   <td style="text-align:right;border-left:1px solid;"> 6 </td>
   <td style="text-align:right;border-left:1px solid;"> 70.88 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.01 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.04 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.06 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;border-left:1px solid;"> 4 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 3 </td>
   <td style="text-align:right;border-left:1px solid;"> 3 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.75 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.75 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 3 </td>
   <td style="text-align:right;border-left:1px solid;"> 23.36 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.13 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.13 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 10.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 10.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 1.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 1.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 1 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 9.60 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.10 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.00 </td>
   <td style="text-align:right;border-left:1px solid;"> 0.10 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;"> 0 </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
   <td style="text-align:right;border-left:1px solid;">  </td>
  </tr>
</tbody>
</table>


:::{.rmdimportant}
**KEY CONCEPT**

Although $x$ represents age in our multiple decrement process example, it more generally represents entry into current state.

**Examples:**

* Our marriage or death table above represents flows from the state of being alive and unmarried:

![Flow diagram for marriage or death table](images/marriage-death-diagram.svg)
<details>
<summary>What would a multiple decrement table tracking the fate of a real estate brokerage's deals -- which can be closed and won, or closed and lost -- represent? **Tap for answer**</summary>
Flows from the state of being an open deal
</details>
:::

## Multiple decrement life tables for periods

As for period single decrement tables, multiple decrement tables require conversions from period rates to cohort probabilities.

Recall from the previous section:

$$
{}_{n}m_x^i =
  \frac{{}_{n}d_x^i}{{}_{n}L_x}
\textsf{ and }
{}_{n}q_x^i =
  \frac{{}_{n}d_x^i}{l_x}
\textsf{ and (from week 3) }
{}_{n}L_x =
  l_{x+n} \cdot n + {}_{n}a_x \cdot {}_{n}d_x
$$

From these facts, PHG derive a $\color{limegreen}{\textsf{cause-specific}}$ analogue to Equation \@ref(eq:nqxperiod) from week 3:

\begin{equation}
  {}_{n}q_x^i = \frac{
    n \cdot \color{limegreen}{{}_{n}m_x^i}
  }{
    1 + \left(n - {}_{n}a_x\right){}_{n}m_x
  }
  (\#eq:nqx-md-period)
\end{equation}

**New notation:** Index $-i$ indicates all causes other than $i$.

Re-writing Equation \@ref(eq:nqx-md-period) reveals $\color{olive}{\textsf{competing risks}}$:

$$
{}_{n}q_x^i = \frac{
  n \cdot \color{limegreen}{{}_{n}m_x^i}
}{
  1 + \left(n - {}_{n}a_x\right)\left(
    \color{limegreen}{{}_{n}m_x^i} + \color{olive}{{}_{n}m_x^{-i}}
  \right)
}
$$

* **${}_{n}q_x^i$ is a "dependent probability":** Holding $\color{limegreen}{{}_{n}m_x^i}$ constant, higher $\color{olive}{{}_{n}m_x^{-i}}$ means lower ${}_{n}q_x^i$
* **${}_{n}m_x^i$ isn't necessarily a "dependent rate":** Although ${}_{n}q_x^i$ depends on $\color{olive}{{}_{n}m_x^{-i}}$, that doesn't necessarily mean $\color{limegreen}{{}_{n}m_x^i}$ also depend son $\color{olive}{{}_{n}m_x^{-i}}$

As PHG write on pg. 75:

> "... all persons starting life must die of something, and if the probability of exiting from one cause declines, the probability of exiting from some other cause(s) must increase."

:::{.rmdimportant}
**KEY CONCEPT**

**Competing risks** are events whose occurrence preclude the occurrence of a focal event of interest.
:::

### Converting ${}_{n}m_x^i$ to ${}_{n}q_x^i$: Easier than it sounds! {.unnumbered}

Avoid tedious derivation via Equation \@ref(eq:nqxperiod) by...

* ... noting that:

$$
\require{cancel}
\frac{{}_{n}q_x^i}{{}_{n}q_x}
 = \frac{{}_{n}d_x^i / \bcancel{l_x}}{{}_{n}d_x / \bcancel{l_x}}
 = \frac{{}_{n}d_x^i}{{}_{n}d_x}
 = \frac{{}_{n}d_x^i / \bcancel{{}_{n}L_x}}{{}_{n}d_x / \bcancel{{}_{n}L_x}}
 = \frac{{}_{n}m_x^i}{{}_{n}m_x}
$$

* ... then solving for ${}_{n}q_x^i$ to find:

$$
{}_{n}q_x^i = {}_{n}q_x \cdot \frac{{}_{n}m_x^i}{{}_{n}m_x}
$$

:::{.rmdimportant}
**KEY INSIGHT**

To find the probability ${}_{n}q_x^i$ of exit due to cause $i$, simply apportion the total decrement probability ${}_{n}q_x$ in proportion to the relative decrement rate ${}_{n}m_x^i / {}_{n}m_x$
:::

### Steps for constructing a period multiple decrement table {#multiple-decrement-steps .unnumbered}



To illustrate the steps of multiple decrement table construction, we'll use a simulated dataset on voluntary vs. involuntary employee termination rates by tenure group^[The simulation assumes 60% voluntary vs. 40% involuntary termination. All-cause attrition rates based on employees from a real Russian company, documented here: https://www.kaggle.com/davinwijaya/employee-turnover].

Here's a plot of the simulated termination rates.

* $V = \color{blue}{\textsf{Voluntary}}$
* $I = \color{red}{\textsf{Involuntary}}$

<img src="04_multiple-decrement-processes_files/figure-html/employee_term_rates_plot-1.png" width="672" />

#### Step 1: Compute the single decrement life table values

Again, we'll assume from [the mid-period approximation](#nax-mid-period-assumption) that ${}_{n}a_x = n / 2$.


```r
employee_lt <- employee_mx %>%
  dplyr::mutate(
    ax = nx / 2,
    qx = ((nx * mx) / (1 + (nx - ax) * mx)) %>% dplyr::coalesce(1),
    px = 1 - qx
  )
l0 <- 100000
lx <- l0
x <- employee_lt$x
npx <- employee_lt$px
for (a in x[-length(x)]) {
  l <- lx[which(x == a)] * npx[which(x == a)]
  lx <- c(lx, l)
}
employee_lt <- employee_lt %>%
  dplyr::mutate(
    lx = lx,
    dx = lx * qx,
    Lx = dplyr::case_when(
      qx != 1 ~ nx * dplyr::lead(lx) + ax * dx,
      qx == 1 ~ lx / mx
    ),
    Tx = rev(Lx) %>% dplyr::coalesce(0) %>% cumsum() %>% rev(),
    ex = Tx / lx
  )
```

#### Step 2: Compute probability of exit from cause $i$ for each tenure group

Recall that ${}_{n}q_x^i = {}_{n}q_x \cdot \frac{{}_{n}m_x^i}{{}_{n}m_x}$:


```r
employee_lt <- employee_lt %>%
  dplyr::mutate(qx_V = qx * (mx_V / mx),
                qx_I = qx * (mx_I / mx))
```

#### Step 3: Compute number of decrements from cause $i$ for each tenure group

Recall that ${}_{n}d_x^i = {}_{n}q_x^i \cdot l_x$:


```r
employee_lt <- employee_lt %>%
  dplyr::mutate(dx_V = qx_V * lx,
                dx_I = qx_I * lx)
```

#### Step 4: Compute the number of persons aged $x$ who will eventually exit due to cause $i$

* Recall that $l_x^i = \sum_{a = x}^\infty {}_{n}d_a^i$.
* To do this, we'll use our old pal from computing `Tx`:

<center>`rev(.) %>% dplyr::coalesce(0) %>% cumsum() %>% rev()`</center>

And since I'm tired of typing it, let's make it a function.


```r
sum_from_here <- function(x) {
  rev(x) %>% dplyr::coalesce(0) %>% cumsum() %>% rev()
}
employee_lt <- employee_lt %>%
  dplyr::mutate(lx_V = sum_from_here(dx_V),
                lx_I = sum_from_here(dx_I))
```

Let's see the period multiple decrement table we just constructed:


```{=html}
<div id="htmlwidget-9e0c7b2e1dc1c2b1adc1" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-9e0c7b2e1dc1c2b1adc1">{"x":{"filter":"top","vertical":false,"filterHTML":"<tr>\n  <td data-type=\"factor\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"width: 100%; display: none;\">\n      <select multiple=\"multiple\" style=\"width: 100%;\" data-options=\"[&quot;0&quot;,&quot;1&quot;,&quot;2&quot;,&quot;3&quot;,&quot;4&quot;,&quot;5&quot;,&quot;6&quot;,&quot;7&quot;,&quot;8&quot;,&quot;9&quot;,&quot;10&quot;,&quot;11&quot;,&quot;12&quot;,&quot;13&quot;,&quot;14&quot;,&quot;15&quot;,&quot;16&quot;,&quot;17&quot;,&quot;18&quot;,&quot;19&quot;,&quot;20&quot;,&quot;21&quot;,&quot;22&quot;,&quot;23&quot;,&quot;24&quot;,&quot;25&quot;,&quot;26&quot;,&quot;27&quot;,&quot;28&quot;,&quot;29&quot;,&quot;30&quot;,&quot;31&quot;,&quot;32&quot;,&quot;33&quot;,&quot;34&quot;,&quot;35&quot;,&quot;36&quot;,&quot;37&quot;,&quot;38&quot;,&quot;39&quot;,&quot;40&quot;,&quot;41&quot;,&quot;42&quot;,&quot;43&quot;,&quot;44&quot;,&quot;45&quot;,&quot;46&quot;,&quot;47&quot;,&quot;48&quot;,&quot;49&quot;,&quot;50&quot;,&quot;51&quot;,&quot;52&quot;,&quot;53&quot;,&quot;54&quot;,&quot;55&quot;,&quot;56&quot;,&quot;57&quot;,&quot;58&quot;,&quot;59&quot;,&quot;60&quot;,&quot;61&quot;,&quot;62&quot;,&quot;63&quot;,&quot;64&quot;,&quot;65&quot;,&quot;66&quot;,&quot;67&quot;,&quot;68&quot;,&quot;69&quot;,&quot;70&quot;,&quot;71&quot;,&quot;72&quot;,&quot;73&quot;,&quot;74&quot;,&quot;75&quot;,&quot;76&quot;,&quot;77&quot;,&quot;78&quot;,&quot;79&quot;,&quot;80&quot;,&quot;81&quot;,&quot;82&quot;,&quot;83&quot;,&quot;84&quot;,&quot;85&quot;,&quot;86&quot;,&quot;87&quot;,&quot;88&quot;,&quot;89&quot;,&quot;90&quot;,&quot;91&quot;,&quot;92&quot;,&quot;93&quot;,&quot;94&quot;,&quot;95&quot;,&quot;96&quot;,&quot;97&quot;,&quot;98&quot;,&quot;99&quot;,&quot;100&quot;,&quot;101&quot;,&quot;102&quot;,&quot;103&quot;,&quot;104&quot;,&quot;105&quot;,&quot;106&quot;,&quot;107&quot;,&quot;108&quot;,&quot;109&quot;,&quot;110&quot;,&quot;111&quot;,&quot;112&quot;,&quot;113&quot;,&quot;114&quot;,&quot;115&quot;,&quot;116&quot;,&quot;117&quot;,&quot;118&quot;,&quot;119&quot;,&quot;120&quot;,&quot;121&quot;,&quot;122&quot;,&quot;123&quot;,&quot;124&quot;,&quot;125&quot;,&quot;126&quot;,&quot;127&quot;,&quot;128&quot;,&quot;129&quot;,&quot;130&quot;,&quot;131&quot;,&quot;132&quot;,&quot;133&quot;,&quot;134&quot;,&quot;135&quot;,&quot;136&quot;,&quot;137&quot;,&quot;138&quot;,&quot;139&quot;,&quot;140&quot;,&quot;141&quot;,&quot;142&quot;,&quot;143&quot;,&quot;144&quot;,&quot;145&quot;,&quot;146&quot;,&quot;147&quot;,&quot;148&quot;,&quot;149&quot;,&quot;150&quot;,&quot;151&quot;,&quot;152&quot;,&quot;153&quot;,&quot;154&quot;,&quot;155&quot;,&quot;156&quot;,&quot;157&quot;,&quot;158&quot;,&quot;159&quot;,&quot;160&quot;,&quot;161&quot;,&quot;162&quot;,&quot;163&quot;,&quot;164&quot;,&quot;165&quot;,&quot;166&quot;,&quot;167&quot;,&quot;168&quot;,&quot;169&quot;,&quot;170&quot;,&quot;171&quot;,&quot;172&quot;,&quot;173&quot;,&quot;174&quot;,&quot;175&quot;,&quot;176&quot;,&quot;177&quot;,&quot;178&quot;,&quot;179&quot;,&quot;180&quot;]\"><\/select>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0\" data-max=\"30224.137388514\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0\" data-max=\"20149.424925676\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0\" data-max=\"50373.5623141901\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0.081763311036129\" data-max=\"0.6\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0.054508874024086\" data-max=\"0.400000000000001\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0.136272185060215\" data-max=\"1\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0\" data-max=\"60000\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0\" data-max=\"40000\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0\" data-max=\"1e+05\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0\" data-max=\"74813.218842905\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0.086996367826984\" data-max=\"0.403994612930365\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0.057997578551322\" data-max=\"0.269329741953577\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none;position: absolute;width: 200px;opacity: 1\">\n      <div data-min=\"0.144993946378307\" data-max=\"0.673324354883941\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n<\/tr>","data":[["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180"],[30224.137388514,14903.6388897117,7396.4487088019,3694.17130571407,1856.71143241868,939.023714741353,477.842807556251,244.648111029688,126.014165631546,65.2965609618473,34.0351613616389,17.844540888913,9.41015673777435,4.99087228670858,2.66206546009481,1.42790255698043,0.770178168414644,0.417707409725359,0.227780933385458,0.124882894183766,0.0688343842126316,0.0381418357642033,0.0212455767637165,0.011895524991888,0.00669459829281746,0.00378677235474778,0.00215276122072936,0.00122993739211014,0.000706170197431308,0.000407430952579323,0.000236208858823438,0.000137599037701278,8.05362562631314e-05,4.73591958473712e-05,2.79791358603962e-05,1.66058786372165e-05,9.9007416261626e-06,5.92970170987747e-06,3.56728978084396e-06,2.15558794178108e-06,1.30826740319393e-06,7.97466657289877e-07,4.88197794722735e-07,3.00143258108996e-07,1.85307632727691e-07,1.1488745141039e-07,7.15235869783577e-08,4.47101788115743e-08,2.80625525225132e-08,1.76845894687757e-08,1.11890554962406e-08,7.10732665250679e-09,4.53228774770051e-09,2.90142365762678e-09,1.86453952097302e-09,1.20277191666907e-09,7.78808788339863e-10,5.06173132946966e-10,3.30196894602318e-10,2.161910232211e-10,1.42062153823088e-10,9.36872825910477e-11,6.20054693167687e-11,4.11824534603261e-11,2.74481574505256e-11,1.83577304693036e-11,1.23201442133868e-11,8.29640498655198e-12,5.60567518265709e-12,3.80028677992107e-12,2.58488978648625e-12,1.7639724847075e-12,1.20768238516417e-12,8.29491562382599e-13,5.71553418162766e-13,3.95070607060551e-13,2.7393858456426e-13,1.90537284060839e-13,1.32936063468451e-13,9.30314236918663e-14,6.53023152508118e-14,4.59756332715108e-14,3.24649977852585e-14,2.29921697414281e-14,1.63308947034531e-14,1.16330629114131e-14,8.31038221180418e-15,5.95359929879803e-15,4.27719306739503e-15,3.08139825946375e-15,2.226054132703e-15,1.61254487235433e-15,1.17129284202428e-15,8.53073125671631e-16,6.22965107468121e-16,4.56128884505798e-16,3.34847930186278e-16,2.46452797711024e-16,1.81859491630837e-16,1.3453781548928e-16,9.97812952590762e-17,7.41891765996987e-17,5.52979444496717e-17,4.13185349826471e-17,3.09484489557656e-17,2.32370801981397e-17,1.74889467834093e-17,1.31939857450313e-17,9.9772195853354e-18,7.56232282968073e-18,5.74518661276661e-18,4.37469194333379e-18,3.33869288239764e-18,2.55377396705726e-18,1.95774823450101e-18,1.5041499033869e-18,1.15818214338931e-18,8.93728742911149e-19,6.91145413026994e-19,5.35623698493087e-19,4.15976377272947e-19,3.23733795940109e-19,2.52470086435365e-19,1.97299707014534e-19,1.5450045115942e-19,1.21230560541116e-19,9.53160080387601e-20,7.50902135720001e-20,5.92730203215749e-20,4.68791286202911e-20,3.71486774592298e-20,2.94945112452237e-20,2.34620418509643e-20,1.86986374441215e-20,1.49302313447365e-20,1.19434133923307e-20,9.5716925073374e-21,7.68493886944495e-21,6.18125446933952e-21,4.98070178757149e-21,4.0204569251199e-21,3.25105675456873e-21,2.63348785775687e-21,2.13692435225314e-21,1.73696681722153e-21,1.41426888380858e-21,1.15346426727986e-21,9.42327053663986e-22,7.7111339542827e-22,6.32044539146427e-22,5.1890015137127e-22,4.26697870168956e-22,3.51440377602806e-22,2.89915434697174e-22,2.3953752851304e-22,1.98222267378113e-22,1.64286590607176e-22,1.36369360090976e-22,1.13368070298261e-22,9.43883253876816e-23,7.87034449136757e-23,6.5722117500939e-23,5.49624592110178e-23,4.60311767180685e-23,3.86068054551259e-23,3.24262055844157e-23,2.72736664236638e-23,2.29721025114039e-23,1.93759293730131e-23,1.63652901573235e-23,1.38413702683863e-23,1.17225895360783e-23,9.94150319165257e-24,8.44227617109105e-24,7.17862181616847e-24,6.11211726448727e-24,5.21082480787744e-24,4.44816211703747e-24,3.80197516274501e-24,3.25377645231229e-24,2.06232638319872e-23],[20149.424925676,9935.7592598078,4930.96580586793,2462.78087047604,1237.80762161245,626.015809827569,318.561871704167,163.098740686458,84.0094437543639,43.5310406412316,22.690107574426,11.8963605926087,6.2734378251829,3.32724819113905,1.77471030672988,0.951935037986955,0.51345211227643,0.278471606483573,0.151853955590306,0.0832552627891772,0.0458895894750877,0.0254278905094689,0.0141637178424777,0.00793034999459197,0.00446306552854497,0.00252451490316519,0.00143517414715291,0.000819958261406761,0.000470780131620872,0.000271620635052882,0.000157472572548959,9.17326918008519e-05,5.36908375087543e-05,3.15727972315808e-05,1.86527572402641e-05,1.10705857581443e-05,6.60049441744174e-06,3.95313447325165e-06,2.37819318722931e-06,1.43705862785405e-06,8.72178268795953e-07,5.31644438193251e-07,3.25465196481823e-07,2.00095505405998e-07,1.23538421818461e-07,7.6591634273593e-08,4.76823913189051e-08,2.98067858743829e-08,1.87083683483421e-08,1.17897263125171e-08,7.45937033082709e-09,4.73821776833786e-09,3.02152516513368e-09,1.93428243841786e-09,1.24302634731535e-09,8.01847944446045e-10,5.19205858893242e-10,3.37448755297977e-10,2.20131263068212e-10,1.44127348814066e-10,9.47081025487251e-11,6.24581883940318e-11,4.13369795445125e-11,2.74549689735507e-11,1.82987716336837e-11,1.22384869795358e-11,8.21342947559123e-12,5.53093665770132e-12,3.73711678843806e-12,2.53352451994738e-12,1.7232598576575e-12,1.17598165647166e-12,8.05121590109446e-13,5.52994374921732e-13,3.8103561210851e-13,2.63380404707034e-13,1.8262572304284e-13,1.27024856040559e-13,8.86240423123007e-14,6.20209491279109e-14,4.35348768338745e-14,3.06504221810072e-14,2.1643331856839e-14,1.53281131609521e-14,1.08872631356354e-14,7.75537527427539e-15,5.54025480786946e-15,3.96906619919869e-15,2.85146204493002e-15,2.05426550630916e-15,1.48403608846867e-15,1.07502991490289e-15,7.80861894682852e-16,5.68715417114421e-16,4.15310071645414e-16,3.04085923003865e-16,2.23231953457519e-16,1.64301865140683e-16,1.21239661087225e-16,8.96918769928534e-17,6.65208635060508e-17,4.94594510664658e-17,3.68652962997811e-17,2.75456899884314e-17,2.06322993038437e-17,1.54913867987598e-17,1.16592978556062e-17,8.79599049668756e-18,6.65147972355693e-18,5.04154855312049e-18,3.83012440851108e-18,2.91646129555586e-18,2.22579525493176e-18,1.70251597803817e-18,1.30516548966734e-18,1.00276660225793e-18,7.72121428926209e-19,5.95819161940766e-19,4.60763608684663e-19,3.57082465662058e-19,2.77317584848631e-19,2.15822530626739e-19,1.6831339095691e-19,1.31533138009689e-19,1.03000300772947e-19,8.08203736940773e-20,6.35440053591734e-20,5.00601423813334e-20,3.95153468810499e-20,3.12527524135274e-20,2.47657849728198e-20,1.96630074968158e-20,1.56413612339762e-20,1.2465758296081e-20,9.95348756315764e-21,7.96227559488714e-21,6.38112833822494e-21,5.12329257962997e-21,4.12083631289301e-21,3.32046785838099e-21,2.6803046167466e-21,2.16737116971249e-21,1.75565857183791e-21,1.42461623483543e-21,1.15797787814768e-21,9.4284592253905e-22,7.68976178186576e-22,6.28218035775991e-22,5.1407559695218e-22,4.21363026097618e-22,3.45933434247513e-22,2.84465246779304e-22,2.34293585068538e-22,1.93276956464783e-22,1.5969168567536e-22,1.32148178252075e-22,1.09524393738117e-22,9.09129067273172e-23,7.55787135321743e-23,6.29255502584544e-23,5.24689632757838e-23,4.3814745000626e-23,3.66416394740118e-23,3.0687451145379e-23,2.57378703034173e-23,2.16174703896105e-23,1.81824442824425e-23,1.53147350076026e-23,1.29172862486754e-23,1.09101934382157e-23,9.22758017892417e-24,7.81505969071888e-24,6.62766879443505e-24,5.6281841140607e-24,4.78574787744565e-24,4.07474484299151e-24,3.47388320525162e-24,2.96544141135831e-24,2.53465010849667e-24,2.16918430154153e-24,1.37488425546582e-23],[50373.5623141901,24839.3981495195,12327.4145146698,6156.95217619011,3094.51905403113,1565.03952456892,796.404679260418,407.746851716146,210.02360938591,108.827601603079,56.7252689360649,29.7409014815217,15.6835945629573,8.31812047784762,4.43677576682469,2.37983759496739,1.28363028069107,0.696179016208932,0.379634888975764,0.208138156972943,0.114723973687719,0.0635697262736722,0.0354092946061942,0.0198258749864799,0.0111576638213624,0.00631128725791297,0.00358793536788227,0.0020498956535169,0.00117695032905218,0.000679051587632204,0.000393681431372397,0.00022933172950213,0.000134227093771886,7.8931993078952e-05,4.66318931006604e-05,2.76764643953608e-05,1.65012360436043e-05,9.88283618312912e-06,5.94548296807327e-06,3.59264656963513e-06,2.18044567198988e-06,1.32911109548313e-06,8.13662991204558e-07,5.00238763514994e-07,3.08846054546152e-07,1.91479085683983e-07,1.19205978297263e-07,7.45169646859572e-08,4.67709208708554e-08,2.94743157812928e-08,1.86484258270677e-08,1.18455444208446e-08,7.55381291283419e-09,4.83570609604464e-09,3.10756586828837e-09,2.00461986111511e-09,1.29801464723311e-09,8.43621888244943e-10,5.5032815767053e-10,3.60318372035166e-10,2.36770256371813e-10,1.5614547098508e-10,1.03342448861281e-10,6.86374224338768e-11,4.57469290842093e-11,3.05962174488394e-11,2.05335736889781e-11,1.38273416442533e-11,9.34279197109515e-12,6.33381129986845e-12,4.30814964414375e-12,2.93995414117916e-12,2.01280397527361e-12,1.38248593730433e-12,9.52589030271276e-13,6.58451011767585e-13,4.56564307607099e-13,3.17562140101398e-13,2.21560105780752e-13,1.55052372819777e-13,1.08837192084686e-13,7.66260554525179e-14,5.41083296420975e-14,3.83202829023802e-14,2.72181578390884e-14,1.93884381856885e-14,1.38506370196736e-14,9.92266549799672e-15,7.12865511232505e-15,5.13566376577291e-15,3.71009022117167e-15,2.68757478725721e-15,1.95215473670713e-15,1.42178854278605e-15,1.03827517911354e-15,7.60214807509663e-16,5.58079883643797e-16,4.10754662851707e-16,3.03099152718062e-16,2.24229692482134e-16,1.66302158765127e-16,1.23648627666165e-16,9.21632407494528e-17,6.88642249710785e-17,5.15807482596094e-17,3.87284669968995e-17,2.91482446390156e-17,2.19899762417189e-17,1.66286993088923e-17,1.26038713828012e-17,9.57531102127769e-18,7.29115323888965e-18,5.5644881373294e-18,4.25628994509543e-18,3.26291372416835e-18,2.50691650564483e-18,1.93030357231552e-18,1.48954790485192e-18,1.15190902171166e-18,8.92706164155145e-19,6.93293962121579e-19,5.39556326566848e-19,4.20783477392276e-19,3.28832845024224e-19,2.57500751932368e-19,2.02050934235193e-19,1.58860013397933e-19,1.25150355953334e-19,9.87883672026248e-20,7.81318810338186e-20,6.19144624320496e-20,4.91575187420395e-20,3.91034030849405e-20,3.11643957402025e-20,2.48837189078941e-20,1.99056889872179e-20,1.59528208455623e-20,1.28082314490749e-20,1.03020907822325e-20,8.30116964595248e-21,6.7007615418665e-21,5.41842792428122e-21,4.38914642959478e-21,3.56154058708856e-21,2.89494469536921e-21,2.35711480634763e-21,1.92244044546644e-21,1.57054508943998e-21,1.28518899238045e-21,1.05340756524405e-21,8.64833585618783e-22,7.11163116948259e-22,5.85733962671344e-22,4.83192391161957e-22,3.992292141884e-22,3.30370445630188e-22,2.73810984345294e-22,2.27282266818293e-22,1.88946783830436e-22,1.57313875646136e-22,1.3117240818946e-22,1.09536862501565e-22,9.16040986850296e-23,7.67186278634475e-23,6.43446757585432e-23,5.40436759740261e-23,4.54561107061064e-23,3.82868375190065e-23,3.22932156216885e-23,2.72754835955392e-23,2.30689504473104e-23,1.95376492267972e-23,1.65691719860876e-23,1.40704602851518e-23,1.19643696936141e-23,1.01868621074788e-23,8.68470801312906e-24,7.41360352839578e-24,6.33662527124168e-24,5.42296075385381e-24,3.43721063866454e-23],[0.30224137388514,0.300316516451738,0.298399843110462,0.296491371072864,0.294591116809245,0.292699096052921,0.290815323804594,0.28893981433681,0.287072581198523,0.285213637219743,0.283362994516279,0.281520664494572,0.279686657856607,0.277860984604915,0.27604365404765,0.274234674803751,0.272434054808173,0.270641801317195,0.268857920913803,0.267082419513135,0.265315302367998,0.263556574074446,0.261806238577421,0.260064299176458,0.25833075853144,0.256605618668409,0.254888880985442,0.253180546258558,0.251480614647689,0.249789085702691,0.248105958369399,0.246431230995725,0.244764901337794,0.243106966566123,0.241457423271824,0.239816267472854,0.238183494620285,0.236559099604612,0.234943076762078,0.233335419881037,0.231736122208327,0.230145176455675,0.228562574806114,0.226988308920419,0.225422369943562,0.223864748511176,0.222315434756034,0.220774418314536,0.219241688333203,0.217717233475182,0.216201041926751,0.21469310140383,0.21319339915849,0.211701921985467,0.210218656228667,0.208743587787674,0.207276702124249,0.205817984268823,0.204367418826983,0.202924989985949,0.201490681521035,0.200064476802104,0.198646358800003,0.197236310092993,0.195834312873145,0.194440348952737,0.19305439977062,0.191676446398565,0.190306469547595,0.188944449574284,0.187590366487041,0.186244199952365,0.184905929301073,0.1835755335345,0.182252991330677,0.180938281050472,0.179631380743704,0.178332268155226,0.177040920730974,0.175757315623986,0.17448142970038,0.173213239545311,0.171952721468872,0.17069985151198,0.169454605452206,0.168216958809581,0.166986886852353,0.165764364602715,0.164549366842478,0.16334186811872,0.162141842749382,0.160949264828823,0.15976410823334,0.158586346626635,0.157415953465246,0.156252902003927,0.155097165300991,0.1539487162236,0.152807527453016,0.1516735714898,0.15054682065897,0.14942724711511,0.14831482284743,0.14720951968478,0.146111309300617,0.145020163217926,0.143936052814084,0.142858949325686,0.141788823853316,0.140725647366271,0.139669390707234,0.138620024596898,0.137577519638545,0.136541846322566,0.13551297503094,0.134490876041661,0.133475519533108,0.132466875588375,0.131464914199544,0.130469605271913,0.129480918628166,0.1284988240125,0.1275232910947,0.12655428947416,0.125591788683859,0.124635758194285,0.123686167417306,0.122742985709992,0.121806182378393,0.12087572668126,0.119951587833716,0.119033735010883,0.118122137351456,0.117216763961226,0.116317583916558,0.115424566267816,0.114537680042742,0.113656894249781,0.112782177881368,0.111913499917153,0.11105082932719,0.110194135075072,0.109343386121014,0.108498551424902,0.107659599949281,0.106826500662302,0.105999222540624,0.105177734572265,0.10436200575941,0.103552005121173,0.102747701696313,0.101949064545901,0.10115606275595,0.10036866543999,0.0995868417416103,0.0988105608369464,0.0980397919371306,0.0972745042906962,0.0965146671859386,0.0957602499532348,0.0950112219673189,0.0942675526495164,0.0935292114699369,0.0927961679496242,0.0920683916626665,0.0913458522382651,0.0906285193627634,0.0899163627816345,0.089209352301431,0.0885074577916941,0.0878106491868239,0.0871188964879118,0.0864321697645342,0.085750439156508,0.0850736748756096,0.0844018472072559,0.0837349265121488,0.0830728832278841,0.082415687870523,0.0817633110361294,0.6],[0.20149424925676,0.200211010967825,0.198933228740308,0.197660914048576,0.19639407787283,0.195132730701947,0.193876882536396,0.192626542891207,0.191381720799016,0.190142424813162,0.188908663010853,0.187680442996381,0.186457771904405,0.185240656403276,0.184029102698434,0.182823116535834,0.181622703205449,0.180427867544797,0.179238613942536,0.17805494634209,0.176876868245332,0.175704382716297,0.174537492384948,0.173376199450972,0.172220505687626,0.171070412445606,0.169925920656962,0.168787030839039,0.167653743098459,0.166526057135127,0.165403972246266,0.164287487330483,0.163176600891863,0.162071311044082,0.16097161551455,0.159877511648569,0.158788996413524,0.157706066403074,0.156628717841385,0.155556946587358,0.154490748138885,0.153430117637117,0.152375049870743,0.151325539280279,0.150281579962375,0.149243165674117,0.148210289837356,0.147182945543024,0.146161125555469,0.145144822316788,0.144134027951167,0.14312873426922,0.142128932772327,0.141134614656978,0.140145770819111,0.139162391858449,0.138184468082832,0.137211989512548,0.136244945884656,0.1352833266573,0.134327121014023,0.133376317868069,0.132430905866669,0.131490873395329,0.130556208582097,0.129626899301825,0.128702933180413,0.127784297599044,0.126870979698397,0.125962966382856,0.125060244324694,0.124162799968244,0.123270619534048,0.122383689023,0.121501994220451,0.120625520700315,0.119754253829136,0.118888178770151,0.118027280487316,0.117171543749324,0.116320953133587,0.115475493030207,0.114635147645915,0.113799901007987,0.112969736968137,0.112144639206387,0.111324591234902,0.11050957640181,0.109699577894985,0.108894578745813,0.108094561832921,0.107299509885882,0.106509405488893,0.105724231084423,0.104943968976831,0.104168601335951,0.103398110200661,0.1026324774824,0.101871684968677,0.101115714326533,0.10036454710598,0.0996181647434069,0.0988765485649534,0.0981396797898533,0.097407539533745,0.0966801088119506,0.0959573685427225,0.0952392995504572,0.0945258825688775,0.0938170982441808,0.0931129271381559,0.0924133497312655,0.0917183464256965,0.0910278975483772,0.0903419833539603,0.089660584027774,0.0889836796887385,0.0883112503922498,0.0876432761330296,0.0869797368479421,0.0863206124187773,0.085665882675,0.0850155273964664,0.0843695263161065,0.0837278591225729,0.0830905054628569,0.0824574449448704,0.0818286571399946,0.0812041215855955,0.0805838177875066,0.0799677252224772,0.0793558233405885,0.0787480915676371,0.078144509307484,0.0775450559443722,0.076949710845211,0.0763584533618279,0.0757712628331874,0.0751881185875784,0.0746089999447686,0.0740338862181269,0.0734627567167144,0.0728955907473428,0.0723323676166016,0.0717730666328542,0.0712176671082016,0.0706661483604161,0.0701184897148432,0.0695746705062733,0.0690346700807823,0.0684984677975421,0.0679660430306009,0.0674373751706332,0.06691244362666,0.0663912278277402,0.0658737072246309,0.0653598612914204,0.0648496695271308,0.0643431114572924,0.0638401666354899,0.0633408146448792,0.0628450350996776,0.0623528076466246,0.0618641119664161,0.061378927775111,0.0608972348255101,0.0604190129085089,0.059944241854423,0.0594729015342873,0.0590049718611294,0.0585404327912159,0.0580792643252745,0.0576214465096895,0.057166959437672,0.0567157832504064,0.0562678981381706,0.0558232843414326,0.0553819221519227,0.054943791913682,0.0545088740240863,0.4],[0.503735623141901,0.500527527419563,0.497333071850771,0.49415228512144,0.490985194682074,0.487831826754869,0.48469220634099,0.481566357228017,0.478454301997539,0.475356062032904,0.472271657527131,0.469201107490953,0.466144429761011,0.463101641008191,0.460072756746084,0.457057791339586,0.454056758013621,0.451069668861992,0.448096534856339,0.445137365855226,0.44219217061333,0.439260956790743,0.436343730962369,0.433440498627431,0.430551264219066,0.427676031114016,0.424814801642404,0.421967577097597,0.419134357746149,0.416315142837819,0.413509930615665,0.410718718326208,0.407941502229657,0.405178277610205,0.402429038786374,0.399693779121423,0.396972491033809,0.394265166007686,0.391571794603463,0.388892366468395,0.386226870347212,0.383575294092792,0.380937624676857,0.378313848200698,0.375703949905937,0.373107914185294,0.370525724593391,0.36795736385756,0.365402813888672,0.36286205579197,0.360335069877918,0.35782183567305,0.355322331930817,0.352836536642445,0.350364427047778,0.347905979646123,0.345461170207081,0.343029973781371,0.340612364711639,0.338208316643249,0.335817802535059,0.333440794670173,0.331077264666672,0.328727183488321,0.326390521455242,0.324067248254562,0.321757332951033,0.319460743997609,0.317177449245992,0.31490741595714,0.312650610811736,0.310406999920609,0.308176548835121,0.3059592225575,0.303754985551128,0.301563801750787,0.299385634572841,0.297220446925377,0.295068201218291,0.292928859373309,0.290802382833967,0.288688732575518,0.286587869114787,0.284499752519966,0.282424342420343,0.280361598015968,0.278311478087255,0.276273941004524,0.274248944737463,0.272236446864534,0.270236404582303,0.268248774714705,0.266273513722233,0.264310577711059,0.262359922442076,0.260421503339878,0.258495275501652,0.256581193706,0.254679212421693,0.252789285816333,0.25091136776495,0.249045411858517,0.247191371412384,0.245349199474633,0.243518848834362,0.241700272029877,0.239893421356806,0.238098248876143,0.236314706422194,0.234542745610452,0.23278231784539,0.231033374328164,0.229295866064241,0.227569743870943,0.225854958384901,0.224151460069435,0.222459199221846,0.220778125980624,0.219108190332574,0.217449342119855,0.215801531046943,0.2141647066875,0.212538818491166,0.210923815790266,0.209319647806432,0.207726263657142,0.206143612362176,0.204571642849986,0.203010303963989,0.201459544468767,0.199919313056193,0.198389558351471,0.196870228919093,0.19536127326871,0.19386263986093,0.192374277113027,0.19089613340457,0.189428157082968,0.187970296468946,0.186522499861921,0.185084715545317,0.183656891791786,0.182238976868357,0.180830919041504,0.179432666582135,0.178044167770504,0.17666537090104,0.175296224287108,0.173936676265683,0.172586675201956,0.171246169493855,0.169915107576502,0.168593437926583,0.16728110906665,0.16597806956935,0.164684268061577,0.163399653228551,0.162124173817827,0.160857778643231,0.159600416588725,0.158352036612198,0.157112587749194,0.155882019116561,0.15466027991604,0.153447319437777,0.152243087063775,0.151047532271272,0.149860604636057,0.148682253835718,0.147512429652823,0.14635108197804,0.145198160813186,0.144053616274224,0.14291739859418,0.141789458126016,0.140669745345426,0.139558210853581,0.138454805379807,0.137359479784205,0.136272185060216,1],[60000,29775.862611486,14872.2237217743,7475.77501297237,3781.60370725831,1924.89227483963,985.868560098281,508.02575254203,263.377641512342,137.363475880797,72.0669149189493,38.0317535573104,20.1872126683974,10.777055930623,5.78618364391443,3.12411818381962,1.69621562683919,0.926037458424543,0.508330048699184,0.280549115313726,0.15566622112996,0.0868318369173282,0.0486900011531249,0.0274444243894083,0.0155488993975204,0.0088543011047029,0.00506752874995512,0.00291476752922576,0.00168483013711561,0.000978659939684306,0.000571228987104983,0.000335020128281545,0.000197421090580267,0.000116884834317136,6.95256384697644e-05,4.15465026093682e-05,2.49406239721517e-05,1.50398823459891e-05,9.11018063611166e-06,5.5428908552677e-06,3.38730291348662e-06,2.07903551029269e-06,1.28156885300281e-06,7.93371058280077e-07,4.93227800171081e-07,3.0792016744339e-07,1.93032716033e-07,1.21509129054643e-07,7.67989502430682e-08,4.8736397720555e-08,3.10518082517793e-08,1.98627527555387e-08,1.27554261030319e-08,8.22313835533141e-09,5.32171469770463e-09,3.45717517673161e-09,2.25440326006254e-09,1.47559447172268e-09,9.69421338775711e-10,6.39224444173393e-10,4.23033420952293e-10,2.80971267129206e-10,1.87283984538158e-10,1.25278515221389e-10,8.40960617610632e-11,5.66479043105376e-11,3.82901738412339e-11,2.59700296278471e-11,1.76736246412951e-11,1.2067949458638e-11,8.26766267871696e-12,5.68277289223071e-12,3.91880040752321e-12,2.71111802235904e-12,1.88162645997644e-12,1.31007304181368e-12,9.15002434753128e-13,6.41063850188868e-13,4.5052656612803e-13,3.17590502659579e-13,2.24559078967712e-13,1.59256763716901e-13,1.1328113044539e-13,8.08161326601314e-14,5.78239629187032e-14,4.14930682152502e-14,2.98600053038371e-14,2.15496230920329e-14,1.55960237932349e-14,1.13188307258398e-14,8.23743246637608e-15,6.01137833367308e-15,4.39883346131875e-15,3.22754061929448e-15,2.37446749362285e-15,1.75150238615472e-15,1.29537350164893e-15,9.60525571462648e-16,7.14072773751624e-16,5.32213282120787e-16,3.97675466631507e-16,2.97894171372431e-16,2.23704994772732e-16,1.6840705032306e-16,1.27088515340413e-16,9.61400663846475e-17,7.29029861865078e-17,5.54140394030985e-17,4.22200536580671e-17,3.22428340727317e-17,2.4680511243051e-17,1.89353246302844e-17,1.45606326869506e-17,1.1221939804553e-17,8.6681658374957e-18,6.71041760299469e-18,5.20626769960779e-18,4.04808555621848e-18,3.15435681330733e-18,2.46321140028034e-18,1.92758770178725e-18,1.5116113245143e-18,1.18787752857419e-18,9.35407442138828e-19,7.38107735124294e-19,5.83607283964873e-19,4.62376723423757e-19,3.67060715384997e-19,2.91970501812997e-19,2.32697481491422e-19,1.85818352871131e-19,1.48669675411901e-19,1.19175164166678e-19,9.57131223157133e-20,7.70144848715917e-20,6.20842535268553e-20,5.01408401345246e-20,4.05691476271872e-20,3.28842087577422e-20,2.67029542884027e-20,2.17222525008312e-20,1.77017955757113e-20,1.44507388211426e-20,1.18172509633857e-20,9.68032661113257e-21,7.94335979391105e-21,6.52909091010247e-21,5.37562664282261e-21,4.43329958915862e-21,3.66218619373035e-21,3.03014165458393e-21,2.51124150321265e-21,2.0845436330437e-21,1.73310325544089e-21,1.44318782074372e-21,1.20365029223068e-21,1.00542802485257e-21,8.41141434245389e-22,7.04772074154413e-22,5.91404003856152e-22,4.9701567846847e-22,4.18312233554795e-22,3.52590116053856e-22,2.97627656842838e-22,2.51596480124769e-22,2.12989674669643e-22,1.80563469085228e-22,1.53289802661564e-22,1.3031770015016e-22,1.10941770777147e-22,9.45764806198234e-23,8.07351103514371e-23,6.90125208153588e-23,5.90710176237062e-23,5.06287414526152e-23,4.34501196364467e-23,3.73380023719594e-23,3.2127177564082e-23,2.76790154470445e-23,2.38770402842995e-23,2.06232638319872e-23],[40000,19850.575074324,9914.81581451619,4983.85000864825,2521.06913817221,1283.26151655976,657.245706732187,338.68383502802,175.585094341562,91.5756505871978,48.0446099459662,25.3545023715403,13.4581417789316,7.18470395374867,3.85745576260962,2.08274545587975,1.13081041789279,0.617358305616362,0.338886699132789,0.187032743542484,0.103777480753307,0.0578878912782188,0.0324600007687499,0.0182962829262722,0.0103659329316802,0.00590286740313526,0.00337835249997008,0.00194317835281717,0.00112322009141041,0.000652439959789537,0.000380819324736655,0.000223346752187697,0.000131614060386845,7.79232228780904e-05,4.63504256465096e-05,2.76976684062455e-05,1.66270826481012e-05,1.00265882306594e-05,6.07345375740778e-06,3.69526057017847e-06,2.25820194232441e-06,1.38602367352846e-06,8.54379235335208e-07,5.28914038853385e-07,3.28818533447387e-07,2.05280111628927e-07,1.28688477355333e-07,8.10060860364284e-08,5.11993001620455e-08,3.24909318137033e-08,2.07012055011862e-08,1.32418351703591e-08,8.50361740202128e-09,5.48209223688761e-09,3.54780979846975e-09,2.30478345115441e-09,1.50293550670836e-09,9.83729647815118e-10,6.4628089251714e-10,4.26149629448929e-10,2.82022280634862e-10,1.87314178086137e-10,1.24855989692105e-10,8.35190101475929e-11,5.60640411740421e-11,3.77652695403584e-11,2.55267825608226e-11,1.73133530852314e-11,1.17824164275301e-11,8.04529963909202e-12,5.51177511914464e-12,3.78851526148714e-12,2.61253360501547e-12,1.80741201490603e-12,1.2544176399843e-12,8.73382027875786e-13,6.10001623168752e-13,4.27375900125912e-13,3.00351044085353e-13,2.11727001773053e-13,1.49706052645142e-13,1.06171175811267e-13,7.55207536302599e-14,5.38774217734209e-14,3.85493086124688e-14,2.76620454768334e-14,1.9906670202558e-14,1.43664153946886e-14,1.03973491954899e-14,7.54588715055989e-15,5.49162164425072e-15,4.00758555578205e-15,2.93255564087917e-15,2.15169374619632e-15,1.5829783290819e-15,1.16766825743648e-15,8.63582334432618e-16,6.40350380975099e-16,4.76048515834416e-16,3.54808854747191e-16,2.65116977754338e-16,1.98596114248287e-16,1.49136663181821e-16,1.1227136688204e-16,8.47256768936088e-17,6.4093377589765e-17,4.86019907910052e-17,3.6942692935399e-17,2.81467024387114e-17,2.14952227151545e-17,1.6453674162034e-17,1.26235497535229e-17,9.70708845796707e-18,7.48129320303531e-18,5.77877722499714e-18,4.47361173532979e-18,3.47084513307186e-18,2.69872370414565e-18,2.10290454220489e-18,1.64214093352022e-18,1.28505846785817e-18,1.00774088300954e-18,7.91918352382796e-19,6.23604961425885e-19,4.92071823416196e-19,3.89071522643249e-19,3.08251148949172e-19,2.44707143589998e-19,1.94647001208665e-19,1.55131654327615e-19,1.23878901914087e-19,9.91131169412675e-20,7.94501094444517e-20,6.38087482104755e-20,5.13429899143945e-20,4.13895023512369e-20,3.34272267563497e-20,2.70460984181248e-20,2.19228058384948e-20,1.78019695256018e-20,1.44815016672208e-20,1.18011970504742e-20,9.63382588076172e-21,7.87816730892381e-21,6.45355107408838e-21,5.2955731959407e-21,4.35272727340165e-21,3.58375109521507e-21,2.95553305943908e-21,2.4414574624869e-21,2.02009443638928e-21,1.67416100214177e-21,1.38969575536247e-21,1.15540217029393e-21,9.62125213829146e-22,8.02433528153785e-22,6.7028534990171e-22,5.60760956163593e-22,4.69848049436276e-22,3.94269335904101e-22,3.31343785645647e-22,2.78874822369863e-22,2.35060077369237e-22,1.98418437895225e-22,1.67730986749846e-22,1.41993116446429e-22,1.20375646056819e-22,1.02193201774376e-22,8.68784667667734e-23,7.3961180518098e-23,6.30509870798823e-23,5.38234069009581e-23,4.60083472102392e-23,3.93806784158042e-23,3.37524943017435e-23,2.89667464242978e-23,2.48920015813063e-23,2.14181183760547e-23,1.84526769646964e-23,1.59180268561997e-23,1.37488425546582e-23],[100000,49626.4376858099,24787.0395362905,12459.6250216206,6302.67284543052,3208.15379139939,1643.11426683047,846.70958757005,438.962735853904,228.939126467994,120.111524864916,63.3862559288506,33.6453544473289,17.9617598843717,9.64363940652406,5.20686363969937,2.82702604473198,1.54339576404091,0.847216747831973,0.467581858856209,0.259443701883266,0.144719728195547,0.0811500019218748,0.0457407073156805,0.0259148323292006,0.0147571685078382,0.00844588124992519,0.00485794588204293,0.00280805022852602,0.00163109989947384,0.000952048311841638,0.000558366880469242,0.000329035150967112,0.000194808057195226,0.000115876064116274,6.92441710156137e-05,4.15677066202529e-05,2.50664705766486e-05,1.51836343935194e-05,9.23815142544616e-06,5.64550485581103e-06,3.46505918382115e-06,2.13594808833802e-06,1.32228509713346e-06,8.22046333618468e-07,5.13200279072316e-07,3.21721193388334e-07,2.02515215091071e-07,1.27998250405114e-07,8.12273295342583e-08,5.17530137529656e-08,3.31045879258979e-08,2.12590435050532e-08,1.3705230592219e-08,8.86952449617438e-09,5.76195862788601e-09,3.7573387667709e-09,2.45932411953779e-09,1.61570223129285e-09,1.06537407362232e-09,7.05055701587156e-10,4.68285445215343e-10,3.12139974230263e-10,2.08797525368982e-10,1.40160102935105e-10,9.4413173850896e-11,6.38169564020565e-11,4.32833827130785e-11,2.94560410688252e-11,2.011324909773e-11,1.37794377978616e-11,9.47128815371785e-12,6.53133401253869e-12,4.51853003726507e-12,3.13604409996074e-12,2.18345506968946e-12,1.52500405792188e-12,1.06843975031478e-12,7.50877610213383e-13,5.29317504432631e-13,3.74265131612854e-13,2.65427939528168e-13,1.8880188407565e-13,1.34693554433552e-13,9.6373271531172e-14,6.91551136920836e-14,4.97666755063951e-14,3.59160384867215e-14,2.59933729887248e-14,1.88647178763997e-14,1.37290541106268e-14,1.00189638894551e-14,7.33138910219792e-15,5.37923436549079e-15,3.95744582270474e-15,2.91917064359121e-15,2.15895583608154e-15,1.60087595243775e-15,1.19012128958604e-15,8.87022136867978e-16,6.62792444385845e-16,4.96490285620718e-16,3.72841657954553e-16,2.806784172051e-16,2.11814192234022e-16,1.60233443974413e-16,1.21504976977513e-16,9.23567323384974e-17,7.03667560967786e-17,5.37380567878862e-17,4.1134185405085e-17,3.15588743838073e-17,2.42677211449177e-17,1.87032330075883e-17,1.44469430624928e-17,1.11840293383245e-17,8.67711283267966e-18,6.74680926036413e-18,5.25726135551222e-18,4.10535233380056e-18,3.21264616964542e-18,2.51935220752384e-18,1.97979588095699e-18,1.55901240356471e-18,1.23017955854049e-18,9.72678806608122e-19,7.70627872372929e-19,6.11767858974995e-19,4.86617503021662e-19,3.87829135819037e-19,3.09697254785218e-19,2.47782792353169e-19,1.98625273611129e-19,1.59521870526189e-19,1.28357474785986e-19,1.03473755878092e-19,8.35680668908743e-20,6.76152460453119e-20,5.4807014596237e-20,4.45049238140045e-20,3.6203754168052e-20,2.95029926261855e-20,2.40845647019043e-20,1.96954182723095e-20,1.6133877685221e-20,1.32389329898517e-20,1.08818181835041e-20,8.95937773803768e-21,7.3888326485977e-21,6.10364365621725e-21,5.05023609097321e-21,4.18540250535443e-21,3.47423938840617e-21,2.88850542573482e-21,2.40531303457286e-21,2.00608382038446e-21,1.67571337475428e-21,1.40190239040898e-21,1.17462012359069e-21,9.85673339760253e-22,8.28359464114117e-22,6.97187055924658e-22,5.87650193423093e-22,4.96046094738063e-22,4.19327466874616e-22,3.54982791116072e-22,3.00939115142046e-22,2.5548300443594e-22,2.17196166916933e-22,1.84902951295245e-22,1.57627467699706e-22,1.34558517252395e-22,1.15020868025598e-22,9.84516960395104e-23,8.43812357543586e-23,7.24168660607445e-23,6.22300039532657e-23,5.35452959401367e-23,4.61316924117409e-23,3.97950671404992e-23,3.43721063866454e-23],[74813.218842905,37206.7386110502,18623.3322789555,9381.14893352557,4755.41331841495,2425.63402911493,1244.91192720026,642.836161711977,333.950931160949,174.525325666455,91.7488903968831,48.5158051880898,25.8035571658503,13.8026996454479,7.42525152311171,4.01694484221567,2.18521090438644,1.19530625593644,0.657399303344091,0.363512780369738,0.202081715039407,0.112934865058711,0.0634453546187776,0.0358277698224406,0.0203360004185194,0.0116015248788817,0.00665191356598406,0.00383299805528447,0.00221957506399993,0.00129157410565774,0.00075520759615544,0.000443701015718177,0.000261921604081169,0.00015534206065575,9.25601175659438e-05,5.54059388179333e-05,3.33170885984507e-05,2.0125052485084e-05,1.22108929094828e-05,7.4418281406286e-06,4.55528201981609e-06,2.80050363607958e-06,1.72911659273574e-06,1.07216571537597e-06,6.67623306345392e-07,4.17460736230325e-07,2.62118204239702e-07,1.65256732748092e-07,1.04612789969686e-07,6.6490171643612e-08,4.24288008394317e-08,2.71818157154755e-08,1.74821370486361e-08,1.12873775441967e-08,7.3157415620302e-09,4.75964869732846e-09,3.10833144315435e-09,2.03751317541532e-09,1.34053815245759e-09,8.85214887604739e-10,5.86670573401249e-10,3.90212709722803e-10,2.60468749799623e-10,1.74478814152044e-10,1.17286638393001e-10,7.91150651264762e-11,5.35501695575675e-11,3.63697118909518e-11,2.47846450832776e-11,1.69463434477958e-11,1.16253629757897e-11,8.00131108312827e-12,5.52493202490188e-12,3.82728706861291e-12,2.6597495848251e-12,1.85422956380567e-12,1.29672190411833e-12,9.09658680264082e-13,6.40097557323007e-13,4.51791318022743e-13,3.19846535570511e-13,2.27114911801909e-13,1.61747719254601e-13,1.15533412982362e-13,8.27641926116278e-14,5.94608945992394e-14,4.28413569965583e-14,3.09547057377231e-14,2.24290454325622e-14,1.62968859935133e-14,1.1874009000041e-14,8.67517649582653e-15,6.35531173384436e-15,4.66834009409777e-15,3.43830823314798e-15,2.53906323983638e-15,1.87991589425965e-15,1.39549862101189e-15,1.03857171322701e-15,7.74907290626911e-16,5.79641365003281e-16,4.34665971787635e-16,3.26760037579827e-16,2.46246304719561e-16,1.86023818104217e-16,1.40869210475963e-16,1.06930854658005e-16,8.1361744217638e-17,6.20524064423324e-17,4.74361210964856e-17,3.63465298944462e-17,2.79132977643625e-17,2.1485477076253e-17,1.65750880350406e-17,1.28154862004087e-17,9.93057108550207e-18,7.71196104652189e-18,6.00203530793818e-18,4.68130684465639e-18,3.65899925172299e-18,2.86599918858463e-18,2.24957404424041e-18,1.76940414226085e-18,1.3945959810526e-18,1.10142918257431e-18,8.71653339490525e-19,6.91197865673962e-19,5.49192680998328e-19,4.37223319420349e-19,3.48763195302128e-19,2.78740023569194e-19,2.23204032982149e-19,1.79073572068659e-19,1.43939672656088e-19,1.15915615332039e-19,9.35209113844832e-20,7.55916564680931e-20,6.12111303207745e-20,4.96559692051208e-20,4.03543389910283e-20,3.28533733971188e-20,2.67937786640449e-20,2.18899914871069e-20,1.79146479787652e-20,1.46864053375364e-20,1.20603755866779e-20,9.9205979607709e-21,8.17410519331769e-21,6.74623815240748e-21,5.57693987359523e-21,4.61781929816382e-21,3.82982094688029e-21,3.18137240707049e-21,2.64690923015384e-21,2.20569842747866e-21,1.84089859756937e-21,1.53880788258163e-21,1.28826125699984e-21,1.08014673167547e-21,9.07016401937185e-22,7.62773260019388e-22,6.42418624673875e-22,5.41848144080578e-22,4.57686780806339e-22,3.87155128995344e-22,3.27960953129059e-22,2.78211059788993e-22,2.36339585676437e-22,2.01049559106089e-22,1.71265209497475e-22,1.4609299247605e-22,1.24789692638997e-22,1.06736282032554e-22,9.14164658969345e-23,7.83990509075516e-23,6.73234350070051e-23,5.78876499467012e-23,4.98384941759388e-23,4.296337977612e-23,3.70835867635723e-23,2.37058906562652e-22],[0.403994612930364,0.400562893875503,0.397160325446157,0.393786660023288,0.390441652091252,0.387125058219927,0.383836637047003,0.380576149260412,0.377343357580915,0.374138026744836,0.370959923486935,0.367808816523439,0.364684476535205,0.361586676151036,0.358515189931131,0.355469794350681,0.3524502677836,0.349456390486398,0.346487944582191,0.343544714044839,0.340626484683231,0.337733044125698,0.334864181804551,0.332019688940763,0.329199358528774,0.326402985321427,0.323630365815027,0.320881298234538,0.318155582518893,0.315453020306439,0.312773414920499,0.310116571355059,0.307482296260577,0.304870397929913,0.302280686284378,0.299712972859899,0.297167070793305,0.294642794808727,0.29213996120412,0.289658387837884,0.28719789411562,0.28475830097698,0.282339430882638,0.27994110780137,0.277563157197246,0.275205406016921,0.272867682677051,0.270549817051799,0.268251640460454,0.265972985655162,0.263713686808748,0.26147357950265,0.259252500714957,0.257050288808539,0.25486678351929,0.252701825944459,0.250555258531093,0.248426925064565,0.246316670657208,0.244224341737045,0.24214978603661,0.240092852581867,0.238053391681226,0.236031254914645,0.234026295122835,0.232038366396543,0.230067324065939,0.228113024690085,0.2261753260465,0.224254087120804,0.222349168096461,0.220460430344603,0.218587736413937,0.216730950020748,0.214889936038978,0.213064560490394,0.211254690534835,0.209460194460546,0.207680941674596,0.205916802693369,0.204167649133144,0.202433353700751,0.200713790184309,0.199008833444038,0.197318359403154,0.195642245038841,0.193980368373294,0.192332608464846,0.190698845399165,0.189078960280525,0.18747283522316,0.185880353342678,0.184301398747557,0.182735856530714,0.18118361276114,0.179644554475607,0.178118569670453,0.176605547293424,0.175105377235598,0.17361795032337,0.172143158310504,0.17068089387026,0.169231050587582,0.167793522951351,0.166368206346712,0.164954997047455,0.163553792208469,0.162164489858258,0.16078698889152,0.159421189061789,0.158066990974137,0.156724296077945,0.155393006659729,0.154073025836029,0.152764257546357,0.151466606546209,0.150179978400131,0.148904279474851,0.147639416932458,0.146385298723651,0.145141833581041,0.143908931012502,0.142686501294595,0.141474455466032,0.140272705321204,0.139081163403761,0.137899743000249,0.136728358133798,0.135566923557866,0.134415354750035,0.133273567905859,0.132141479932769,0.131019008444019,0.129906071752698,0.128802588865779,0.127708479478231,0.126623663967168,0.12554806338606,0.124481599458985,0.123424194574933,0.12237577178216,0.121336254782584,0.120305567926236,0.119283636205752,0.118270385250915,0.117265741323247,0.116269631310634,0.115281982722015,0.1143027236821,0.11333178292614,0.112369089794744,0.111414574228734,0.110468166764049,0.109529798526685,0.10859940122769,0.107676907158187,0.10676224918445,0.105855360743021,0.104956175835861,0.104064629025549,0.103180655430521,0.102304190720347,0.101435171111049,0.100573533360461,0.0997192147636257,0.0988721531482296,0.0980322868700809,0.0971995548086223,0.0963738963624829,0.0955552514450683,0.0947435604801875,0.0939387643977178,0.0931408046293054,0.0923496231041038,0.0915651622445472,0.0907873649621606,0.0900161746534052,0.0892515351955591,0.0884933909426332,0.0877416867213211,0.0869963678269844],[0.269329741953576,0.267041929250335,0.264773550297438,0.262524440015525,0.260294434727501,0.258083372146618,0.255891091364669,0.253717432840275,0.251562238387277,0.249425351163224,0.247306615657957,0.245205877682292,0.243122984356803,0.241057784100691,0.239010126620754,0.236979862900454,0.234966845189067,0.232970926990932,0.230991963054794,0.229029809363226,0.227084323122154,0.225155362750465,0.2232427878697,0.221346459293842,0.219466239019183,0.217601990214284,0.215753577210018,0.213920865489692,0.212103721679262,0.210302013537626,0.208515609946999,0.206744380903372,0.204988197507051,0.203246931953275,0.201520457522919,0.199808648573266,0.19811138052887,0.196428529872485,0.19475997413608,0.193105591891923,0.191465262743747,0.189838867317987,0.188226287255092,0.186627405200914,0.185042104798164,0.183470270677948,0.181911788451368,0.180366544701199,0.178834426973636,0.177315323770108,0.175809124539165,0.174315719668434,0.172835000476638,0.171366859205693,0.16991118901286,0.168467883962973,0.167036839020729,0.165617950043043,0.164211113771472,0.162816227824697,0.161433190691073,0.160061901721245,0.158702261120817,0.157354169943097,0.15601753008189,0.154692244264362,0.153378216043959,0.15207534979339,0.150783550697666,0.149502724747203,0.148232778730974,0.146973620229735,0.145725157609291,0.144487300013832,0.143259957359319,0.142043040326929,0.140836460356557,0.139640129640364,0.138453961116398,0.137277868462246,0.136111766088763,0.134955569133834,0.133809193456206,0.132672555629359,0.131545572935436,0.130428163359227,0.129320245582196,0.128221738976564,0.127132563599443,0.126052640187017,0.124981890148773,0.123920235561785,0.122867599165038,0.121823904353809,0.120789075174093,0.119763036317071,0.118745713113635,0.117737031528949,0.116736918157066,0.11574530021558,0.114762105540336,0.113787262580173,0.112820700391721,0.111862348634234,0.110912137564475,0.109969998031636,0.109035861472312,0.108109659905505,0.10719132592768,0.106280792707859,0.105377993982758,0.104482864051963,0.103595337773153,0.102715350557353,0.101842838364238,0.100977737697472,0.100119985600088,0.0992695196499007,0.098426277954972,0.097590199149101,0.0967612223873604,0.0959392873416681,0.0951243341963969,0.0943163036440217,0.0935151368808029,0.0927207756025075,0.0919331620001661,0.0911522387558653,0.0903779490385773,0.0896102365000232,0.0888490452705729,0.0880943199551792,0.087346005629346,0.0866040478351318,0.0858683925771862,0.0851389863188205,0.0844157759781118,0.0836987089240397,0.0829877329726564,0.0822827963832888,0.0815838478547735,0.080890836521723,0.0802037119508241,0.0795224241371678,0.0788469235006103,0.0781771608821645,0.077513087540423,0.0768546551480102,0.0762018157880664,0.0755545219507597,0.0749127265298291,0.0742763828191561,0.0736454445093658,0.0730198656844569,0.07239960081846,0.0717846047721244,0.0711748327896335,0.0705702404953476,0.0699707838905741,0.0693764193503661,0.0687871036203474,0.0682027938135645,0.067623447407366,0.0670490222403075,0.0664794765090838,0.0659147687654864,0.0653548579133873,0.0647997032057482,0.0642492642416553,0.0637035009633789,0.0631623736534584,0.0626258429318118,0.0620938697528703,0.0615664154027358,0.0610434414963648,0.0605249099747737,0.0600107831022701,0.0595010234637061,0.0589955939617555,0.058494457814214,0.057997578551323],[0.67332435488394,0.667604823125839,0.661933875743595,0.656311100038813,0.650736086818753,0.645208430366545,0.639727728411671,0.634293582100686,0.628905595968193,0.62356337790806,0.618266539144892,0.613014694205731,0.607807460892008,0.602644460251726,0.597525316551885,0.592449657251135,0.587417112972666,0.582427317477331,0.577479907636984,0.572574523408064,0.567710807805386,0.562888406876163,0.558106969674251,0.553366148234605,0.548665597547957,0.544004975535711,0.539383943025045,0.53480216372423,0.530259304198155,0.525755033844066,0.521289024867498,0.516860952258431,0.512470493767628,0.508117329883188,0.503801143807297,0.499521621433165,0.495278451322174,0.491071324681212,0.486899935340199,0.482763979729807,0.478663156859367,0.474597168294967,0.47056571813773,0.466568513002284,0.462605261995409,0.458675676694869,0.454779471128419,0.450916361752998,0.44708606743409,0.44328830942527,0.439522811347913,0.435789299171084,0.432087501191595,0.428417148014232,0.42477797253215,0.421169709907432,0.417592097551822,0.414044875107608,0.41052778442868,0.407040569561742,0.403582976727683,0.400154754303111,0.396755652802043,0.393385424857742,0.390043825204725,0.386730610660905,0.383445540109898,0.380188374483475,0.376958876744166,0.373756811868007,0.370581946827436,0.367434050574338,0.364312894023228,0.36121825003458,0.358149893398297,0.355107600817324,0.352091150891391,0.349100324100911,0.346134902790994,0.343194671155615,0.340279415221907,0.337388922834586,0.334522983640515,0.331681389073396,0.32886393233859,0.326070408398068,0.32330061395549,0.32055434744141,0.317831408998608,0.315131600467542,0.312454725371934,0.309800588904463,0.307168997912595,0.304559760884524,0.301972687935233,0.299407590792679,0.296864282784088,0.294342578822374,0.291842295392664,0.289363250538949,0.286905263850839,0.284468156450433,0.282051750979303,0.279655871585585,0.277280343911187,0.274924995079091,0.272589653680781,0.270274149763763,0.2679783148192,0.265701981769648,0.263444984956895,0.261207160129909,0.258988344432882,0.256788376393382,0.254607095910595,0.252444344243681,0.250299964000219,0.248173799124752,0.24606569488743,0.243975497872752,0.241903055968401,0.23984821835417,0.237810835490992,0.235790759110054,0.233787842202007,0.231801939006269,0.229832905000415,0.227880596889663,0.225944872596443,0.224025591250058,0.222122613176432,0.220235799887948,0.218365014073365,0.216510119587829,0.214670981442965,0.212847465797051,0.211039439945279,0.209246772310099,0.207469332431641,0.205706990958222,0.203959619636934,0.202227091304307,0.20050927987706,0.198806060342919,0.197117308751526,0.195442902205411,0.193782718851057,0.192136637870026,0.190504539470166,0.188886304876899,0.187281816324573,0.18569095704789,0.184113611273415,0.182549664211142,0.18099900204615,0.179461511930311,0.177937081974084,0.176425601238369,0.174926959726435,0.173441048375915,0.171967759050868,0.170506984533911,0.169058618518415,0.167622555600769,0.166198691272709,0.164786921913716,0.163387144783468,0.161999258014371,0.160623160604138,0.159258752408447,0.157905934133646,0.15656460732953,0.155234674382176,0.15391603850684,0.152608603740912,0.151312274936934,0.150026957755675,0.148752558659265,0.147488984904389,0.146236144535535,0.144993946378307]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>x<\/th>\n      <th>dx_V<\/th>\n      <th>dx_I<\/th>\n      <th>dx<\/th>\n      <th>qx_V<\/th>\n      <th>qx_I<\/th>\n      <th>qx<\/th>\n      <th>lx_V<\/th>\n      <th>lx_I<\/th>\n      <th>lx<\/th>\n      <th>Lx<\/th>\n      <th>mx_V<\/th>\n      <th>mx_I<\/th>\n      <th>mx<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"dom":"pt","pageLength":5,"autoWidth":true,"scrollX":true,"columnDefs":[{"targets":4,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 2, 3, \",\", \".\");\n  }"},{"targets":5,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 2, 3, \",\", \".\");\n  }"},{"targets":6,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 2, 3, \",\", \".\");\n  }"},{"targets":11,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 2, 3, \",\", \".\");\n  }"},{"targets":12,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 2, 3, \",\", \".\");\n  }"},{"targets":13,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 2, 3, \",\", \".\");\n  }"},{"targets":9,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"targets":1,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"targets":2,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"targets":3,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"targets":7,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"targets":8,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"targets":10,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"className":"dt-right","targets":[1,2,3,4,5,6,7,8,9,10,11,12,13]}],"order":[],"orderClasses":false,"orderCellsTop":true,"lengthMenu":[5,10,25,50,100],"rowCallback":"function(row, data, displayNum, displayIndex, dataIndex) {\nvar value=data[1]; $(this.api().cell(row, 1).node()).css({'background-color':'lightblue'});\nvar value=data[7]; $(this.api().cell(row, 7).node()).css({'background-color':'lightblue'});\nvar value=data[4]; $(this.api().cell(row, 4).node()).css({'background-color':'lightblue'});\nvar value=data[11]; $(this.api().cell(row, 11).node()).css({'background-color':'lightblue'});\nvar value=data[2]; $(this.api().cell(row, 2).node()).css({'background-color':'lightsalmon'});\nvar value=data[8]; $(this.api().cell(row, 8).node()).css({'background-color':'lightsalmon'});\nvar value=data[5]; $(this.api().cell(row, 5).node()).css({'background-color':'lightsalmon'});\nvar value=data[12]; $(this.api().cell(row, 12).node()).css({'background-color':'lightsalmon'});\n}"}},"evals":["options.columnDefs.0.render","options.columnDefs.1.render","options.columnDefs.2.render","options.columnDefs.3.render","options.columnDefs.4.render","options.columnDefs.5.render","options.columnDefs.6.render","options.columnDefs.7.render","options.columnDefs.8.render","options.columnDefs.9.render","options.columnDefs.10.render","options.columnDefs.11.render","options.columnDefs.12.render","options.rowCallback"],"jsHooks":[]}</script>
```
<br><br>

:::{.rmdtip}
**DEMOGRAPHY & DATA SCIENCE**

<details>
<summary>Why might you not want to use the methods described here (without substantial extension and modification) to study termination rates in  a small- to mid-sized company? </summary>
* The demographic methods we study in this course assume complete data on a **very large** population.
* To extend to small samples from large populations, you need to account for sampling error.
* To extend to small populations, you need to account for stochasticity in the process itself.
</details>
:::
<br>

## Some basic mathematics of multiple decrement processes

### Statistical independence among observed decrement rates {.unnumbered}

:::{.rmdimportant}
**KEY CONCEPT**

**Force of decrement**: The cause-specific decrement rate measured over an infinitesimally small amount of time.

Extending Equation \@ref(eq:force-of-mortality) to multiple decrements:

\begin{equation}
\mu^i(x) = \lim_{n \rightarrow 0} {}_{n}m_x^i
(\#eq:force-of-decrement)
\end{equation}

In competing risk analysis (subset of event history analysis and extension of survival analysis), Equation \@ref(eq:force-of-decrement) known as the cause-specific hazard function.

Extending Equation \@ref(eq:continuoussurvival):

\begin{equation}
{}_{n}p_x^i = e^{-\int_x^{x+n} \mu^i(y)dy}
(\#eq:continuoussurvival-decrement)
\end{equation}
:::

* Just as ${}_{n}m_x = \sum_i {}_{n}m_x^i$, so too does $\mu(x) = \sum_i \mu(x)^i$
* ${}_{n}p_x = \prod_i {}_{n}p_x^i$: The probability of remaining in current state from $x$ to $x+n$ is the product of the independent probabilities of not succumbing to each cause
* PHG pg. 79 give other examples of multiple decrement columns with continuous analogues

:::{.rmdimportant}
**KEY INSIGHTS**

The statements above assume **statistical independence** among observed decrement rates, which means:

* No overlap (all causes are mutually exclusive and exhaustive)
* No combinations (overall decrement rate includes no interaction terms of cause-specific rates)

But that doesn't require statistical independence among *disease processes*. The causal factors underlying one decrement rate may include the factors that influence another decrement rate.

**Examples:**

* Employee talent may be positively associated with both voluntary *and* involuntary termination. Talented employees have better outside opportunities. Untalented employees have higher layoff risk.
* A drug meant to reduce death rate due to heart disease ($H$) may increase death rates for other causes ($-H$), making the heart disease treatment look more effective than it is. In this case, ${}_{n}q_x^H$ may decrease, but only because ${}_{n}q_x^{-H}$ increases.

And remember about competing risks: Statistical independence among observed decrement rates doesn't mean statistical independence between decrement *probabilities* and decrement rates.

These insights become crucial as you learn competing risks analysis in other courses.
:::

### Be careful assuming period decrement rates ${}_{n}M_x^i$ equal cohort rates ${}_{n}m_x^i$

Recall Equation \@ref(eq:period-rates-and-force) from our [week 3 analysis](#careful-assuming-M-equals-m) of the conditions when single decrement period rates ${}_{n}M_x$ equal cohort rates ${}_{n}m_x$.

Similarly, the period decrement rate is a function of both decrement force $\mu^i(x)$ and period age structure $c(x)$:

$$
{}_{n}M_x^i
  = \frac{
    \int_x^{x+n} \color{dodgerblue}{N(a)}\mu^i(a)da
  }{
    \int_x^{x+n} \color{dodgerblue}{N(a)}da
  }
  = \int_x^{x+n} \color{dodgerblue}{c(a)}\mu^i(a)da
$$

* It's possible that $\color{dodgerblue}{c(a)} = \int_x^{x+n} \color{dodgerblue}{N(a)}\cdot \frac{1}{\int_x^{x+n} \color{dodgerblue}{N(a)}da}da \neq \int_x^{x+n} \color{darkorange}{l(a)}\cdot \frac{1}{\int_x^{x+n} \color{darkorange}{l(a)}da}da$
* So it's also possible that ${}_{n}M_x^i \neq {}_{n}m_x^i$

<details>
<summary>Based on our analysis of single decrement processes, under what two conditions can we be sure ${}_{n}M_x^i = {}_{n}m_x^i$? **Tap for answer**</summary>
1. Constant decrement rate over age interval
2. Stationary population

In the multiple decrement case, the definition of stationary population extends to require constant age-specific decrement rates for each cause $i$.
</details>

## Associated single decrement tables from period data

:::{.rmdimportant}
**KEY CONCEPT**

* **Associated single decrement table (ASDT):** A single decrement table that summarizes the hypothetical case when only cause $i$ exists

* **Cause-deleted single decrement table:** An ASDT that defines the decrement cause of interest as $-i$ (all causes but $i$)

**DISCUSS:** Example use cases for an ASDT or cause-deleted table...
:::

### Challenge to ASDT construction:  Target ASDT decrement rate ${}_{n}^*m_x^i$ may differ from observed rate ${}_{n}m_x^i$ {.unnumbered}

$$
{}_{n}^*m_x^i
  = \frac{
    \int_x^{x+n}
      e^{-\int_x^a \color{limegreen}{\mu^i(y)}dy}
      \color{limegreen}{\mu^i(y)}da
  }{
    \int_x^{x+n}
      e^{-\int_x^a \color{limegreen}{\mu^i(y)}dy}
  }
\textsf{ whereas }
{}_{n}m_x^i
  = \frac{
    \int_x^{x+n}
      e^{-\int_x^a \color{olive}{\mu(y)}dy}
      \color{limegreen}{\mu^i(y)}da
  }{
    \int_x^{x+n}
      e^{-\int_x^a \color{olive}{\mu(y)}dy}
  }
$$

<details>
<summary>Why in general not equal? **Hint:** Think about how $\mu(a) = \sum_i \mu^i(a)$. **Tap for answer**</summary>
Because $\mu(a) > \mu^i(a)$ for all ages $a$.

A picture might help, returning to our simulated employee termination example. Note how $\mu^I(x)$ and $\mu^V(x)$ stacked atop one another to equal $\mu(x)$

<img src="04_multiple-decrement-processes_files/figure-html/mu_start_not_mu_plot-1.png" width="672" />

</details>
<br>

### Three ways to solve the ${}_{n}^*m_x^i \neq {}_{n}m_x^i$ problem {.unnumbered}

#### ${}_{n}^*m_x^i \neq {}_{n}m_x^i$ solution option 1: Ignore the problem and assume ${}_{n}^*m_x^i = {}_{n}m_x^i$ {.unnumbered}

In this case, you follow the single decrement table construction procedure, but the ${}_{n}m_x \rightarrow {}_{n}q_x$ conversion becomes:

$${}_{n}^*m_x^i = {}_{n}M_x^i = {}_{n}m_x^i$$

and

$${}_{n}^*q_x^i = \frac{
  n \cdot {}_{n}m_x^i
}{
  1 + \left(n - {}_{n}^*a_x^i\right){}_{n}m_x^i
}$$

Approximate ${}_{n}^*a_x$ using similar methods from [week 3](#qx-to-mx-conversion). Rules of thumb or graduation are preferable.

:::{.rmdcaution}
**Don't ignore the problem and assume ${}_{n}^*m_x^i = {}_{n}m_x^i$.**

Especially if decrement rates are high, this method can lead to huge errors.
:::
<br><br>

#### ${}_{n}^*m_x^i \neq {}_{n}m_x^i$ solution option 2: Assume constant decrement force $\mu^i(x)$ between ages $x$ and $x+n$ {.unnumbered}

Suppose $\mu^i(a)$ is a constant $\color{purple}{\gamma}$ between ages $x$ and $x+n$. Then: 

$$
\require{bcancel}
\begin{align}
{}_{n}^*m_x^i|_{\mu^i(x) = \color{purple}{\gamma}}
  &= \frac{
    \int_x^{x+n}
      e^{-\int_x^a \color{limegreen}{\mu^i(y)}dy}
      \color{limegreen}{\mu^i(a)}da
  }{
    \int_x^{x+n}
      e^{-\int_x^a \color{limegreen}{\mu^i(y)}dy}da
  } \\
  &= \frac{
    \int_x^{x+n} e^{-\int_x^a \color{purple}{\gamma}dy}\color{purple}{\gamma}da
  }{
    \int_x^{x+n} e^{-\int_x^a \color{purple}{\gamma}dy}da
  } \\
  &= \color{purple}{\gamma}\frac{
    \bcancel{\int_x^{x+n} e^{-\int_x^a \color{purple}{\gamma}dy}da}
  }{
    \bcancel{\int_x^{x+n} e^{-\int_x^a \color{purple}{\gamma}dy}da}
  } \\
  &= \color{purple}{\gamma} \\
  &= \color{purple}{\gamma}\frac{
    \bcancel{\int_x^{x+n} e^{-\int_x^a \color{olive}{\mu(y)}dy}da}
  }{
    \bcancel{\int_x^{x+n} e^{-\int_x^a \color{olive}{\mu(y)}dy}da}
  } \\
  &= \frac{
    \int_x^{x+n}
      e^{-\int_x^a \color{olive}{\mu(y)}dy}
      \color{purple}{\gamma}da
  }{
    \int_x^{x+n}
      e^{-\int_x^a \color{olive}{\mu(y)}dy}da
  } \\
  &= \frac{
    \int_x^{x+n}
      e^{-\int_x^a \color{olive}{\mu(y)}dy}
      \color{limegreen}{\mu^i(a)}da
  }{
    \int_x^{x+n}
      e^{-\int_x^a \color{olive}{\mu(y)}dy}da
  } = {}_{n}m_x^i|_{\mu^i(x) = \color{purple}{\gamma}}
\end{align}
$$

Under constant age- and cause-specific hazard ${}_{n}\gamma^i_x$ assumed to be equal to observed cause-specific decrement rate ${}_{n}M^i_x$:

$$
{}_{n}^*p_x^i = e^{-n \cdot {}_{n}M^i_x}
$$

and

$$
{}_{n}^*L_x^i = \frac{{}_{}^*l_x^i - {}_{}^*l_{x+n}^i}{{}_{n}M^i_x}
$$

<details>
<summary>With these values in hand, you don't even need to compute ${}_{n}^*a_x^i$ to complete the rest of the multiple decrement table. Why? **Tap for answer**</summary>
Because ${}_{n}^*p_x^i = 1 - {}_{n}^*q_x^i$, you don't need to compute ${}_{n}^*a_x^i$ at all to do the rate $\rightarrow$ probability conversion
</details>
<br>

:::{.rmdcaution}
**Only assume constant hazard if the age interval is small relative to the rate at which the decrement force changes.**

In such cases, the constant cause-specific hazard assumption is more tenable.
:::
<br><br>

#### ${}_{n}^*m_x^i \neq {}_{n}m_x^i$ solution option 3: Assume proportional hazards {.unnumbered}

* For this solution, $\mu^i(a) = R^i \cdot \mu(a)$ for all ages $a$ between $x$ and $x+n$. $R^i$ is a *constant of proportionality* for cause $i$.
* Therefore, $\mu^i(a) \propto \mu(a)$.
* Consequently, ${}_{n}^*p_x = \left[{}_{n}p_x\right]^{R^i}$, or the single decrement survival probability raised to the $R^i$^th^ power (see PHG pg. 82 for derivation).

Furthermore,

* $R^i = \frac{{}_{n}D_x^i/l_x}{{}_{n}D_x/l_x}=\frac{{}_{n}D_x^i}{{}_{n}D_x}$, the ratio of *observed decrements* between ages $x$ and $x+n$ (**NOT** the ratio of decrements computed during life table procedure).
* Consequently, ${}_{n}^*p_x = \left[{}_{n}p_x\right]^{\left(\frac{{}_{n}D_x^i}{{}_{n}D_x}\right)}$

Two related challenges remain under proportional hazards:

* Choosing which value of ${}_{n}^*m_x^i$ to put into the final life table
* Because ${}_{n}^*m_x^i = {}_{n}^*d_x^i / {}_{n}^*L_x^i$ and ${}_{n}^*L_x^i = n \cdot {}_{}^*l_{x+n} + {}_{n}^*a_x^i \cdot {}_{n}^*d_x^i$, this amounts to choosing values of ${}_{n}^*a_x^i$

When working with human mortality data, PHG pgs. 83-84 and the professor I had for this course ([Sam Clark](https://www.samclark.net/)) collectively recommend using the following procedure to estimate ${}_{n}^*a_x^i$:

1. For ages $10 \leq x < 80$:

    Use a version of Keyfitz's [-@keyfitz1966life] 2^nd^ degree polynomial to graduate deaths:

    $$
    {}_{n}^*a_x^i = \frac{
      -\frac{n}{24} {}_{n}^*d^i_{x-n}
      + \frac{n}{2} {}_{n}^*d^i_{x}
      + \frac{n}{24} {}_{n}^*d^i_{x+n}
    }{
      {}_{n}^*d^i_x
    }
    $$
    
    Note that ${}_{n}^*d^i_{x-n}$ is directly observable from [multiple decrement table construction steps](#multiple-decrement-steps) 1 through 3, so you don't need to interate as we did with single decrement tables
    
2. For ages $0 \leq x < 10$ and closed age intervals with $x \geq 80$:

    $$
    {}_{n}^*a^i_x = n + R^i\frac{{}_{n}q_x}{{}_{n}^*q^i_x}\left(
      {}_{n}a_x - n
    \right)
    $$
    
    Unlike the Keyfitz polynomial, this approach is adaptable to intervals of irregular length. You use the ${}_{n}a_x - n$ calculated when constructing the single decrement life table
    
    This method interpolates (fills the blank between) two extreme situations:
    
    * No deaths from cause $i$ in the age interval
    * All deaths in age interval due to cause $i$
    
3. For open age interval (e.g., $x \geq 85$):

    $$
    {}_{\infty}^*a^i_{85}
      = \frac{e_{85}^0}{R^i}
      = e_{85}^0 \cdot \frac{{}_{n}D_x}{{}_{n}D^i_x}
    $$
    
    * This was Sam Clark's recommendation
    * This is fairly specific to cause-specific mortality decrement tables!
    * Remember that $D$ refers to *observed* decrements!

:::{.rmdcaution}
**Only use this method if the proportional hazards assumption is tenable**

When I took this course back in the Stone Age, this is the method we were told to use in our homeworks *and in practice*. But you should get used to the possibility that the proportional hazards assumption is violated, because it sometimes is.

<details>
<summary>Would we expect this assumption work well or not so well for many cause-deleted life tables? **Tap for answer**</summary>
* When only one minor cause $i$ is deleted, it will work well because the proportionality assumption holds well.
* When a major cause or set of causes is deleted, it may not work so well
</details>
:::
<br><br>

The plot below returns to our simulated employee termination example, where the voluntary termination rate was set to 60% of the all-cause termination rate. This is an example of what proportional hazards looks like when it is true across age intervals.

<img src="04_multiple-decrement-processes_files/figure-html/proportional_hazards_plot-1.png" width="672" />
<br>

<details>
<summary>Suppose I hadn't forced ${}_{n}m^V_x = 0.6 \cdot {}_{n}m_x$, but let the ratio vary by age $x$, still assuming $\text{Avg}\left(\frac{{}_{n}m^V_x}{{}_{n}m_x}\right) = 0.6$. Could a cause-deleted life table that excludes voluntary termination safely assume proportional hazards? **Tap for answer**</summary>
No because the deleted decrement $V$ is a major contributor to the all-cause decrement rate.
</details>
<br><br>

<details>
<summary>What are some cases when you wouldn't expect proportional hazards? **Hint:** Think of decrement causes that differ in their age-specific rate schedules. **Tap for answers**</summary>
How about the competing risks of **first marriage** vs. **death**?

Or **first birth** vs. **death**?
</details>
<br><br>

:::{.rmdimportant}

**REMEMBER: Proportional hazards are assumed WITHIN an age interval**

The plot below depicts two very different age-specific rate schedules for U.S. women:

* Parity-specific fertility for first births
* Mortality schedule for women in the U.S.

Zoom in on specific age groups to see how the proportional hazards assumption can become more tenable as you narrow the age interval... but not always!


```{=html}
<div id="htmlwidget-5e7472f5f04bba769743" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-5e7472f5f04bba769743">{"x":{"data":[{"x":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110],"y":[0.006499,0.000461,0.000306,0.0002,0.000187,0.000163,0.00014,0.000147,0.000128,0.000128,0.000122,0.000148,0.00014,0.000173,0.000221,0.000274,0.000369,0.000402,0.00047,0.000447,0.000458,0.000482,0.000468,0.000466,0.00046,0.000489,0.000499,0.000535,0.000547,0.000579,0.0006,0.000674,0.000735,0.000805,0.000862,0.000923,0.001011,0.001144,0.001231,0.001356,0.001458,0.001606,0.001697,0.001905,0.001996,0.002178,0.00228,0.002513,0.002719,0.002904,0.003172,0.003395,0.00378,0.004142,0.004548,0.00495,0.005551,0.00603,0.006656,0.007274,0.007889,0.008932,0.009733,0.010495,0.011599,0.012629,0.013952,0.015083,0.016469,0.017769,0.01941,0.02111,0.023568,0.025535,0.027957,0.031395,0.033912,0.036978,0.041699,0.045775,0.053991,0.058024,0.065224,0.073005,0.081779,0.091903,0.102398,0.114789,0.12711,0.143318,0.160459,0.178442,0.201878,0.21991,0.243682,0.268924,0.294775,0.319593,0.349967,0.372497,0.411846,0.431001,0.473685,0.497097,0.539199,0.56261,0.618557,0.561403,0.667933,0.484557,0.487398],"text":"","type":"scatter","mode":"lines","line":{"width":1.88976377952756,"color":"rgba(248,118,109,1)","dash":"solid"},"hoveron":"points","name":"death","legendgroup":"death","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"x":[13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54],"y":[0.00071,0.00341,0.01074,0.02371,0.04049,0.05918,0.07508,0.07822,0.07538,0.07617,0.07663,0.07935,0.08526,0.09408,0.10104,0.1095,0.11667,0.11565,0.11181,0.10327,0.09349,0.08158,0.07237,0.06204,0.04843,0.03831,0.02914,0.02121,0.0139,0.00824,0.00491,0.00279,0.00145,0.00074,0.00046,0.00026,0.00017,0.00014,7e-05,5e-05,3e-05,4e-05],"text":"","type":"scatter","mode":"lines","line":{"width":1.88976377952756,"color":"rgba(0,191,196,1)","dash":"solid"},"hoveron":"points","name":"first birth","legendgroup":"first birth","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null}],"layout":{"margin":{"t":26.2283105022831,"r":7.30593607305936,"b":40.1826484018265,"l":43.1050228310502},"plot_bgcolor":"rgba(235,235,235,1)","paper_bgcolor":"rgba(255,255,255,1)","font":{"color":"rgba(0,0,0,1)","family":"","size":14.6118721461187},"xaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[-5.5,115.5],"tickmode":"array","ticktext":[0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,105,110],"tickvals":[0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,105,110],"categoryorder":"array","categoryarray":[0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,105,110],"nticks":null,"ticks":"outside","tickcolor":"rgba(51,51,51,1)","ticklen":3.65296803652968,"tickwidth":0.66417600664176,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"","size":11.689497716895},"tickangle":-0,"showline":false,"linecolor":null,"linewidth":0,"showgrid":true,"gridcolor":"rgba(255,255,255,1)","gridwidth":0.66417600664176,"zeroline":false,"anchor":"y","title":{"text":"age","font":{"color":"rgba(0,0,0,1)","family":"","size":14.6118721461187}},"hoverformat":".2f"},"yaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[-0.03336515,0.70132815],"tickmode":"array","ticktext":["0.0","0.2","0.4","0.6"],"tickvals":[0,0.2,0.4,0.6],"categoryorder":"array","categoryarray":["0.0","0.2","0.4","0.6"],"nticks":null,"ticks":"outside","tickcolor":"rgba(51,51,51,1)","ticklen":3.65296803652968,"tickwidth":0.66417600664176,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"","size":11.689497716895},"tickangle":-0,"showline":false,"linecolor":null,"linewidth":0,"showgrid":true,"gridcolor":"rgba(255,255,255,1)","gridwidth":0.66417600664176,"zeroline":false,"anchor":"x","title":{"text":"rate","font":{"color":"rgba(0,0,0,1)","family":"","size":14.6118721461187}},"hoverformat":".2f"},"shapes":[{"type":"rect","fillcolor":null,"line":{"color":null,"width":0,"linetype":[]},"yref":"paper","xref":"paper","x0":0,"x1":1,"y0":0,"y1":1}],"showlegend":true,"legend":{"bgcolor":"rgba(255,255,255,1)","bordercolor":"transparent","borderwidth":1.88976377952756,"font":{"color":"rgba(0,0,0,1)","family":"","size":11.689497716895},"title":{"text":"decrement","font":{"color":"rgba(0,0,0,1)","family":"","size":14.6118721461187}}},"hovermode":"closest","barmode":"relative"},"config":{"doubleClick":"reset","modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"source":"A","attrs":{"396c1ee71613":{"x":{},"y":{},"colour":{},"type":"scatter"}},"cur_data":"396c1ee71613","visdat":{"396c1ee71613":["function (y) ","x"]},"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```

:::

### Things to keep in mind about estimating ${}_{n}^*a^i_x$ {.unnumbered}

* The recommendations above are just one possibility
* Which method you use depends on the tenability of its assumptions in your research context
* Yet results may not be all that sensitive to your choice

## Cause-specific decomposition of differences in life expectancies

The proportional hazards assumption allows for life expectancies to be easily decomposed into causal components.

* Recall that ${}_{n}\Delta_x$ is the age-specific component of life expectancy difference $e_0^\circ(2) - e_0^\circ(1)$ for the age interval between $x$ and $x+n$
* Define ${}_{n}\Delta_x^i$ as the age-specific, cause-specific component of the difference
* Define ${}_{n}R_x^i = {}_{n}D_x^i / {}_{n}D_x$ as the constant of proportionality between the focal decrement rate $i$ and the all-cause rate

$$\begin{align}
{}_{n}\Delta_x^i
  &= {}_{n}\Delta_x \cdot \frac{
    {}_{n}m_x^i(2) - {}_{n}m_x^i(1)
  }{
    {}_{n}m_x(2) - {}_{n}m_x(1)
  } \\
  &= {}_{n}\Delta_x \cdot \frac{
    {}_{n}R_x^i(2) \cdot {}_{n}m_x(2) - {}_{n}R_x^i(1) \cdot {}_{n}m_x(1)
  }{
    {}_{n}m_x(2) - {}_{n}m_x(1)
  }
\end{align}$$

<details>
<summary>Describe the intuition behind the right-hand side of the top row above. **Tap for answer**</summary>
A cause-specific contribution to life expectancy is proportional to the ratio of the differences in cause-specific decrement rates to the differences in all-cause decrement rates.
</details>
<br>

<details>
<summary>Why is it useful to know the difference in terms of the observed decrements and the all-cause mortality rate schedule? **Tap for answer**</summary>
In some cases, you only get the all-cause mortality rate schedule and the cause-specific death counts, not the cause-specific death rate.
</details>
<br>

Note that:

* ${}_{n}\Delta_x = \sum_i {}_{n}\Delta_x^i$: Age-specific contributions are the sum of age- and cause-specific components
* $e_x^0(2) - e_x^0(1) = \sum_x {}_{n}\Delta_x = \sum_x \sum_i {}_{n}\Delta^i_x$: The total diference in life expectancy is the sum across all age- and cause-specific components
<br><br>

Below is a table decomposing the difference in life expectancy at birth between Indian and Chinese men in 1990^[Reproduced from Box 4.3 on PHG pg. 87]. **Practice explaining the results and mapping them to our notation.**


```{=html}
<div id="htmlwidget-002787fbca508696a5a3" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-002787fbca508696a5a3">{"x":{"filter":"none","vertical":false,"class":"display","data":[["0","5","15","30","45","60","70","Total difference"],[5.6,0.8,0.3,0.6,0.8,0.3,-0.3,8.2],[5.5,0.6,0.4,0.6,0.7,0.5,0.7,9],[0.1,0.1,-0.1,-0.1,0,-0.1,-0.9,-1],[-0.01,0.2,-0,0.1,0.1,-0.01,-0.1,0.2]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th rowspan=\"2\">Age<\/th>\n      <th colspan=\"4\">Cause-specific contribution to life expectancy difference<\/th>\n    <\/tr>\n    <tr>\n      <th>All causes combined<\/th>\n      <th>Communicable disease, maternal, perinatal and nutritional conditions<\/th>\n      <th>Noncommunicable diseases<\/th>\n      <th>Injuries<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"dom":"t","ordering":false,"columnDefs":[{"targets":1,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"targets":2,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"targets":3,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"targets":4,"render":"function(data, type, row, meta) {\n    return type !== 'display' ? data : DTWidget.formatRound(data, 1, 3, \",\", \".\");\n  }"},{"className":"dt-right","targets":[1,2,3,4]}],"order":[],"autoWidth":false,"orderClasses":false,"rowCallback":"function(row, data, displayNum, displayIndex, dataIndex) {\nvar value=data[1]; $(this.api().cell(row, 1).node()).css({'font-weight':'bold','background-color':isNaN(parseFloat(value)) ? '' : value <= 0 ? \"orange\" : \"lightblue\"});\nvar value=data[2]; $(this.api().cell(row, 2).node()).css({'font-weight':'bold','background-color':isNaN(parseFloat(value)) ? '' : value <= 0 ? \"orange\" : \"lightblue\"});\nvar value=data[3]; $(this.api().cell(row, 3).node()).css({'font-weight':'bold','background-color':isNaN(parseFloat(value)) ? '' : value <= 0 ? \"orange\" : \"lightblue\"});\nvar value=data[4]; $(this.api().cell(row, 4).node()).css({'font-weight':'bold','background-color':isNaN(parseFloat(value)) ? '' : value <= 0 ? \"orange\" : \"lightblue\"});\n}"}},"evals":["options.columnDefs.0.render","options.columnDefs.1.render","options.columnDefs.2.render","options.columnDefs.3.render","options.rowCallback"],"jsHooks":[]}</script>
```

## Associated single decrement tables from current status data

* We're skipping this section during this course
* Read through it if you want to know how to estimate multiple decrement processes from  current status (as opposed to vital statistics or retrospective survey)
* Good to know if that's all the data you have (hello, anthropologists who work in small-scale populations!)
* Try to get better data if possible

## Stationary population with multiple sources of decrement

:::{.rmdimportant}
**KEY CONCEPT**

Recall that a **stationary population** meets the following demographic conditions:

1. Age-specific death rates are constant over time
2. Constant annual flow of births
3. Age-specific net migration rates are zero

<details>
<summary>What must we further assume in the multiple decrement case? **Tap for answer**</summary>
Age-specific decrement rates for each cause $i$ are constant over time
</details>
<br>
:::

In a stationary population:

* ${}_{\infty}q_0^i = \frac{\sum_x^\infty {}_{n}d_x^i}{l_0} = l_0^i/l_0$: The probability that a newborn dies due to cause $i$ is equal to the number of deaths from cause $i$ divided by the annual number of births
* ${}_{\infty}q_x^i = \frac{\sum_{a=x}^\infty {}_{n}d_a}{l_x} = l_x^i/l_x$: The probability that someone aged $x$ eventually dies of cause $i$ is equal to the proportion of annual deaths at ages $x+$ attributable to cause $i$

To prepare for a problem set question, study carefully the example applications of these relations on PHG pg. 91.
