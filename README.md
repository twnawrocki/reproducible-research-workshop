---
title: "Reproducible Analyses Workshop"
author: "Timm Nawrocki"
date: "May 17, 2018"
output:
  html_document:
    keep_md: yes
    toc: yes
---



This repository is a training repository with notes from the May 2018 SASAP Reproducible Research training.

## Getting Started
These instructions will enable you to run the training resource scripts. This readme file is the output of the "ReproducibleMarkdown.rmd" script.

## Prerequisites
1. R 3.5.0+
2. RStudio 1.1.453+

## Installing
1. The repository should be copied to a local drive. The script files are designed to be run in RStudio.

## Usage



### Environment Settings

The environment settings for this session are:


```
## R version 3.5.0 (2018-04-23)
## Platform: x86_64-w64-mingw32/x64 (64-bit)
## Running under: Windows 7 x64 (build 7601) Service Pack 1
## 
## Matrix products: default
## 
## locale:
## [1] LC_COLLATE=English_United States.1252 
## [2] LC_CTYPE=English_United States.1252   
## [3] LC_MONETARY=English_United States.1252
## [4] LC_NUMERIC=C                          
## [5] LC_TIME=English_United States.1252    
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
##  [1] tidyr_0.8.0      remotes_1.1.1    readxl_1.1.0     leaflet_2.0.0   
##  [5] kableExtra_0.8.0 ggpmisc_0.2.17   ggplot2_2.2.1    DT_0.4          
##  [9] dplyr_0.7.4      devtools_1.13.5 
## 
## loaded via a namespace (and not attached):
##  [1] Rcpp_0.12.16      cellranger_1.1.0  later_0.7.2      
##  [4] pillar_1.2.2      compiler_3.5.0    plyr_1.8.4       
##  [7] bindr_0.1.1       tools_3.5.0       digest_0.6.15    
## [10] viridisLite_0.3.0 evaluate_0.10.1   memoise_1.1.0    
## [13] tibble_1.4.2      gtable_0.2.0      pkgconfig_2.0.1  
## [16] rlang_0.2.0       shiny_1.0.5       rstudioapi_0.7   
## [19] crosstalk_1.0.0   yaml_2.1.19       bindrcpp_0.2.2   
## [22] xml2_1.2.0        withr_2.1.2       stringr_1.3.1    
## [25] httr_1.3.1        knitr_1.20        htmlwidgets_1.2  
## [28] hms_0.4.2         rprojroot_1.3-2   grid_3.5.0       
## [31] glue_1.2.0        R6_2.2.2          rmarkdown_1.9    
## [34] purrr_0.2.4       readr_1.1.1       magrittr_1.5     
## [37] promises_1.0.1    backports_1.1.2   scales_0.5.0     
## [40] htmltools_0.3.6   assertthat_0.2.0  rvest_0.3.2      
## [43] xtable_1.8-2      mime_0.5          colorspace_1.3-2 
## [46] httpuv_1.4.3      stringi_1.1.7     lazyeval_0.2.1   
## [49] munsell_0.4.3
```

### Example Plot

The following code produces an example point plot based on random numbers.


```r
ggplot(data.frame(x=rnorm(100), y=rnorm(100)), aes(x,y)) +
  geom_point()
```

![](ReproducibleMarkdown_files/figure-html/examplePlot-1.png)<!-- -->

```r
data('mpg')
```

### Example Table

The following code produces an example table using the "mpg" dataset.


```r
data('mpg')
datatable(mpg, caption='Mileage')
```

