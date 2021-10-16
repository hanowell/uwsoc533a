--- 
title: "UW SOC/CS&SS 533 A Course Notes"
author: "Ben Hanowell"
date: "2021-10-13"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
# url: your book url like https://bookdown.org/yihui/bookdown
# cover-image: path to the social sharing image like images/cover.jpg
description: |
  These are the course notes for Research Methods in Demography, a course cross-listed as SOC/CS&SS 533 A at the University of Washington.
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
---



# Welcome {.unnumbered}

These are the instructor's course notes for Winter Quarter 2022 [SOC/CS&SS/CSDE 533](https://soc.washington.edu/courses/2019/winter/soc/533/a) A (Research Methods in Demography) at the University of Washington. It will contain or link to all lecture notes, code examples, exercises, assignments, and assignment answer keys.

:::{.rmdcaution}
<center>
**CAUTION**

These course notes are a work in progress.

**CAUTION**
</center>
:::

## About this course {.unnumbered}

:::{.rmdnote}
**Syllabus**

A link to a PDF version of the official course syllabus is below:

* COURSE SYLLABUS HYPERLINK HERE

Much of the syllabus is reproduced here.
:::

**Scope:** Demographic methods are tools for population research and related disciplines. In this course, we examine the fundamental concepts, measures, and models that demographers use to understand human population dynamics. The course covers how demographers measure and estimate population growth, mortality, fertility, marriage, and migration. We will examine empirical and model-based methods for description, hypothesis testing, and forecasting.

