--- 
title: "UW SOC/CS&SS/CSDE 533 A Course Notes"
author: "Ben Hanowell"
date: "2021-12-09"
site: bookdown::bookdown_site
description: "These are the course notes for Research Methods in Demography, a course cross-listed as SOC/CS&SS/CSDE 533 A at the University of Washington."

bibliography: [book.bib, packages.bib]
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
suppress-bibliography: true
---



# Welcome {.unnumbered}

These are the instructor's course notes for Winter Quarter 2022 SOC/CS&SS/CSDE 533  A (Research Methods in Demography) at the University of Washington. It will contain or link to all lecture notes, code examples, exercises, assignments, and assignment answer keys. We will also review these course notes during lecture.

:::{.rmdcaution}
<center>
**CAUTION**

These course notes are a work in progress.

**CAUTION**
</center>
:::

## About this course {.unnumbered}

:::{.rmdnote}
**Course listing and syllabus**

Links to the course listing page and official course syllabus are below:

* [Course listing for SOC/CS&SS/CSDE 533  A](https://soc.washington.edu/courses/2019/winter/soc/533/a)
* COURSE SYLLABUS HYPERLINK HERE

Much of the syllabus is reproduced on this course notes welcome page.
:::

**Scope:** Demographic methods are tools for population research and related disciplines. In this course, we examine the fundamental concepts, measures, and models that demographers use to understand human population dynamics. The course covers how demographers measure and estimate population growth, mortality, fertility, marriage, and migration. We will examine empirical and model-based methods for description, hypothesis testing, and forecasting.

**Prerequisite** for [CS&SS/SOC/STAT 563](https://soc.washington.edu/courses/2019/spring/soc/563/a): Statistical Demography & Data Science.

**Ties to data science:** Data science in the public or private sector is a career choice open to population researchers. Throughout the course, we’ll see examples of demographic methods applied to topics data scientists study in both the public and private sectors.

**Objectives:** After completing this course, you will be familiar with the concepts and tools of demographic analysis. You will be able to apply many of these tools to demographic data. The tools will be applied in exercises, a take-home mid-term, and a take-home final exam.

**Instructor:** [Ben Hanowell](https://www.adpri.org/about/?tab=1&subtab=1%3A3128), OFFICE TBD, PHONE TBD, EMAIL TBD

***

## Course logistics {.unnumbered}

### Class meetings {.unnumbered}

:::{.rmdnote}
**Course location:** LOCATION HERE

**Course days and times:** DAYS AND TIMES HERE

Please come to class promptly at the scheduled time.
:::

**Default class-time agenda**

1. Address outstanding issues from previous sessions or assignments (5 minutes)
1. Lecture part 1 (30-35 minutes)
1. Break (10 minutes)
1. Lecture part 2 (20 minutes)
1. Open Q&A about current or previous days' topics (10 minutes)
1. Overview and clarification of assignments on days assigned (0-5 minutes)

### Office hours {.unnumbered}

I will typically be available for 10 minutes after class. I will hold office hours on Zoom on Wednesdays from 11am until 12pm, including during finals week. Other Zoom meeting times can be arranged via phone or email.

:::{.rmdnote}
**Office hours Zoom room**

The link to the office hours Zoom room is below:

* ZOOM HYPERLINK HERE
:::

### Textbook & readings {.unnumbered}

**Textbook:** Preston SH, Heuveline P, Guillot M (2001) *Demography: Measuring and Modeling Population Processes*. Oxford: Blackwell Publishing. ***We will affectionately refer to this textbook as "PHG."***

**Supplemental readings:** This is a methods-heavy course. We will focus on learning and applying the methods, not on reading additional articles. Problem sets may reference other readings, and you are free to read them. But you won't have to.

### Canvas {.unnumbered}

The course has a Canvas site for:

* Assignments (posting, collecting, grading, returning, answer keys)
* Readings (PDFs available)

:::{.rmdnote}
**Canvas site**

A link to the course canvas site is below:

* CANVAS SITE HYPERLINK HERE
:::

### Computing {.unnumbered}

We will do our assignments in R. Use an Internet-connected computer provisioned with the latest versions of [R](https://www.r-project.org/) -@R-base, [RStudio Desktop](https://www.rstudio.com/products/rstudio/), and the latest versions of following R packages:

* [knitr](https://yihui.org/knitr/) -@R-knitr
* [kableExtra](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html) -@R-kableExtra
* [rmarkdown](https://rmarkdown.rstudio.com/lesson-1.html) -@R-rmarkdown
* [tidyverse](https://www.tidyverse.org/) -@tidyverse.

You may choose to outfit your environment with more packages if you like, but it's not necessary.

The Center for Studies in Demography & Ecology ([CSDE](https://csde.washington.edu/)) offers Terminal Servers outfitted with the latest versions of this software. Concurrent to this course is the Winter Quarter 2022 CSDE 502 Proseminar, where you will learn to use R, RStudio, the R packages used in this course, and CSDE Terminal Servers in advance of their usage in this course. In addition, the RStudio Education Beginners page is a good resource. The CSDE 502 and RStudio Education links are below.

:::{.rmdnote}
**Computing resource links**

* [CSDE 502 Proseminar course notes](http://staff.washington.edu/phurvitz/csde502_winter_2021/week1.html)
* [CSDE Computing Resources](https://csde.washington.edu/computing/resources/)
* [RStudio Education Beginners course](https://education.rstudio.com/learn/beginner/)
:::

### Assignments {.unnumbered}

* **Timing:** At noon on the last class day of each week, the weekly assignment will get released to Canvas.
* **Prohibitions:** Because the goal of this course is to learn the foundations of demographic methods, you are not allowed to use specialized software packages for demographic calculations to complete problem sets. Instead, you'll rely on R data structures, R mathematical operators, R vector and matrix functions, R tabular data manipulation, basic derivatives and integration, algebra, and arithmetic. You may use specialized software packages to check your work.

### Grading {.unnumbered}

#### Grading structure {.unnumbered}


|Item               | Number assigned| Points per assignment| Total points|Share of final grade |
|:------------------|---------------:|---------------------:|------------:|:--------------------|
|Problem sets       |               6|                    10|           60|60%                  |
|Take-home mid-term |               1|                    15|           15|15%                  |
|Take-home final    |               1|                    25|           25|25%                  |

#### Late assignment grading {.unnumbered}

* Each turned-in assignment receives an initial grade of $x$
* The actual grade is $y = x \cdot \text{exp}(-d/8)$, where $d$ is the number of days (including weekends) after the due date that the assignment was turned in
* Everyone gets one grace day to be applied to one assignment (including the mid-term and final exam) for the entire quarter
* I totally stole this from [Peter Hoff](https://pdhoff.github.io/)

#### Back in my day! {.unnumbered}

Fun trivia: When I took this course back in the day, [Sam Clark](https://sociology.osu.edu/people/clark.2962) had us do a pencil and paper mid-term and final, and I think we got a single index card for notes. 🙂 🤣 🙃

:::{.rmdnote}
**Course notes source code**

A link to the course notes source code is below, and under the table of contents:

* [Course notes source code](https://github.com/hanowell/uwsoc533a)
:::

***

## Course policies {.unnumbered}

**Academic misconduct:** The university policy on plagiarism and academic misconduct is a part of the Student Conduct Code, which cites the definition of academic misconduct in the WAC 478-121. According to this section of the WAC, academic misconduct includes: "Cheating"-such as "unauthorized assistance in taking quizzes", "Falsification" "which is the intentional use or submission of falsified data, records, or other information including, but not limited to, records of internship or practicum experiences or attendance at any required event(s), or scholarly research"; and "Plagiarism" which includes "[t]he use, by paraphrase or direct quotation, of the published or unpublished work of another person without full and clear acknowledgment."

:::{.rmdnote}
**UW Libraries Plagiarism Awareness guide**

A link to the guide is below:

* [UW Libraries Plagiarism Awareness guide](https://www.lib.washington.edu/teaching/plagiarism)
:::

**Accommodation:** Your experience in this class is important to me. If you have already established accommodations with Disability Resources for Students (DRS), please communicate your approved accommodations to me at your earliest convenience so we can discuss your needs in this course. The website for the DRS provides other resources for students and faculty for making accommodations.

Washington state law requires that UW develop a policy for accommodation of student absences or significant hardship due to reasons of faith or conscience, or for organized religious activities. The UW's policy, including more information about how to request an accommodation, is available at Religious Accommodations Policy. Accommodations must be requested within the first two weeks of this course using the Religious Accommodations Request form.

:::{.rmdnote}
**Accomodation resource links**

* [Religious Accommodations Policy](https://registrar.washington.edu/staffandfaculty/religious-accommodations-policy/)
* [Religious Accommodations Request form](https://registrar.washington.edu/students/religious-accommodations-request/)
:::

**Inclusion:** Among the core values of the university are inclusivity and diversity, regardless of race, gender, income, ability, beliefs, and other ways that people distinguish themselves and others. If any assignments and activities are not accessible to you, please contact me so we can make arrangements to include you by making an alternative assignment available.

Learning often involves the exchange of ideas. To include everyone in the learning process, I expect you will demonstrate respect, politeness, reasonableness, and willingness to listen to others at all times-even when passions run high. Behaviors must support learning, understanding, and scholarship.

Preventing violence is a shared responsibility in which everyone at the UW plays a part. If you experience harassment during your studies, please report it to the SafeCampus website (anonymous reports are possible). SafeCampus provides information on counseling and safety resources, University policies, and violence reporting requirements help us maintain a safe personal, work and learning environment.

:::{.rmdnote}
**SafeCampus website**

A link to the SafeCampus program is below:

* [SafeCampus website](https://www.washington.edu/safecampus/)
:::

## Course calendar {.unnumbered}

### <span style='background:#e8e3d3'>Week 1 (Jan 3-7)</span> {#week01 .unnumbered}

* **Topic:** [Concepts and measures]
* **PHG reading:** Chapter 1
* **Assignment:** Canvas quiz covering:
  * A little bit about yourself
  * Basic demographic concepts and measures

--------

### <span style='background:#e8e3d3'>Week 2 (Jan 10-14)</span> {#week02 .unnumbered}

* **Topic:** [Age-specific rates and probabilities]
* **PHG reading:** Chapter 2
* **Assignment:** Problem set 1 covering topics from [Week 1](#week01) and [Week 2](#week02)
* **New CSDE 502 Proseminar skills applied:**
  * R data types
  * R data structures
  * R native pipes
  * Data manipulation in the `tidyverse`

--------

### <span style='background:#e8e3d3'>Week 3 (Jan 17-21)</span> {#week03 .unnumbered}

* **Topic:** [Life tables and single decrement processes]
* **PHG reading:** Chapter 3
* **Assignment:** Problem set 2 covering topics from [Week 2](#week02) and [Week 3](#week03)
* **New CSDE 502 Proseminar skills applied:**
  * Code blocks in R Markdown
  * Graphs in R Markdown
  * Tables in R Markdown
  * Equations in R Markdown
  * HTML output from R Markdown

--------

### <span style='background:#e8e3d3'>Week 4 (Jan 24-28)</span> {#week04 .unnumbered}

* **Topic:** [Multiple decrement processes]
* **PHG reading:** Chapter 4
* **Assignment:** Problem set 3 covering topics from [Week 3](#week03) and [Week 4](#week04)

--------

### <span style='background:#e8e3d3'>Week 5 (Jan 31 - Feb 4)</span> {#week05 .unnumbered}

* **Topic:** [Fertility and reproduction]
* **PHG reading:** Chapter 5
* **Assignment:**
  * *Jan 31*: Take-home mid-term exam released on Canvas
  * *Feb 4*: Mid-term due in Canvas
  * Mid-term covers topics from [Week 1](#week01) through [Week 4](#week04)

--------

### <span style='background:#e8e3d3'>Week 6 (Feb 7-11)</span> {#week06 .unnumbered}

* **Topic:** [Population projections]
* **PHG reading:** Chapter 6
* **Assignment:** Problem set 4 covering topics from [Week 5](#week05) and [Week 6](#week06)

--------

### <span style='background:#e8e3d3'>Week 7 (Feb 14-18)</span> {#week07 .unnumbered}

* **Topic:** [Stable population model]
* **PHG reading:** Chapter 7
* **Assignment:** Problem set 5 covering topics from [Week 6](#week06) and [Week 7](#week07)

--------

### <span style='background:#e8e3d3'>Week 8 (Feb 21-25)</span> {#week08 .unnumbered}

* **Topic:** [Modeling age patterns of vital events]
* **PHG reading:** Chapter 9
* **Assignment:** Problem set 6 covering topics from [Week 7](#week07) and [Week 8](#week08)

--------

### <span style='background:#e8e3d3'>Week 9 (Feb 28 - Mar 4)</span> {#week09 .unnumbered}

* **Topic:** [Data quality and population heterogeneity]
* **PHG reading:** Chapter 10
* **Assignment:** Problem set 7 covering topics from [Week 8](#week08) and [Week 9](#week09)

--------

### <span style='background:#e8e3d3'>Week 10 (Mar 7-11)</span> {#week10 .unnumbered}

* **Topic:** [Indirect estimation methods]
* **PHG reading:** Chapter 11
* **Assignment:** Problem set 8 covering topics from [Week 9](#week08) and [Week 10](#week09)

--------

### <span style='background:#e8e3d3'>Week 11 (Mar 14-18)</span> {#week11 .unnumbered}

**FINALS WEEK.** Last call. Y'all don't have to go home, but you can't stay here!

* **Mar 14**: Take-home final exam released on Canvas
* **Mar 18**: Final exam due in Canvas
* Final is comprehensive

