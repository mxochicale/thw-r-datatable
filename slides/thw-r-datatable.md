---
author:
- Miguel P Xochicale
subtitle:
title: If Thor was an R Programmer, His Hammer Would Be data.table
institute: University of Birmingham 
fontsize: 12pt
date: September 17, 2018
---



## Licence

> This presentation is released under the terms of the Creative 
> Commons Attribution-Share Alike license.
> You are free to reuse it and modify it as much as you want as long as
> you re-share your presentation under the same terms and
> you mention Miguel P Xochicale as being the original author.

This presentation was built in Ubuntu 14.04 x64 with
[Markdown](https://en.wikipedia.org/wiki/Markdown) and
[Pandoc](http://pandoc.org), and is available at:

* https://github.com/mxochicale/thw-r-datatable

See `README.md` for further information


## Outline

* What is `data.table`?
* Why bother using `data.table`?
* Basic examples with `data.table`
* Examples with `data.table` and `ggplot`
* References

## What is `data.table`?

> The R `data.table` package extends data.frame.
> `data.table` allows you to do fast data manipulations
> (for example, 100GB in RAM).
> `data.table` goals are reduce both programming time and compute time.


+ 678 packages	import/depend/suggest `data.table` (543 CRAN + 135 Bioconductor)
* Github: https://github.com/Rdatatable/data.table

\centerline{\includegraphics[width=\textwidth]{images/datatable/github.pdf}}


# Why bother using `data.table`?

## The R `data.table` package is 12 years old
* More than 35 releases of `data.table` since 2006 on CRAN
* 45 releases of `data.table` in Github
\centerline{\includegraphics[width=\textwidth]{images/datatable/development_timeline.png}}

[What's new in data.table, (Jan Gorecki, 2018.07)](https://jangorecki.gitlab.io/r-talks/2018-07-03_Wroclaw_What_s-new-in-data.table/What's%20new%20in%20data.table.pdf)

## Stack Overflow Questions from 2012-2018
\centerline{\includegraphics[width=\textwidth]{images/datatable/so_questions.png}}

[12 years of data.table, (Arun Srinivasan, 2018.07)](https://github.com/Rdatatable/data.table/wiki/talks/MontReal2018_Arun.pdf)


## Grouping benchmarks (2018)

\centerline{\includegraphics[width=0.65\textwidth]{images/datatable/benchmarks_a.pdf}}

[h2oai.github.io/db-benchmark](https://h2oai.github.io/db-benchmark/)


## Grouping benchmarks (2018)

\centerline{\includegraphics[width=0.65\textwidth]{images/datatable/benchmarks_b.pdf}}


[h2oai.github.io/db-benchmark](https://h2oai.github.io/db-benchmark/)


# Basic examples with `data.table`

## General form 

\centerline{\includegraphics[width=0.9\textwidth]{images/datatable/syntax.png}}

> Take `DT`, subset rows using `i`, then calculate `j` grouped by `by`


[tutorial uRos (walhouti, 2018)](https://github.com/jaapwalhout/data.table-tutorial-uros2018)

## Examples

```{.R}
00-lib-dependencies.R 
01-basics.R            
02-counts.R      
03-aggregating.R  
04-group-by.R     
05-group-by-SD.R  
06-updating-variables.R  
07-adding-variables.R    
08-deleting-variables.R
09-joining-datasets.R
```



# Examples with `data.table` and `ggplot`

## Examples

```{.R}
01-scatterplot.R
02-boxplot.R
03-histogram.R
04-densitycurve.R
05-addingsmoothers.R
06-faceting.R
```


## Learn more!
\centerline{\includegraphics[width=0.9\textwidth]{images/datatable/wiki.pdf}}

https://github.com/Rdatatable/data.table/wiki


## References


* https://github.com/Rdatatable/data.table/wiki

* https://github.com/arunsrinivasan/user2017-data.table-tutorial

* https://www.datacamp.com/courses/data-table-data-manipulation-r-tutorial

* https://www.datacamp.com/community/tutorials/data-table-cheat-sheet

* https://h2oai.github.io/db-benchmark/