**Prerequisite** for [CS&SS/SOC/STAT 563](https://soc.washington.edu/courses/2019/spring/soc/563/a): Statistical Demography & Data Science.

**Ties to data science:** Data science in the public or private sector is a career choice open to population researchers. Throughout the course, we’ll see examples of demographic methods applied to topics data scientists study in both the public and private sectors.

**Objectives:** After completing this course, you will be familiar with the concepts and tools of demographic analysis. You will be able to apply many of these tools to demographic data. The tools will be applied in exercises, a take-home mid-term, and a take-home final exam.

**Instructor:** [Ben Hanowell](https://www.adpri.org/about/?tab=1&subtab=1%3A3128), OFFICE TBD, PHONE TBD, EMAIL TBD

***

## Course logistics {.unnumbered}

### Class meetings {.unnumbered}

Please come to class promptly at the scheduled times. About halfway through the class session, there will be a 10-minute break.

:::{.rmdnote}
**Course location:** LOCATION HERE

**Course days and times:** DAYS AND TIMES HERE
:::

**Default class-time agenda**

1. Address outstanding issues from previous sessions or assignments (5 minutes)
1. Lecture part 1 (30-35 minutes)
1. Break (10 minutes)
1. Lecture part 2 (20 minutes)
1. Open Q&A about current or previous days' topics (10 minutes)
1. Overview and clarification of assignments on days assigned (0-5 minutes)

### Office hours {.unnumbered}

I will typically be available for 10 minutes after class. I will hold office hours on Zoom on Wednesdays from 11am until 12pm. Other meeting times can be arranged via phone or email.

:::{.rmdnote}
**Office hours Zoom room**

The link to the office hours Zoom room is below:

* ZOOM HYPERLINK HERE
:::

### Textbook & readings {.unnumbered}

**Textbook:** Preston SH, Heuveline P, Guillot M (2001) *Demography: Measuring and Modeling Population Processes*. Oxford: Blackwell Publishing. ***We will affectionately refer to this textbook as "PHG."***

**Readings:** Additional readings supplement the text. These readings will illustrate techniques discussed in lecture and found in the text, and will also be used as the basis for some class discussions.

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

Use a computer provisioned with the latest versions of [R](https://www.r-project.org/) -@R-base, [RStudio Desktop](https://www.rstudio.com/products/rstudio/), and the following R packages (plus their dependencies):

* [tidycensus](https://walker-data.com/tidycensus/) -@R-tidycensus
* [tidyverse](https://www.tidyverse.org/) -@tidyverse
* LIST REST OF R PACKAGES HERE

The Center for Studies in Demography & Ecology (CSDE) offers Terminal Servers outfitted with the latest versions of this software.

Concurrent to this course is the Winter Quarter 2022 CSDE 502 Proseminar, where you will learn to use R, RStudio, the R packages used in this course, and CSDE Terminal Servers in advance of their usage in this course. In addition, the RStudio Education Beginners page is a good resource. The CSDE 502 and RStudio Education links are below.

:::{.rmdnote}
**Computing resource links**

* [CSDE 502 Proseminar course notes](http://staff.washington.edu/phurvitz/csde502_winter_2021/week1.html)
* [CSDE Computing Resources](https://csde.washington.edu/computing/resources/)
* [RStudio Education Beginners course](https://education.rstudio.com/learn/beginner/)
:::

### Assignments {.unnumbered}

At noon on the last class day of each week, the weekly assignment will get released to Canvas.

### Exams {.unnumbered}

There will be a mid-term exam and a final exam.

### Grading {.unnumbered}

#### Grading structure {.unnumbered}


|Item                    | Number assigned| Points per assignment| Total points|Share of final grade |
|:-----------------------|---------------:|---------------------:|------------:|:--------------------|
|Homework assignments    |               6|                    10|           60|60%                  |
|Take-home mid-term exam |               1|                    15|           15|15%                  |
|Take-home final exam    |               1|                    25|           25|25%                  |

#### Late assignment grading {.unnumbered}

* Each turned-in assignment receives an initial grade of $x$
* The actual grade is $y = x \cdot \text{exp}(-d/8)$, where $d$ is the number of days (including weekends) after the due date that the assignment was turned in
* Everyone gets one grace day to be applied to one homework for the entire quarter
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

<span style='background:#e8e3d3'>**Week 1 (Jan 3-7)** - Concepts and measures</span>

PHG reading: Chapter 1
Assignment: Canvas quiz about yourself, plus basic concepts and measures

<span style='background:#e8e3d3'>**Week 2 (Jan 10-14)** - Age-specific rates and probabilities</span>

PHG reading: Chapter 2
Assignment: Problem set

<span style='background:#e8e3d3'>**Week 3 (Jan 17-21)** - Life table and single decement process</span>

PHG reading: Chapter 3

<span style='background:#e8e3d3'>**Week 4 (Jan 24-28)** - Multiple decrement processes</span>

PHG reading: Chapter 4

<span style='background:#e8e3d3'>**Week 5 (Jan 31 - Feb 4)**  - Fertility and reproduction</span>

PHG reading: Chapter 5

<span style='background:#e8e3d3'>**Week 6 (Feb 7-11)** - Population projection</span>

PHG reading: Chapter 6

<span style='background:#e8e3d3'>**Week 7 (Feb 14-18)** - Stable population model</span>

PHG reading: Chapter 7

<span style='background:#e8e3d3'>**Week 8 (Feb 21-25)** - Modeling age patterns of vital events</span>

PHG reading: Chapter 9

<span style='background:#e8e3d3'>**Week 9 (Feb 28 - Mar 4)** - Data quality and population heterogeneity</span>

PHG reading: Chapter 10

<span style='background:#e8e3d3'>**Week 10 (Mar 7-11)** - Indirect estimation methods</span>

PHG reading: Chapter 11

<span style='background:#e8e3d3'>**Week 11 (Mar 14-18)** - Final exam week</span>

Last call. Y'all don't have to go home, but you can't stay here!

> Beware the ides of March
> - soothsayer to Caesar in Shakespeare's *Julius Caesar*

* *March 14th*: Take-home final exam released on Canvas
* *March 18th*: Final exam due in Canvas

--------

## References cited {.unnumbered}