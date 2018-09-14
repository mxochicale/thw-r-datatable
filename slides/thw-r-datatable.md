---
author:
- Miguel P Xochicale
subtitle:
title: If Thor was an R Programmer, His Hammer Would Be data.table
institute: University of Birmingham 
fontsize: 12pt
date: September 17, 2018
---


## Outline

* What is data.table[]?
* Why to bother to use data.table[]?
* Basic Examples with data.table[]
* 
* Analysing Time Series with ggplot() and data.table()
* References



## the `data.table` R package is 12 years old

\centerline{\includegraphics[width=\textwidth]{images/datatable/development_timeline.png}}

[What's new in data.table, (Jan Gorecki, 2018.07)](https://jangorecki.gitlab.io/r-talks/2018-07-03_Wroclaw_What_s-new-in-data.table/What's%20new%20in%20data.table.pdf)

## StackOverflow Questions from 2012-2018

\centerline{\includegraphics[width=\textwidth]{images/datatable/so_questions.png}}

[12 years of data.table, (Arun Srinivasan, 2018.07)](https://github.com/Rdatatable/data.table/wiki/talks/MontReal2018_Arun.pdf)



## Grouping benchmarks (2018)

\centerline{\includegraphics[height=2.5in]{images/datatable/benchmarks.png}}

[data.table benchmark](https://h2oai.github.io/db-benchmark/)




## In the hacker spirit

This presentation was built in Ubuntu 14.04 x64 with
[Markdown](https://en.wikipedia.org/wiki/Markdown) and
[Pandoc](http://pandoc.org), and is available at:

* https://github.com/mxochicale/thw-r-datatable

Please see `README.md` for further information


## Code example

``` {.R}
puts "Hello world."
def my_awesome_variable
  puts "My awesome variable"
end
```

## Slide with R Code and Output

```{r}
summary(cars)
```


## Slide with text and footnote

Surely this is true.^[Jane Doe, *Says It Here* (New York: Oxford 
University Press, 2050).] 

\note{I am sure about this point.}



## References


* https://github.com/Rdatatable/data.table/wiki

* https://github.com/arunsrinivasan/user2017-data.table-tutorial

* https://www.datacamp.com/courses/data-table-data-manipulation-r-tutorial

* https://www.datacamp.com/community/tutorials/data-table-cheat-sheet

* https://h2oai.github.io/db-benchmark/