<!--html_preserve--><div id="htmlwidget-76ccce4ee810cf149e05" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-76ccce4ee810cf149e05">{"x":{"filter":"none","caption":"<caption>Mileage<\/caption>","data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208","209","210","211","212","213","214","215","216","217","218","219","220","221","222","223","224","225","226","227","228","229","230","231","232","233","234"],["audi","audi","audi","audi","audi","audi","audi","audi","audi","audi","audi","audi","audi","audi","audi","audi","audi","audi","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","chevrolet","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","dodge","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","ford","honda","honda","honda","honda","honda","honda","honda","honda","honda","hyundai","hyundai","hyundai","hyundai","hyundai","hyundai","hyundai","hyundai","hyundai","hyundai","hyundai","hyundai","hyundai","hyundai","jeep","jeep","jeep","jeep","jeep","jeep","jeep","jeep","land rover","land rover","land rover","land rover","lincoln","lincoln","lincoln","mercury","mercury","mercury","mercury","nissan","nissan","nissan","nissan","nissan","nissan","nissan","nissan","nissan","nissan","nissan","nissan","nissan","pontiac","pontiac","pontiac","pontiac","pontiac","subaru","subaru","subaru","subaru","subaru","subaru","subaru","subaru","subaru","subaru","subaru","subaru","subaru","subaru","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","toyota","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen","volkswagen"],["a4","a4","a4","a4","a4","a4","a4","a4 quattro","a4 quattro","a4 quattro","a4 quattro","a4 quattro","a4 quattro","a4 quattro","a4 quattro","a6 quattro","a6 quattro","a6 quattro","c1500 suburban 2wd","c1500 suburban 2wd","c1500 suburban 2wd","c1500 suburban 2wd","c1500 suburban 2wd","corvette","corvette","corvette","corvette","corvette","k1500 tahoe 4wd","k1500 tahoe 4wd","k1500 tahoe 4wd","k1500 tahoe 4wd","malibu","malibu","malibu","malibu","malibu","caravan 2wd","caravan 2wd","caravan 2wd","caravan 2wd","caravan 2wd","caravan 2wd","caravan 2wd","caravan 2wd","caravan 2wd","caravan 2wd","caravan 2wd","dakota pickup 4wd","dakota pickup 4wd","dakota pickup 4wd","dakota pickup 4wd","dakota pickup 4wd","dakota pickup 4wd","dakota pickup 4wd","dakota pickup 4wd","dakota pickup 4wd","durango 4wd","durango 4wd","durango 4wd","durango 4wd","durango 4wd","durango 4wd","durango 4wd","ram 1500 pickup 4wd","ram 1500 pickup 4wd","ram 1500 pickup 4wd","ram 1500 pickup 4wd","ram 1500 pickup 4wd","ram 1500 pickup 4wd","ram 1500 pickup 4wd","ram 1500 pickup 4wd","ram 1500 pickup 4wd","ram 1500 pickup 4wd","expedition 2wd","expedition 2wd","expedition 2wd","explorer 4wd","explorer 4wd","explorer 4wd","explorer 4wd","explorer 4wd","explorer 4wd","f150 pickup 4wd","f150 pickup 4wd","f150 pickup 4wd","f150 pickup 4wd","f150 pickup 4wd","f150 pickup 4wd","f150 pickup 4wd","mustang","mustang","mustang","mustang","mustang","mustang","mustang","mustang","mustang","civic","civic","civic","civic","civic","civic","civic","civic","civic","sonata","sonata","sonata","sonata","sonata","sonata","sonata","tiburon","tiburon","tiburon","tiburon","tiburon","tiburon","tiburon","grand cherokee 4wd","grand cherokee 4wd","grand cherokee 4wd","grand cherokee 4wd","grand cherokee 4wd","grand cherokee 4wd","grand cherokee 4wd","grand cherokee 4wd","range rover","range rover","range rover","range rover","navigator 2wd","navigator 2wd","navigator 2wd","mountaineer 4wd","mountaineer 4wd","mountaineer 4wd","mountaineer 4wd","altima","altima","altima","altima","altima","altima","maxima","maxima","maxima","pathfinder 4wd","pathfinder 4wd","pathfinder 4wd","pathfinder 4wd","grand prix","grand prix","grand prix","grand prix","grand prix","forester awd","forester awd","forester awd","forester awd","forester awd","forester awd","impreza awd","impreza awd","impreza awd","impreza awd","impreza awd","impreza awd","impreza awd","impreza awd","4runner 4wd","4runner 4wd","4runner 4wd","4runner 4wd","4runner 4wd","4runner 4wd","camry","camry","camry","camry","camry","camry","camry","camry solara","camry solara","camry solara","camry solara","camry solara","camry solara","camry solara","corolla","corolla","corolla","corolla","corolla","land cruiser wagon 4wd","land cruiser wagon 4wd","toyota tacoma 4wd","toyota tacoma 4wd","toyota tacoma 4wd","toyota tacoma 4wd","toyota tacoma 4wd","toyota tacoma 4wd","toyota tacoma 4wd","gti","gti","gti","gti","gti","jetta","jetta","jetta","jetta","jetta","jetta","jetta","jetta","jetta","new beetle","new beetle","new beetle","new beetle","new beetle","new beetle","passat","passat","passat","passat","passat","passat","passat"],[1.8,1.8,2,2,2.8,2.8,3.1,1.8,1.8,2,2,2.8,2.8,3.1,3.1,2.8,3.1,4.2,5.3,5.3,5.3,5.7,6,5.7,5.7,6.2,6.2,7,5.3,5.3,5.7,6.5,2.4,2.4,3.1,3.5,3.6,2.4,3,3.3,3.3,3.3,3.3,3.3,3.8,3.8,3.8,4,3.7,3.7,3.9,3.9,4.7,4.7,4.7,5.2,5.2,3.9,4.7,4.7,4.7,5.2,5.7,5.9,4.7,4.7,4.7,4.7,4.7,4.7,5.2,5.2,5.7,5.9,4.6,5.4,5.4,4,4,4,4,4.6,5,4.2,4.2,4.6,4.6,4.6,5.4,5.4,3.8,3.8,4,4,4.6,4.6,4.6,4.6,5.4,1.6,1.6,1.6,1.6,1.6,1.8,1.8,1.8,2,2.4,2.4,2.4,2.4,2.5,2.5,3.3,2,2,2,2,2.7,2.7,2.7,3,3.7,4,4.7,4.7,4.7,5.7,6.1,4,4.2,4.4,4.6,5.4,5.4,5.4,4,4,4.6,5,2.4,2.4,2.5,2.5,3.5,3.5,3,3,3.5,3.3,3.3,4,5.6,3.1,3.8,3.8,3.8,5.3,2.5,2.5,2.5,2.5,2.5,2.5,2.2,2.2,2.5,2.5,2.5,2.5,2.5,2.5,2.7,2.7,3.4,3.4,4,4.7,2.2,2.2,2.4,2.4,3,3,3.5,2.2,2.2,2.4,2.4,3,3,3.3,1.8,1.8,1.8,1.8,1.8,4.7,5.7,2.7,2.7,2.7,3.4,3.4,4,4,2,2,2,2,2.8,1.9,2,2,2,2,2.5,2.5,2.8,2.8,1.9,1.9,2,2,2.5,2.5,1.8,1.8,2,2,2.8,2.8,3.6],[1999,1999,2008,2008,1999,1999,2008,1999,1999,2008,2008,1999,1999,2008,2008,1999,2008,2008,2008,2008,2008,1999,2008,1999,1999,2008,2008,2008,2008,2008,1999,1999,1999,2008,1999,2008,2008,1999,1999,1999,1999,2008,2008,2008,1999,1999,2008,2008,2008,2008,1999,1999,2008,2008,2008,1999,1999,1999,2008,2008,2008,1999,2008,1999,2008,2008,2008,2008,2008,2008,1999,1999,2008,1999,1999,1999,2008,1999,1999,1999,2008,2008,1999,1999,1999,1999,1999,2008,1999,2008,1999,1999,2008,2008,1999,1999,2008,2008,2008,1999,1999,1999,1999,1999,2008,2008,2008,2008,1999,1999,2008,2008,1999,1999,2008,1999,1999,2008,2008,2008,2008,2008,2008,2008,1999,1999,2008,2008,2008,2008,1999,2008,2008,1999,1999,1999,2008,1999,2008,2008,1999,1999,1999,2008,2008,2008,2008,1999,1999,2008,1999,1999,2008,2008,1999,1999,1999,2008,2008,1999,1999,2008,2008,2008,2008,1999,1999,1999,1999,2008,2008,2008,2008,1999,1999,1999,1999,2008,2008,1999,1999,2008,2008,1999,1999,2008,1999,1999,2008,2008,1999,1999,2008,1999,1999,1999,2008,2008,1999,2008,1999,1999,2008,1999,1999,2008,2008,1999,1999,2008,2008,1999,1999,1999,1999,2008,2008,2008,2008,1999,1999,1999,1999,1999,1999,2008,2008,1999,1999,2008,2008,1999,1999,2008],[4,4,4,4,6,6,6,4,4,4,4,6,6,6,6,6,6,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,4,4,6,6,6,4,6,6,6,6,6,6,6,6,6,6,6,6,6,6,8,8,8,8,8,6,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,6,6,6,8,8,6,6,8,8,8,8,8,6,6,6,6,8,8,8,8,8,4,4,4,4,4,4,4,4,4,4,4,4,4,6,6,6,4,4,4,4,6,6,6,6,6,6,8,8,8,8,8,8,8,8,8,8,8,8,6,6,8,8,4,4,4,4,6,6,6,6,6,6,6,6,8,6,6,6,6,8,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,6,6,8,4,4,4,4,6,6,6,4,4,4,4,6,6,6,4,4,4,4,4,8,8,4,4,4,6,6,6,6,4,4,4,4,6,4,4,4,4,4,5,5,6,6,4,4,4,4,5,5,4,4,4,4,6,6,6],["auto(l5)","manual(m5)","manual(m6)","auto(av)","auto(l5)","manual(m5)","auto(av)","manual(m5)","auto(l5)","manual(m6)","auto(s6)","auto(l5)","manual(m5)","auto(s6)","manual(m6)","auto(l5)","auto(s6)","auto(s6)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","manual(m6)","auto(l4)","manual(m6)","auto(s6)","manual(m6)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(s6)","auto(l3)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(l6)","auto(l6)","manual(m6)","auto(l4)","auto(l4)","manual(m5)","auto(l5)","auto(l5)","auto(l5)","manual(m5)","auto(l4)","auto(l4)","auto(l5)","auto(l5)","auto(l5)","auto(l4)","auto(l5)","auto(l4)","manual(m6)","auto(l5)","auto(l5)","auto(l5)","manual(m6)","manual(m6)","auto(l4)","manual(m5)","auto(l5)","auto(l4)","auto(l4)","auto(l4)","auto(l6)","auto(l5)","manual(m5)","auto(l5)","auto(l5)","auto(l6)","auto(l4)","auto(l4)","manual(m5)","manual(m5)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","manual(m5)","auto(l4)","manual(m5)","auto(l5)","auto(l4)","manual(m5)","manual(m5)","auto(l5)","manual(m6)","manual(m5)","auto(l4)","manual(m5)","manual(m5)","auto(l4)","manual(m5)","auto(l5)","auto(l5)","manual(m6)","auto(l4)","manual(m5)","auto(l4)","manual(m5)","auto(l4)","manual(m5)","auto(l5)","auto(l4)","manual(m5)","manual(m5)","auto(l4)","auto(l4)","manual(m6)","manual(m5)","auto(l5)","auto(l5)","auto(l4)","auto(l4)","auto(l5)","auto(l5)","auto(l5)","auto(l5)","auto(l4)","auto(s6)","auto(s6)","auto(l4)","auto(l4)","auto(l4)","auto(l6)","auto(l5)","auto(l5)","auto(l6)","auto(l4)","manual(m5)","auto(l4)","auto(av)","manual(m6)","manual(m6)","auto(av)","auto(l4)","manual(m5)","auto(av)","auto(l4)","manual(m5)","auto(l5)","auto(s5)","auto(l4)","auto(l4)","auto(l4)","auto(l4)","auto(s4)","manual(m5)","auto(l4)","manual(m5)","manual(m5)","auto(l4)","auto(l4)","auto(l4)","manual(m5)","manual(m5)","auto(l4)","auto(s4)","auto(s4)","manual(m5)","manual(m5)","manual(m5)","auto(l4)","auto(l4)","manual(m5)","auto(l5)","auto(l5)","manual(m5)","auto(l4)","manual(m5)","auto(l5)","auto(l4)","manual(m5)","auto(s6)","auto(l4)","manual(m5)","manual(m5)","auto(s5)","auto(l4)","manual(m5)","auto(s5)","auto(l3)","auto(l4)","manual(m5)","manual(m5)","auto(l4)","auto(l4)","auto(s6)","manual(m5)","auto(l4)","manual(m5)","manual(m5)","auto(l4)","manual(m6)","auto(l5)","manual(m5)","auto(l4)","manual(m6)","auto(s6)","manual(m5)","manual(m5)","manual(m5)","auto(l4)","auto(s6)","manual(m6)","auto(s6)","manual(m5)","auto(l4)","manual(m5)","manual(m5)","auto(l4)","manual(m5)","auto(l4)","manual(m5)","auto(s6)","manual(m5)","auto(l5)","auto(s6)","manual(m6)","auto(l5)","manual(m5)","auto(s6)"],["f","f","f","f","f","f","f","4","4","4","4","4","4","4","4","4","4","4","r","r","r","r","r","r","r","r","r","r","4","4","4","4","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","r","r","r","4","4","4","4","4","4","4","4","4","4","4","4","4","r","r","r","r","r","r","r","r","r","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","4","4","4","4","4","4","4","4","4","4","4","4","r","r","r","4","4","4","4","f","f","f","f","f","f","f","f","f","4","4","4","4","f","f","f","f","f","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","4","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","4","4","4","4","4","4","4","4","4","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f","f"],[18,21,20,21,16,18,18,18,16,20,19,15,17,17,15,15,17,16,14,11,14,13,12,16,15,16,15,15,14,11,11,14,19,22,18,18,17,18,17,16,16,17,17,11,15,15,16,16,15,14,13,14,14,14,9,11,11,13,13,9,13,11,13,11,12,9,13,13,12,9,11,11,13,11,11,11,12,14,15,14,13,13,13,14,14,13,13,13,11,13,18,18,17,16,15,15,15,15,14,28,24,25,23,24,26,25,24,21,18,18,21,21,18,18,19,19,19,20,20,17,16,17,17,15,15,14,9,14,13,11,11,12,12,11,11,11,12,14,13,13,13,21,19,23,23,19,19,18,19,19,14,15,14,12,18,16,17,18,16,18,18,20,19,20,18,21,19,19,19,20,20,19,20,15,16,15,15,16,14,21,21,21,21,18,18,19,21,21,21,22,18,18,18,24,24,26,28,26,11,13,15,16,17,15,15,15,16,21,19,21,22,17,33,21,19,22,21,21,21,16,17,35,29,21,19,20,20,21,18,19,21,16,18,17],[29,29,31,30,26,26,27,26,25,28,27,25,25,25,25,24,25,23,20,15,20,17,17,26,23,26,25,24,19,14,15,17,27,30,26,29,26,24,24,22,22,24,24,17,22,21,23,23,19,18,17,17,19,19,12,17,15,17,17,12,17,16,18,15,16,12,17,17,16,12,15,16,17,15,17,17,18,17,19,17,19,19,17,17,17,16,16,17,15,17,26,25,26,24,21,22,23,22,20,33,32,32,29,32,34,36,36,29,26,27,30,31,26,26,28,26,29,28,27,24,24,24,22,19,20,17,12,19,18,14,15,18,18,15,17,16,18,17,19,19,17,29,27,31,32,27,26,26,25,25,17,17,20,18,26,26,27,28,25,25,24,27,25,26,23,26,26,26,26,25,27,25,27,20,20,19,17,20,17,29,27,31,31,26,26,28,27,29,31,31,26,26,27,30,33,35,37,35,15,18,20,20,22,17,19,18,20,29,26,29,29,24,44,29,26,29,29,29,29,23,24,44,41,29,26,28,29,29,29,28,29,26,26,26],["p","p","p","p","p","p","p","p","p","p","p","p","p","p","p","p","p","p","r","e","r","r","r","p","p","p","p","p","r","e","r","d","r","r","r","r","r","r","r","r","r","r","r","e","r","r","r","r","r","r","r","r","r","r","e","r","r","r","r","e","r","r","r","r","r","e","r","r","r","e","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","p","r","r","r","p","r","r","r","c","p","r","r","r","r","r","r","r","r","r","r","r","r","r","r","d","r","r","r","e","r","r","p","p","r","r","p","r","p","r","r","r","r","r","r","r","r","r","p","p","r","r","p","r","r","p","p","r","p","r","r","p","r","r","r","p","r","p","r","r","r","r","p","r","p","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","r","p","p","r","d","r","r","p","p","r","r","r","r","d","d","r","r","r","r","p","p","p","p","p","p","p"],["compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","midsize","midsize","midsize","suv","suv","suv","suv","suv","2seater","2seater","2seater","2seater","2seater","suv","suv","suv","suv","midsize","midsize","midsize","midsize","midsize","minivan","minivan","minivan","minivan","minivan","minivan","minivan","minivan","minivan","minivan","minivan","pickup","pickup","pickup","pickup","pickup","pickup","pickup","pickup","pickup","suv","suv","suv","suv","suv","suv","suv","pickup","pickup","pickup","pickup","pickup","pickup","pickup","pickup","pickup","pickup","suv","suv","suv","suv","suv","suv","suv","suv","suv","pickup","pickup","pickup","pickup","pickup","pickup","pickup","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","midsize","midsize","midsize","midsize","midsize","midsize","midsize","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","suv","compact","compact","midsize","midsize","midsize","midsize","midsize","midsize","midsize","suv","suv","suv","suv","midsize","midsize","midsize","midsize","midsize","suv","suv","suv","suv","suv","suv","subcompact","subcompact","subcompact","subcompact","compact","compact","compact","compact","suv","suv","suv","suv","suv","suv","midsize","midsize","midsize","midsize","midsize","midsize","midsize","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","suv","suv","pickup","pickup","pickup","pickup","pickup","pickup","pickup","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","compact","subcompact","subcompact","subcompact","subcompact","subcompact","subcompact","midsize","midsize","midsize","midsize","midsize","midsize","midsize"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>manufacturer<\/th>\n      <th>model<\/th>\n      <th>displ<\/th>\n      <th>year<\/th>\n      <th>cyl<\/th>\n      <th>trans<\/th>\n      <th>drv<\/th>\n      <th>cty<\/th>\n      <th>hwy<\/th>\n      <th>fl<\/th>\n      <th>class<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"columnDefs":[{"className":"dt-right","targets":[3,4,5,8,9]},{"orderable":false,"targets":0}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

## Credits

### Built With
* R 3.5.0
* RStudio 1.1.453

### Authors
* **Timm Nawrocki** - *Alaska Center for Conservation Science, University of Alaska Anchorage*

### Usage Requirements
* none

### License
This project is private for my notes.
