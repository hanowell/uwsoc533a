--- 
title: "UW SOC/CS&SS/CSDE 533 A Course Notes"
author: "Ben Hanowell"
date: "2022-02-01"
site: bookdown::bookdown_site
description: "These are the course notes for Research Methods in Demography, a course cross-listed as SOC/CS&SS/CSDE 533 A at the University of Washington."

bibliography: [book.bib, packages.bib]
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
suppress-bibliography: true
---



# Welcome {.unnumbered}

These are the instructor's course notes for Winter Quarter 2022 SOC/CS&SS/CSDE 533 A (Research Methods in Demography) at the University of Washington. It will contain or link to all lecture notes, code examples, exercises, assignments, and assignment answer keys. We will also review these course notes during lecture.

## About this course {.unnumbered}

:::{.rmdnote}
**Course listing and syllabus**

Links to the course listing page and official course syllabus are below:

* [Course listing for SOC/CS&SS/CSDE 533  A](https://soc.washington.edu/courses/2022/winter/soc/533/a)
* [PDF of course syllabus](https://canvas.uw.edu/courses/1515201/files/folder/syllabus?preview=85908831)

The syllabus is reproduced on this course notes welcome page.
:::

**Scope:** Demographic methods are tools for population research and related disciplines. In this course, we examine the fundamental concepts, measures, and models that demographers use to understand human population dynamics. The course covers how demographers measure and estimate population growth, mortality, fertility, marriage, and migration. We will examine empirical and model-based methods for description, hypothesis testing, and forecasting.

Although not a formal pre-requisite, this course is designed to prepare you for advanced demographic methods courses, such as CS&SS/SOC/STAT 563 (Statistical Demography & Data Science): https://www.washington.edu/students/timeschd/SPR2019/soc.html#soc563.

**Ties to data science:** Data science in the public or private sector is a career choice open to population researchers. Throughout the course, we’ll see examples of demographic methods applied to topics data scientists study in both the public and private sectors.

**Objectives:** After completing this course, you will be familiar with the concepts and tools of demographic analysis. You will be able to apply many of these tools to demographic data. The tools will be applied in take-home assignments including: exercises, mid-term, and final exam.

**Instructor:** Ben Hanowell (pronouns: he/him/his)

* Email: hanowell@uw.edu
* [Tap for Ben's LinkedIn profile](https://www.linkedin.com/in/ben-hanowell/)
* [Tap for info about Ben's day job](https://www.adpri.org/about/?tab=1&subtab=1%3A3128)

***

## Course logistics {.unnumbered}

### Class meetings {.unnumbered}

:::{.rmdnote}
**Course days and time:** Tuesdays and Thursdays, 2:30-3:50pm. All times Pacific. Please come to class promptly at the scheduled time.

**Remote sessions Jan 3-7:** For (at least) the first week of class, we will meet on Zoom:

* Remote learning Zoom meeting ID: 994 9268 1295
* [Tap for Zoom meeting link](https://washington.zoom.us/j/99492681295)
* [Tap for UW announcement about first week of Winter 2022](https://www.washington.edu/coronavirus/2021/12/21/most-classes-will-meet-online-the-first-week-of-winter-quarter-message-to-uw-students-and-personnel/)

**Course location:** When the remote learning period ends, we will meet at Denny Hall 259:

* [Tap for map of Denny Hall location](https://www.washington.edu/maps/#!/DEN)
:::

**Default class-time agenda**

1. Address outstanding issues from previous sessions or assignments (5 minutes)
1. Lecture part 1 (30-35 minutes)
1. Break (10 minutes)
1. Lecture part 2 (20 minutes)
1. Open Q&A about current or previous days' topics (10 minutes)
1. Overview and clarification of assignments on days assigned (0-5 minutes)

**Participation**

* No participation points
* In-person sessions:
  * I'll call on people directly and at random for verbal input
  * or we'll have open discussion
* For remote sessions:
  * We'll make use of the Zoom chat feature to avoid competing voice chats
  * I'll also call on people directly, especially following up on comments in the chat
  * I may not be able to get to all questions in the chat due to time limitations
  
**Names are important**

* I'm going to do my best to learn everyone's names
* If I don't know how, I'll ask how to correctly pronounce your name so that I do it right

### Office hours {.unnumbered}

I will typically be available for 10 minutes after class. I will hold office hours on Zoom on Wednesdays from 11am until 12pm, including during finals week. Other Zoom meeting times can be arranged via phone or email.

:::{.rmdnote}
**Office hours Zoom room**

The link to the office hours Zoom room is below:

* Office hours Zoom meeting ID: 999 1112 9968
* [Tap of for office hours Zoom link](https://washington.zoom.us/j/99911129968)
:::

### Textbook & readings {.unnumbered}

**Textbook:** Preston SH, Heuveline P, Guillot M (2001) *Demography: Measuring and Modeling Population Processes*. Oxford: Blackwell Publishing. ***We will affectionately refer to this textbook as "PHG."*** The course notes align with the structure of PHG.

**Supplemental readings:** This is a methods-heavy course. We will focus on learning and applying the methods, not on reading additional articles. The course may reference other readings, and you are free to read them. But you won't have to.

### Course website annotation {.unnumbered}

Some students like to annotate course notes. Since this course's notes are a website, you'll need web annotation software for that.

**Web annotation software** allows you to make sentence level comments on any web page, and save those annotations to an account.

Below is a suggestion for web annotation software, although there are others.

:::{.rmdnote}
#### Hypothes.is web annotation platform {.unnumbered}

[Hypothes.is](https://web.hypothes.is/start/) is free open-source web annotation software run by the Hypothesis Project, which is a 501(c) nonprofit.

Set up Hypothes.is at this link: https://web.hypothes.is/start/
:::

### Canvas {.unnumbered}

The course has a Canvas site for assignments (posting, collecting, grading, returning, answer keys) and discussion *among students*. Instructor will only use the discussion board to post answers to frequently-asked questions.

:::{.rmdnote}
**Canvas site**

A link to the course canvas site is below:

* https://canvas.uw.edu/courses/1515201
:::

### Computing {.unnumbered}

We will do our assignments in R. Use an Internet-connected computer provisioned with the latest versions of [R](https://www.r-project.org/) [-@R-base], [RStudio Desktop](https://www.rstudio.com/products/rstudio/), and the latest versions of following R packages:

* [knitr](https://yihui.org/knitr/) [-@R-knitr]
* [kableExtra](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html) [-@R-kableExtra]
* [rmarkdown](https://rmarkdown.rstudio.com/lesson-1.html) [-@R-rmarkdown]
* [tidyverse](https://www.tidyverse.org/) [-@tidyverse]

You may outfit your environment with more packages, but it's not necessary.

The Center for Studies in Demography & Ecology ([CSDE](https://csde.washington.edu/)) offers Terminal Servers outfitted with the latest versions of this software. Concurrent to this course is the Winter Quarter 2022 CSDE 502 Proseminar, where you will learn to use R, RStudio, and the R packages used in this course in advance of when you'll need to use them. In addition, you will learn to use the CSDE Terminal Servers.

Lastly, the RStudio Education Beginners page is a good resource.

Computing resource links are below.

:::{.rmdnote}
**Computing resource links**

* [CSDE 502 Proseminar course notes](https://csde-uw.github.io/csde502-winter-2022/)
* [CSDE Computing Resources](https://csde.washington.edu/computing/resources/)
* [RStudio Education Beginners course](https://education.rstudio.com/learn/beginner/)
:::

### Assignments {.unnumbered}

Timing and rules apply to both exercises and exams.

**Timing**

  * Released to Canvas: 12pm last class day of each week
  * Due: 5pm the Friday the week after release
  * Graded: 5pm the Friday the week after due

**Prohibitions:** Because the goal of this course is to learn the foundations of demographic methods, you are not allowed to use specialized software packages for demographic calculations to complete exercises. Instead, you'll rely on R data structures, R mathematical operators, R vector and matrix functions, R tabular data manipulation, basic derivatives and integration, algebra, and arithmetic. You may use specialized software packages to check your work.

### Grading {.unnumbered}

#### Grading structure {.unnumbered}

* **Exercise grading:** Half a point for good-faith effort to complete all questions, plus seven points distributed across questions, with half-point increments available for incomplete or almost-right answers
* **Mid-term exam grading:** One point for good-faith effort to complete all questions, plus 14 points distributed across questions, with half-point increments available for incomplete or almost-right answers
* **Final exam grading:** Two points for good-faith effort to complete all questions, plus 23 points distributed across questions, with half-point increments available for incomplete or almost right answers.

<table style="width:99%">
 <thead>
  <tr>
   <th style="text-align:left;"> Item </th>
   <th style="text-align:right;"> Number assigned </th>
   <th style="text-align:right;"> Points per assignment </th>
   <th style="text-align:right;"> Total points </th>
   <th style="text-align:left;"> Share of grade </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;border-right:1px solid;"> Exercises </td>
   <td style="text-align:right;border-right:1px solid;"> 8 </td>
   <td style="text-align:right;border-right:1px solid;"> 7.5 </td>
   <td style="text-align:right;border-right:1px solid;"> 60 </td>
   <td style="text-align:left;border-right:1px solid;"> 60% </td>
  </tr>
  <tr>
   <td style="text-align:left;border-right:1px solid;"> Mid-term </td>
   <td style="text-align:right;border-right:1px solid;"> 1 </td>
   <td style="text-align:right;border-right:1px solid;"> 15.0 </td>
   <td style="text-align:right;border-right:1px solid;"> 15 </td>
   <td style="text-align:left;border-right:1px solid;"> 15% </td>
  </tr>
  <tr>
   <td style="text-align:left;border-right:1px solid;"> Final </td>
   <td style="text-align:right;border-right:1px solid;"> 1 </td>
   <td style="text-align:right;border-right:1px solid;"> 25.0 </td>
   <td style="text-align:right;border-right:1px solid;"> 25 </td>
   <td style="text-align:left;border-right:1px solid;"> 25% </td>
  </tr>
</tbody>
</table>

#### Late assignment grading {.unnumbered}

* Each turned-in assignment receives an initial grade of $x$
* The actual grade is $y = x \cdot \text{exp}(-d/8)$, where $d$ is the number of exact days (including weekends) after the due date that the assignment was turned in
* Everyone gets one grace day to be applied to one assignment (including the mid-term and final exam) for the entire quarter
* I totally stole this grading scheme from [Peter Hoff](https://pdhoff.github.io/)

#### Back in my day! {.unnumbered}

Fun trivia: When I took this course back in the day, [Sam Clark](https://sociology.osu.edu/people/clark.2962) had us do a pencil and paper mid-term and final, and I think we got a single index card for notes. 🙂 🤣 🙃

:::{.rmdnote}
**Course notes source code**

A link to the course notes source code is below, and under the table of contents:

* [Tap for link to course notes source code](https://github.com/hanowell/uwsoc533a)
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
* **Assignment:** Exercise 1:
  * Released 12pm Jan 6
  * Due 5pm Jan 14
  * Graded 5pm Jan 21
  * Covering:
    * A little bit about yourself
    * Your definition of this subject
    * Your goals for this course
    * Topics from [week 1](#week01)

--------

### <span style='background:#e8e3d3'>Week 2 (Jan 10-14)</span> {#week02 .unnumbered}

* **Topic:** [Age-specific rates and probabilities]
* **PHG reading:** Chapter 2
* **Assignment:** Exercise 2:
  * Released 12pm Jan 13
  * Due 5pm Jan 21
  * Graded 5pm Jan 28 
  * Covering topics from [Week 1](#week01) and [Week 2](#week02)
* **New CSDE 502 Proseminar skills applied:**
  * R data types
  * R data structures
  * R native pipes
  * Data manipulation in the `tidyverse`

--------

### <span style='background:#e8e3d3'>Week 3 (Jan 17-21)</span> {#week03 .unnumbered}

* **Topic:** [Life tables and single decrement processes]
* **PHG reading:** Chapter 3
* **Assignment:** Exercise 3:
  * Released 12pm Jan 20
  * Due 5pm Jan 28
  * Graded 5pm Feb 4
  * Covering topics from [Week 2](#week02) and [Week 3](#week03)
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
* **Assignment:** Exercise 4:
  * Released 12pm Jan 27
  * Due 5pm Feb 4
  * Graded 5pm Feb 11
  * Covering topics from [Week 3](#week03) and [Week 4](#week04)

--------

### <span style='background:#e8e3d3'>Week 5 (Jan 31 - Feb 4)</span> {#week05 .unnumbered}

* **Topic:** [Fertility and reproduction]
* **PHG reading:** Chapter 5
* **Assignment:** Take-home mid-term exam:
  * Released 12pm Feb 3
  * Due 5pm Feb 11
  * Graded 5pm 18
  * Covering topics from [Week 1](#week01) through [Week 5](#week05)
* **Extra credit:** (2 points) Mid-quarter check-in quiz on Canvas:
  * Define the topics again
  * Progress toward you course goals
  * Course content or assignments you'd discard if you ran it
  * Other feedback for instructor

--------

### <span style='background:#e8e3d3'>Week 6 (Feb 7-11)</span> {#week06 .unnumbered}

* **Topic:** [Population projections]
* **PHG reading:** Chapter 6
* **Assignment:** Exercise 5:
  * Released 12pm Feb 10
  * Due 5pm Feb 18
  * Graded 5pm Feb 25
  * Covering topics from [Week 5](#week05) and [Week 6](#week06)

--------

### <span style='background:#e8e3d3'>Week 7 (Feb 14-18)</span> {#week07 .unnumbered}

* **Topic:** [Stable population model]
* **PHG reading:** Chapter 7
* **Assignment:** Exercise 6:
  * Released 12pm Feb 17
  * Due 5pm Feb 25
  * Graded 5pm Mar 4
  * Covering topics from [Week 6](#week06) and [Week 7](#week07)

--------

### <span style='background:#e8e3d3'>Week 8 (Feb 21-25)</span> {#week08 .unnumbered}

* **Topic:** [Modeling age patterns of vital events]
* **PHG reading:** Chapter 9; yup, we're skipping Chapter 8
* **Assignment:** Exercise 7:
  * Released 12pm Feb 24
  * Due 5pm Mar 4
  * Graded 5pm Mar 11
  * Covering topics from [Week 7](#week07) and [Week 8](#week08)

--------

### <span style='background:#e8e3d3'>Week 9 (Feb 28 - Mar 4)</span> {#week09 .unnumbered}

* **Topic:** [Methods for evaluating data quality]
* **PHG reading:** Chapter 10
* **Assignment:** Exercise 8:
  * Released 12pm Mar 3
  * Due 5pm Mar 11
  * Graded 5pm Mar 18
  * Covering topics from [Week 8](#week08) and [Week 9](#week09)

--------

### <span style='background:#e8e3d3'>Week 10 (Mar 7-11)</span> {#week10 .unnumbered}

* **Topic:** [Indirect estimation methods]
* **PHG reading:** Chapter 11
* **Assignment:** Take-home final exam:
  * Released 12pm Mar 10
  * Due 5pm Mar 18
  * Graded 5pm Mar 22
  * Covering topics from [Week 1](#week09) through [Week 10](#week10)

--------

### <span style='background:#e8e3d3'>Week 11 (Mar 14-18)</span> {#week11 .unnumbered}

**FINALS WEEK.** Last call. Y'all don't have to go home, but you can't stay here!

* Work on your final
* No class
* Office hours as usual
* Final course grades released Mar 23

