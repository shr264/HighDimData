
R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet"
Copyright (C) 2014 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.4.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> > library(JGL)
options(STERM='iESS', str.dendrogram.last="'", editor='emacsclient', show.error.locations=TRUE)
> 
> library(gRbase)
> library(Rgraphviz)
Loading required package: graph

Attaching package: 'graph'

The following objects are masked from 'package:igraph':

    degree, edges

Loading required package: grid
> library(ggm)
> library(Matrix)
> library(MASS)
Warning message:
package 'MASS' was built under R version 3.1.3 
> library(huge)
Loading required package: lattice
> library(matrixcalc)

Attaching package: 'matrixcalc'

The following object is masked from 'package:igraph':

    %s%

> library(RBGL)

Attaching package: 'RBGL'

The following object is masked from 'package:igraph':

    transitivity

> library(qpgraph)

Attaching package: 'qpgraph'

The following object is masked from 'package:igraph':

    graph

> library(clusterGeneration)
> library(glasso)
> library(compiler)

Attaching package: 'compiler'

The following object is masked from 'package:gRbase':

    compile

> library(stats)
> library(SGL)
> getwd()
[1] "/Users/syedrahman/Documents/Spring2015/HighDimData/HW/HW4/2ndtry"
> source("hw.4-2.R")
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05942252 
Iteration: 3 Eps: 0.003622656 
Iteration: 4 Eps: 0.0002562512 
Iteration: 5 Eps: 1.789369e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07809784 
Iteration: 3 Eps: 0.00166142 
Iteration: 4 Eps: 5.775856e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07526348 
Iteration: 3 Eps: 0.001031097 
Iteration: 4 Eps: 2.078935e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08173208 
Iteration: 3 Eps: 0.00248698 
Iteration: 4 Eps: 3.000804e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06363474 
Iteration: 3 Eps: 0.001971335 
Iteration: 4 Eps: 3.426033e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08207747 
Iteration: 3 Eps: 0.004335676 
Iteration: 4 Eps: 0.0001066104 
Iteration: 5 Eps: 1.660764e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07150437 
Iteration: 3 Eps: 0.002219032 
Iteration: 4 Eps: 2.422984e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06388437 
Iteration: 3 Eps: 0.001899849 
Iteration: 4 Eps: 3.029957e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06876122 
Iteration: 3 Eps: 0.001924132 
Iteration: 4 Eps: 1.221952e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07377402 
Iteration: 3 Eps: 0.001230193 
Iteration: 4 Eps: 3.424695e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06022151 
Iteration: 3 Eps: 0.003719748 
Iteration: 4 Eps: 0.0002395461 
Iteration: 5 Eps: 1.386605e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07896998 
Iteration: 3 Eps: 0.0016579 
Iteration: 4 Eps: 5.67021e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07621397 
Iteration: 3 Eps: 0.0009659622 
Iteration: 4 Eps: 1.83122e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08255371 
Iteration: 3 Eps: 0.002439999 
Iteration: 4 Eps: 3.229162e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06451819 
Iteration: 3 Eps: 0.001933733 
Iteration: 4 Eps: 2.425225e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08295402 
Iteration: 3 Eps: 0.004251309 
Iteration: 4 Eps: 0.0001007626 
Iteration: 5 Eps: 1.425659e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07238628 
Iteration: 3 Eps: 0.002181932 
Iteration: 4 Eps: 2.399294e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06464411 
Iteration: 3 Eps: 0.001871688 
Iteration: 4 Eps: 1.643616e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06963337 
Iteration: 3 Eps: 0.001888791 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07474655 
Iteration: 3 Eps: 0.001198099 
Iteration: 4 Eps: 2.516633e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06102035 
Iteration: 3 Eps: 0.003804634 
Iteration: 4 Eps: 0.0002214166 
Iteration: 5 Eps: 1.076352e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0798371 
Iteration: 3 Eps: 0.001652398 
Iteration: 4 Eps: 5.598394e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07715134 
Iteration: 3 Eps: 0.0009098962 
Iteration: 4 Eps: 1.674643e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08337699 
Iteration: 3 Eps: 0.002397637 
Iteration: 4 Eps: 3.420354e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06539483 
Iteration: 3 Eps: 0.001893621 
Iteration: 4 Eps: 1.690679e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08382828 
Iteration: 3 Eps: 0.004172047 
Iteration: 4 Eps: 9.609401e-05 
Iteration: 5 Eps: 1.242739e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07326463 
Iteration: 3 Eps: 0.002143956 
Iteration: 4 Eps: 2.506212e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06539958 
Iteration: 3 Eps: 0.001841844 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07049938 
Iteration: 3 Eps: 0.001853993 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0757087 
Iteration: 3 Eps: 0.00116718 
Iteration: 4 Eps: 1.986448e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0618206 
Iteration: 3 Eps: 0.003875507 
Iteration: 4 Eps: 0.000202949 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08069988 
Iteration: 3 Eps: 0.001645596 
Iteration: 4 Eps: 5.523057e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07808018 
Iteration: 3 Eps: 0.0008619714 
Iteration: 4 Eps: 1.572394e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08420247 
Iteration: 3 Eps: 0.002358682 
Iteration: 4 Eps: 3.541029e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06626752 
Iteration: 3 Eps: 0.00185264 
Iteration: 4 Eps: 1.20773e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08470035 
Iteration: 3 Eps: 0.004097656 
Iteration: 4 Eps: 9.216992e-05 
Iteration: 5 Eps: 1.097162e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07414044 
Iteration: 3 Eps: 0.002105122 
Iteration: 4 Eps: 2.655954e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06615338 
Iteration: 3 Eps: 0.00181072 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07136021 
Iteration: 3 Eps: 0.001821031 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07666127 
Iteration: 3 Eps: 0.00113865 
Iteration: 4 Eps: 1.7254e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06262035 
Iteration: 3 Eps: 0.003932587 
Iteration: 4 Eps: 0.000184773 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08155772 
Iteration: 3 Eps: 0.001638611 
Iteration: 4 Eps: 5.390131e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07899649 
Iteration: 3 Eps: 0.0008209285 
Iteration: 4 Eps: 1.50149e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08502804 
Iteration: 3 Eps: 0.002322404 
Iteration: 4 Eps: 3.569173e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06713499 
Iteration: 3 Eps: 0.001811978 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08557062 
Iteration: 3 Eps: 0.004028071 
Iteration: 4 Eps: 8.85668e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07501241 
Iteration: 3 Eps: 0.002066156 
Iteration: 4 Eps: 2.76656e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0669043 
Iteration: 3 Eps: 0.001778936 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07221613 
Iteration: 3 Eps: 0.001790057 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07760324 
Iteration: 3 Eps: 0.001112247 
Iteration: 4 Eps: 1.642235e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06342173 
Iteration: 3 Eps: 0.003976893 
Iteration: 4 Eps: 0.0001673256 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08241196 
Iteration: 3 Eps: 0.001632653 
Iteration: 4 Eps: 5.495619e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07990439 
Iteration: 3 Eps: 0.0007857727 
Iteration: 4 Eps: 1.439139e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08585559 
Iteration: 3 Eps: 0.002287269 
Iteration: 4 Eps: 3.524223e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06799753 
Iteration: 3 Eps: 0.001771655 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0864396 
Iteration: 3 Eps: 0.003963259 
Iteration: 4 Eps: 8.488941e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07588367 
Iteration: 3 Eps: 0.002026594 
Iteration: 4 Eps: 2.794694e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06765334 
Iteration: 3 Eps: 0.001746406 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07306692 
Iteration: 3 Eps: 0.001759974 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07853649 
Iteration: 3 Eps: 0.001088678 
Iteration: 4 Eps: 1.683283e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06422341 
Iteration: 3 Eps: 0.004009533 
Iteration: 4 Eps: 0.0001511492 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08326208 
Iteration: 3 Eps: 0.001628895 
Iteration: 4 Eps: 5.083907e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08080526 
Iteration: 3 Eps: 0.0007554404 
Iteration: 4 Eps: 1.376121e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08668398 
Iteration: 3 Eps: 0.002254048 
Iteration: 4 Eps: 3.550083e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06885621 
Iteration: 3 Eps: 0.00173214 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08730616 
Iteration: 3 Eps: 0.003902708 
Iteration: 4 Eps: 8.101226e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07675346 
Iteration: 3 Eps: 0.001986517 
Iteration: 4 Eps: 2.832049e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06840045 
Iteration: 3 Eps: 0.00171393 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07391561 
Iteration: 3 Eps: 0.001730407 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07946214 
Iteration: 3 Eps: 0.001067195 
Iteration: 4 Eps: 1.854364e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06502486 
Iteration: 3 Eps: 0.004031898 
Iteration: 4 Eps: 0.0001424618 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08410895 
Iteration: 3 Eps: 0.001636265 
Iteration: 4 Eps: 3.204924e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08169932 
Iteration: 3 Eps: 0.0007290755 
Iteration: 4 Eps: 1.404021e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08751398 
Iteration: 3 Eps: 0.002222117 
Iteration: 4 Eps: 3.390186e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06971043 
Iteration: 3 Eps: 0.001693114 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08817155 
Iteration: 3 Eps: 0.003846088 
Iteration: 4 Eps: 7.698202e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07762145 
Iteration: 3 Eps: 0.001945807 
Iteration: 4 Eps: 2.839817e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06914541 
Iteration: 3 Eps: 0.001681255 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07475881 
Iteration: 3 Eps: 0.001700919 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08038011 
Iteration: 3 Eps: 0.001047505 
Iteration: 4 Eps: 1.965546e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06582761 
Iteration: 3 Eps: 0.004044978 
Iteration: 4 Eps: 0.0001298989 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08495256 
Iteration: 3 Eps: 0.001639649 
Iteration: 4 Eps: 2.981236e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08258756 
Iteration: 3 Eps: 0.0007058109 
Iteration: 4 Eps: 1.300941e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08834614 
Iteration: 3 Eps: 0.002105532 
Iteration: 4 Eps: 2.302194e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07056054 
Iteration: 3 Eps: 0.001654659 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08903539 
Iteration: 3 Eps: 0.003792452 
Iteration: 4 Eps: 7.290205e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07848791 
Iteration: 3 Eps: 0.001905265 
Iteration: 4 Eps: 2.615366e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06988908 
Iteration: 3 Eps: 0.0016492 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07559761 
Iteration: 3 Eps: 0.001571318 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08129125 
Iteration: 3 Eps: 0.001028965 
Iteration: 4 Eps: 1.922193e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0666285 
Iteration: 3 Eps: 0.004050304 
Iteration: 4 Eps: 0.0001114843 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08579315 
Iteration: 3 Eps: 0.001521059 
Iteration: 4 Eps: 4.176982e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08347109 
Iteration: 3 Eps: 0.0006851031 
Iteration: 4 Eps: 1.206134e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08917927 
Iteration: 3 Eps: 0.002081371 
Iteration: 4 Eps: 2.15348e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07140691 
Iteration: 3 Eps: 0.001525352 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08989809 
Iteration: 3 Eps: 0.00364752 
Iteration: 4 Eps: 5.956966e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07935427 
Iteration: 3 Eps: 0.001864444 
Iteration: 4 Eps: 2.428389e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07063113 
Iteration: 3 Eps: 0.001546026 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07643313 
Iteration: 3 Eps: 0.001548438 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08219591 
Iteration: 3 Eps: 0.00101191 
Iteration: 4 Eps: 1.87062e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06743042 
Iteration: 3 Eps: 0.004049032 
Iteration: 4 Eps: 9.929353e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0866309 
Iteration: 3 Eps: 0.001529067 
Iteration: 4 Eps: 4.187938e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08435008 
Iteration: 3 Eps: 0.0006666645 
Iteration: 4 Eps: 1.143702e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09001474 
Iteration: 3 Eps: 0.002077393 
Iteration: 4 Eps: 1.724436e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07225068 
Iteration: 3 Eps: 0.001493172 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09076025 
Iteration: 3 Eps: 0.0036053 
Iteration: 4 Eps: 5.525343e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0802191 
Iteration: 3 Eps: 0.001760502 
Iteration: 4 Eps: 2.057138e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07137206 
Iteration: 3 Eps: 0.001518697 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07726612 
Iteration: 3 Eps: 0.001311496 
Iteration: 4 Eps: 2.135033e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08309569 
Iteration: 3 Eps: 0.000995442 
Iteration: 4 Eps: 1.729987e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06823181 
Iteration: 3 Eps: 0.004042295 
Iteration: 4 Eps: 9.378395e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08746709 
Iteration: 3 Eps: 0.001537369 
Iteration: 4 Eps: 3.023922e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08522566 
Iteration: 3 Eps: 0.0006502736 
Iteration: 4 Eps: 1.060116e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0908525 
Iteration: 3 Eps: 0.00199261 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07309094 
Iteration: 3 Eps: 0.00146196 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09162105 
Iteration: 3 Eps: 0.003565049 
Iteration: 4 Eps: 5.186812e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08108359 
Iteration: 3 Eps: 0.001724204 
Iteration: 4 Eps: 1.831221e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07211234 
Iteration: 3 Eps: 0.001491844 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0780967 
Iteration: 3 Eps: 0.001301319 
Iteration: 4 Eps: 1.530963e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08399006 
Iteration: 3 Eps: 0.0009662181 
Iteration: 4 Eps: 3.186814e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06903331 
Iteration: 3 Eps: 0.003851631 
Iteration: 4 Eps: 0.0001021858 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08830131 
Iteration: 3 Eps: 0.001545896 
Iteration: 4 Eps: 2.745606e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08609994 
Iteration: 3 Eps: 0.0006352533 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09169103 
Iteration: 3 Eps: 0.001972312 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07392921 
Iteration: 3 Eps: 0.001430876 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09248136 
Iteration: 3 Eps: 0.003526771 
Iteration: 4 Eps: 4.887218e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08194846 
Iteration: 3 Eps: 0.001654763 
Iteration: 4 Eps: 1.129664e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07285208 
Iteration: 3 Eps: 0.001313952 
Iteration: 4 Eps: 2.741244e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07892468 
Iteration: 3 Eps: 0.001290898 
Iteration: 4 Eps: 1.427665e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08488047 
Iteration: 3 Eps: 0.0009507513 
Iteration: 4 Eps: 2.458046e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06983498 
Iteration: 3 Eps: 0.003847777 
Iteration: 4 Eps: 9.321799e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08913382 
Iteration: 3 Eps: 0.001554164 
Iteration: 4 Eps: 2.235427e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08697006 
Iteration: 3 Eps: 0.0006217622 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09253138 
Iteration: 3 Eps: 0.001952036 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07476473 
Iteration: 3 Eps: 0.001400324 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09334152 
Iteration: 3 Eps: 0.0034899 
Iteration: 4 Eps: 4.620844e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08281276 
Iteration: 3 Eps: 0.001621141 
Iteration: 4 Eps: 1.028621e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0735908 
Iteration: 3 Eps: 0.001295901 
Iteration: 4 Eps: 2.637193e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07975038 
Iteration: 3 Eps: 0.001280361 
Iteration: 4 Eps: 1.297083e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08576672 
Iteration: 3 Eps: 0.0009359148 
Iteration: 4 Eps: 2.2659e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07063633 
Iteration: 3 Eps: 0.003772793 
Iteration: 4 Eps: 8.984838e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08996515 
Iteration: 3 Eps: 0.001562132 
Iteration: 4 Eps: 2.165162e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08783886 
Iteration: 3 Eps: 0.0006091358 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09337515 
Iteration: 3 Eps: 0.001931548 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07559888 
Iteration: 3 Eps: 0.001370015 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.094202 
Iteration: 3 Eps: 0.003283494 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08367803 
Iteration: 3 Eps: 0.001588 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07433005 
Iteration: 3 Eps: 0.001277916 
Iteration: 4 Eps: 2.517115e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08057446 
Iteration: 3 Eps: 0.0012693 
Iteration: 4 Eps: 1.178282e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08664954 
Iteration: 3 Eps: 0.0009216717 
Iteration: 4 Eps: 2.160354e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07143636 
Iteration: 3 Eps: 0.003332695 
Iteration: 4 Eps: 0.0001381497 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09079557 
Iteration: 3 Eps: 0.001357626 
Iteration: 4 Eps: 3.988531e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08870579 
Iteration: 3 Eps: 0.0005808409 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09422077 
Iteration: 3 Eps: 0.001911422 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07126327 
Iteration: 3 Eps: 0.0009019089 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09506186 
Iteration: 3 Eps: 0.003258207 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08454372 
Iteration: 3 Eps: 0.001555258 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07506891 
Iteration: 3 Eps: 0.001260135 
Iteration: 4 Eps: 2.396361e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08139717 
Iteration: 3 Eps: 0.001172813 
Iteration: 4 Eps: 1.535977e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08752939 
Iteration: 3 Eps: 0.0008929272 
Iteration: 4 Eps: 3.329226e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07223755 
Iteration: 3 Eps: 0.00333964 
Iteration: 4 Eps: 0.0001289033 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09162323 
Iteration: 3 Eps: 0.001373433 
Iteration: 4 Eps: 3.906176e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08957137 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09506884 
Iteration: 3 Eps: 0.00177683 
Iteration: 4 Eps: 1.091712e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07199672 
Iteration: 3 Eps: 0.000878035 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09592145 
Iteration: 3 Eps: 0.003233962 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08541014 
Iteration: 3 Eps: 0.00152339 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07580777 
Iteration: 3 Eps: 0.001162505 
Iteration: 4 Eps: 2.096532e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08221844 
Iteration: 3 Eps: 0.001167119 
Iteration: 4 Eps: 1.271033e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08840598 
Iteration: 3 Eps: 0.0008431459 
Iteration: 4 Eps: 1.751294e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07303796 
Iteration: 3 Eps: 0.003343372 
Iteration: 4 Eps: 0.0001202441 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09245224 
Iteration: 3 Eps: 0.001337803 
Iteration: 4 Eps: 4.052893e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09043621 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09591944 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07272637 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09678141 
Iteration: 3 Eps: 0.003209593 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08627749 
Iteration: 3 Eps: 0.001491919 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07654677 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0830379 
Iteration: 3 Eps: 0.001160866 
Iteration: 4 Eps: 1.163277e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08928049 
Iteration: 3 Eps: 0.0008197947 
Iteration: 4 Eps: 2.657357e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07383874 
Iteration: 3 Eps: 0.003127908 
Iteration: 4 Eps: 0.0001723986 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09328055 
Iteration: 3 Eps: 0.0013534 
Iteration: 4 Eps: 4.024981e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09130071 
Iteration: 3 Eps: 0.0004305726 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09677221 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07345279 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09764156 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08714559 
Iteration: 3 Eps: 0.001227986 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0772859 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08385697 
Iteration: 3 Eps: 0.001169327 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09015244 
Iteration: 3 Eps: 0.0008333401 
Iteration: 4 Eps: 2.201489e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07463971 
Iteration: 3 Eps: 0.003133376 
Iteration: 4 Eps: 0.0001603206 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09410874 
Iteration: 3 Eps: 0.001368292 
Iteration: 4 Eps: 3.993686e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09216502 
Iteration: 3 Eps: 0.0004290296 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09762769 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07417645 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09850236 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08801522 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07273183 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08467518 
Iteration: 3 Eps: 0.001161499 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09102424 
Iteration: 3 Eps: 0.0008121441 
Iteration: 4 Eps: 2.71658e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07737574 
Iteration: 3 Eps: 0.00131828 
1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05620539 
Iteration: 3 Eps: 0.01152459 
Iteration: 4 Eps: 0.008904462 
Iteration: 5 Eps: 0.009407512 
Iteration: 6 Eps: 0.005541282 
Iteration: 7 Eps: 0.002422895 
Iteration: 8 Eps: 0.001560113 
Iteration: 9 Eps: 0.0009188363 
Iteration: 10 Eps: 0.0005600443 
Iteration: 11 Eps: 0.00030481 
Iteration: 12 Eps: 0.0001731578 
Iteration: 13 Eps: 9.170546e-05 
Iteration: 14 Eps: 5.915407e-05 
Iteration: 15 Eps: 3.232333e-05 
Iteration: 16 Eps: 2.101379e-05 
Iteration: 17 Eps: 1.241004e-05 
Iteration: 18 Eps: 8.897545e-06 
Iteration: 19 Eps: 5.389554e-06 
Iteration: 20 Eps: 3.949078e-06 
Iteration: 21 Eps: 2.503733e-06 
Iteration: 22 Eps: 1.829057e-06 
Iteration: 23 Eps: 1.174193e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1007653 
Iteration: 3 Eps: 0.0230791 
Iteration: 4 Eps: 0.002232045 
Iteration: 5 Eps: 0.0006433051 
Iteration: 6 Eps: 6.760449e-05 
Iteration: 7 Eps: 2.0034e-05 
Iteration: 8 Eps: 9.82308e-06 
Iteration: 9 Eps: 6.186333e-06 
Iteration: 10 Eps: 2.763067e-06 
Iteration: 11 Eps: 3.149829e-06 
Iteration: 12 Eps: 2.896865e-06 
Iteration: 13 Eps: 3.005438e-06 
Iteration: 14 Eps: 2.86103e-06 
Iteration: 15 Eps: 2.67307e-06 
Iteration: 16 Eps: 2.379365e-06 
Iteration: 17 Eps: 2.032042e-06 
Iteration: 18 Eps: 1.632549e-06 
Iteration: 19 Eps: 1.207574e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09046788 
Iteration: 3 Eps: 0.00593638 
Iteration: 4 Eps: 0.001545925 
Iteration: 5 Eps: 0.001272403 
Iteration: 6 Eps: 0.0006837528 
Iteration: 7 Eps: 0.0006516465 
Iteration: 8 Eps: 0.0005985615 
Iteration: 9 Eps: 0.0006095422 
Iteration: 10 Eps: 0.000617994 
Iteration: 11 Eps: 0.000617108 
Iteration: 12 Eps: 0.0006219375 
Iteration: 13 Eps: 0.0006225684 
Iteration: 14 Eps: 0.00062406 
Iteration: 15 Eps: 0.0006244918 
Iteration: 16 Eps: 0.000625055 
Iteration: 17 Eps: 0.0006252338 
Iteration: 18 Eps: 0.0006254084 
Iteration: 19 Eps: 0.0006254593 
Iteration: 20 Eps: 0.0006254973 
Iteration: 21 Eps: 0.0006255101 
Iteration: 22 Eps: 0.000625513 
Iteration: 23 Eps: 0.0006255077 
Iteration: 24 Eps: 0.0006254957 
Iteration: 25 Eps: 0.0006254869 
Iteration: 26 Eps: 0.0006254837 
Iteration: 27 Eps: 0.0006254772 
Iteration: 28 Eps: 0.0006254724 
Iteration: 29 Eps: 0.0006254684 
Iteration: 30 Eps: 0.0006254592 
Iteration: 31 Eps: 0.0006254623 
Iteration: 32 Eps: 0.0006254582 
Iteration: 33 Eps: 0.0006254537 
Iteration: 34 Eps: 0.0006254564 
Iteration: 35 Eps: 0.0006254507 
Iteration: 36 Eps: 0.0006254553 
Iteration: 37 Eps: 0.0006254537 
Iteration: 38 Eps: 0.0006254543 
Iteration: 39 Eps: 0.0006254538 
Iteration: 40 Eps: 0.0006254528 
Iteration: 41 Eps: 0.0006254567 
Iteration: 42 Eps: 0.0006254513 
Iteration: 43 Eps: 0.0006254503 
Iteration: 44 Eps: 0.0006254513 
Iteration: 45 Eps: 0.0006254524 
Iteration: 46 Eps: 0.0006254487 
Iteration: 47 Eps: 0.0006254528 
Iteration: 48 Eps: 0.000625448 
Iteration: 49 Eps: 0.0006254504 
Iteration: 50 Eps: 0.0006254474 
Iteration: 51 Eps: 0.0006254509 
Iteration: 52 Eps: 0.000625448 
Iteration: 53 Eps: 0.0006254496 
Iteration: 54 Eps: 0.0006080978 
Iteration: 55 Eps: 0.0003371385 
Iteration: 56 Eps: 0.0003084996 
Iteration: 57 Eps: 0.0001293897 
Iteration: 58 Eps: 0.0001296999 
Iteration: 59 Eps: 3.518761e-05 
Iteration: 60 Eps: 8.341946e-06 
Iteration: 61 Eps: 4.074086e-06 
Iteration: 62 Eps: 1.764849e-06 
Iteration: 63 Eps: 1.184932e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09743713 
Iteration: 3 Eps: 0.01074746 
Iteration: 4 Eps: 0.004433708 
Iteration: 5 Eps: 0.0005195725 
Iteration: 6 Eps: 0.0001404926 
Iteration: 7 Eps: 7.997817e-05 
Iteration: 8 Eps: 3.49878e-05 
Iteration: 9 Eps: 8.147636e-06 
Iteration: 10 Eps: 1.205543e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06312777 
Iteration: 3 Eps: 0.0121345 
Iteration: 4 Eps: 0.0020124 
Iteration: 5 Eps: 0.0003114122 
Iteration: 6 Eps: 6.543214e-05 
Iteration: 7 Eps: 2.350104e-05 
Iteration: 8 Eps: 2.582619e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06147638 
Iteration: 3 Eps: 0.01184152 
Iteration: 4 Eps: 0.002892852 
Iteration: 5 Eps: 0.0004447351 
Iteration: 6 Eps: 0.0001478938 
Iteration: 7 Eps: 2.476328e-05 
Iteration: 8 Eps: 9.42824e-06 
Iteration: 9 Eps: 2.277099e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04849138 
Iteration: 3 Eps: 0.01122107 
Iteration: 4 Eps: 0.002918948 
Iteration: 5 Eps: 0.0009611583 
Iteration: 6 Eps: 0.0001961929 
Iteration: 7 Eps: 3.723529e-05 
Iteration: 8 Eps: 6.58362e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04503016 
Iteration: 3 Eps: 0.005487562 
Iteration: 4 Eps: 0.002660824 
Iteration: 5 Eps: 0.0009281436 
Iteration: 6 Eps: 5.953899e-05 
Iteration: 7 Eps: 6.133474e-05 
Iteration: 8 Eps: 2.242165e-05 
Iteration: 9 Eps: 4.628783e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07553918 
Iteration: 3 Eps: 0.01034648 
Iteration: 4 Eps: 0.0023269 
Iteration: 5 Eps: 0.0002093497 
Iteration: 6 Eps: 0.0001068151 
Iteration: 7 Eps: 2.826035e-05 
Iteration: 8 Eps: 1.91668e-05 
Iteration: 9 Eps: 1.557247e-05 
Iteration: 10 Eps: 1.150887e-05 
Iteration: 11 Eps: 7.592237e-06 
Iteration: 12 Eps: 4.343465e-06 
Iteration: 13 Eps: 2.164444e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09150002 
Iteration: 3 Eps: 0.006512902 
Iteration: 4 Eps: 0.001815717 
Iteration: 5 Eps: 0.0005850486 
Iteration: 6 Eps: 0.0001166378 
Iteration: 7 Eps: 8.630186e-05 
Iteration: 8 Eps: 3.058336e-05 
Iteration: 9 Eps: 2.195588e-05 
Iteration: 10 Eps: 1.94012e-05 
Iteration: 11 Eps: 2.075212e-05 
Iteration: 12 Eps: 2.401629e-05 
Iteration: 13 Eps: 2.985926e-05 
Iteration: 14 Eps: 3.567203e-05 
Iteration: 15 Eps: 4.183994e-05 
Iteration: 16 Eps: 4.84748e-05 
Iteration: 17 Eps: 5.54361e-05 
Iteration: 18 Eps: 6.26561e-05 
Iteration: 19 Eps: 6.974324e-05 
Iteration: 20 Eps: 7.653631e-05 
Iteration: 21 Eps: 8.290537e-05 
Iteration: 22 Eps: 8.873824e-05 
Iteration: 23 Eps: 9.400137e-05 
Iteration: 24 Eps: 9.86275e-05 
Iteration: 25 Eps: 0.000102687 
Iteration: 26 Eps: 0.0001061789 
Iteration: 27 Eps: 0.0001091749 
Iteration: 28 Eps: 0.0001117175 
Iteration: 29 Eps: 0.0001138896 
Iteration: 30 Eps: 0.0001157264 
Iteration: 31 Eps: 0.0001172832 
Iteration: 32 Eps: 0.0001186001 
Iteration: 33 Eps: 0.0001197186 
Iteration: 34 Eps: 0.0001206657 
Iteration: 35 Eps: 0.0001214707 
Iteration: 36 Eps: 0.0001221597 
Iteration: 37 Eps: 0.000122742 
Iteration: 38 Eps: 0.0001232404 
Iteration: 39 Eps: 0.0001236635 
Iteration: 40 Eps: 0.000124026 
Iteration: 41 Eps: 0.0001243374 
Iteration: 42 Eps: 0.0001246022 
Iteration: 43 Eps: 0.0001248305 
Iteration: 44 Eps: 0.000125026 
Iteration: 45 Eps: 0.0001251947 
Iteration: 46 Eps: 0.0001253414 
Iteration: 47 Eps: 0.0001254683 
Iteration: 48 Eps: 0.0001255799 
Iteration: 49 Eps: 0.0001256766 
Iteration: 50 Eps: 0.0001257595 
Iteration: 51 Eps: 0.0001258315 
Iteration: 52 Eps: 0.0001258952 
Iteration: 53 Eps: 0.0001259507 
Iteration: 54 Eps: 0.0001259984 
Iteration: 55 Eps: 0.0001260405 
Iteration: 56 Eps: 0.0001260763 
Iteration: 57 Eps: 0.0001261094 
Iteration: 58 Eps: 0.0001261336 
Iteration: 59 Eps: 0.0001261613 
Iteration: 60 Eps: 0.0001261808 
Iteration: 61 Eps: 0.0001262006 
Iteration: 62 Eps: 0.0001262158 
Iteration: 63 Eps: 0.0001262291 
Iteration: 64 Eps: 0.0001262422 
Iteration: 65 Eps: 0.0001262541 
Iteration: 66 Eps: 0.0001262641 
Iteration: 67 Eps: 0.0001262697 
Iteration: 68 Eps: 0.0001262799 
Iteration: 69 Eps: 0.000126283 
Iteration: 70 Eps: 0.0001262914 
Iteration: 71 Eps: 0.0001262961 
Iteration: 72 Eps: 0.000126298 
Iteration: 73 Eps: 0.000126304 
Iteration: 74 Eps: 0.0001263062 
Iteration: 75 Eps: 0.000126309 
Iteration: 76 Eps: 0.0001263106 
Iteration: 77 Eps: 0.0001263155 
Iteration: 78 Eps: 0.0001263172 
Iteration: 79 Eps: 0.0001263184 
Iteration: 80 Eps: 0.000126318 
Iteration: 81 Eps: 0.0001263207 
Iteration: 82 Eps: 0.000126321 
Iteration: 83 Eps: 0.0001263219 
Iteration: 84 Eps: 0.0001263233 
Iteration: 85 Eps: 0.000126323 
Iteration: 86 Eps: 0.0001263245 
Iteration: 87 Eps: 0.0001263253 
Iteration: 88 Eps: 0.0001263258 
Iteration: 89 Eps: 0.0001263251 
Iteration: 90 Eps: 0.0001263262 
Iteration: 91 Eps: 0.0001263254 
Iteration: 92 Eps: 0.0001263266 
Iteration: 93 Eps: 0.0001263269 
Iteration: 94 Eps: 0.0001263274 
Iteration: 95 Eps: 0.0001263269 
Iteration: 96 Eps: 0.0001263263 
Iteration: 97 Eps: 0.0001263262 
Iteration: 98 Eps: 0.0001263291 
Iteration: 99 Eps: 0.0001263267 
2 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0564953 
Iteration: 3 Eps: 0.01138773 
Iteration: 4 Eps: 0.008610497 
Iteration: 5 Eps: 0.008919228 
Iteration: 6 Eps: 0.00523205 
Iteration: 7 Eps: 0.002225391 
Iteration: 8 Eps: 0.001403669 
Iteration: 9 Eps: 0.000798363 
Iteration: 10 Eps: 0.0004693849 
Iteration: 11 Eps: 0.0002390403 
Iteration: 12 Eps: 0.0001300192 
Iteration: 13 Eps: 6.302155e-05 
Iteration: 14 Eps: 3.776006e-05 
Iteration: 15 Eps: 1.860361e-05 
Iteration: 16 Eps: 1.133883e-05 
Iteration: 17 Eps: 5.94201e-06 
Iteration: 18 Eps: 4.014281e-06 
Iteration: 19 Eps: 2.132645e-06 
Iteration: 20 Eps: 1.470923e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1011606 
Iteration: 3 Eps: 0.02309141 
Iteration: 4 Eps: 0.00217613 
Iteration: 5 Eps: 0.000604817 
Iteration: 6 Eps: 6.022219e-05 
Iteration: 7 Eps: 1.585748e-05 
Iteration: 8 Eps: 8.239225e-06 
Iteration: 9 Eps: 6.031911e-06 
Iteration: 10 Eps: 3.165067e-06 
Iteration: 11 Eps: 3.605873e-06 
Iteration: 12 Eps: 3.33267e-06 
Iteration: 13 Eps: 3.296874e-06 
Iteration: 14 Eps: 3.01206e-06 
Iteration: 15 Eps: 2.659091e-06 
Iteration: 16 Eps: 2.190022e-06 
Iteration: 17 Eps: 1.665935e-06 
Iteration: 18 Eps: 1.131073e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09084147 
Iteration: 3 Eps: 0.005888032 
Iteration: 4 Eps: 0.001503968 
Iteration: 5 Eps: 0.001243601 
Iteration: 6 Eps: 0.0006724029 
Iteration: 7 Eps: 0.0006422799 
Iteration: 8 Eps: 0.0005924518 
Iteration: 9 Eps: 0.000604686 
Iteration: 10 Eps: 0.0006141015 
Iteration: 11 Eps: 0.0006141977 
Iteration: 12 Eps: 0.0006196705 
Iteration: 13 Eps: 0.0006208556 
Iteration: 14 Eps: 0.0006227472 
Iteration: 15 Eps: 0.0006234889 
Iteration: 16 Eps: 0.0006243018 
Iteration: 17 Eps: 0.0006246556 
Iteration: 18 Eps: 0.0006249764 
Iteration: 19 Eps: 0.000625123 
Iteration: 20 Eps: 0.0006252403 
Iteration: 21 Eps: 0.0006253091 
Iteration: 22 Eps: 0.0006253558 
Iteration: 23 Eps: 0.0006253868 
Iteration: 24 Eps: 0.0006254045 
Iteration: 25 Eps: 0.0006254191 
Iteration: 26 Eps: 0.0006254297 
Iteration: 27 Eps: 0.0006254342 
Iteration: 28 Eps: 0.0006254413 
Iteration: 29 Eps: 0.0006254429 
Iteration: 30 Eps: 0.0006254446 
Iteration: 31 Eps: 0.0006254451 
Iteration: 32 Eps: 0.000625443 
Iteration: 33 Eps: 0.0006254444 
Iteration: 34 Eps: 0.000625449 
Iteration: 35 Eps: 0.0006254517 
Iteration: 36 Eps: 0.0006254532 
Iteration: 37 Eps: 0.0006254482 
Iteration: 38 Eps: 0.0006254482 
Iteration: 39 Eps: 0.0006254495 
Iteration: 40 Eps: 0.0006254538 
Iteration: 41 Eps: 0.0006254515 
Iteration: 42 Eps: 0.0006254534 
Iteration: 43 Eps: 0.0006254493 
Iteration: 44 Eps: 0.0006254503 
Iteration: 45 Eps: 0.0006254498 
Iteration: 46 Eps: 0.0006254472 
Iteration: 47 Eps: 0.0006254521 
Iteration: 48 Eps: 0.0006254517 
Iteration: 49 Eps: 0.0006254479 
Iteration: 50 Eps: 0.0006254513 
Iteration: 51 Eps: 0.0006254485 
Iteration: 52 Eps: 0.0006254479 
Iteration: 53 Eps: 0.0006254507 
Iteration: 54 Eps: 0.00062545 
Iteration: 55 Eps: 0.0003412353 
Iteration: 56 Eps: 0.0003250558 
Iteration: 57 Eps: 0.0001272072 
Iteration: 58 Eps: 0.0001248851 
Iteration: 59 Eps: 4.308186e-05 
Iteration: 60 Eps: 6.867866e-06 
Iteration: 61 Eps: 2.912636e-06 
Iteration: 62 Eps: 1.360498e-06 
Iteration: 63 Eps: 1.000512e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09794268 
Iteration: 3 Eps: 0.01061867 
Iteration: 4 Eps: 0.004258072 
Iteration: 5 Eps: 0.0004742242 
Iteration: 6 Eps: 0.0001173419 
Iteration: 7 Eps: 6.632424e-05 
Iteration: 8 Eps: 2.620199e-05 
Iteration: 9 Eps: 5.934434e-06 
Iteration: 10 Eps: 1.121197e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0634465 
Iteration: 3 Eps: 0.01214534 
Iteration: 4 Eps: 0.001922293 
Iteration: 5 Eps: 0.0002841729 
Iteration: 6 Eps: 5.570026e-05 
Iteration: 7 Eps: 1.746774e-05 
Iteration: 8 Eps: 1.405047e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06174574 
Iteration: 3 Eps: 0.01187552 
Iteration: 4 Eps: 0.002767837 
Iteration: 5 Eps: 0.0003968219 
Iteration: 6 Eps: 0.0001256418 
Iteration: 7 Eps: 2.0536e-05 
Iteration: 8 Eps: 6.869359e-06 
Iteration: 9 Eps: 1.412942e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04874009 
Iteration: 3 Eps: 0.0112027 
Iteration: 4 Eps: 0.002882254 
Iteration: 5 Eps: 0.000865797 
Iteration: 6 Eps: 0.0001712362 
Iteration: 7 Eps: 2.900795e-05 
Iteration: 8 Eps: 4.297275e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04528267 
Iteration: 3 Eps: 0.005506755 
Iteration: 4 Eps: 0.002615955 
Iteration: 5 Eps: 0.000831507 
Iteration: 6 Eps: 5.034289e-05 
Iteration: 7 Eps: 5.238493e-05 
Iteration: 8 Eps: 1.865992e-05 
Iteration: 9 Eps: 3.451178e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07593254 
Iteration: 3 Eps: 0.01031654 
Iteration: 4 Eps: 0.002291738 
Iteration: 5 Eps: 0.0001928221 
Iteration: 6 Eps: 0.0001004358 
Iteration: 7 Eps: 2.746279e-05 
Iteration: 8 Eps: 1.899817e-05 
Iteration: 9 Eps: 1.463442e-05 
Iteration: 10 Eps: 9.963305e-06 
Iteration: 11 Eps: 5.861194e-06 
Iteration: 12 Eps: 2.827844e-06 
Iteration: 13 Eps: 1.152174e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09188738 
Iteration: 3 Eps: 0.006510123 
Iteration: 4 Eps: 0.001793166 
Iteration: 5 Eps: 0.0005486873 
Iteration: 6 Eps: 0.0001123705 
Iteration: 7 Eps: 7.858793e-05 
Iteration: 8 Eps: 2.599647e-05 
Iteration: 9 Eps: 1.649243e-05 
Iteration: 10 Eps: 1.368902e-05 
Iteration: 11 Eps: 1.488304e-05 
Iteration: 12 Eps: 1.739537e-05 
Iteration: 13 Eps: 2.217075e-05 
Iteration: 14 Eps: 2.708381e-05 
Iteration: 15 Eps: 3.248013e-05 
Iteration: 16 Eps: 3.845904e-05 
Iteration: 17 Eps: 4.504133e-05 
Iteration: 18 Eps: 5.201095e-05 
Iteration: 19 Eps: 5.916052e-05 
Iteration: 20 Eps: 6.624704e-05 
Iteration: 21 Eps: 7.320425e-05 
Iteration: 22 Eps: 7.975116e-05 
Iteration: 23 Eps: 8.581926e-05 
Iteration: 24 Eps: 9.130424e-05 
Iteration: 25 Eps: 9.62169e-05 
Iteration: 26 Eps: 0.0001005164 
Iteration: 27 Eps: 0.0001042637 
Iteration: 28 Eps: 0.0001074875 
Iteration: 29 Eps: 0.0001102531 
Iteration: 30 Eps: 0.0001126043 
Iteration: 31 Eps: 0.0001146107 
Iteration: 32 Eps: 0.0001163123 
Iteration: 33 Eps: 0.0001177596 
Iteration: 34 Eps: 0.0001189902 
Iteration: 35 Eps: 0.0001200411 
Iteration: 36 Eps: 0.0001209325 
Iteration: 37 Eps: 0.0001216953 
Iteration: 38 Eps: 0.0001223427 
Iteration: 39 Eps: 0.0001228935 
Iteration: 40 Eps: 0.0001233657 
Iteration: 41 Eps: 0.0001237676 
Iteration: 42 Eps: 0.000124112 
Iteration: 43 Eps: 0.0001244076 
Iteration: 44 Eps: 0.0001246614 
Iteration: 45 Eps: 0.0001248821 
Iteration: 46 Eps: 0.0001250704 
Iteration: 47 Eps: 0.0001252317 
Iteration: 48 Eps: 0.0001253756 
Iteration: 49 Eps: 0.0001254971 
Iteration: 50 Eps: 0.0001256023 
Iteration: 51 Eps: 0.0001256962 
Iteration: 52 Eps: 0.0001257768 
Iteration: 53 Eps: 0.0001258458 
Iteration: 54 Eps: 0.0001259074 
Iteration: 55 Eps: 0.000125962 
Iteration: 56 Eps: 0.0001260057 
Iteration: 57 Eps: 0.0001260484 
Iteration: 58 Eps: 0.0001260848 
Iteration: 59 Eps: 0.0001261137 
Iteration: 60 Eps: 0.0001261433 
Iteration: 61 Eps: 0.0001261634 
Iteration: 62 Eps: 0.0001261844 
Iteration: 63 Eps: 0.0001262022 
Iteration: 64 Eps: 0.0001262196 
Iteration: 65 Eps: 0.000126232 
Iteration: 66 Eps: 0.0001262453 
Iteration: 67 Eps: 0.0001262567 
Iteration: 68 Eps: 0.0001262665 
Iteration: 69 Eps: 0.0001262723 
Iteration: 70 Eps: 0.0001262799 
Iteration: 71 Eps: 0.0001262857 
Iteration: 72 Eps: 0.0001262917 
Iteration: 73 Eps: 0.0001262938 
Iteration: 74 Eps: 0.0001263013 
Iteration: 75 Eps: 0.0001263029 
Iteration: 76 Eps: 0.0001263075 
Iteration: 77 Eps: 0.0001263085 
Iteration: 78 Eps: 0.000126312 
Iteration: 79 Eps: 0.0001263147 
Iteration: 80 Eps: 0.0001263148 
Iteration: 81 Eps: 0.0001263179 
Iteration: 82 Eps: 0.0001263203 
Iteration: 83 Eps: 0.0001263195 
Iteration: 84 Eps: 0.0001263227 
Iteration: 85 Eps: 0.0001263229 
Iteration: 86 Eps: 0.0001263233 
Iteration: 87 Eps: 0.0001263235 
Iteration: 88 Eps: 0.0001263242 
Iteration: 89 Eps: 0.0001263243 
Iteration: 90 Eps: 0.0001263261 
Iteration: 91 Eps: 0.0001263232 
Iteration: 92 Eps: 0.0001263261 
Iteration: 93 Eps: 0.0001263263 
Iteration: 94 Eps: 0.0001263273 
Iteration: 95 Eps: 0.0001263246 
Iteration: 96 Eps: 0.0001263268 
Iteration: 97 Eps: 0.0001263275 
Iteration: 98 Eps: 0.0001263268 
Iteration: 99 Eps: 0.0001263268 
3 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0567855 
Iteration: 3 Eps: 0.01125319 
Iteration: 4 Eps: 0.008322667 
Iteration: 5 Eps: 0.008443498 
Iteration: 6 Eps: 0.004930744 
Iteration: 7 Eps: 0.002037198 
Iteration: 8 Eps: 0.001256119 
Iteration: 9 Eps: 0.0006879644 
Iteration: 10 Eps: 0.0003903437 
Iteration: 11 Eps: 0.0001841996 
Iteration: 12 Eps: 9.55699e-05 
Iteration: 13 Eps: 4.188323e-05 
Iteration: 14 Eps: 2.31819e-05 
Iteration: 15 Eps: 1.010594e-05 
Iteration: 16 Eps: 5.742719e-06 
Iteration: 17 Eps: 2.605291e-06 
Iteration: 18 Eps: 1.651203e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1015573 
Iteration: 3 Eps: 0.0231047 
Iteration: 4 Eps: 0.002122506 
Iteration: 5 Eps: 0.0005685336 
Iteration: 6 Eps: 5.377919e-05 
Iteration: 7 Eps: 1.248656e-05 
Iteration: 8 Eps: 7.076752e-06 
Iteration: 9 Eps: 6.060141e-06 
Iteration: 10 Eps: 3.632702e-06 
Iteration: 11 Eps: 4.033492e-06 
Iteration: 12 Eps: 3.640441e-06 
Iteration: 13 Eps: 3.453821e-06 
Iteration: 14 Eps: 2.964598e-06 
Iteration: 15 Eps: 2.392495e-06 
Iteration: 16 Eps: 1.732506e-06 
Iteration: 17 Eps: 1.088772e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09121561 
Iteration: 3 Eps: 0.005841459 
Iteration: 4 Eps: 0.001461998 
Iteration: 5 Eps: 0.00121481 
Iteration: 6 Eps: 0.0006609133 
Iteration: 7 Eps: 0.0006327329 
Iteration: 8 Eps: 0.0005861743 
Iteration: 9 Eps: 0.0005996569 
Iteration: 10 Eps: 0.0006100841 
Iteration: 11 Eps: 0.0006111745 
Iteration: 12 Eps: 0.0006173089 
Iteration: 13 Eps: 0.0006190646 
Iteration: 14 Eps: 0.0006213697 
Iteration: 15 Eps: 0.0006224571 
Iteration: 16 Eps: 0.0006235072 
Iteration: 17 Eps: 0.0006240575 
Iteration: 18 Eps: 0.0006245186 
Iteration: 19 Eps: 0.0006247807 
Iteration: 20 Eps: 0.0006249726 
Iteration: 21 Eps: 0.0006251061 
Iteration: 22 Eps: 0.0006251938 
Iteration: 23 Eps: 0.0006252635 
Iteration: 24 Eps: 0.0006253104 
Iteration: 25 Eps: 0.0006253446 
Iteration: 26 Eps: 0.00062537 
Iteration: 27 Eps: 0.000625389 
Iteration: 28 Eps: 0.0006254024 
Iteration: 29 Eps: 0.000625409 
Iteration: 30 Eps: 0.0006254186 
Iteration: 31 Eps: 0.0006254322 
Iteration: 32 Eps: 0.0006254335 
Iteration: 33 Eps: 0.0006254363 
Iteration: 34 Eps: 0.0006254382 
Iteration: 35 Eps: 0.0006254432 
Iteration: 36 Eps: 0.0006254463 
Iteration: 37 Eps: 0.0006254424 
Iteration: 38 Eps: 0.0006254479 
Iteration: 39 Eps: 0.0006254448 
Iteration: 40 Eps: 0.0006254516 
Iteration: 41 Eps: 0.000625452 
Iteration: 42 Eps: 0.0006254512 
Iteration: 43 Eps: 0.0006254513 
Iteration: 44 Eps: 0.0006254504 
Iteration: 45 Eps: 0.0006254537 
Iteration: 46 Eps: 0.0006254468 
Iteration: 47 Eps: 0.000625448 
Iteration: 48 Eps: 0.0006254497 
Iteration: 49 Eps: 0.0006254486 
Iteration: 50 Eps: 0.0006254486 
Iteration: 51 Eps: 0.0006254513 
Iteration: 52 Eps: 0.0006254461 
Iteration: 53 Eps: 0.0006254503 
Iteration: 54 Eps: 0.0006254475 
Iteration: 55 Eps: 0.0003555557 
Iteration: 56 Eps: 0.0003265433 
Iteration: 57 Eps: 0.0001277466 
Iteration: 58 Eps: 0.0001211381 
Iteration: 59 Eps: 5.359657e-05 
Iteration: 60 Eps: 5.555708e-06 
Iteration: 61 Eps: 1.967469e-06 
Iteration: 62 Eps: 1.06279e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09845017 
Iteration: 3 Eps: 0.01049271 
Iteration: 4 Eps: 0.004088242 
Iteration: 5 Eps: 0.000432235 
Iteration: 6 Eps: 9.714718e-05 
Iteration: 7 Eps: 5.465274e-05 
Iteration: 8 Eps: 1.906059e-05 
Iteration: 9 Eps: 4.29628e-06 
Iteration: 10 Eps: 1.102097e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06376547 
Iteration: 3 Eps: 0.01215386 
Iteration: 4 Eps: 0.001835162 
Iteration: 5 Eps: 0.0002596222 
Iteration: 6 Eps: 4.764146e-05 
Iteration: 7 Eps: 1.298021e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06201628 
Iteration: 3 Eps: 0.01190929 
Iteration: 4 Eps: 0.00264626 
Iteration: 5 Eps: 0.000353508 
Iteration: 6 Eps: 0.0001060273 
Iteration: 7 Eps: 1.6761e-05 
Iteration: 8 Eps: 4.905012e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04899134 
Iteration: 3 Eps: 0.01118515 
Iteration: 4 Eps: 0.002845445 
Iteration: 5 Eps: 0.000776459 
Iteration: 6 Eps: 0.0001489984 
Iteration: 7 Eps: 2.295626e-05 
Iteration: 8 Eps: 3.007583e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04553606 
Iteration: 3 Eps: 0.005526716 
Iteration: 4 Eps: 0.002571204 
Iteration: 5 Eps: 0.0007420244 
Iteration: 6 Eps: 4.240586e-05 
Iteration: 7 Eps: 4.4324e-05 
Iteration: 8 Eps: 1.548225e-05 
Iteration: 9 Eps: 2.616428e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07632902 
Iteration: 3 Eps: 0.01028769 
Iteration: 4 Eps: 0.002256011 
Iteration: 5 Eps: 0.0001793044 
Iteration: 6 Eps: 9.478109e-05 
Iteration: 7 Eps: 2.690438e-05 
Iteration: 8 Eps: 1.86663e-05 
Iteration: 9 Eps: 1.347208e-05 
Iteration: 10 Eps: 8.279778e-06 
Iteration: 11 Eps: 4.19318e-06 
Iteration: 12 Eps: 1.710359e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09227662 
Iteration: 3 Eps: 0.006508117 
Iteration: 4 Eps: 0.001770851 
Iteration: 5 Eps: 0.000515125 
Iteration: 6 Eps: 0.0001086321 
Iteration: 7 Eps: 7.165443e-05 
Iteration: 8 Eps: 2.229787e-05 
Iteration: 9 Eps: 1.211717e-05 
Iteration: 10 Eps: 8.957884e-06 
Iteration: 11 Eps: 9.996774e-06 
Iteration: 12 Eps: 1.180243e-05 
Iteration: 13 Eps: 1.531503e-05 
Iteration: 14 Eps: 1.917253e-05 
Iteration: 15 Eps: 2.341643e-05 
Iteration: 16 Eps: 2.841913e-05 
Iteration: 17 Eps: 3.409319e-05 
Iteration: 18 Eps: 4.034602e-05 
Iteration: 19 Eps: 4.710007e-05 
Iteration: 20 Eps: 5.408974e-05 
Iteration: 21 Eps: 6.123871e-05 
Iteration: 22 Eps: 6.82692e-05 
Iteration: 23 Eps: 7.503934e-05 
Iteration: 24 Eps: 8.138283e-05 
Iteration: 25 Eps: 8.725957e-05 
Iteration: 26 Eps: 9.253914e-05 
Iteration: 27 Eps: 9.724291e-05 
Iteration: 28 Eps: 0.0001013636 
Iteration: 29 Eps: 0.0001049391 
Iteration: 30 Eps: 0.0001080228 
Iteration: 31 Eps: 0.0001106663 
Iteration: 32 Eps: 0.0001129321 
Iteration: 33 Eps: 0.0001148663 
Iteration: 34 Eps: 0.0001165099 
Iteration: 35 Eps: 0.0001179125 
Iteration: 36 Eps: 0.0001191088 
Iteration: 37 Eps: 0.0001201295 
Iteration: 38 Eps: 0.0001210016 
Iteration: 39 Eps: 0.0001217476 
Iteration: 40 Eps: 0.000122386 
Iteration: 41 Eps: 0.0001229257 
Iteration: 42 Eps: 0.0001233908 
Iteration: 43 Eps: 0.0001237871 
Iteration: 44 Eps: 0.0001241281 
Iteration: 45 Eps: 0.0001244182 
Iteration: 46 Eps: 0.0001246697 
Iteration: 47 Eps: 0.0001248871 
Iteration: 48 Eps: 0.0001250729 
Iteration: 49 Eps: 0.000125235 
Iteration: 50 Eps: 0.0001253763 
Iteration: 51 Eps: 0.0001254983 
Iteration: 52 Eps: 0.0001256048 
Iteration: 53 Eps: 0.0001256967 
Iteration: 54 Eps: 0.0001257773 
Iteration: 55 Eps: 0.0001258458 
Iteration: 56 Eps: 0.0001259081 
Iteration: 57 Eps: 0.0001259621 
Iteration: 58 Eps: 0.0001260067 
Iteration: 59 Eps: 0.0001260483 
Iteration: 60 Eps: 0.0001260829 
Iteration: 61 Eps: 0.0001261149 
Iteration: 62 Eps: 0.0001261415 
Iteration: 63 Eps: 0.0001261657 
Iteration: 64 Eps: 0.0001261884 
Iteration: 65 Eps: 0.0001262001 
Iteration: 66 Eps: 0.0001262195 
Iteration: 67 Eps: 0.0001262349 
Iteration: 68 Eps: 0.0001262447 
Iteration: 69 Eps: 0.0001262554 
Iteration: 70 Eps: 0.000126265 
Iteration: 71 Eps: 0.0001262722 
Iteration: 72 Eps: 0.0001262782 
Iteration: 73 Eps: 0.0001262877 
Iteration: 74 Eps: 0.0001262912 
Iteration: 75 Eps: 0.0001262971 
Iteration: 76 Eps: 0.0001263008 
Iteration: 77 Eps: 0.0001263022 
Iteration: 78 Eps: 0.0001263072 
Iteration: 79 Eps: 0.0001263099 
Iteration: 80 Eps: 0.0001263109 
Iteration: 81 Eps: 0.0001263145 
Iteration: 82 Eps: 0.0001263154 
Iteration: 83 Eps: 0.0001263158 
Iteration: 84 Eps: 0.0001263179 
Iteration: 85 Eps: 0.0001263211 
Iteration: 86 Eps: 0.0001263224 
Iteration: 87 Eps: 0.0001263224 
Iteration: 88 Eps: 0.0001263232 
Iteration: 89 Eps: 0.0001263242 
Iteration: 90 Eps: 0.0001263251 
Iteration: 91 Eps: 0.0001263252 
Iteration: 92 Eps: 0.0001263254 
Iteration: 93 Eps: 0.0001263256 
Iteration: 94 Eps: 0.0001263241 
Iteration: 95 Eps: 0.0001263266 
Iteration: 96 Eps: 0.0001263266 
Iteration: 97 Eps: 0.0001263279 
Iteration: 98 Eps: 0.0001263264 
Iteration: 99 Eps: 0.0001263262 
4 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05707799 
Iteration: 3 Eps: 0.01111999 
Iteration: 4 Eps: 0.008039539 
Iteration: 5 Eps: 0.007981569 
Iteration: 6 Eps: 0.004637647 
Iteration: 7 Eps: 0.001859038 
Iteration: 8 Eps: 0.001119216 
Iteration: 9 Eps: 0.0005844089 
Iteration: 10 Eps: 0.0003209913 
Iteration: 11 Eps: 0.0001388694 
Iteration: 12 Eps: 6.922838e-05 
Iteration: 13 Eps: 2.720966e-05 
Iteration: 14 Eps: 1.380826e-05 
Iteration: 15 Eps: 5.232439e-06 
Iteration: 16 Eps: 2.749676e-06 
Iteration: 17 Eps: 1.048694e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1019559 
Iteration: 3 Eps: 0.02311899 
Iteration: 4 Eps: 0.002071549 
Iteration: 5 Eps: 0.0005345138 
Iteration: 6 Eps: 4.824537e-05 
Iteration: 7 Eps: 9.855735e-06 
Iteration: 8 Eps: 6.314224e-06 
Iteration: 9 Eps: 6.245594e-06 
Iteration: 10 Eps: 4.147369e-06 
Iteration: 11 Eps: 4.384808e-06 
Iteration: 12 Eps: 3.832992e-06 
Iteration: 13 Eps: 3.379502e-06 
Iteration: 14 Eps: 2.666297e-06 
Iteration: 15 Eps: 1.862651e-06 
Iteration: 16 Eps: 1.107877e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09159136 
Iteration: 3 Eps: 0.005797525 
Iteration: 4 Eps: 0.001420364 
Iteration: 5 Eps: 0.001186195 
Iteration: 6 Eps: 0.0006492917 
Iteration: 7 Eps: 0.0006230141 
Iteration: 8 Eps: 0.0005797162 
Iteration: 9 Eps: 0.0005944622 
Iteration: 10 Eps: 0.0006059101 
Iteration: 11 Eps: 0.0006080425 
Iteration: 12 Eps: 0.000614843 
Iteration: 13 Eps: 0.0006172039 
Iteration: 14 Eps: 0.000619936 
Iteration: 15 Eps: 0.00062137 
Iteration: 16 Eps: 0.0006226811 
Iteration: 17 Eps: 0.0006234323 
Iteration: 18 Eps: 0.0006240322 
Iteration: 19 Eps: 0.0006244137 
Iteration: 20 Eps: 0.0006246934 
Iteration: 21 Eps: 0.0006248875 
Iteration: 22 Eps: 0.0006250285 
Iteration: 23 Eps: 0.000625134 
Iteration: 24 Eps: 0.000625207 
Iteration: 25 Eps: 0.0006252674 
Iteration: 26 Eps: 0.0006253053 
Iteration: 27 Eps: 0.0006253454 
Iteration: 28 Eps: 0.0006253664 
Iteration: 29 Eps: 0.0006253837 
Iteration: 30 Eps: 0.0006253956 
Iteration: 31 Eps: 0.0006254157 
Iteration: 32 Eps: 0.0006254179 
Iteration: 33 Eps: 0.0006254291 
Iteration: 34 Eps: 0.0006254299 
Iteration: 35 Eps: 0.0006254347 
Iteration: 36 Eps: 0.0006254386 
Iteration: 37 Eps: 0.0006254417 
Iteration: 38 Eps: 0.0006254423 
Iteration: 39 Eps: 0.0006254457 
Iteration: 40 Eps: 0.0006254481 
Iteration: 41 Eps: 0.0006254502 
Iteration: 42 Eps: 0.0006254482 
Iteration: 43 Eps: 0.0006254508 
Iteration: 44 Eps: 0.0006254493 
Iteration: 45 Eps: 0.0006254506 
Iteration: 46 Eps: 0.0006254476 
Iteration: 47 Eps: 0.0006254492 
Iteration: 48 Eps: 0.0006254503 
Iteration: 49 Eps: 0.0006254487 
Iteration: 50 Eps: 0.0006254495 
Iteration: 51 Eps: 0.0006254477 
Iteration: 52 Eps: 0.000625448 
Iteration: 53 Eps: 0.0006254509 
Iteration: 54 Eps: 0.0006254472 
Iteration: 55 Eps: 0.0003724004 
Iteration: 56 Eps: 0.0003299005 
Iteration: 57 Eps: 0.0001319807 
Iteration: 58 Eps: 0.0001200333 
Iteration: 59 Eps: 6.846265e-05 
Iteration: 60 Eps: 4.54145e-06 
Iteration: 61 Eps: 1.605297e-06 
Iteration: 62 Eps: 1.099154e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09895946 
Iteration: 3 Eps: 0.01037005 
Iteration: 4 Eps: 0.003923853 
Iteration: 5 Eps: 0.0003933643 
Iteration: 6 Eps: 7.995827e-05 
Iteration: 7 Eps: 4.4703e-05 
Iteration: 8 Eps: 1.346892e-05 
Iteration: 9 Eps: 3.165455e-06 
Iteration: 10 Eps: 1.114158e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06408664 
Iteration: 3 Eps: 0.01216078 
Iteration: 4 Eps: 0.00175107 
Iteration: 5 Eps: 0.0002380147 
Iteration: 6 Eps: 4.12217e-05 
Iteration: 7 Eps: 9.663414e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06228796 
Iteration: 3 Eps: 0.01194207 
Iteration: 4 Eps: 0.002528104 
Iteration: 5 Eps: 0.0003147622 
Iteration: 6 Eps: 8.901499e-05 
Iteration: 7 Eps: 1.345603e-05 
Iteration: 8 Eps: 3.433559e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04924285 
Iteration: 3 Eps: 0.01116704 
Iteration: 4 Eps: 0.002808222 
Iteration: 5 Eps: 0.000693593 
Iteration: 6 Eps: 0.0001291986 
Iteration: 7 Eps: 1.835945e-05 
Iteration: 8 Eps: 2.299909e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04579046 
Iteration: 3 Eps: 0.005547383 
Iteration: 4 Eps: 0.002526036 
Iteration: 5 Eps: 0.0006598863 
Iteration: 6 Eps: 3.569915e-05 
Iteration: 7 Eps: 3.722988e-05 
Iteration: 8 Eps: 1.283147e-05 
Iteration: 9 Eps: 2.043935e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07672611 
Iteration: 3 Eps: 0.01025942 
Iteration: 4 Eps: 0.002220958 
Iteration: 5 Eps: 0.0001685026 
Iteration: 6 Eps: 8.993023e-05 
Iteration: 7 Eps: 2.645431e-05 
Iteration: 8 Eps: 1.806965e-05 
Iteration: 9 Eps: 1.199547e-05 
Iteration: 10 Eps: 6.563193e-06 
Iteration: 11 Eps: 2.878285e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09266549 
Iteration: 3 Eps: 0.00650725 
Iteration: 4 Eps: 0.001748521 
Iteration: 5 Eps: 0.0004841044 
Iteration: 6 Eps: 0.0001053725 
Iteration: 7 Eps: 6.547542e-05 
Iteration: 8 Eps: 1.938057e-05 
Iteration: 9 Eps: 8.827905e-06 
Iteration: 10 Eps: 5.349491e-06 
Iteration: 11 Eps: 6.105376e-06 
Iteration: 12 Eps: 7.358737e-06 
Iteration: 13 Eps: 9.56185e-06 
Iteration: 14 Eps: 1.219232e-05 
Iteration: 15 Eps: 1.51925e-05 
Iteration: 16 Eps: 1.888727e-05 
Iteration: 17 Eps: 2.325494e-05 
Iteration: 18 Eps: 2.825135e-05 
Iteration: 19 Eps: 3.393482e-05 
Iteration: 20 Eps: 4.017208e-05 
Iteration: 21 Eps: 4.685204e-05 
Iteration: 22 Eps: 5.379494e-05 
Iteration: 23 Eps: 6.086493e-05 
Iteration: 24 Eps: 6.787719e-05 
Iteration: 25 Eps: 7.460096e-05 
Iteration: 26 Eps: 8.093308e-05 
Iteration: 27 Eps: 8.672719e-05 
Iteration: 28 Eps: 9.202525e-05 
Iteration: 29 Eps: 9.671195e-05 
Iteration: 30 Eps: 0.0001008422 
Iteration: 31 Eps: 0.0001044528 
Iteration: 32 Eps: 0.0001075554 
Iteration: 33 Eps: 0.0001102352 
Iteration: 34 Eps: 0.0001125261 
Iteration: 35 Eps: 0.000114494 
Iteration: 36 Eps: 0.0001161753 
Iteration: 37 Eps: 0.0001176144 
Iteration: 38 Eps: 0.0001188466 
Iteration: 39 Eps: 0.0001198965 
Iteration: 40 Eps: 0.0001207961 
Iteration: 41 Eps: 0.0001215668 
Iteration: 42 Eps: 0.0001222233 
Iteration: 43 Eps: 0.0001227894 
Iteration: 44 Eps: 0.0001232703 
Iteration: 45 Eps: 0.0001236807 
Iteration: 46 Eps: 0.0001240353 
Iteration: 47 Eps: 0.0001243375 
Iteration: 48 Eps: 0.0001245998 
Iteration: 49 Eps: 0.0001248245 
Iteration: 50 Eps: 0.0001250189 
Iteration: 51 Eps: 0.0001251891 
Iteration: 52 Eps: 0.0001253355 
Iteration: 53 Eps: 0.0001254618 
Iteration: 54 Eps: 0.0001255725 
Iteration: 55 Eps: 0.0001256685 
Iteration: 56 Eps: 0.0001257531 
Iteration: 57 Eps: 0.0001258265 
Iteration: 58 Eps: 0.0001258893 
Iteration: 59 Eps: 0.0001259441 
Iteration: 60 Eps: 0.0001259936 
Iteration: 61 Eps: 0.0001260359 
Iteration: 62 Eps: 0.0001260718 
Iteration: 63 Eps: 0.0001261053 
Iteration: 64 Eps: 0.0001261349 
Iteration: 65 Eps: 0.0001261545 
Iteration: 66 Eps: 0.0001261836 
Iteration: 67 Eps: 0.000126195 
Iteration: 68 Eps: 0.0001262152 
Iteration: 69 Eps: 0.0001262293 
Iteration: 70 Eps: 0.0001262427 
Iteration: 71 Eps: 0.0001262493 
Iteration: 72 Eps: 0.0001262626 
Iteration: 73 Eps: 0.0001262691 
Iteration: 74 Eps: 0.0001262782 
Iteration: 75 Eps: 0.000126283 
Iteration: 76 Eps: 0.0001262884 
Iteration: 77 Eps: 0.0001262943 
Iteration: 78 Eps: 0.0001262976 
Iteration: 79 Eps: 0.0001263026 
Iteration: 80 Eps: 0.0001263053 
Iteration: 81 Eps: 0.0001263087 
Iteration: 82 Eps: 0.0001263121 
Iteration: 83 Eps: 0.0001263119 
Iteration: 84 Eps: 0.0001263153 
Iteration: 85 Eps: 0.000126319 
Iteration: 86 Eps: 0.0001263181 
Iteration: 87 Eps: 0.0001263192 
Iteration: 88 Eps: 0.0001263212 
Iteration: 89 Eps: 0.0001263209 
Iteration: 90 Eps: 0.0001263224 
Iteration: 91 Eps: 0.0001263235 
Iteration: 92 Eps: 0.0001263249 
Iteration: 93 Eps: 0.0001263237 
Iteration: 94 Eps: 0.0001263263 
Iteration: 95 Eps: 0.0001263249 
Iteration: 96 Eps: 0.0001263248 
Iteration: 97 Eps: 0.0001263264 
Iteration: 98 Eps: 0.000126327 
Iteration: 99 Eps: 0.0001263253 
5 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05737238 
Iteration: 3 Eps: 0.01098882 
Iteration: 4 Eps: 0.00776257 
Iteration: 5 Eps: 0.007532682 
Iteration: 6 Eps: 0.004352497 
Iteration: 7 Eps: 0.001691123 
Iteration: 8 Eps: 0.0009915694 
Iteration: 9 Eps: 0.0004942041 
Iteration: 10 Eps: 0.0002620135 
Iteration: 11 Eps: 0.0001035064 
Iteration: 12 Eps: 4.848349e-05 
Iteration: 13 Eps: 1.67994e-05 
Iteration: 14 Eps: 7.893931e-06 
Iteration: 15 Eps: 2.519439e-06 
Iteration: 16 Eps: 1.208451e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1023564 
Iteration: 3 Eps: 0.02313263 
Iteration: 4 Eps: 0.002022666 
Iteration: 5 Eps: 0.0005030275 
Iteration: 6 Eps: 4.358338e-05 
Iteration: 7 Eps: 7.911596e-06 
Iteration: 8 Eps: 5.905888e-06 
Iteration: 9 Eps: 6.533643e-06 
Iteration: 10 Eps: 4.64077e-06 
Iteration: 11 Eps: 4.611865e-06 
Iteration: 12 Eps: 3.829695e-06 
Iteration: 13 Eps: 3.060943e-06 
Iteration: 14 Eps: 2.090397e-06 
Iteration: 15 Eps: 1.214761e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09196897 
Iteration: 3 Eps: 0.005756042 
Iteration: 4 Eps: 0.00137904 
Iteration: 5 Eps: 0.001157619 
Iteration: 6 Eps: 0.0006374953 
Iteration: 7 Eps: 0.000613079 
Iteration: 8 Eps: 0.0005730524 
Iteration: 9 Eps: 0.0005890917 
Iteration: 10 Eps: 0.0006015864 
Iteration: 11 Eps: 0.000604781 
Iteration: 12 Eps: 0.000612284 
Iteration: 13 Eps: 0.0006152578 
Iteration: 14 Eps: 0.00061844 
Iteration: 15 Eps: 0.0006202304 
Iteration: 16 Eps: 0.0006218113 
Iteration: 17 Eps: 0.0006227819 
Iteration: 18 Eps: 0.0006235358 
Iteration: 19 Eps: 0.0006240266 
Iteration: 20 Eps: 0.0006244017 
Iteration: 21 Eps: 0.0006246614 
Iteration: 22 Eps: 0.0006248541 
Iteration: 23 Eps: 0.0006250004 
Iteration: 24 Eps: 0.000625104 
Iteration: 25 Eps: 0.0006251815 
Iteration: 26 Eps: 0.0006252473 
Iteration: 27 Eps: 0.0006252922 
Iteration: 28 Eps: 0.0006253219 
Iteration: 29 Eps: 0.0006253535 
Iteration: 30 Eps: 0.0006253772 
Iteration: 31 Eps: 0.0006253926 
Iteration: 32 Eps: 0.0006253981 
Iteration: 33 Eps: 0.0006254151 
Iteration: 34 Eps: 0.0006254244 
Iteration: 35 Eps: 0.0006254287 
Iteration: 36 Eps: 0.0006254308 
Iteration: 37 Eps: 0.0006254355 
Iteration: 38 Eps: 0.000625445 
Iteration: 39 Eps: 0.0006254398 
Iteration: 40 Eps: 0.0006254454 
Iteration: 41 Eps: 0.000625446 
Iteration: 42 Eps: 0.0006254494 
Iteration: 43 Eps: 0.0006254499 
Iteration: 44 Eps: 0.0006254519 
Iteration: 45 Eps: 0.0006254451 
Iteration: 46 Eps: 0.0006254502 
Iteration: 47 Eps: 0.0006254497 
Iteration: 48 Eps: 0.0006254499 
Iteration: 49 Eps: 0.0006254483 
Iteration: 50 Eps: 0.0006254511 
Iteration: 51 Eps: 0.0006254488 
Iteration: 52 Eps: 0.0006254494 
Iteration: 53 Eps: 0.0006254472 
Iteration: 54 Eps: 0.0006254496 
Iteration: 55 Eps: 0.0003920223 
Iteration: 56 Eps: 0.0003353058 
Iteration: 57 Eps: 0.0001400889 
Iteration: 58 Eps: 0.0001228059 
Iteration: 59 Eps: 8.757379e-05 
Iteration: 60 Eps: 5.645375e-06 
Iteration: 61 Eps: 2.914777e-06 
Iteration: 62 Eps: 1.840644e-06 
Iteration: 63 Eps: 1.010416e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0994704 
Iteration: 3 Eps: 0.01025072 
Iteration: 4 Eps: 0.003764849 
Iteration: 5 Eps: 0.0003575555 
Iteration: 6 Eps: 6.544469e-05 
Iteration: 7 Eps: 3.633833e-05 
Iteration: 8 Eps: 9.191162e-06 
Iteration: 9 Eps: 2.404215e-06 
Iteration: 10 Eps: 1.131072e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06440898 
Iteration: 3 Eps: 0.01216566 
Iteration: 4 Eps: 0.001670108 
Iteration: 5 Eps: 0.0002186051 
Iteration: 6 Eps: 3.581961e-05 
Iteration: 7 Eps: 7.249552e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0625609 
Iteration: 3 Eps: 0.01197452 
Iteration: 4 Eps: 0.002412774 
Iteration: 5 Eps: 0.0002804179 
Iteration: 6 Eps: 7.438551e-05 
Iteration: 7 Eps: 1.065097e-05 
Iteration: 8 Eps: 2.352451e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04949572 
Iteration: 3 Eps: 0.01114961 
Iteration: 4 Eps: 0.002770707 
Iteration: 5 Eps: 0.0006168272 
Iteration: 6 Eps: 0.000111642 
Iteration: 7 Eps: 1.470939e-05 
Iteration: 8 Eps: 1.81844e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04604545 
Iteration: 3 Eps: 0.005568457 
Iteration: 4 Eps: 0.002481285 
Iteration: 5 Eps: 0.0005848937 
Iteration: 6 Eps: 3.020107e-05 
Iteration: 7 Eps: 3.10143e-05 
Iteration: 8 Eps: 1.061519e-05 
Iteration: 9 Eps: 1.678082e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07712466 
Iteration: 3 Eps: 0.01023227 
Iteration: 4 Eps: 0.002185319 
Iteration: 5 Eps: 0.0001603143 
Iteration: 6 Eps: 8.54982e-05 
Iteration: 7 Eps: 2.608528e-05 
Iteration: 8 Eps: 1.712896e-05 
Iteration: 9 Eps: 1.036978e-05 
Iteration: 10 Eps: 5.04999e-06 
Iteration: 11 Eps: 1.904913e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09305603 
Iteration: 3 Eps: 0.006507924 
Iteration: 4 Eps: 0.001726193 
Iteration: 5 Eps: 0.0004556985 
Iteration: 6 Eps: 0.0001024021 
Iteration: 7 Eps: 6.009336e-05 
Iteration: 8 Eps: 1.719579e-05 
Iteration: 9 Eps: 6.469178e-06 
Iteration: 10 Eps: 2.827324e-06 
Iteration: 11 Eps: 3.207353e-06 
Iteration: 12 Eps: 3.972679e-06 
Iteration: 13 Eps: 5.123421e-06 
Iteration: 14 Eps: 6.644858e-06 
Iteration: 15 Eps: 8.407801e-06 
Iteration: 16 Eps: 1.062502e-05 
Iteration: 17 Eps: 1.341132e-05 
Iteration: 18 Eps: 1.677319e-05 
Iteration: 19 Eps: 2.072284e-05 
Iteration: 20 Eps: 2.538425e-05 
Iteration: 21 Eps: 3.068177e-05 
Iteration: 22 Eps: 3.652601e-05 
Iteration: 23 Eps: 4.294043e-05 
Iteration: 24 Eps: 4.972362e-05 
Iteration: 25 Eps: 5.670447e-05 
Iteration: 26 Eps: 6.367157e-05 
Iteration: 27 Eps: 7.050356e-05 
Iteration: 28 Eps: 7.704022e-05 
Iteration: 29 Eps: 8.311499e-05 
Iteration: 30 Eps: 8.867101e-05 
Iteration: 31 Eps: 9.364108e-05 
Iteration: 32 Eps: 9.811134e-05 
Iteration: 33 Eps: 0.0001020109 
Iteration: 34 Eps: 0.000105404 
Iteration: 35 Eps: 0.0001083509 
Iteration: 36 Eps: 0.0001108835 
Iteration: 37 Eps: 0.000113056 
Iteration: 38 Eps: 0.0001149276 
Iteration: 39 Eps: 0.00011653 
Iteration: 40 Eps: 0.000117906 
Iteration: 41 Eps: 0.0001190849 
Iteration: 42 Eps: 0.0001200978 
Iteration: 43 Eps: 0.000120963 
Iteration: 44 Eps: 0.0001217057 
Iteration: 45 Eps: 0.000122339 
Iteration: 46 Eps: 0.0001228841 
Iteration: 47 Eps: 0.0001233488 
Iteration: 48 Eps: 0.000123748 
Iteration: 49 Eps: 0.0001240896 
Iteration: 50 Eps: 0.0001243846 
Iteration: 51 Eps: 0.0001246368 
Iteration: 52 Eps: 0.0001248576 
Iteration: 53 Eps: 0.0001250473 
Iteration: 54 Eps: 0.0001252111 
Iteration: 55 Eps: 0.0001253558 
Iteration: 56 Eps: 0.0001254797 
Iteration: 57 Eps: 0.0001255883 
Iteration: 58 Eps: 0.0001256819 
Iteration: 59 Eps: 0.000125764 
Iteration: 60 Eps: 0.0001258328 
Iteration: 61 Eps: 0.0001258994 
Iteration: 62 Eps: 0.0001259526 
Iteration: 63 Eps: 0.0001259996 
Iteration: 64 Eps: 0.0001260415 
Iteration: 65 Eps: 0.0001260766 
Iteration: 66 Eps: 0.0001261108 
Iteration: 67 Eps: 0.0001261337 
Iteration: 68 Eps: 0.0001261586 
Iteration: 69 Eps: 0.0001261818 
Iteration: 70 Eps: 0.0001262018 
Iteration: 71 Eps: 0.000126217 
Iteration: 72 Eps: 0.0001262287 
Iteration: 73 Eps: 0.0001262433 
Iteration: 74 Eps: 0.0001262537 
Iteration: 75 Eps: 0.0001262614 
Iteration: 76 Eps: 0.0001262712 
Iteration: 77 Eps: 0.0001262787 
Iteration: 78 Eps: 0.0001262856 
Iteration: 79 Eps: 0.000126291 
Iteration: 80 Eps: 0.0001262955 
Iteration: 81 Eps: 0.0001262998 
Iteration: 82 Eps: 0.0001263029 
Iteration: 83 Eps: 0.0001263055 
Iteration: 84 Eps: 0.0001263096 
Iteration: 85 Eps: 0.0001263105 
Iteration: 86 Eps: 0.0001263138 
Iteration: 87 Eps: 0.0001263148 
Iteration: 88 Eps: 0.0001263176 
Iteration: 89 Eps: 0.0001263192 
Iteration: 90 Eps: 0.0001263183 
Iteration: 91 Eps: 0.000126323 
Iteration: 92 Eps: 0.00012632 
Iteration: 93 Eps: 0.0001263248 
Iteration: 94 Eps: 0.0001263231 
Iteration: 95 Eps: 0.0001263245 
Iteration: 96 Eps: 0.0001263242 
Iteration: 97 Eps: 0.0001263259 
Iteration: 98 Eps: 0.0001263243 
Iteration: 99 Eps: 0.0001263259 
6 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05766843 
Iteration: 3 Eps: 0.01085976 
Iteration: 4 Eps: 0.007492017 
Iteration: 5 Eps: 0.0070972 
Iteration: 6 Eps: 0.00407545 
Iteration: 7 Eps: 0.001532758 
Iteration: 8 Eps: 0.0008733133 
Iteration: 9 Eps: 0.0004136429 
Iteration: 10 Eps: 0.000211554 
Iteration: 11 Eps: 7.502754e-05 
Iteration: 12 Eps: 3.341204e-05 
Iteration: 13 Eps: 9.958792e-06 
Iteration: 14 Eps: 4.254207e-06 
Iteration: 15 Eps: 1.106692e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1027583 
Iteration: 3 Eps: 0.02314677 
Iteration: 4 Eps: 0.001976073 
Iteration: 5 Eps: 0.0004732778 
Iteration: 6 Eps: 3.972097e-05 
Iteration: 7 Eps: 6.58284e-06 
Iteration: 8 Eps: 5.80319e-06 
Iteration: 9 Eps: 6.86133e-06 
Iteration: 10 Eps: 5.011202e-06 
Iteration: 11 Eps: 4.664121e-06 
Iteration: 12 Eps: 3.571326e-06 
Iteration: 13 Eps: 2.488087e-06 
Iteration: 14 Eps: 1.421648e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09234835 
Iteration: 3 Eps: 0.005717329 
Iteration: 4 Eps: 0.001338344 
Iteration: 5 Eps: 0.001128914 
Iteration: 6 Eps: 0.0006258317 
Iteration: 7 Eps: 0.0006028524 
Iteration: 8 Eps: 0.0005661943 
Iteration: 9 Eps: 0.0005835303 
Iteration: 10 Eps: 0.0005971003 
Iteration: 11 Eps: 0.0006013978 
Iteration: 12 Eps: 0.000609615 
Iteration: 13 Eps: 0.0006132295 
Iteration: 14 Eps: 0.000616871 
Iteration: 15 Eps: 0.0006190471 
Iteration: 16 Eps: 0.0006209029 
Iteration: 17 Eps: 0.0006220903 
Iteration: 18 Eps: 0.0006230107 
Iteration: 19 Eps: 0.0006236303 
Iteration: 20 Eps: 0.0006240955 
Iteration: 21 Eps: 0.0006244207 
Iteration: 22 Eps: 0.0006246711 
Iteration: 23 Eps: 0.0006248523 
Iteration: 24 Eps: 0.0006249963 
Iteration: 25 Eps: 0.0006250981 
Iteration: 26 Eps: 0.0006251801 
Iteration: 27 Eps: 0.0006252393 
Iteration: 28 Eps: 0.0006252873 
Iteration: 29 Eps: 0.0006253239 
Iteration: 30 Eps: 0.0006253517 
Iteration: 31 Eps: 0.0006253693 
Iteration: 32 Eps: 0.0006253963 
Iteration: 33 Eps: 0.0006254034 
Iteration: 34 Eps: 0.0006254155 
Iteration: 35 Eps: 0.000625423 
Iteration: 36 Eps: 0.0006254273 
Iteration: 37 Eps: 0.0006254367 
Iteration: 38 Eps: 0.0006254324 
Iteration: 39 Eps: 0.0006254419 
Iteration: 40 Eps: 0.0006254418 
Iteration: 41 Eps: 0.000625447 
Iteration: 42 Eps: 0.0006254472 
Iteration: 43 Eps: 0.0006254501 
Iteration: 44 Eps: 0.0006254483 
Iteration: 45 Eps: 0.0006254458 
Iteration: 46 Eps: 0.0006254482 
Iteration: 47 Eps: 0.0006254485 
Iteration: 48 Eps: 0.0006254509 
Iteration: 49 Eps: 0.0006254493 
Iteration: 50 Eps: 0.0006254513 
Iteration: 51 Eps: 0.0006254504 
Iteration: 52 Eps: 0.000625449 
Iteration: 53 Eps: 0.0006254468 
Iteration: 54 Eps: 0.0006254497 
Iteration: 55 Eps: 0.000414665 
Iteration: 56 Eps: 0.0003429449 
Iteration: 57 Eps: 0.0001514942 
Iteration: 58 Eps: 0.000128889 
Iteration: 59 Eps: 0.0001106718 
Iteration: 60 Eps: 9.193675e-06 
Iteration: 61 Eps: 6.334713e-06 
Iteration: 62 Eps: 3.486147e-06 
Iteration: 63 Eps: 1.623341e-06 
Iteration: 64 Eps: 1.047763e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09998297 
Iteration: 3 Eps: 0.01013405 
Iteration: 4 Eps: 0.003611351 
Iteration: 5 Eps: 0.0003250703 
Iteration: 6 Eps: 5.356965e-05 
Iteration: 7 Eps: 2.941658e-05 
Iteration: 8 Eps: 6.06224e-06 
Iteration: 9 Eps: 1.910367e-06 
Iteration: 10 Eps: 1.130408e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06473256 
Iteration: 3 Eps: 0.01216854 
Iteration: 4 Eps: 0.001592702 
Iteration: 5 Eps: 0.0002012533 
Iteration: 6 Eps: 3.145263e-05 
Iteration: 7 Eps: 5.571945e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06283508 
Iteration: 3 Eps: 0.01200573 
Iteration: 4 Eps: 0.002302199 
Iteration: 5 Eps: 0.0002498648 
Iteration: 6 Eps: 6.182628e-05 
Iteration: 7 Eps: 8.320881e-06 
Iteration: 8 Eps: 1.615057e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04975008 
Iteration: 3 Eps: 0.01113232 
Iteration: 4 Eps: 0.002732606 
Iteration: 5 Eps: 0.0005464914 
Iteration: 6 Eps: 9.621596e-05 
Iteration: 7 Eps: 1.172202e-05 
Iteration: 8 Eps: 1.392248e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04630148 
Iteration: 3 Eps: 0.005590217 
Iteration: 4 Eps: 0.00243548 
Iteration: 5 Eps: 0.000517236 
Iteration: 6 Eps: 2.572249e-05 
Iteration: 7 Eps: 2.570286e-05 
Iteration: 8 Eps: 8.741613e-06 
Iteration: 9 Eps: 1.444593e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07752554 
Iteration: 3 Eps: 0.01020621 
Iteration: 4 Eps: 0.002149995 
Iteration: 5 Eps: 0.0001546072 
Iteration: 6 Eps: 8.159113e-05 
Iteration: 7 Eps: 2.563227e-05 
Iteration: 8 Eps: 1.599302e-05 
Iteration: 9 Eps: 8.715383e-06 
Iteration: 10 Eps: 3.769445e-06 
Iteration: 11 Eps: 1.279013e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09344898 
Iteration: 3 Eps: 0.006509221 
Iteration: 4 Eps: 0.001703839 
Iteration: 5 Eps: 0.0004298283 
Iteration: 6 Eps: 9.984128e-05 
Iteration: 7 Eps: 5.538313e-05 
Iteration: 8 Eps: 1.561208e-05 
Iteration: 9 Eps: 4.971248e-06 
Iteration: 10 Eps: 1.302064e-06 
Iteration: 11 Eps: 1.287389e-06 
Iteration: 12 Eps: 1.671132e-06 
Iteration: 13 Eps: 2.132566e-06 
Iteration: 14 Eps: 2.753097e-06 
Iteration: 15 Eps: 3.496928e-06 
Iteration: 16 Eps: 4.499131e-06 
Iteration: 17 Eps: 5.773867e-06 
Iteration: 18 Eps: 7.377678e-06 
Iteration: 19 Eps: 9.405921e-06 
Iteration: 20 Eps: 1.184125e-05 
Iteration: 21 Eps: 1.484945e-05 
Iteration: 22 Eps: 1.84372e-05 
Iteration: 23 Eps: 2.266194e-05 
Iteration: 24 Eps: 2.757405e-05 
Iteration: 25 Eps: 3.313467e-05 
Iteration: 26 Eps: 3.914198e-05 
Iteration: 27 Eps: 4.567251e-05 
Iteration: 28 Eps: 5.249453e-05 
Iteration: 29 Eps: 5.943332e-05 
Iteration: 30 Eps: 6.631681e-05 
Iteration: 31 Eps: 7.2942e-05 
Iteration: 32 Eps: 7.922347e-05 
Iteration: 33 Eps: 8.507887e-05 
Iteration: 34 Eps: 9.037499e-05 
Iteration: 35 Eps: 9.510877e-05 
Iteration: 36 Eps: 9.934514e-05 
Iteration: 37 Eps: 0.0001030334 
Iteration: 38 Eps: 0.0001062571 
Iteration: 39 Eps: 0.0001090465 
Iteration: 40 Eps: 0.0001114575 
Iteration: 41 Eps: 0.0001135281 
Iteration: 42 Eps: 0.0001153143 
Iteration: 43 Eps: 0.0001168495 
Iteration: 44 Eps: 0.00011817 
Iteration: 45 Eps: 0.0001193047 
Iteration: 46 Eps: 0.0001202798 
Iteration: 47 Eps: 0.0001211186 
Iteration: 48 Eps: 0.0001218326 
Iteration: 49 Eps: 0.0001224469 
Iteration: 50 Eps: 0.0001229718 
Iteration: 51 Eps: 0.0001234218 
Iteration: 52 Eps: 0.00012381 
Iteration: 53 Eps: 0.0001241408 
Iteration: 54 Eps: 0.0001244275 
Iteration: 55 Eps: 0.0001246765 
Iteration: 56 Eps: 0.0001248894 
Iteration: 57 Eps: 0.0001250729 
Iteration: 58 Eps: 0.0001252364 
Iteration: 59 Eps: 0.0001253743 
Iteration: 60 Eps: 0.000125496 
Iteration: 61 Eps: 0.0001256019 
Iteration: 62 Eps: 0.0001256934 
Iteration: 63 Eps: 0.0001257755 
Iteration: 64 Eps: 0.0001258434 
Iteration: 65 Eps: 0.0001259079 
Iteration: 66 Eps: 0.00012596 
Iteration: 67 Eps: 0.0001260046 
Iteration: 68 Eps: 0.0001260483 
Iteration: 69 Eps: 0.0001260819 
Iteration: 70 Eps: 0.0001261137 
Iteration: 71 Eps: 0.0001261396 
Iteration: 72 Eps: 0.0001261673 
Iteration: 73 Eps: 0.0001261818 
Iteration: 74 Eps: 0.0001262029 
Iteration: 75 Eps: 0.0001262194 
Iteration: 76 Eps: 0.0001262309 
Iteration: 77 Eps: 0.0001262473 
Iteration: 78 Eps: 0.0001262532 
Iteration: 79 Eps: 0.0001262649 
Iteration: 80 Eps: 0.0001262727 
Iteration: 81 Eps: 0.0001262803 
Iteration: 82 Eps: 0.0001262854 
Iteration: 83 Eps: 0.0001262904 
Iteration: 84 Eps: 0.0001262948 
Iteration: 85 Eps: 0.000126301 
Iteration: 86 Eps: 0.0001263036 
Iteration: 87 Eps: 0.0001263071 
Iteration: 88 Eps: 0.0001263094 
Iteration: 89 Eps: 0.0001263113 
Iteration: 90 Eps: 0.0001263144 
Iteration: 91 Eps: 0.0001263156 
Iteration: 92 Eps: 0.0001263177 
Iteration: 93 Eps: 0.0001263188 
Iteration: 94 Eps: 0.0001263196 
Iteration: 95 Eps: 0.0001263209 
Iteration: 96 Eps: 0.0001263228 
Iteration: 97 Eps: 0.000126322 
Iteration: 98 Eps: 0.0001263232 
Iteration: 99 Eps: 0.0001263238 
7 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05796619 
Iteration: 3 Eps: 0.01073252 
Iteration: 4 Eps: 0.007226531 
Iteration: 5 Eps: 0.006676133 
Iteration: 6 Eps: 0.003807613 
Iteration: 7 Eps: 0.001384284 
Iteration: 8 Eps: 0.0007646476 
Iteration: 9 Eps: 0.0003422186 
Iteration: 10 Eps: 0.0001686441 
Iteration: 11 Eps: 5.299538e-05 
Iteration: 12 Eps: 2.236951e-05 
Iteration: 13 Eps: 5.644444e-06 
Iteration: 14 Eps: 2.231348e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1031618 
Iteration: 3 Eps: 0.023161 
Iteration: 4 Eps: 0.001931633 
Iteration: 5 Eps: 0.0004455378 
Iteration: 6 Eps: 3.667437e-05 
Iteration: 7 Eps: 5.788182e-06 
Iteration: 8 Eps: 5.946656e-06 
Iteration: 9 Eps: 7.11533e-06 
Iteration: 10 Eps: 5.259133e-06 
Iteration: 11 Eps: 4.459783e-06 
Iteration: 12 Eps: 3.071104e-06 
Iteration: 13 Eps: 1.801617e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09272931 
Iteration: 3 Eps: 0.00568066 
Iteration: 4 Eps: 0.001297598 
Iteration: 5 Eps: 0.001100182 
Iteration: 6 Eps: 0.0006138926 
Iteration: 7 Eps: 0.0005925708 
Iteration: 8 Eps: 0.0005591362 
Iteration: 9 Eps: 0.0005777793 
Iteration: 10 Eps: 0.0005924451 
Iteration: 11 Eps: 0.0005978766 
Iteration: 12 Eps: 0.0006068349 
Iteration: 13 Eps: 0.0006111108 
Iteration: 14 Eps: 0.0006152321 
Iteration: 15 Eps: 0.0006177987 
Iteration: 16 Eps: 0.0006199521 
Iteration: 17 Eps: 0.0006213711 
Iteration: 18 Eps: 0.0006224599 
Iteration: 19 Eps: 0.0006232089 
Iteration: 20 Eps: 0.000623771 
Iteration: 21 Eps: 0.0006241734 
Iteration: 22 Eps: 0.0006244762 
Iteration: 23 Eps: 0.0006247061 
Iteration: 24 Eps: 0.0006248801 
Iteration: 25 Eps: 0.000625012 
Iteration: 26 Eps: 0.0006251072 
Iteration: 27 Eps: 0.0006251888 
Iteration: 28 Eps: 0.0006252466 
Iteration: 29 Eps: 0.0006252906 
Iteration: 30 Eps: 0.0006253271 
Iteration: 31 Eps: 0.0006253551 
Iteration: 32 Eps: 0.0006253734 
Iteration: 33 Eps: 0.0006253929 
Iteration: 34 Eps: 0.0006254055 
Iteration: 35 Eps: 0.000625417 
Iteration: 36 Eps: 0.0006254181 
Iteration: 37 Eps: 0.0006254284 
Iteration: 38 Eps: 0.0006254323 
Iteration: 39 Eps: 0.0006254367 
Iteration: 40 Eps: 0.0006254414 
Iteration: 41 Eps: 0.0006254423 
Iteration: 42 Eps: 0.0006254448 
Iteration: 43 Eps: 0.0006254475 
Iteration: 44 Eps: 0.0006254461 
Iteration: 45 Eps: 0.0006254451 
Iteration: 46 Eps: 0.0006254499 
Iteration: 47 Eps: 0.0006254468 
Iteration: 48 Eps: 0.0006254509 
Iteration: 49 Eps: 0.0006254457 
Iteration: 50 Eps: 0.0006254503 
Iteration: 51 Eps: 0.0006254479 
Iteration: 52 Eps: 0.0006254498 
Iteration: 53 Eps: 0.000625449 
Iteration: 54 Eps: 0.0006254484 
Iteration: 55 Eps: 0.0004406372 
Iteration: 56 Eps: 0.0003530216 
Iteration: 57 Eps: 0.000166408 
Iteration: 58 Eps: 0.0001315737 
Iteration: 59 Eps: 0.000124902 
Iteration: 60 Eps: 1.194614e-05 
Iteration: 61 Eps: 8.741156e-06 
Iteration: 62 Eps: 4.617803e-06 
Iteration: 63 Eps: 2.051319e-06 
Iteration: 64 Eps: 1.325144e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.100499 
Iteration: 3 Eps: 0.01002069 
Iteration: 4 Eps: 0.003463583 
Iteration: 5 Eps: 0.0002954148 
Iteration: 6 Eps: 4.391267e-05 
Iteration: 7 Eps: 2.373087e-05 
Iteration: 8 Eps: 3.893221e-06 
Iteration: 9 Eps: 1.564206e-06 
Iteration: 10 Eps: 1.105225e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06505732 
Iteration: 3 Eps: 0.01216948 
Iteration: 4 Eps: 0.00151828 
Iteration: 5 Eps: 0.0001855909 
Iteration: 6 Eps: 2.764616e-05 
Iteration: 7 Eps: 4.357525e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06311054 
Iteration: 3 Eps: 0.01203578 
Iteration: 4 Eps: 0.002195361 
Iteration: 5 Eps: 0.0002232461 
Iteration: 6 Eps: 5.136483e-05 
Iteration: 7 Eps: 6.424571e-06 
Iteration: 8 Eps: 1.111527e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05000586 
Iteration: 3 Eps: 0.01111519 
Iteration: 4 Eps: 0.002693773 
Iteration: 5 Eps: 0.0004827144 
Iteration: 6 Eps: 8.248558e-05 
Iteration: 7 Eps: 9.184344e-06 
Iteration: 8 Eps: 1.034451e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04655916 
Iteration: 3 Eps: 0.005612496 
Iteration: 4 Eps: 0.002389543 
Iteration: 5 Eps: 0.0004562846 
Iteration: 6 Eps: 2.230138e-05 
Iteration: 7 Eps: 2.105174e-05 
Iteration: 8 Eps: 7.156544e-06 
Iteration: 9 Eps: 1.280757e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07792719 
Iteration: 3 Eps: 0.01018104 
Iteration: 4 Eps: 0.002114243 
Iteration: 5 Eps: 0.0001508608 
Iteration: 6 Eps: 7.797571e-05 
Iteration: 7 Eps: 2.511393e-05 
Iteration: 8 Eps: 1.46975e-05 
Iteration: 9 Eps: 7.204896e-06 
Iteration: 10 Eps: 2.806642e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09384339 
Iteration: 3 Eps: 0.006511478 
Iteration: 4 Eps: 0.001681599 
Iteration: 5 Eps: 0.0004064763 
Iteration: 6 Eps: 9.743287e-05 
Iteration: 7 Eps: 5.120873e-05 
Iteration: 8 Eps: 1.451029e-05 
Iteration: 9 Eps: 4.158127e-06 
8 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05826567 
Iteration: 3 Eps: 0.01060681 
Iteration: 4 Eps: 0.006966817 
Iteration: 5 Eps: 0.006269002 
Iteration: 6 Eps: 0.00354774 
Iteration: 7 Eps: 0.001245279 
Iteration: 8 Eps: 0.000665345 
Iteration: 9 Eps: 0.0002799273 
Iteration: 10 Eps: 0.0001327051 
Iteration: 11 Eps: 3.644785e-05 
Iteration: 12 Eps: 1.459893e-05 
Iteration: 13 Eps: 3.082513e-06 
Iteration: 14 Eps: 1.181171e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1035669 
Iteration: 3 Eps: 0.0231755 
Iteration: 4 Eps: 0.001889856 
Iteration: 5 Eps: 0.0004199251 
Iteration: 6 Eps: 3.431109e-05 
Iteration: 7 Eps: 5.427126e-06 
Iteration: 8 Eps: 6.172959e-06 
Iteration: 9 Eps: 7.278154e-06 
Iteration: 10 Eps: 5.285994e-06 
Iteration: 11 Eps: 4.03457e-06 
Iteration: 12 Eps: 2.411614e-06 
Iteration: 13 Eps: 1.189347e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09311191 
Iteration: 3 Eps: 0.005646589 
Iteration: 4 Eps: 0.001257201 
Iteration: 5 Eps: 0.0010715 
Iteration: 6 Eps: 0.0006019093 
Iteration: 7 Eps: 0.0005821833 
Iteration: 8 Eps: 0.0005517737 
Iteration: 9 Eps: 0.0005718309 
Iteration: 10 Eps: 0.0005876083 
Iteration: 11 Eps: 0.0005942086 
Iteration: 12 Eps: 0.0006039382 
Iteration: 13 Eps: 0.0006089 
Iteration: 14 Eps: 0.0006135156 
Iteration: 15 Eps: 0.0006164938 
Iteration: 16 Eps: 0.0006189548 
Iteration: 17 Eps: 0.0006206113 
Iteration: 18 Eps: 0.0006218841 
Iteration: 19 Eps: 0.0006227652 
Iteration: 20 Eps: 0.0006234293 
Iteration: 21 Eps: 0.000623914 
Iteration: 22 Eps: 0.0006242765 
Iteration: 23 Eps: 0.0006245492 
Iteration: 24 Eps: 0.0006247599 
Iteration: 25 Eps: 0.0006249192 
Iteration: 26 Eps: 0.0006250314 
Iteration: 27 Eps: 0.0006251365 
Iteration: 28 Eps: 0.0006252021 
Iteration: 29 Eps: 0.000625258 
Iteration: 30 Eps: 0.0006253008 
Iteration: 31 Eps: 0.0006253354 
Iteration: 32 Eps: 0.0006253609 
Iteration: 33 Eps: 0.0006253837 
Iteration: 34 Eps: 0.0006253962 
Iteration: 35 Eps: 0.0006254072 
Iteration: 36 Eps: 0.0006254163 
Iteration: 37 Eps: 0.0006254252 
Iteration: 38 Eps: 0.0006254311 
Iteration: 39 Eps: 0.0006254367 
Iteration: 40 Eps: 0.0006254392 
Iteration: 41 Eps: 0.0006254406 
Iteration: 42 Eps: 0.0006254417 
Iteration: 43 Eps: 0.0006254452 
Iteration: 44 Eps: 0.0006254467 
Iteration: 45 Eps: 0.0006254468 
Iteration: 46 Eps: 0.0006254495 
Iteration: 47 Eps: 0.0006254486 
Iteration: 48 Eps: 0.0006254491 
Iteration: 49 Eps: 0.0006254478 
Iteration: 50 Eps: 0.0006254497 
Iteration: 51 Eps: 0.0006254487 
Iteration: 52 Eps: 0.0006254496 
Iteration: 53 Eps: 0.0006254472 
Iteration: 54 Eps: 0.0006254493 
Iteration: 55 Eps: 0.0004702401 
Iteration: 56 Eps: 0.0003627021 
Iteration: 57 Eps: 0.0001858296 
Iteration: 58 Eps: 0.0001329991 
Iteration: 59 Eps: 0.0001377282 
Iteration: 60 Eps: 1.47304e-05 
Iteration: 61 Eps: 1.095123e-05 
Iteration: 62 Eps: 5.712917e-06 
Iteration: 63 Eps: 2.472633e-06 
Iteration: 64 Eps: 1.588255e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1010148 
Iteration: 3 Eps: 0.00990986 
Iteration: 4 Eps: 0.003320738 
Iteration: 5 Eps: 0.0002685804 
Iteration: 6 Eps: 3.632747e-05 
Iteration: 7 Eps: 1.913047e-05 
Iteration: 8 Eps: 2.473815e-06 
Iteration: 9 Eps: 1.348688e-06 
Iteration: 10 Eps: 1.052259e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06538333 
Iteration: 3 Eps: 0.01216856 
Iteration: 4 Eps: 0.001447239 
Iteration: 5 Eps: 0.0001715042 
Iteration: 6 Eps: 2.437118e-05 
Iteration: 7 Eps: 3.46059e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06338707 
Iteration: 3 Eps: 0.01206523 
Iteration: 4 Eps: 0.002092096 
Iteration: 5 Eps: 0.0002000632 
Iteration: 6 Eps: 4.256101e-05 
Iteration: 7 Eps: 4.964397e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05026301 
Iteration: 3 Eps: 0.01109822 
Iteration: 4 Eps: 0.002654172 
Iteration: 5 Eps: 0.0004250227 
Iteration: 6 Eps: 7.044179e-05 
Iteration: 7 Eps: 7.09225e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04681791 
Iteration: 3 Eps: 0.005635216 
Iteration: 4 Eps: 0.002343525 
Iteration: 5 Eps: 0.000401953 
Iteration: 6 Eps: 1.970977e-05 
Iteration: 7 Eps: 1.715115e-05 
Iteration: 8 Eps: 5.822799e-06 
Iteration: 9 Eps: 1.167236e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07833032 
Iteration: 3 Eps: 0.01015667 
Iteration: 4 Eps: 0.002078325 
Iteration: 5 Eps: 0.000148767 
Iteration: 6 Eps: 7.465885e-05 
Iteration: 7 Eps: 2.437271e-05 
Iteration: 8 Eps: 1.329817e-05 
Iteration: 9 Eps: 5.873218e-06 
Iteration: 10 Eps: 2.138076e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09423927 
Iteration: 3 Eps: 0.006514944 
Iteration: 4 Eps: 0.001659039 
Iteration: 5 Eps: 0.0003852931 
Iteration: 6 Eps: 9.520696e-05 
Iteration: 7 Eps: 4.752149e-05 
Iteration: 8 Eps: 1.375269e-05 
Iteration: 9 Eps: 3.832037e-06 
9 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05856686 
Iteration: 3 Eps: 0.01048334 
Iteration: 4 Eps: 0.006713528 
Iteration: 5 Eps: 0.005876386 
Iteration: 6 Eps: 0.003297832 
Iteration: 7 Eps: 0.001116072 
Iteration: 8 Eps: 0.0005750228 
Iteration: 9 Eps: 0.0002259248 
Iteration: 10 Eps: 0.0001029401 
Iteration: 11 Eps: 2.456787e-05 
Iteration: 12 Eps: 9.380682e-06 
Iteration: 13 Eps: 1.677695e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1039738 
Iteration: 3 Eps: 0.02319091 
Iteration: 4 Eps: 0.001850298 
Iteration: 5 Eps: 0.0003960449 
Iteration: 6 Eps: 3.261784e-05 
Iteration: 7 Eps: 5.513718e-06 
Iteration: 8 Eps: 6.415911e-06 
Iteration: 9 Eps: 7.307434e-06 
Iteration: 10 Eps: 5.055984e-06 
Iteration: 11 Eps: 3.429153e-06 
Iteration: 12 Eps: 1.770264e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0934961 
Iteration: 3 Eps: 0.005615047 
Iteration: 4 Eps: 0.00121694 
Iteration: 5 Eps: 0.001042699 
Iteration: 6 Eps: 0.0005897996 
Iteration: 7 Eps: 0.000571498 
Iteration: 8 Eps: 0.0005443535 
Iteration: 9 Eps: 0.0005655889 
Iteration: 10 Eps: 0.0005825843 
Iteration: 11 Eps: 0.0005903884 
Iteration: 12 Eps: 0.0006009126 
Iteration: 13 Eps: 0.000606588 
Iteration: 14 Eps: 0.0006117197 
Iteration: 15 Eps: 0.0006151179 
Iteration: 16 Eps: 0.0006179097 
Iteration: 17 Eps: 0.0006198142 
Iteration: 18 Eps: 0.0006212759 
Iteration: 19 Eps: 0.0006222997 
Iteration: 20 Eps: 0.0006230765 
Iteration: 21 Eps: 0.0006236368 
Iteration: 22 Eps: 0.0006240658 
Iteration: 23 Eps: 0.0006243859 
Iteration: 24 Eps: 0.0006246321 
Iteration: 25 Eps: 0.0006248188 
Iteration: 26 Eps: 0.0006249592 
Iteration: 27 Eps: 0.0006250735 
Iteration: 28 Eps: 0.0006251572 
Iteration: 29 Eps: 0.0006252223 
Iteration: 30 Eps: 0.0006252718 
Iteration: 31 Eps: 0.0006253131 
Iteration: 32 Eps: 0.0006253468 
Iteration: 33 Eps: 0.0006253637 
Iteration: 34 Eps: 0.0006253848 
Iteration: 35 Eps: 0.0006254021 
Iteration: 36 Eps: 0.0006254082 
Iteration: 37 Eps: 0.0006254225 
Iteration: 38 Eps: 0.0006254255 
Iteration: 39 Eps: 0.0006254292 
Iteration: 40 Eps: 0.0006254363 
Iteration: 41 Eps: 0.000625441 
Iteration: 42 Eps: 0.0006254408 
Iteration: 43 Eps: 0.000625446 
Iteration: 44 Eps: 0.0006254431 
Iteration: 45 Eps: 0.000625448 
Iteration: 46 Eps: 0.000625447 
Iteration: 47 Eps: 0.0006254481 
Iteration: 48 Eps: 0.0006254457 
Iteration: 49 Eps: 0.000625451 
Iteration: 50 Eps: 0.0006254511 
Iteration: 51 Eps: 0.0006254482 
Iteration: 52 Eps: 0.0006254499 
Iteration: 53 Eps: 0.000625448 
Iteration: 54 Eps: 0.0006254508 
Iteration: 55 Eps: 0.000503837 
Iteration: 56 Eps: 0.0003659403 
Iteration: 57 Eps: 0.0002127103 
Iteration: 58 Eps: 0.0001340404 
Iteration: 59 Eps: 0.0001443319 
Iteration: 60 Eps: 1.748827e-05 
Iteration: 61 Eps: 1.197453e-05 
Iteration: 62 Eps: 6.201754e-06 
Iteration: 63 Eps: 2.646954e-06 
Iteration: 64 Eps: 1.699929e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1015323 
Iteration: 3 Eps: 0.00980193 
Iteration: 4 Eps: 0.003183322 
Iteration: 5 Eps: 0.0002444924 
Iteration: 6 Eps: 3.041732e-05 
Iteration: 7 Eps: 1.543282e-05 
Iteration: 8 Eps: 1.647975e-06 
Iteration: 9 Eps: 1.189055e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06571059 
Iteration: 3 Eps: 0.01216584 
Iteration: 4 Eps: 0.001379293 
Iteration: 5 Eps: 0.0001586892 
Iteration: 6 Eps: 2.146914e-05 
Iteration: 7 Eps: 2.756126e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06366493 
Iteration: 3 Eps: 0.0120936 
Iteration: 4 Eps: 0.0019926 
Iteration: 5 Eps: 0.0001798559 
Iteration: 6 Eps: 3.527413e-05 
Iteration: 7 Eps: 3.884052e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05052151 
Iteration: 3 Eps: 0.01108112 
Iteration: 4 Eps: 0.00261404 
Iteration: 5 Eps: 0.0003737418 
Iteration: 6 Eps: 5.98244e-05 
Iteration: 7 Eps: 5.382577e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0470776 
Iteration: 3 Eps: 0.005658393 
Iteration: 4 Eps: 0.002297578 
Iteration: 5 Eps: 0.0003536993 
Iteration: 6 Eps: 1.776402e-05 
Iteration: 7 Eps: 1.386935e-05 
Iteration: 8 Eps: 4.706865e-06 
Iteration: 9 Eps: 1.057333e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07873496 
Iteration: 3 Eps: 0.01013316 
Iteration: 4 Eps: 0.002042812 
Iteration: 5 Eps: 0.0001479201 
Iteration: 6 Eps: 7.135795e-05 
Iteration: 7 Eps: 2.341356e-05 
Iteration: 8 Eps: 1.176227e-05 
Iteration: 9 Eps: 4.862306e-06 
Iteration: 10 Eps: 1.688878e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09463625 
Iteration: 3 Eps: 0.006519308 
Iteration: 4 Eps: 0.001636683 
Iteration: 5 Eps: 0.0003665251 
Iteration: 6 Eps: 9.285501e-05 
Iteration: 7 Eps: 4.420383e-05 
Iteration: 8 Eps: 1.307327e-05 
Iteration: 9 Eps: 3.794912e-06 
10 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05886979 
Iteration: 3 Eps: 0.01036228 
Iteration: 4 Eps: 0.006466701 
Iteration: 5 Eps: 0.005497877 
Iteration: 6 Eps: 0.003057046 
Iteration: 7 Eps: 0.0009961761 
Iteration: 8 Eps: 0.0004936892 
Iteration: 9 Eps: 0.0001800677 
Iteration: 10 Eps: 7.869749e-05 
Iteration: 11 Eps: 1.625823e-05 
Iteration: 12 Eps: 5.983495e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1043825 
Iteration: 3 Eps: 0.02320643 
Iteration: 4 Eps: 0.001812134 
Iteration: 5 Eps: 0.0003736187 
Iteration: 6 Eps: 3.149954e-05 
Iteration: 7 Eps: 5.767811e-06 
Iteration: 8 Eps: 6.686093e-06 
Iteration: 9 Eps: 7.108576e-06 
Iteration: 10 Eps: 4.634873e-06 
Iteration: 11 Eps: 2.745724e-06 
Iteration: 12 Eps: 1.220232e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09388202 
Iteration: 3 Eps: 0.005585402 
Iteration: 4 Eps: 0.001177412 
Iteration: 5 Eps: 0.001013909 
Iteration: 6 Eps: 0.0005775303 
Iteration: 7 Eps: 0.0005606172 
Iteration: 8 Eps: 0.0005366199 
Iteration: 9 Eps: 0.0005592098 
Iteration: 10 Eps: 0.0005773651 
Iteration: 11 Eps: 0.0005864064 
Iteration: 12 Eps: 0.0005977522 
Iteration: 13 Eps: 0.0006041678 
Iteration: 14 Eps: 0.0006098373 
Iteration: 15 Eps: 0.0006136822 
Iteration: 16 Eps: 0.0006168015 
Iteration: 17 Eps: 0.0006189752 
Iteration: 18 Eps: 0.000620631 
Iteration: 19 Eps: 0.000621817 
Iteration: 20 Eps: 0.0006227007 
Iteration: 21 Eps: 0.0006233506 
Iteration: 22 Eps: 0.0006238438 
Iteration: 23 Eps: 0.000624214 
Iteration: 24 Eps: 0.0006244978 
Iteration: 25 Eps: 0.000624713 
Iteration: 26 Eps: 0.0006248838 
Iteration: 27 Eps: 0.0006250078 
Iteration: 28 Eps: 0.0006251086 
Iteration: 29 Eps: 0.000625184 
Iteration: 30 Eps: 0.0006252415 
Iteration: 31 Eps: 0.0006252879 
Iteration: 32 Eps: 0.0006253239 
Iteration: 33 Eps: 0.000625349 
Iteration: 34 Eps: 0.0006253726 
Iteration: 35 Eps: 0.0006253882 
Iteration: 36 Eps: 0.0006254065 
Iteration: 37 Eps: 0.0006254104 
Iteration: 38 Eps: 0.0006254246 
Iteration: 39 Eps: 0.0006254229 
Iteration: 40 Eps: 0.0006254402 
Iteration: 41 Eps: 0.0006254383 
Iteration: 42 Eps: 0.0006254421 
Iteration: 43 Eps: 0.0006254449 
Iteration: 44 Eps: 0.0006254456 
Iteration: 45 Eps: 0.0006254462 
Iteration: 46 Eps: 0.0006254478 
Iteration: 47 Eps: 0.0006254472 
Iteration: 48 Eps: 0.0006254473 
Iteration: 49 Eps: 0.0006254474 
Iteration: 50 Eps: 0.0006254487 
Iteration: 51 Eps: 0.0006254492 
Iteration: 52 Eps: 0.0006254514 
Iteration: 53 Eps: 0.0006254472 
Iteration: 54 Eps: 0.000625449 
Iteration: 55 Eps: 0.0005418176 
Iteration: 56 Eps: 0.0003528468 
Iteration: 57 Eps: 0.0002459754 
Iteration: 58 Eps: 0.0001333173 
Iteration: 59 Eps: 0.0001405502 
Iteration: 60 Eps: 2.111399e-05 
Iteration: 61 Eps: 1.105525e-05 
Iteration: 62 Eps: 5.586246e-06 
Iteration: 63 Eps: 2.375049e-06 
Iteration: 64 Eps: 1.524573e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1020515 
Iteration: 3 Eps: 0.009696494 
Iteration: 4 Eps: 0.002968624 
Iteration: 5 Eps: 0.0002254629 
Iteration: 6 Eps: 2.69618e-05 
Iteration: 7 Eps: 1.22307e-05 
Iteration: 8 Eps: 1.275607e-06 
Iteration: 9 Eps: 1.097413e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06603916 
Iteration: 3 Eps: 0.01216128 
Iteration: 4 Eps: 0.001314735 
Iteration: 5 Eps: 0.0001470034 
Iteration: 6 Eps: 1.88707e-05 
Iteration: 7 Eps: 2.198136e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06394411 
Iteration: 3 Eps: 0.01212082 
Iteration: 4 Eps: 0.001897253 
Iteration: 5 Eps: 0.0001627727 
Iteration: 6 Eps: 2.927832e-05 
Iteration: 7 Eps: 3.07521e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05078137 
Iteration: 3 Eps: 0.01106436 
Iteration: 4 Eps: 0.002572506 
Iteration: 5 Eps: 0.0003281107 
Iteration: 6 Eps: 5.048633e-05 
Iteration: 7 Eps: 4.036419e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04733827 
Iteration: 3 Eps: 0.005681693 
Iteration: 4 Eps: 0.002251414 
Iteration: 5 Eps: 0.0003111723 
Iteration: 6 Eps: 1.633914e-05 
Iteration: 7 Eps: 1.111605e-05 
Iteration: 8 Eps: 3.735875e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07914117 
Iteration: 3 Eps: 0.01011053 
Iteration: 4 Eps: 0.002006752 
Iteration: 5 Eps: 0.0001482915 
Iteration: 6 Eps: 6.83573e-05 
Iteration: 7 Eps: 2.216654e-05 
Iteration: 8 Eps: 1.031456e-05 
Iteration: 9 Eps: 3.937712e-06 
Iteration: 10 Eps: 1.34353e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09503518 
Iteration: 3 Eps: 0.006524478 
Iteration: 4 Eps: 0.001614681 
Iteration: 5 Eps: 0.0003497131 
Iteration: 6 Eps: 9.042934e-05 
Iteration: 7 Eps: 4.099732e-05 
Iteration: 8 Eps: 1.235733e-05 
Iteration: 9 Eps: 3.799725e-06 
Iteration: 10 Eps: 1.164987e-06 
11 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0591744 
Iteration: 3 Eps: 0.0102431 
Iteration: 4 Eps: 0.006225233 
Iteration: 5 Eps: 0.005133571 
Iteration: 6 Eps: 0.002825399 
Iteration: 7 Eps: 0.000885473 
Iteration: 8 Eps: 0.0004208061 
Iteration: 9 Eps: 0.0001415382 
Iteration: 10 Eps: 5.91827e-05 
Iteration: 11 Eps: 1.065766e-05 
Iteration: 12 Eps: 3.798296e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1047929 
Iteration: 3 Eps: 0.02322218 
Iteration: 4 Eps: 0.001775823 
Iteration: 5 Eps: 0.0003531258 
Iteration: 6 Eps: 3.101371e-05 
Iteration: 7 Eps: 6.154181e-06 
Iteration: 8 Eps: 6.926895e-06 
Iteration: 9 Eps: 6.72788e-06 
Iteration: 10 Eps: 4.050008e-06 
Iteration: 11 Eps: 2.098029e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09426958 
Iteration: 3 Eps: 0.005558104 
Iteration: 4 Eps: 0.001138035 
Iteration: 5 Eps: 0.0009846211 
Iteration: 6 Eps: 0.0005653299 
Iteration: 7 Eps: 0.0005495232 
Iteration: 8 Eps: 0.0005286831 
Iteration: 9 Eps: 0.0005526611 
Iteration: 10 Eps: 0.0005718726 
Iteration: 11 Eps: 0.0005822501 
Iteration: 12 Eps: 0.0005944535 
Iteration: 13 Eps: 0.0006016307 
Iteration: 14 Eps: 0.0006078685 
Iteration: 15 Eps: 0.0006121688 
Iteration: 16 Eps: 0.0006156393 
Iteration: 17 Eps: 0.0006180929 
Iteration: 18 Eps: 0.0006199589 
Iteration: 19 Eps: 0.0006212966 
Iteration: 20 Eps: 0.0006223062 
Iteration: 21 Eps: 0.000623046 
Iteration: 22 Eps: 0.0006236097 
Iteration: 23 Eps: 0.0006240296 
Iteration: 24 Eps: 0.0006243592 
Iteration: 25 Eps: 0.0006246026 
Iteration: 26 Eps: 0.0006247962 
Iteration: 27 Eps: 0.0006249452 
Iteration: 28 Eps: 0.000625058 
Iteration: 29 Eps: 0.0006251428 
Iteration: 30 Eps: 0.000625209 
Iteration: 31 Eps: 0.0006252696 
Iteration: 32 Eps: 0.0006253043 
Iteration: 33 Eps: 0.0006253357 
Iteration: 34 Eps: 0.0006253644 
Iteration: 35 Eps: 0.0006253805 
Iteration: 36 Eps: 0.0006253985 
Iteration: 37 Eps: 0.0006254106 
Iteration: 38 Eps: 0.0006254161 
Iteration: 39 Eps: 0.000625427 
Iteration: 40 Eps: 0.0006254328 
Iteration: 41 Eps: 0.0006254364 
Iteration: 42 Eps: 0.0006254378 
Iteration: 43 Eps: 0.0006254406 
Iteration: 44 Eps: 0.0006254438 
Iteration: 45 Eps: 0.0006254473 
Iteration: 46 Eps: 0.0006254465 
Iteration: 47 Eps: 0.0006254466 
Iteration: 48 Eps: 0.0006254496 
Iteration: 49 Eps: 0.0006254493 
Iteration: 50 Eps: 0.0006254484 
Iteration: 51 Eps: 0.0006254522 
Iteration: 52 Eps: 0.0006254489 
Iteration: 53 Eps: 0.0006254465 
Iteration: 54 Eps: 0.0006254502 
Iteration: 55 Eps: 0.0005845617 
Iteration: 56 Eps: 0.0003418109 
Iteration: 57 Eps: 0.0002857773 
Iteration: 58 Eps: 0.0001303735 
Iteration: 59 Eps: 0.000132321 
Iteration: 60 Eps: 3.005833e-05 
Iteration: 61 Eps: 9.126872e-06 
Iteration: 62 Eps: 4.595765e-06 
Iteration: 63 Eps: 1.956451e-06 
Iteration: 64 Eps: 1.275941e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1025724 
Iteration: 3 Eps: 0.009593836 
Iteration: 4 Eps: 0.00284484 
Iteration: 5 Eps: 0.0002049359 
Iteration: 6 Eps: 2.34148e-05 
Iteration: 7 Eps: 1.002179e-05 
Iteration: 8 Eps: 1.114034e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06636886 
Iteration: 3 Eps: 0.0121549 
Iteration: 4 Eps: 0.001252958 
Iteration: 5 Eps: 0.0001361408 
Iteration: 6 Eps: 1.651334e-05 
Iteration: 7 Eps: 1.755714e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06422459 
Iteration: 3 Eps: 0.01214681 
Iteration: 4 Eps: 0.001805908 
Iteration: 5 Eps: 0.0001479619 
Iteration: 6 Eps: 2.432276e-05 
Iteration: 7 Eps: 2.474913e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05104257 
Iteration: 3 Eps: 0.01104769 
Iteration: 4 Eps: 0.002530055 
Iteration: 5 Eps: 0.0002877951 
Iteration: 6 Eps: 4.238585e-05 
Iteration: 7 Eps: 2.984964e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04759999 
Iteration: 3 Eps: 0.005705566 
Iteration: 4 Eps: 0.002205187 
Iteration: 5 Eps: 0.0002740254 
Iteration: 6 Eps: 1.522252e-05 
Iteration: 7 Eps: 8.883264e-06 
Iteration: 8 Eps: 2.921861e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07954872 
Iteration: 3 Eps: 0.01008856 
Iteration: 4 Eps: 0.001970848 
Iteration: 5 Eps: 0.000136411 
Iteration: 6 Eps: 6.466549e-05 
Iteration: 7 Eps: 2.069589e-05 
Iteration: 8 Eps: 9.251875e-06 
Iteration: 9 Eps: 3.460433e-06 
Iteration: 10 Eps: 1.1958e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09543528 
Iteration: 3 Eps: 0.006531162 
Iteration: 4 Eps: 0.001592229 
Iteration: 5 Eps: 0.0003344816 
Iteration: 6 Eps: 8.784427e-05 
Iteration: 7 Eps: 3.777369e-05 
Iteration: 8 Eps: 1.137784e-05 
Iteration: 9 Eps: 3.620237e-06 
Iteration: 10 Eps: 1.287037e-06 
12 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05948067 
Iteration: 3 Eps: 0.01012604 
Iteration: 4 Eps: 0.005990748 
Iteration: 5 Eps: 0.004784589 
Iteration: 6 Eps: 0.002603801 
Iteration: 7 Eps: 0.000783653 
Iteration: 8 Eps: 0.000356013 
Iteration: 9 Eps: 0.0001098252 
Iteration: 10 Eps: 4.38653e-05 
Iteration: 11 Eps: 7.028244e-06 
Iteration: 12 Eps: 2.44467e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1052048 
Iteration: 3 Eps: 0.02323814 
Iteration: 4 Eps: 0.001741417 
Iteration: 5 Eps: 0.0003341294 
Iteration: 6 Eps: 3.069708e-05 
Iteration: 7 Eps: 6.679515e-06 
Iteration: 8 Eps: 6.965704e-06 
Iteration: 9 Eps: 6.125682e-06 
Iteration: 10 Eps: 3.408423e-06 
Iteration: 11 Eps: 1.572538e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09465878 
Iteration: 3 Eps: 0.005533056 
Iteration: 4 Eps: 0.00109921 
Iteration: 5 Eps: 0.000955531 
Iteration: 6 Eps: 0.0005528691 
Iteration: 7 Eps: 0.0005382199 
Iteration: 8 Eps: 0.000520449 
Iteration: 9 Eps: 0.0005458122 
Iteration: 10 Eps: 0.0005662202 
Iteration: 11 Eps: 0.0005779207 
Iteration: 12 Eps: 0.000591001 
Iteration: 13 Eps: 0.0005989765 
Iteration: 14 Eps: 0.0006057975 
Iteration: 15 Eps: 0.0006105801 
Iteration: 16 Eps: 0.0006144187 
Iteration: 17 Eps: 0.0006171595 
Iteration: 18 Eps: 0.0006192526 
Iteration: 19 Eps: 0.0006207618 
Iteration: 20 Eps: 0.0006218851 
Iteration: 21 Eps: 0.0006227292 
Iteration: 22 Eps: 0.0006233589 
Iteration: 23 Eps: 0.000623841 
Iteration: 24 Eps: 0.0006242046 
Iteration: 25 Eps: 0.00062449 
Iteration: 26 Eps: 0.0006247102 
Iteration: 27 Eps: 0.0006248728 
Iteration: 28 Eps: 0.0006250019 
Iteration: 29 Eps: 0.0006251038 
Iteration: 30 Eps: 0.0006251791 
Iteration: 31 Eps: 0.0006252396 
Iteration: 32 Eps: 0.000625286 
Iteration: 33 Eps: 0.0006253248 
Iteration: 34 Eps: 0.00062535 
Iteration: 35 Eps: 0.0006253703 
Iteration: 36 Eps: 0.0006253891 
Iteration: 37 Eps: 0.0006254011 
Iteration: 38 Eps: 0.0006254115 
Iteration: 39 Eps: 0.0006254212 
Iteration: 40 Eps: 0.0006254318 
Iteration: 41 Eps: 0.0006254345 
Iteration: 42 Eps: 0.0006254378 
Iteration: 43 Eps: 0.0006254393 
Iteration: 44 Eps: 0.0006254426 
Iteration: 45 Eps: 0.0006254429 
Iteration: 46 Eps: 0.0006254468 
Iteration: 47 Eps: 0.0006254475 
Iteration: 48 Eps: 0.0006254478 
Iteration: 49 Eps: 0.0006254456 
Iteration: 50 Eps: 0.0006254492 
Iteration: 51 Eps: 0.0006254476 
Iteration: 52 Eps: 0.0006254493 
Iteration: 53 Eps: 0.0006254477 
Iteration: 54 Eps: 0.000625449 
Iteration: 55 Eps: 0.0006254482 
Iteration: 56 Eps: 0.0003363777 
Iteration: 57 Eps: 0.0003249471 
Iteration: 58 Eps: 0.00012794 
Iteration: 59 Eps: 0.000127294 
Iteration: 60 Eps: 3.990456e-05 
Iteration: 61 Eps: 7.56528e-06 
Iteration: 62 Eps: 3.407728e-06 
Iteration: 63 Eps: 1.528617e-06 
Iteration: 64 Eps: 1.079578e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1030949 
Iteration: 3 Eps: 0.009494108 
Iteration: 4 Eps: 0.002726182 
Iteration: 5 Eps: 0.0001864579 
Iteration: 6 Eps: 2.060157e-05 
Iteration: 7 Eps: 8.297155e-06 
Iteration: 8 Eps: 1.069803e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06669979 
Iteration: 3 Eps: 0.01214682 
Iteration: 4 Eps: 0.001194417 
Iteration: 5 Eps: 0.0001261459 
Iteration: 6 Eps: 1.440419e-05 
Iteration: 7 Eps: 1.390128e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0645062 
Iteration: 3 Eps: 0.0121717 
Iteration: 4 Eps: 0.001718118 
Iteration: 5 Eps: 0.0001350815 
Iteration: 6 Eps: 2.027891e-05 
Iteration: 7 Eps: 1.996805e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05130511 
Iteration: 3 Eps: 0.01103101 
Iteration: 4 Eps: 0.002486445 
Iteration: 5 Eps: 0.0002527452 
Iteration: 6 Eps: 3.537946e-05 
Iteration: 7 Eps: 2.176302e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04786275 
Iteration: 3 Eps: 0.005729762 
Iteration: 4 Eps: 0.002158604 
Iteration: 5 Eps: 0.0002415899 
Iteration: 6 Eps: 1.428879e-05 
Iteration: 7 Eps: 7.013017e-06 
Iteration: 8 Eps: 2.225121e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07995786 
Iteration: 3 Eps: 0.01006723 
Iteration: 4 Eps: 0.001935085 
Iteration: 5 Eps: 0.0001389041 
Iteration: 6 Eps: 6.181602e-05 
Iteration: 7 Eps: 1.927229e-05 
Iteration: 8 Eps: 7.963955e-06 
Iteration: 9 Eps: 2.799711e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0958378 
Iteration: 3 Eps: 0.006538077 
Iteration: 4 Eps: 0.001569867 
Iteration: 5 Eps: 0.0003210906 
Iteration: 6 Eps: 8.490017e-05 
Iteration: 7 Eps: 3.447314e-05 
Iteration: 8 Eps: 1.016126e-05 
Iteration: 9 Eps: 3.183949e-06 
Iteration: 10 Eps: 1.111949e-06 
13 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05978869 
Iteration: 3 Eps: 0.01001124 
Iteration: 4 Eps: 0.005763054 
Iteration: 5 Eps: 0.00445095 
Iteration: 6 Eps: 0.002392342 
Iteration: 7 Eps: 0.000690369 
Iteration: 8 Eps: 0.0002987518 
Iteration: 9 Eps: 8.408989e-05 
Iteration: 10 Eps: 3.197001e-05 
Iteration: 11 Eps: 4.712075e-06 
Iteration: 12 Eps: 1.598722e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1056185 
Iteration: 3 Eps: 0.02325429 
Iteration: 4 Eps: 0.001708318 
Iteration: 5 Eps: 0.0003165095 
Iteration: 6 Eps: 3.062364e-05 
Iteration: 7 Eps: 7.219371e-06 
Iteration: 8 Eps: 6.858636e-06 
Iteration: 9 Eps: 5.434934e-06 
Iteration: 10 Eps: 2.763563e-06 
Iteration: 11 Eps: 1.186905e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09504959 
Iteration: 3 Eps: 0.005509971 
Iteration: 4 Eps: 0.001060891 
Iteration: 5 Eps: 0.0009261564 
Iteration: 6 Eps: 0.0005405686 
Iteration: 7 Eps: 0.0005267641 
Iteration: 8 Eps: 0.0005119646 
Iteration: 9 Eps: 0.00053872 
Iteration: 10 Eps: 0.0005603961 
Iteration: 11 Eps: 0.0005733419 
Iteration: 12 Eps: 0.0005873868 
Iteration: 13 Eps: 0.0005961901 
Iteration: 14 Eps: 0.0006036211 
Iteration: 15 Eps: 0.0006089085 
Iteration: 16 Eps: 0.0006131287 
Iteration: 17 Eps: 0.0006161748 
Iteration: 18 Eps: 0.000618501 
Iteration: 19 Eps: 0.0006201861 
Iteration: 20 Eps: 0.0006214518 
Iteration: 21 Eps: 0.0006223911 
Iteration: 22 Eps: 0.0006231014 
Iteration: 23 Eps: 0.0006236366 
Iteration: 24 Eps: 0.0006240524 
Iteration: 25 Eps: 0.000624369 
Iteration: 26 Eps: 0.000624618 
Iteration: 27 Eps: 0.0006247987 
Iteration: 28 Eps: 0.000624944 
Iteration: 29 Eps: 0.0006250604 
Iteration: 30 Eps: 0.0006251447 
Iteration: 31 Eps: 0.0006252154 
Iteration: 32 Eps: 0.0006252653 
Iteration: 33 Eps: 0.0006253035 
Iteration: 34 Eps: 0.0006253399 
Iteration: 35 Eps: 0.0006253634 
Iteration: 36 Eps: 0.0006253843 
Iteration: 37 Eps: 0.0006253962 
Iteration: 38 Eps: 0.0006254058 
Iteration: 39 Eps: 0.0006254174 
Iteration: 40 Eps: 0.0006254253 
Iteration: 41 Eps: 0.0006254262 
Iteration: 42 Eps: 0.0006254364 
Iteration: 43 Eps: 0.0006254409 
Iteration: 44 Eps: 0.0006254421 
Iteration: 45 Eps: 0.0006254442 
Iteration: 46 Eps: 0.0006254465 
Iteration: 47 Eps: 0.0006254462 
Iteration: 48 Eps: 0.0006254463 
Iteration: 49 Eps: 0.0006254474 
Iteration: 50 Eps: 0.0006254459 
Iteration: 51 Eps: 0.0006254467 
Iteration: 52 Eps: 0.0006254481 
Iteration: 53 Eps: 0.0006254484 
Iteration: 54 Eps: 0.0006254455 
Iteration: 55 Eps: 0.0006254482 
Iteration: 56 Eps: 0.0003534701 
Iteration: 57 Eps: 0.000326236 
Iteration: 58 Eps: 0.0001274604 
Iteration: 59 Eps: 0.0001214432 
Iteration: 60 Eps: 5.197328e-05 
Iteration: 61 Eps: 5.70824e-06 
Iteration: 62 Eps: 2.074458e-06 
Iteration: 63 Eps: 1.093122e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.103619 
Iteration: 3 Eps: 0.009396036 
Iteration: 4 Eps: 0.002612039 
Iteration: 5 Eps: 0.0001698636 
Iteration: 6 Eps: 1.833277e-05 
Iteration: 7 Eps: 6.844354e-06 
Iteration: 8 Eps: 1.013117e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.067032 
Iteration: 3 Eps: 0.01213713 
Iteration: 4 Eps: 0.001138751 
Iteration: 5 Eps: 0.0001169226 
Iteration: 6 Eps: 1.251726e-05 
Iteration: 7 Eps: 1.093865e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06478896 
Iteration: 3 Eps: 0.01219498 
Iteration: 4 Eps: 0.001635074 
Iteration: 5 Eps: 0.0001241129 
Iteration: 6 Eps: 1.697498e-05 
Iteration: 7 Eps: 1.613403e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05156888 
Iteration: 3 Eps: 0.01101441 
Iteration: 4 Eps: 0.002441671 
Iteration: 5 Eps: 0.0002223347 
Iteration: 6 Eps: 2.942233e-05 
Iteration: 7 Eps: 1.578986e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04812652 
Iteration: 3 Eps: 0.00575447 
Iteration: 4 Eps: 0.002112072 
Iteration: 5 Eps: 0.0002130408 
Iteration: 6 Eps: 1.335645e-05 
Iteration: 7 Eps: 5.488818e-06 
Iteration: 8 Eps: 1.648877e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08036848 
Iteration: 3 Eps: 0.01004671 
Iteration: 4 Eps: 0.001899378 
Iteration: 5 Eps: 0.0001420568 
Iteration: 6 Eps: 5.880991e-05 
Iteration: 7 Eps: 1.768899e-05 
Iteration: 8 Eps: 6.707311e-06 
Iteration: 9 Eps: 2.198475e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09624143 
Iteration: 3 Eps: 0.006545687 
Iteration: 4 Eps: 0.001547388 
Iteration: 5 Eps: 0.0003090643 
Iteration: 6 Eps: 8.14971e-05 
Iteration: 7 Eps: 3.097385e-05 
Iteration: 8 Eps: 8.651472e-06 
Iteration: 9 Eps: 2.518632e-06 
14 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06009839 
Iteration: 3 Eps: 0.009898552 
Iteration: 4 Eps: 0.005541209 
Iteration: 5 Eps: 0.004130756 
Iteration: 6 Eps: 0.002190277 
Iteration: 7 Eps: 0.0006056103 
Iteration: 8 Eps: 0.0002489529 
Iteration: 9 Eps: 6.36806e-05 
Iteration: 10 Eps: 2.294187e-05 
Iteration: 11 Eps: 3.179735e-06 
Iteration: 12 Eps: 1.034564e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1060338 
Iteration: 3 Eps: 0.02327058 
Iteration: 4 Eps: 0.001677049 
Iteration: 5 Eps: 0.0003004132 
Iteration: 6 Eps: 3.068559e-05 
Iteration: 7 Eps: 7.75427e-06 
Iteration: 8 Eps: 6.613763e-06 
Iteration: 9 Eps: 4.663966e-06 
Iteration: 10 Eps: 2.177611e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09544201 
Iteration: 3 Eps: 0.00548946 
Iteration: 4 Eps: 0.001023013 
Iteration: 5 Eps: 0.0008967732 
Iteration: 6 Eps: 0.0005278741 
Iteration: 7 Eps: 0.0005151871 
Iteration: 8 Eps: 0.0005032304 
Iteration: 9 Eps: 0.0005313463 
Iteration: 10 Eps: 0.0005542721 
Iteration: 11 Eps: 0.0005686108 
Iteration: 12 Eps: 0.0005836077 
Iteration: 13 Eps: 0.0005932693 
Iteration: 14 Eps: 0.0006013331 
Iteration: 15 Eps: 0.0006071464 
Iteration: 16 Eps: 0.0006117654 
Iteration: 17 Eps: 0.0006151394 
Iteration: 18 Eps: 0.0006177084 
Iteration: 19 Eps: 0.0006195814 
Iteration: 20 Eps: 0.0006209877 
Iteration: 21 Eps: 0.0006220286 
Iteration: 22 Eps: 0.0006228248 
Iteration: 23 Eps: 0.000623427 
Iteration: 24 Eps: 0.000623887 
Iteration: 25 Eps: 0.0006242448 
Iteration: 26 Eps: 0.0006245123 
Iteration: 27 Eps: 0.0006247213 
Iteration: 28 Eps: 0.0006248908 
Iteration: 29 Eps: 0.00062501 
Iteration: 30 Eps: 0.0006251127 
Iteration: 31 Eps: 0.0006251859 
Iteration: 32 Eps: 0.0006252428 
Iteration: 33 Eps: 0.0006252865 
Iteration: 34 Eps: 0.000625327 
Iteration: 35 Eps: 0.0006253542 
Iteration: 36 Eps: 0.000625374 
Iteration: 37 Eps: 0.000625392 
Iteration: 38 Eps: 0.0006254031 
Iteration: 39 Eps: 0.0006254118 
Iteration: 40 Eps: 0.0006254226 
Iteration: 41 Eps: 0.0006254324 
Iteration: 42 Eps: 0.0006254313 
Iteration: 43 Eps: 0.0006254331 
Iteration: 44 Eps: 0.0006254435 
Iteration: 45 Eps: 0.0006254415 
Iteration: 46 Eps: 0.0006254437 
Iteration: 47 Eps: 0.0006254462 
Iteration: 48 Eps: 0.0006254481 
Iteration: 49 Eps: 0.0006254455 
Iteration: 50 Eps: 0.0006254484 
Iteration: 51 Eps: 0.000625446 
Iteration: 52 Eps: 0.0006254512 
Iteration: 53 Eps: 0.0006254471 
Iteration: 54 Eps: 0.0006254488 
Iteration: 55 Eps: 0.0006254495 
Iteration: 56 Eps: 0.0003744184 
Iteration: 57 Eps: 0.0003303894 
Iteration: 58 Eps: 0.000132681 
Iteration: 59 Eps: 0.0001201462 
Iteration: 60 Eps: 7.035917e-05 
Iteration: 61 Eps: 4.559537e-06 
Iteration: 62 Eps: 1.667749e-06 
Iteration: 63 Eps: 1.146212e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1041446 
Iteration: 3 Eps: 0.00930159 
Iteration: 4 Eps: 0.00250281 
Iteration: 5 Eps: 0.0001550083 
Iteration: 6 Eps: 1.645016e-05 
Iteration: 7 Eps: 5.601132e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06736548 
Iteration: 3 Eps: 0.01212564 
Iteration: 4 Eps: 0.001085884 
Iteration: 5 Eps: 0.0001081355 
Iteration: 6 Eps: 1.083479e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06507289 
Iteration: 3 Eps: 0.0122173 
Iteration: 4 Eps: 0.001554747 
Iteration: 5 Eps: 0.000114365 
Iteration: 6 Eps: 1.411967e-05 
Iteration: 7 Eps: 1.308687e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05183387 
Iteration: 3 Eps: 0.01099772 
Iteration: 4 Eps: 0.002396565 
Iteration: 5 Eps: 0.0001959289 
Iteration: 6 Eps: 2.433206e-05 
Iteration: 7 Eps: 1.131718e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04839138 
Iteration: 3 Eps: 0.0057791 
Iteration: 4 Eps: 0.002065511 
Iteration: 5 Eps: 0.0001884068 
Iteration: 6 Eps: 1.235954e-05 
Iteration: 7 Eps: 4.273878e-06 
Iteration: 8 Eps: 1.186792e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08078048 
Iteration: 3 Eps: 0.01002678 
Iteration: 4 Eps: 0.001863274 
Iteration: 5 Eps: 0.0001452475 
Iteration: 6 Eps: 5.569476e-05 
Iteration: 7 Eps: 1.603999e-05 
Iteration: 8 Eps: 5.515556e-06 
Iteration: 9 Eps: 1.670485e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09664647 
Iteration: 3 Eps: 0.006554039 
Iteration: 4 Eps: 0.001525025 
Iteration: 5 Eps: 0.0002980569 
Iteration: 6 Eps: 7.781562e-05 
Iteration: 7 Eps: 2.717589e-05 
Iteration: 8 Eps: 6.981786e-06 
Iteration: 9 Eps: 1.810566e-06 
15 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06040979 
Iteration: 3 Eps: 0.009788114 
Iteration: 4 Eps: 0.005325853 
Iteration: 5 Eps: 0.003826919 
Iteration: 6 Eps: 0.001999035 
Iteration: 7 Eps: 0.0005285534 
Iteration: 8 Eps: 0.0002056851 
Iteration: 9 Eps: 4.774608e-05 
Iteration: 10 Eps: 1.629032e-05 
Iteration: 11 Eps: 2.202242e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1064508 
Iteration: 3 Eps: 0.02328744 
Iteration: 4 Eps: 0.001646797 
Iteration: 5 Eps: 0.0002851535 
Iteration: 6 Eps: 3.083181e-05 
Iteration: 7 Eps: 8.144018e-06 
Iteration: 8 Eps: 6.18742e-06 
Iteration: 9 Eps: 3.86182e-06 
Iteration: 10 Eps: 1.667785e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09583601 
Iteration: 3 Eps: 0.005470767 
Iteration: 4 Eps: 0.0009859009 
Iteration: 5 Eps: 0.0008669705 
Iteration: 6 Eps: 0.0005150884 
Iteration: 7 Eps: 0.0005034352 
Iteration: 8 Eps: 0.0004942693 
Iteration: 9 Eps: 0.0005236954 
Iteration: 10 Eps: 0.000547914 
Iteration: 11 Eps: 0.0005636753 
Iteration: 12 Eps: 0.0005796203 
Iteration: 13 Eps: 0.0005901959 
Iteration: 14 Eps: 0.000598926 
Iteration: 15 Eps: 0.0006052865 
Iteration: 16 Eps: 0.0006103294 
Iteration: 17 Eps: 0.0006140403 
Iteration: 18 Eps: 0.0006168692 
Iteration: 19 Eps: 0.0006189404 
Iteration: 20 Eps: 0.0006204946 
Iteration: 21 Eps: 0.000621655 
Iteration: 22 Eps: 0.0006225326 
Iteration: 23 Eps: 0.0006232034 
Iteration: 24 Eps: 0.0006237093 
Iteration: 25 Eps: 0.0006241053 
Iteration: 26 Eps: 0.0006244111 
Iteration: 27 Eps: 0.0006246418 
Iteration: 28 Eps: 0.0006248244 
Iteration: 29 Eps: 0.000624966 
Iteration: 30 Eps: 0.0006250712 
Iteration: 31 Eps: 0.0006251564 
Iteration: 32 Eps: 0.0006252212 
Iteration: 33 Eps: 0.0006252675 
Iteration: 34 Eps: 0.0006253121 
Iteration: 35 Eps: 0.0006253425 
Iteration: 36 Eps: 0.0006253668 
Iteration: 37 Eps: 0.0006253839 
Iteration: 38 Eps: 0.0006254014 
Iteration: 39 Eps: 0.0006254096 
Iteration: 40 Eps: 0.0006254193 
Iteration: 41 Eps: 0.0006254271 
Iteration: 42 Eps: 0.0006254306 
Iteration: 43 Eps: 0.0006254388 
Iteration: 44 Eps: 0.0006254358 
Iteration: 45 Eps: 0.0006254442 
Iteration: 46 Eps: 0.0006254461 
Iteration: 47 Eps: 0.0006254464 
Iteration: 48 Eps: 0.0006254463 
Iteration: 49 Eps: 0.000625445 
Iteration: 50 Eps: 0.0006254467 
Iteration: 51 Eps: 0.0006254478 
Iteration: 52 Eps: 0.0006254471 
Iteration: 53 Eps: 0.0006254508 
Iteration: 54 Eps: 0.0006254484 
Iteration: 55 Eps: 0.0006254499 
Iteration: 56 Eps: 0.0003997174 
Iteration: 57 Eps: 0.0003377562 
Iteration: 58 Eps: 0.0001439373 
Iteration: 59 Eps: 0.0001247479 
Iteration: 60 Eps: 9.538245e-05 
Iteration: 61 Eps: 6.544684e-06 
Iteration: 62 Eps: 3.781262e-06 
Iteration: 63 Eps: 2.273492e-06 
Iteration: 64 Eps: 1.166442e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1046717 
Iteration: 3 Eps: 0.00920913 
Iteration: 4 Eps: 0.002397781 
Iteration: 5 Eps: 0.0001416245 
Iteration: 6 Eps: 1.477784e-05 
Iteration: 7 Eps: 4.52801e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06770016 
Iteration: 3 Eps: 0.01211258 
Iteration: 4 Eps: 0.001035815 
Iteration: 5 Eps: 0.0001001645 
Iteration: 6 Eps: 9.410468e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06535871 
Iteration: 3 Eps: 0.01223844 
Iteration: 4 Eps: 0.001478339 
Iteration: 5 Eps: 0.0001057095 
Iteration: 6 Eps: 1.179295e-05 
Iteration: 7 Eps: 1.048906e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05210041 
Iteration: 3 Eps: 0.01098099 
Iteration: 4 Eps: 0.002350017 
Iteration: 5 Eps: 0.0001732201 
Iteration: 6 Eps: 1.996872e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04865723 
Iteration: 3 Eps: 0.005803904 
Iteration: 4 Eps: 0.002019157 
Iteration: 5 Eps: 0.000166889 
Iteration: 6 Eps: 1.136934e-05 
Iteration: 7 Eps: 3.286013e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08119392 
Iteration: 3 Eps: 0.0100074 
Iteration: 4 Eps: 0.001827413 
Iteration: 5 Eps: 0.000148329 
Iteration: 6 Eps: 5.256265e-05 
Iteration: 7 Eps: 1.426938e-05 
Iteration: 8 Eps: 4.399414e-06 
Iteration: 9 Eps: 1.239364e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09705216 
Iteration: 3 Eps: 0.006563548 
Iteration: 4 Eps: 0.001502388 
Iteration: 5 Eps: 0.0002880048 
Iteration: 6 Eps: 7.358393e-05 
Iteration: 7 Eps: 2.357359e-05 
Iteration: 8 Eps: 5.360648e-06 
Iteration: 9 Eps: 1.206911e-06 
16 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06072287 
Iteration: 3 Eps: 0.009679837 
Iteration: 4 Eps: 0.005116825 
Iteration: 5 Eps: 0.003537615 
Iteration: 6 Eps: 0.001817761 
Iteration: 7 Eps: 0.0004594815 
Iteration: 8 Eps: 0.0001689168 
Iteration: 9 Eps: 3.548118e-05 
Iteration: 10 Eps: 1.136932e-05 
Iteration: 11 Eps: 1.514516e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1068694 
Iteration: 3 Eps: 0.02330397 
Iteration: 4 Eps: 0.001618136 
Iteration: 5 Eps: 0.0002710684 
Iteration: 6 Eps: 3.077215e-05 
Iteration: 7 Eps: 8.406925e-06 
Iteration: 8 Eps: 5.637052e-06 
Iteration: 9 Eps: 3.066853e-06 
Iteration: 10 Eps: 1.261959e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09623179 
Iteration: 3 Eps: 0.005454213 
Iteration: 4 Eps: 0.000949107 
Iteration: 5 Eps: 0.0008370311 
Iteration: 6 Eps: 0.0005023369 
Iteration: 7 Eps: 0.0004914218 
Iteration: 8 Eps: 0.0004849894 
Iteration: 9 Eps: 0.0005157302 
Iteration: 10 Eps: 0.0005412577 
Iteration: 11 Eps: 0.0005585223 
Iteration: 12 Eps: 0.0005754405 
Iteration: 13 Eps: 0.0005869675 
Iteration: 14 Eps: 0.0005963924 
Iteration: 15 Eps: 0.0006033247 
Iteration: 16 Eps: 0.0006088131 
Iteration: 17 Eps: 0.000612874 
Iteration: 18 Eps: 0.0006159767 
Iteration: 19 Eps: 0.0006182647 
Iteration: 20 Eps: 0.0006199755 
Iteration: 21 Eps: 0.0006212571 
Iteration: 22 Eps: 0.0006222218 
Iteration: 23 Eps: 0.0006229592 
Iteration: 24 Eps: 0.0006235293 
Iteration: 25 Eps: 0.0006239636 
Iteration: 26 Eps: 0.0006242963 
Iteration: 27 Eps: 0.0006245541 
Iteration: 28 Eps: 0.0006247577 
Iteration: 29 Eps: 0.0006249081 
Iteration: 30 Eps: 0.0006250335 
Iteration: 31 Eps: 0.0006251254 
Iteration: 32 Eps: 0.0006251964 
Iteration: 33 Eps: 0.0006252525 
Iteration: 34 Eps: 0.0006252985 
Iteration: 35 Eps: 0.0006253296 
Iteration: 36 Eps: 0.0006253585 
Iteration: 37 Eps: 0.0006253787 
Iteration: 38 Eps: 0.0006253922 
Iteration: 39 Eps: 0.0006254071 
Iteration: 40 Eps: 0.0006254157 
Iteration: 41 Eps: 0.0006254215 
Iteration: 42 Eps: 0.0006254272 
Iteration: 43 Eps: 0.0006254368 
Iteration: 44 Eps: 0.000625436 
Iteration: 45 Eps: 0.0006254424 
Iteration: 46 Eps: 0.0006254455 
Iteration: 47 Eps: 0.0006254433 
Iteration: 48 Eps: 0.0006254488 
Iteration: 49 Eps: 0.000625446 
Iteration: 50 Eps: 0.000625447 
Iteration: 51 Eps: 0.0006254469 
Iteration: 52 Eps: 0.0006254458 
Iteration: 53 Eps: 0.0006254515 
Iteration: 54 Eps: 0.0006254505 
Iteration: 55 Eps: 0.0006254508 
Iteration: 56 Eps: 0.0004298787 
Iteration: 57 Eps: 0.0003486993 
Iteration: 58 Eps: 0.0001599885 
Iteration: 59 Eps: 0.0001306546 
Iteration: 60 Eps: 0.000119757 
Iteration: 61 Eps: 1.094615e-05 
Iteration: 62 Eps: 7.909222e-06 
Iteration: 63 Eps: 4.218054e-06 
Iteration: 64 Eps: 1.900587e-06 
Iteration: 65 Eps: 1.22906e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1052006 
Iteration: 3 Eps: 0.009119452 
Iteration: 4 Eps: 0.00229686 
Iteration: 5 Eps: 0.0001294149 
Iteration: 6 Eps: 1.318463e-05 
Iteration: 7 Eps: 3.654525e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06803599 
Iteration: 3 Eps: 0.01209795 
Iteration: 4 Eps: 0.0009881037 
Iteration: 5 Eps: 9.260193e-05 
Iteration: 6 Eps: 8.065732e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06564529 
Iteration: 3 Eps: 0.01225825 
Iteration: 4 Eps: 0.001405675 
Iteration: 5 Eps: 9.797799e-05 
Iteration: 6 Eps: 9.827643e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05236824 
Iteration: 3 Eps: 0.01096428 
Iteration: 4 Eps: 0.002302578 
Iteration: 5 Eps: 0.0001537145 
Iteration: 6 Eps: 1.638782e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0489242 
Iteration: 3 Eps: 0.005828856 
Iteration: 4 Eps: 0.001973068 
Iteration: 5 Eps: 0.0001483257 
Iteration: 6 Eps: 1.02926e-05 
Iteration: 7 Eps: 2.486888e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08160875 
Iteration: 3 Eps: 0.009988633 
Iteration: 4 Eps: 0.001791682 
Iteration: 5 Eps: 0.0001511378 
Iteration: 6 Eps: 4.923262e-05 
Iteration: 7 Eps: 1.251267e-05 
Iteration: 8 Eps: 3.432581e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09746027 
Iteration: 3 Eps: 0.006573251 
Iteration: 4 Eps: 0.001480065 
Iteration: 5 Eps: 0.0002784962 
Iteration: 6 Eps: 6.89884e-05 
Iteration: 7 Eps: 1.995431e-05 
Iteration: 8 Eps: 3.998067e-06 
17 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06103763 
Iteration: 3 Eps: 0.00957388 
Iteration: 4 Eps: 0.004914488 
Iteration: 5 Eps: 0.00326363 
Iteration: 6 Eps: 0.001646766 
Iteration: 7 Eps: 0.000397103 
Iteration: 8 Eps: 0.0001373631 
Iteration: 9 Eps: 2.618845e-05 
Iteration: 10 Eps: 7.843608e-06 
Iteration: 11 Eps: 1.033123e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1072897 
Iteration: 3 Eps: 0.02332069 
Iteration: 4 Eps: 0.00159064 
Iteration: 5 Eps: 0.0002575803 
Iteration: 6 Eps: 3.061923e-05 
Iteration: 7 Eps: 8.3986e-06 
Iteration: 8 Eps: 4.938345e-06 
Iteration: 9 Eps: 2.380966e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09662905 
Iteration: 3 Eps: 0.005439388 
Iteration: 4 Eps: 0.0009131273 
Iteration: 5 Eps: 0.0008068968 
Iteration: 6 Eps: 0.000489605 
Iteration: 7 Eps: 0.0004791864 
Iteration: 8 Eps: 0.000475444 
Iteration: 9 Eps: 0.0005075019 
Iteration: 10 Eps: 0.0005343129 
Iteration: 11 Eps: 0.0005531094 
Iteration: 12 Eps: 0.0005710593 
Iteration: 13 Eps: 0.0005835643 
Iteration: 14 Eps: 0.0005937217 
Iteration: 15 Eps: 0.0006012518 
Iteration: 16 Eps: 0.0006072007 
Iteration: 17 Eps: 0.0006116433 
Iteration: 18 Eps: 0.0006150295 
Iteration: 19 Eps: 0.0006175408 
Iteration: 20 Eps: 0.0006194212 
Iteration: 21 Eps: 0.0006208328 
Iteration: 22 Eps: 0.0006218969 
Iteration: 23 Eps: 0.0006227096 
Iteration: 24 Eps: 0.0006233312 
Iteration: 25 Eps: 0.0006238114 
Iteration: 26 Eps: 0.0006241783 
Iteration: 27 Eps: 0.0006244624 
Iteration: 28 Eps: 0.0006246865 
Iteration: 29 Eps: 0.0006248529 
Iteration: 30 Eps: 0.0006249848 
Iteration: 31 Eps: 0.0006250887 
Iteration: 32 Eps: 0.0006251726 
Iteration: 33 Eps: 0.0006252329 
Iteration: 34 Eps: 0.0006252806 
Iteration: 35 Eps: 0.000625318 
Iteration: 36 Eps: 0.0006253471 
Iteration: 37 Eps: 0.000625367 
Iteration: 38 Eps: 0.0006253885 
Iteration: 39 Eps: 0.0006253999 
Iteration: 40 Eps: 0.0006254097 
Iteration: 41 Eps: 0.0006254198 
Iteration: 42 Eps: 0.0006254271 
Iteration: 43 Eps: 0.0006254299 
Iteration: 44 Eps: 0.0006254389 
Iteration: 45 Eps: 0.0006254408 
Iteration: 46 Eps: 0.0006254413 
Iteration: 47 Eps: 0.0006254432 
Iteration: 48 Eps: 0.0006254454 
Iteration: 49 Eps: 0.0006254464 
Iteration: 50 Eps: 0.0006254482 
Iteration: 51 Eps: 0.0006254459 
Iteration: 52 Eps: 0.0006254482 
Iteration: 53 Eps: 0.0006254498 
Iteration: 54 Eps: 0.0006254492 
Iteration: 55 Eps: 0.0006254485 
Iteration: 56 Eps: 0.0004654848 
Iteration: 57 Eps: 0.0003613433 
Iteration: 58 Eps: 0.0001824314 
Iteration: 59 Eps: 0.0001329155 
Iteration: 60 Eps: 0.0001357904 
Iteration: 61 Eps: 1.427341e-05 
Iteration: 62 Eps: 1.060632e-05 
Iteration: 63 Eps: 5.541105e-06 
Iteration: 64 Eps: 2.406192e-06 
Iteration: 65 Eps: 1.547589e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1057312 
Iteration: 3 Eps: 0.009032312 
Iteration: 4 Eps: 0.002199919 
Iteration: 5 Eps: 0.0001184376 
Iteration: 6 Eps: 1.169214e-05 
Iteration: 7 Eps: 2.884359e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06837306 
Iteration: 3 Eps: 0.0120819 
Iteration: 4 Eps: 0.0009430707 
Iteration: 5 Eps: 8.559803e-05 
Iteration: 6 Eps: 6.874599e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06593398 
Iteration: 3 Eps: 0.01227709 
Iteration: 4 Eps: 0.001336562 
Iteration: 5 Eps: 9.080195e-05 
Iteration: 6 Eps: 8.199836e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05263726 
Iteration: 3 Eps: 0.0109477 
Iteration: 4 Eps: 0.002254175 
Iteration: 5 Eps: 0.0001370301 
Iteration: 6 Eps: 1.340467e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04919214 
Iteration: 3 Eps: 0.005853895 
Iteration: 4 Eps: 0.001926969 
Iteration: 5 Eps: 0.0001319769 
Iteration: 6 Eps: 9.245954e-06 
Iteration: 7 Eps: 1.873535e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08202503 
Iteration: 3 Eps: 0.009970731 
Iteration: 4 Eps: 0.001756248 
Iteration: 5 Eps: 0.0001535127 
Iteration: 6 Eps: 4.584636e-05 
Iteration: 7 Eps: 1.068815e-05 
Iteration: 8 Eps: 2.625267e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09786999 
Iteration: 3 Eps: 0.006583488 
Iteration: 4 Eps: 0.001457379 
Iteration: 5 Eps: 0.0002695818 
Iteration: 6 Eps: 6.299668e-05 
Iteration: 7 Eps: 1.652937e-05 
Iteration: 8 Eps: 2.94558e-06 
18 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06135383 
Iteration: 3 Eps: 0.009470194 
Iteration: 4 Eps: 0.004718631 
Iteration: 5 Eps: 0.003004289 
Iteration: 6 Eps: 0.001462983 
Iteration: 7 Eps: 0.0003323592 
Iteration: 8 Eps: 0.0001107855 
Iteration: 9 Eps: 1.942438e-05 
Iteration: 10 Eps: 5.473688e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1077116 
Iteration: 3 Eps: 0.0233373 
Iteration: 4 Eps: 0.001564023 
Iteration: 5 Eps: 0.0002457441 
Iteration: 6 Eps: 3.008227e-05 
Iteration: 7 Eps: 8.199564e-06 
Iteration: 8 Eps: 4.180201e-06 
Iteration: 9 Eps: 1.754737e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09702794 
Iteration: 3 Eps: 0.005426332 
Iteration: 4 Eps: 0.0008776339 
Iteration: 5 Eps: 0.0007763877 
Iteration: 6 Eps: 0.0004767458 
Iteration: 7 Eps: 0.0004667305 
Iteration: 8 Eps: 0.000465699 
Iteration: 9 Eps: 0.0004989772 
Iteration: 10 Eps: 0.0005270437 
Iteration: 11 Eps: 0.0005474134 
Iteration: 12 Eps: 0.0005665199 
Iteration: 13 Eps: 0.0005799451 
Iteration: 14 Eps: 0.0005908966 
Iteration: 15 Eps: 0.0005990594 
Iteration: 16 Eps: 0.0006054972 
Iteration: 17 Eps: 0.000610331 
Iteration: 18 Eps: 0.0006140294 
Iteration: 19 Eps: 0.0006167796 
Iteration: 20 Eps: 0.0006188369 
Iteration: 21 Eps: 0.0006203776 
Iteration: 22 Eps: 0.0006215488 
Iteration: 23 Eps: 0.0006224405 
Iteration: 24 Eps: 0.000623122 
Iteration: 25 Eps: 0.0006236507 
Iteration: 26 Eps: 0.0006240548 
Iteration: 27 Eps: 0.0006243666 
Iteration: 28 Eps: 0.0006246079 
Iteration: 29 Eps: 0.0006247991 
Iteration: 30 Eps: 0.0006249435 
Iteration: 31 Eps: 0.0006250586 
Iteration: 32 Eps: 0.0006251451 
Iteration: 33 Eps: 0.0006252107 
Iteration: 34 Eps: 0.0006252652 
Iteration: 35 Eps: 0.0006253071 
Iteration: 36 Eps: 0.0006253377 
Iteration: 37 Eps: 0.0006253624 
Iteration: 38 Eps: 0.0006253806 
Iteration: 39 Eps: 0.0006253958 
Iteration: 40 Eps: 0.0006254078 
Iteration: 41 Eps: 0.0006254172 
Iteration: 42 Eps: 0.0006254225 
Iteration: 43 Eps: 0.0006254311 
Iteration: 44 Eps: 0.0006254365 
Iteration: 45 Eps: 0.0006254404 
Iteration: 46 Eps: 0.0006254415 
Iteration: 47 Eps: 0.0006254439 
Iteration: 48 Eps: 0.0006254436 
Iteration: 49 Eps: 0.0006254445 
Iteration: 50 Eps: 0.0006254472 
Iteration: 51 Eps: 0.0006254494 
Iteration: 52 Eps: 0.0006254493 
Iteration: 53 Eps: 0.0006254456 
Iteration: 54 Eps: 0.0006254509 
Iteration: 55 Eps: 0.0006254475 
Iteration: 56 Eps: 0.0005071601 
Iteration: 57 Eps: 0.0003646533 
Iteration: 58 Eps: 0.0002155235 
Iteration: 59 Eps: 0.0001339341 
Iteration: 60 Eps: 0.0001439333 
Iteration: 61 Eps: 1.767923e-05 
Iteration: 62 Eps: 1.184499e-05 
Iteration: 63 Eps: 6.1242e-06 
Iteration: 64 Eps: 2.613197e-06 
Iteration: 65 Eps: 1.679196e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1062628 
Iteration: 3 Eps: 0.008947107 
Iteration: 4 Eps: 0.002107565 
Iteration: 5 Eps: 0.0001084085 
Iteration: 6 Eps: 1.03012e-05 
Iteration: 7 Eps: 2.250425e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06871112 
Iteration: 3 Eps: 0.01206425 
Iteration: 4 Eps: 0.0009003904 
Iteration: 5 Eps: 7.910315e-05 
Iteration: 6 Eps: 5.86439e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06622319 
Iteration: 3 Eps: 0.01229436 
Iteration: 4 Eps: 0.001270753 
Iteration: 5 Eps: 8.436189e-05 
Iteration: 6 Eps: 6.830992e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05290762 
Iteration: 3 Eps: 0.01093091 
Iteration: 4 Eps: 0.00220566 
Iteration: 5 Eps: 0.0001226641 
Iteration: 6 Eps: 1.093217e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04946104 
Iteration: 3 Eps: 0.005879267 
Iteration: 4 Eps: 0.00188093 
Iteration: 5 Eps: 0.0001178553 
Iteration: 6 Eps: 8.177738e-06 
Iteration: 7 Eps: 1.396554e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08244266 
Iteration: 3 Eps: 0.009953077 
Iteration: 4 Eps: 0.001720802 
Iteration: 5 Eps: 0.0001551675 
Iteration: 6 Eps: 4.24989e-05 
Iteration: 7 Eps: 9.044399e-06 
Iteration: 8 Eps: 1.915793e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09828253 
Iteration: 3 Eps: 0.006594518 
Iteration: 4 Eps: 0.001434863 
Iteration: 5 Eps: 0.000260699 
Iteration: 6 Eps: 5.818765e-05 
Iteration: 7 Eps: 1.351477e-05 
Iteration: 8 Eps: 2.042449e-06 
19 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06167049 
Iteration: 3 Eps: 0.009369084 
Iteration: 4 Eps: 0.004529401 
Iteration: 5 Eps: 0.002759446 
Iteration: 6 Eps: 0.001314656 
Iteration: 7 Eps: 0.0002838736 
Iteration: 8 Eps: 8.876941e-05 
Iteration: 9 Eps: 1.416279e-05 
Iteration: 10 Eps: 3.661926e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1081363 
Iteration: 3 Eps: 0.02335472 
Iteration: 4 Eps: 0.001538163 
Iteration: 5 Eps: 0.0002333783 
Iteration: 6 Eps: 2.935838e-05 
Iteration: 7 Eps: 7.641509e-06 
Iteration: 8 Eps: 3.40918e-06 
Iteration: 9 Eps: 1.237778e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09742834 
Iteration: 3 Eps: 0.005415421 
Iteration: 4 Eps: 0.0008429624 
Iteration: 5 Eps: 0.0007455485 
Iteration: 6 Eps: 0.000463947 
Iteration: 7 Eps: 0.0004542413 
Iteration: 8 Eps: 0.0004555708 
Iteration: 9 Eps: 0.0004901026 
Iteration: 10 Eps: 0.0005194847 
Iteration: 11 Eps: 0.0005414314 
Iteration: 12 Eps: 0.0005616851 
Iteration: 13 Eps: 0.0005761658 
Iteration: 14 Eps: 0.0005879149 
Iteration: 15 Eps: 0.0005967393 
Iteration: 16 Eps: 0.0006036848 
Iteration: 17 Eps: 0.0006089403 
Iteration: 18 Eps: 0.0006129646 
Iteration: 19 Eps: 0.000615961 
Iteration: 20 Eps: 0.0006182136 
Iteration: 21 Eps: 0.0006198993 
Iteration: 22 Eps: 0.0006211809 
Iteration: 23 Eps: 0.0006221547 
Iteration: 24 Eps: 0.0006229021 
Iteration: 25 Eps: 0.0006234743 
Iteration: 26 Eps: 0.0006239202 
Iteration: 27 Eps: 0.0006242664 
Iteration: 28 Eps: 0.0006245321 
Iteration: 29 Eps: 0.0006247326 
Iteration: 30 Eps: 0.0006248926 
Iteration: 31 Eps: 0.0006250205 
Iteration: 32 Eps: 0.0006251138 
Iteration: 33 Eps: 0.0006251904 
Iteration: 34 Eps: 0.0006252448 
Iteration: 35 Eps: 0.0006252917 
Iteration: 36 Eps: 0.0006253268 
Iteration: 37 Eps: 0.0006253531 
Iteration: 38 Eps: 0.0006253713 
Iteration: 39 Eps: 0.0006253898 
Iteration: 40 Eps: 0.0006254039 
Iteration: 41 Eps: 0.0006254145 
Iteration: 42 Eps: 0.0006254225 
Iteration: 43 Eps: 0.000625431 
Iteration: 44 Eps: 0.0006254336 
Iteration: 45 Eps: 0.0006254372 
Iteration: 46 Eps: 0.0006254396 
Iteration: 47 Eps: 0.0006254438 
Iteration: 48 Eps: 0.000625444 
Iteration: 49 Eps: 0.0006254436 
Iteration: 50 Eps: 0.0006254455 
Iteration: 51 Eps: 0.0006254485 
Iteration: 52 Eps: 0.0006254467 
Iteration: 53 Eps: 0.0006254514 
Iteration: 54 Eps: 0.0006254447 
Iteration: 55 Eps: 0.0006254506 
Iteration: 56 Eps: 0.000555683 
Iteration: 57 Eps: 0.0003488743 
Iteration: 58 Eps: 0.0002586536 
Iteration: 59 Eps: 0.0001322213 
Iteration: 60 Eps: 0.0001374607 
Iteration: 61 Eps: 2.372499e-05 
Iteration: 62 Eps: 1.04005e-05 
Iteration: 63 Eps: 5.242954e-06 
Iteration: 64 Eps: 2.218537e-06 
Iteration: 65 Eps: 1.42355e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1067964 
Iteration: 3 Eps: 0.008864018 
Iteration: 4 Eps: 0.00201855 
Iteration: 5 Eps: 9.92075e-05 
Iteration: 6 Eps: 8.98949e-06 
Iteration: 7 Eps: 1.730364e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06905072 
Iteration: 3 Eps: 0.01204509 
Iteration: 4 Eps: 0.0008598809 
Iteration: 5 Eps: 7.316524e-05 
Iteration: 6 Eps: 4.94208e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0665135 
Iteration: 3 Eps: 0.01231079 
Iteration: 4 Eps: 0.001207422 
Iteration: 5 Eps: 7.820212e-05 
Iteration: 6 Eps: 5.705865e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05317908 
Iteration: 3 Eps: 0.01091426 
Iteration: 4 Eps: 0.002157113 
Iteration: 5 Eps: 0.0001102927 
Iteration: 6 Eps: 8.903151e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04973091 
Iteration: 3 Eps: 0.005904538 
Iteration: 4 Eps: 0.001835716 
Iteration: 5 Eps: 0.0001053781 
Iteration: 6 Eps: 7.13529e-06 
Iteration: 7 Eps: 1.051565e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08286134 
Iteration: 3 Eps: 0.009936009 
Iteration: 4 Eps: 0.001685572 
Iteration: 5 Eps: 0.0001561842 
Iteration: 6 Eps: 3.89124e-05 
Iteration: 7 Eps: 7.531676e-06 
Iteration: 8 Eps: 1.391258e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09869504 
Iteration: 3 Eps: 0.006605973 
Iteration: 4 Eps: 0.001412262 
Iteration: 5 Eps: 0.0002521821 
Iteration: 6 Eps: 5.306127e-05 
Iteration: 7 Eps: 1.082577e-05 
Iteration: 8 Eps: 1.384009e-06 
20 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06199012 
Iteration: 3 Eps: 0.00926998 
Iteration: 4 Eps: 0.004346065 
Iteration: 5 Eps: 0.002529252 
Iteration: 6 Eps: 0.00117675 
Iteration: 7 Eps: 0.0002414164 
Iteration: 8 Eps: 7.069077e-05 
Iteration: 9 Eps: 1.031267e-05 
Iteration: 10 Eps: 2.423206e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1085612 
Iteration: 3 Eps: 0.02337156 
Iteration: 4 Eps: 0.001513329 
Iteration: 5 Eps: 0.0002216964 
Iteration: 6 Eps: 2.826359e-05 
Iteration: 7 Eps: 6.984876e-06 
Iteration: 8 Eps: 2.655109e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09783154 
Iteration: 3 Eps: 0.005406501 
Iteration: 4 Eps: 0.0008092324 
Iteration: 5 Eps: 0.0007145497 
Iteration: 6 Eps: 0.0004507715 
Iteration: 7 Eps: 0.0004416045 
Iteration: 8 Eps: 0.0004451617 
Iteration: 9 Eps: 0.0004809005 
Iteration: 10 Eps: 0.0005116001 
Iteration: 11 Eps: 0.0005351433 
Iteration: 12 Eps: 0.0005566161 
Iteration: 13 Eps: 0.0005721822 
Iteration: 14 Eps: 0.0005847416 
Iteration: 15 Eps: 0.0005942741 
Iteration: 16 Eps: 0.0006017623 
Iteration: 17 Eps: 0.000607457 
Iteration: 18 Eps: 0.0006118258 
Iteration: 19 Eps: 0.0006150887 
Iteration: 20 Eps: 0.0006175438 
Iteration: 21 Eps: 0.0006193892 
Iteration: 22 Eps: 0.0006207837 
Iteration: 23 Eps: 0.0006218532 
Iteration: 24 Eps: 0.0006226644 
Iteration: 25 Eps: 0.0006232948 
Iteration: 26 Eps: 0.0006237771 
Iteration: 27 Eps: 0.0006241538 
Iteration: 28 Eps: 0.0006244443 
Iteration: 29 Eps: 0.000624669 
Iteration: 30 Eps: 0.0006248426 
Iteration: 31 Eps: 0.0006249794 
Iteration: 32 Eps: 0.0006250829 
Iteration: 33 Eps: 0.0006251613 
Iteration: 34 Eps: 0.0006252297 
Iteration: 35 Eps: 0.0006252772 
Iteration: 36 Eps: 0.0006253148 
Iteration: 37 Eps: 0.0006253438 
Iteration: 38 Eps: 0.0006253658 
Iteration: 39 Eps: 0.0006253856 
Iteration: 40 Eps: 0.0006254011 
Iteration: 41 Eps: 0.0006254112 
Iteration: 42 Eps: 0.0006254183 
Iteration: 43 Eps: 0.0006254252 
Iteration: 44 Eps: 0.0006254324 
Iteration: 45 Eps: 0.0006254353 
Iteration: 46 Eps: 0.0006254443 
Iteration: 47 Eps: 0.0006254426 
Iteration: 48 Eps: 0.0006254456 
Iteration: 49 Eps: 0.0006254434 
Iteration: 50 Eps: 0.0006254473 
Iteration: 51 Eps: 0.0006254492 
Iteration: 52 Eps: 0.0006254484 
Iteration: 53 Eps: 0.000625449 
Iteration: 54 Eps: 0.000625448 
Iteration: 55 Eps: 0.0006254497 
Iteration: 56 Eps: 0.0006118239 
Iteration: 57 Eps: 0.0003364813 
Iteration: 58 Eps: 0.0003121406 
Iteration: 59 Eps: 0.0001292725 
Iteration: 60 Eps: 0.0001294223 
Iteration: 61 Eps: 3.589543e-05 
Iteration: 62 Eps: 8.249807e-06 
Iteration: 63 Eps: 3.98124e-06 
Iteration: 64 Eps: 1.731154e-06 
Iteration: 65 Eps: 1.169849e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1073314 
Iteration: 3 Eps: 0.008783184 
Iteration: 4 Eps: 0.001933177 
Iteration: 5 Eps: 9.076276e-05 
Iteration: 6 Eps: 7.817089e-06 
Iteration: 7 Eps: 1.318415e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06939126 
Iteration: 3 Eps: 0.01202472 
Iteration: 4 Eps: 0.0008218669 
Iteration: 5 Eps: 6.749549e-05 
Iteration: 6 Eps: 4.193311e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06680499 
Iteration: 3 Eps: 0.01232592 
Iteration: 4 Eps: 0.001147909 
Iteration: 5 Eps: 7.250512e-05 
Iteration: 6 Eps: 4.742973e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05345212 
Iteration: 3 Eps: 0.01089733 
Iteration: 4 Eps: 0.002107752 
Iteration: 5 Eps: 9.96569e-05 
Iteration: 6 Eps: 7.211645e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05000192 
Iteration: 3 Eps: 0.005929756 
Iteration: 4 Eps: 0.001790784 
Iteration: 5 Eps: 9.44748e-05 
Iteration: 6 Eps: 6.206586e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08328171 
Iteration: 3 Eps: 0.009919416 
Iteration: 4 Eps: 0.001650966 
Iteration: 5 Eps: 0.0001564224 
Iteration: 6 Eps: 3.557286e-05 
Iteration: 7 Eps: 6.13149e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09910948 
Iteration: 3 Eps: 0.006617842 
Iteration: 4 Eps: 0.001389605 
Iteration: 5 Eps: 0.0002436328 
Iteration: 6 Eps: 4.801489e-05 
Iteration: 7 Eps: 8.549528e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07781546 
Iteration: 3 Eps: 0.01125919 
Iteration: 4 Eps: 0.00699493 
Iteration: 5 Eps: 0.008272696 
Iteration: 6 Eps: 0.009277768 
Iteration: 7 Eps: 0.01078081 
Iteration: 8 Eps: 0.01275409 
Iteration: 9 Eps: 0.01354936 
Iteration: 10 Eps: 0.01583905 
Iteration: 11 Eps: 0.01619166 
Iteration: 12 Eps: 0.01852897 
Iteration: 13 Eps: 0.01843207 
Iteration: 14 Eps: 0.02064566 
Iteration: 15 Eps: 0.02020383 
Iteration: 16 Eps: 0.022217 
Iteration: 17 Eps: 0.02153784 
Iteration: 18 Eps: 0.02333604 
Iteration: 19 Eps: 0.02251904 
Iteration: 20 Eps: 0.0241161 
Iteration: 21 Eps: 0.02323486 
Iteration: 22 Eps: 0.02465508 
Iteration: 23 Eps: 0.02375807 
Iteration: 24 Eps: 0.02502585 
Iteration: 25 Eps: 0.02414353 
Iteration: 26 Eps: 0.02528057 
Iteration: 27 Eps: 0.02443116 
Iteration: 28 Eps: 0.02545605 
Iteration: 29 Eps: 0.02464954 
Iteration: 30 Eps: 0.02557715 
Iteration: 31 Eps: 0.02481819 
Iteration: 32 Eps: 0.02566049 
Iteration: 33 Eps: 0.02495047 
Iteration: 34 Eps: 0.02571728 
Iteration: 35 Eps: 0.02505588 
Iteration: 36 Eps: 0.02575527 
Iteration: 37 Eps: 0.02514102 
Iteration: 38 Eps: 0.02577995 
Iteration: 39 Eps: 0.02521066 
Iteration: 40 Eps: 0.02579509 
Iteration: 41 Eps: 0.02526829 
Iteration: 42 Eps: 0.02580331 
Iteration: 43 Eps: 0.02531648 
Iteration: 44 Eps: 0.02580668 
Iteration: 45 Eps: 0.02535716 
Iteration: 46 Eps: 0.02580655 
Iteration: 47 Eps: 0.02539185 
Iteration: 48 Eps: 0.025804 
Iteration: 49 Eps: 0.02542161 
Iteration: 50 Eps: 0.02579977 
Iteration: 51 Eps: 0.02544737 
Iteration: 52 Eps: 0.0257944 
Iteration: 53 Eps: 0.02546979 
Iteration: 54 Eps: 0.02578839 
Iteration: 55 Eps: 0.02548946 
Iteration: 56 Eps: 0.02578195 
Iteration: 57 Eps: 0.02550673 
Iteration: 58 Eps: 0.02577543 
Iteration: 59 Eps: 0.0255221 
Iteration: 60 Eps: 0.0257688 
Iteration: 61 Eps: 0.02553563 
Iteration: 62 Eps: 0.02576233 
Iteration: 63 Eps: 0.0255478 
Iteration: 64 Eps: 0.02575602 
Iteration: 65 Eps: 0.02555865 
Iteration: 66 Eps: 0.02574992 
Iteration: 67 Eps: 0.02556843 
Iteration: 68 Eps: 0.0257441 
Iteration: 69 Eps: 0.02557721 
Iteration: 70 Eps: 0.02573866 
Iteration: 71 Eps: 0.02558508 
Iteration: 72 Eps: 0.02573347 
Iteration: 73 Eps: 0.02559226 
Iteration: 74 Eps: 0.02572859 
Iteration: 75 Eps: 0.02559872 
Iteration: 76 Eps: 0.02572401 
Iteration: 77 Eps: 0.02560456 
Iteration: 78 Eps: 0.02571971 
Iteration: 79 Eps: 0.02560993 
Iteration: 80 Eps: 0.02571573 
Iteration: 81 Eps: 0.02561475 
Iteration: 82 Eps: 0.02571201 
Iteration: 83 Eps: 0.02561919 
Iteration: 84 Eps: 0.02570855 
Iteration: 85 Eps: 0.02562321 
Iteration: 86 Eps: 0.02570534 
Iteration: 87 Eps: 0.02562689 
Iteration: 88 Eps: 0.02570237 
Iteration: 89 Eps: 0.02563021 
Iteration: 90 Eps: 0.0256996 
Iteration: 91 Eps: 0.0256333 
Iteration: 92 Eps: 0.02569703 
Iteration: 93 Eps: 0.02563605 
Iteration: 94 Eps: 0.02569469 
Iteration: 95 Eps: 0.02563863 
Iteration: 96 Eps: 0.02569247 
Iteration: 97 Eps: 0.02564095 
Iteration: 98 Eps: 0.02578426 
Iteration: 99 Eps: 0.0255075 
1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06796122 
Iteration: 3 Eps: 0.006218707 
Iteration: 4 Eps: 8.387423e-06 
Iteration: 5 Eps: 8.828574e-06 
Iteration: 6 Eps: 1.633404e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09859543 
Iteration: 3 Eps: 0.001278044 
Iteration: 4 Eps: 9.500808e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09399489 
Iteration: 3 Eps: 0.0005937163 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09526702 
Iteration: 3 Eps: 0.002095259 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08058252 
Iteration: 3 Eps: 0.001891428 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09713354 
Iteration: 3 Eps: 0.003321677 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09086527 
Iteration: 3 Eps: 0.001688897 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0837417 
Iteration: 3 Eps: 0.001274209 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08772175 
Iteration: 3 Eps: 0.001738471 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09025676 
Iteration: 3 Eps: 0.001032625 
2 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06876335 
Iteration: 3 Eps: 0.006078538 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09922749 
Iteration: 3 Eps: 0.001400768 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09447142 
Iteration: 3 Eps: 0.0005533711 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0955354 
Iteration: 3 Eps: 0.001970278 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08146253 
Iteration: 3 Eps: 0.001800771 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0976749 
Iteration: 3 Eps: 0.003205017 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09166521 
Iteration: 3 Eps: 0.001617334 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08454046 
Iteration: 3 Eps: 0.001224691 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08825835 
Iteration: 3 Eps: 0.001677538 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09084928 
Iteration: 3 Eps: 0.000981034 
3 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06957259 
Iteration: 3 Eps: 0.00594001 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09986294 
Iteration: 3 Eps: 0.001328889 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09498366 
Iteration: 3 Eps: 0.0005153333 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09590999 
Iteration: 3 Eps: 0.001893541 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08221482 
Iteration: 3 Eps: 0.001741614 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09822152 
Iteration: 3 Eps: 0.003093634 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09247479 
Iteration: 3 Eps: 0.001539338 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08534372 
Iteration: 3 Eps: 0.001175899 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08879384 
Iteration: 3 Eps: 0.001616396 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09146388 
Iteration: 3 Eps: 0.0009242144 
4 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07079725 
Iteration: 3 Eps: 0.005743711 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1005038 
Iteration: 3 Eps: 0.001258938 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09549768 
Iteration: 3 Eps: 0.0004793677 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09633138 
Iteration: 3 Eps: 0.001818779 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08308289 
Iteration: 3 Eps: 0.001660718 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09877149 
Iteration: 3 Eps: 0.002981618 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09329016 
Iteration: 3 Eps: 0.001472825 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08615315 
Iteration: 3 Eps: 0.001127531 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08932624 
Iteration: 3 Eps: 0.001555986 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09208732 
Iteration: 3 Eps: 0.0008691295 
5 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07159552 
Iteration: 3 Eps: 0.005616854 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1011484 
Iteration: 3 Eps: 0.00119101 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09477024 
Iteration: 3 Eps: 0.0004247106 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09659691 
Iteration: 3 Eps: 0.001760668 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08395741 
Iteration: 3 Eps: 0.001581684 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09932122 
Iteration: 3 Eps: 0.002871523 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09417876 
Iteration: 3 Eps: 0.001429117 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08698079 
Iteration: 3 Eps: 0.001078985 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08986243 
Iteration: 3 Eps: 0.001496021 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09271566 
Iteration: 3 Eps: 0.0008162808 
6 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07245964 
Iteration: 3 Eps: 0.005467741 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1017962 
Iteration: 3 Eps: 0.001126 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09552365 
Iteration: 3 Eps: 0.0003972115 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09625773 
Iteration: 3 Eps: 0.001682534 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08483532 
Iteration: 3 Eps: 0.001505521 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09987921 
Iteration: 3 Eps: 0.002764156 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09500557 
Iteration: 3 Eps: 0.001364261 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08781327 
Iteration: 3 Eps: 0.00103101 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09041835 
Iteration: 3 Eps: 0.001430593 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09335101 
Iteration: 3 Eps: 0.0007653924 
7 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07325428 
Iteration: 3 Eps: 0.005349273 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1024463 
Iteration: 3 Eps: 0.001061943 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09628709 
Iteration: 3 Eps: 0.0003703277 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09676839 
Iteration: 3 Eps: 0.001530068 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08571568 
Iteration: 3 Eps: 0.001431134 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1004405 
Iteration: 3 Eps: 0.002658249 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0958086 
Iteration: 3 Eps: 0.001302196 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08863886 
Iteration: 3 Eps: 0.0009841634 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09103839 
Iteration: 3 Eps: 0.001373616 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09398246 
Iteration: 3 Eps: 0.0007178794 
8 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07405662 
Iteration: 3 Eps: 0.005231253 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1031105 
Iteration: 3 Eps: 0.0009991983 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09705532 
Iteration: 3 Eps: 0.0003444503 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09732859 
Iteration: 3 Eps: 0.001468927 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08670374 
Iteration: 3 Eps: 0.001364751 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1010059 
Iteration: 3 Eps: 0.002554578 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0966699 
Iteration: 3 Eps: 0.001239705 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08941322 
Iteration: 3 Eps: 0.0009514444 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09169531 
Iteration: 3 Eps: 0.001318342 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09461596 
Iteration: 3 Eps: 0.0006727529 
9 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0749007 
Iteration: 3 Eps: 0.005098939 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1037315 
Iteration: 3 Eps: 0.0009319224 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09781919 
Iteration: 3 Eps: 0.0003205173 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09788534 
Iteration: 3 Eps: 0.001409692 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08759918 
Iteration: 3 Eps: 0.001293106 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1015687 
Iteration: 3 Eps: 0.002454732 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0975383 
Iteration: 3 Eps: 0.001178199 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09018371 
Iteration: 3 Eps: 0.0009069881 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09236065 
Iteration: 3 Eps: 0.001262176 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0952521 
Iteration: 3 Eps: 0.0006300456 
10 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07571253 
Iteration: 3 Eps: 0.004986323 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1042849 
Iteration: 3 Eps: 0.0008752255 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09858537 
Iteration: 3 Eps: 0.0002979456 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09844686 
Iteration: 3 Eps: 0.001351546 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08856445 
Iteration: 3 Eps: 0.001224937 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1021321 
Iteration: 3 Eps: 0.002357837 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09842781 
Iteration: 3 Eps: 0.001126824 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09097969 
Iteration: 3 Eps: 0.0008610313 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0930313 
Iteration: 3 Eps: 0.001206729 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09596124 
Iteration: 3 Eps: 0.0005778046 
11 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07653026 
Iteration: 3 Eps: 0.00487679 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1037794 
Iteration: 3 Eps: 0.0006206604 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09937017 
Iteration: 3 Eps: 0.0002659433 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09900912 
Iteration: 3 Eps: 0.001294231 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08942996 
Iteration: 3 Eps: 0.001160701 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1028299 
Iteration: 3 Eps: 0.002247719 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09922577 
Iteration: 3 Eps: 0.001084322 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09176987 
Iteration: 3 Eps: 0.0008181332 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09362173 
Iteration: 3 Eps: 0.001174174 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09794589 
Iteration: 3 Eps: 0.0002943754 
12 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07842715 
Iteration: 3 Eps: 0.004727734 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1044053 
Iteration: 3 Eps: 0.0005741303 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1001406 
Iteration: 3 Eps: 0.0002463468 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09957472 
Iteration: 3 Eps: 0.001237507 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09031205 
Iteration: 3 Eps: 0.001095944 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1034 
Iteration: 3 Eps: 0.002156554 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1000007 
Iteration: 3 Eps: 0.001027246 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09256535 
Iteration: 3 Eps: 0.0007764602 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09430942 
Iteration: 3 Eps: 0.001118598 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09867884 
Iteration: 3 Eps: 0.0002683755 
13 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07921862 
Iteration: 3 Eps: 0.004663687 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.105032 
Iteration: 3 Eps: 0.0005293143 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.100913 
Iteration: 3 Eps: 0.0002279585 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1001442 
Iteration: 3 Eps: 0.001182441 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09123897 
Iteration: 3 Eps: 0.001030878 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1039754 
Iteration: 3 Eps: 0.002067434 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.100831 
Iteration: 3 Eps: 0.0009504521 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09336646 
Iteration: 3 Eps: 0.0007359417 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09500162 
Iteration: 3 Eps: 0.001064063 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09941628 
Iteration: 3 Eps: 0.0002438673 
14 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0798959 
Iteration: 3 Eps: 0.004568375 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1056598 
Iteration: 3 Eps: 0.0004861713 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1017071 
Iteration: 3 Eps: 0.0002068627 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1007125 
Iteration: 3 Eps: 0.001114224 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09217199 
Iteration: 3 Eps: 0.0009680834 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1049174 
Iteration: 3 Eps: 0.001979653 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1016102 
Iteration: 3 Eps: 0.0008993109 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09415745 
Iteration: 3 Eps: 0.000699624 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09570967 
Iteration: 3 Eps: 0.001010484 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1000859 
Iteration: 3 Eps: 0.0002211648 
15 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08057825 
Iteration: 3 Eps: 0.004472715 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1062785 
Iteration: 3 Eps: 0.0004478935 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1024363 
Iteration: 3 Eps: 0.0001905975 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1012898 
Iteration: 3 Eps: 0.00106388 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0931108 
Iteration: 3 Eps: 0.0009076177 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1053674 
Iteration: 3 Eps: 0.001896093 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1024192 
Iteration: 3 Eps: 0.0008507628 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0949749 
Iteration: 3 Eps: 0.0006612901 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09640948 
Iteration: 3 Eps: 0.0009571034 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1007686 
Iteration: 3 Eps: 0.0001986949 
16 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08126554 
Iteration: 3 Eps: 0.004376476 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1069299 
Iteration: 3 Eps: 0.0004072396 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1030772 
Iteration: 3 Eps: 0.0001751087 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1018756 
Iteration: 3 Eps: 0.001016806 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09405545 
Iteration: 3 Eps: 0.0008491414 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1058135 
Iteration: 3 Eps: 0.00181194 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1032929 
Iteration: 3 Eps: 0.0008021805 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09579813 
Iteration: 3 Eps: 0.0006237271 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09711358 
Iteration: 3 Eps: 0.0009060419 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1018341 
Iteration: 3 Eps: 0.0001700386 
17 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08195741 
Iteration: 3 Eps: 0.004281253 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.107562 
Iteration: 3 Eps: 0.0003693319 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1036662 
Iteration: 3 Eps: 0.0001598822 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1024672 
Iteration: 3 Eps: 0.0009668687 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09500727 
Iteration: 3 Eps: 0.0007924641 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1062608 
Iteration: 3 Eps: 0.001728818 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1041734 
Iteration: 3 Eps: 0.0007552085 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09662701 
Iteration: 3 Eps: 0.0005874891 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09782237 
Iteration: 3 Eps: 0.0008563446 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1023241 
Iteration: 3 Eps: 0.0001526514 
18 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08265396 
Iteration: 3 Eps: 0.004187059 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.108199 
Iteration: 3 Eps: 0.0003334267 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.104258 
Iteration: 3 Eps: 0.0001450485 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1030307 
Iteration: 3 Eps: 0.0008837559 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09596554 
Iteration: 3 Eps: 0.0007377565 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1067098 
Iteration: 3 Eps: 0.001647644 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1052119 
Iteration: 3 Eps: 0.0006852861 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09746207 
Iteration: 3 Eps: 0.0005525228 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0985361 
Iteration: 3 Eps: 0.0008079657 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1028171 
Iteration: 3 Eps: 0.0001359167 
19 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08335539 
Iteration: 3 Eps: 0.004093916 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1088341 
Iteration: 3 Eps: 0.0002986899 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.104848 
Iteration: 3 Eps: 0.00013145 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1036051 
Iteration: 3 Eps: 0.0008381032 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09692911 
Iteration: 3 Eps: 0.0006852554 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1071707 
Iteration: 3 Eps: 0.001507191 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1058216 
Iteration: 3 Eps: 0.0006515187 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09830413 
Iteration: 3 Eps: 0.0005175117 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09925424 
Iteration: 3 Eps: 0.000760983 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1033047 
Iteration: 3 Eps: 0.0001214298 
20 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08406012 
Iteration: 3 Eps: 0.004002889 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1094815 
Iteration: 3 Eps: 0.0002668237 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1081969 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1037544 
Iteration: 3 Eps: 0.0008043848 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09789864 
Iteration: 3 Eps: 0.0006348372 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.107623 
Iteration: 3 Eps: 0.001432791 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1069835 
Iteration: 3 Eps: 0.0006009277 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09914966 
Iteration: 3 Eps: 0.0004856951 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09997725 
Iteration: 3 Eps: 0.0007153275 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1037987 
Iteration: 3 Eps: 0.0001073956 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09967751 
Iteration: 3 Eps: 0.0006380168 
1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06449097 
Iteration: 3 Eps: 0.01101558 
Iteration: 4 Eps: 0.007112553 
Iteration: 5 Eps: 0.00616275 
Iteration: 6 Eps: 0.003361871 
Iteration: 7 Eps: 0.001252819 
Iteration: 8 Eps: 0.0005932738 
Iteration: 9 Eps: 0.000326413 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1246239 
Iteration: 3 Eps: 0.02391369 
Iteration: 4 Eps: 0.001836247 
Iteration: 5 Eps: 0.001807912 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1107905 
Iteration: 3 Eps: 0.004802443 
Iteration: 4 Eps: 0.0011245 
Iteration: 5 Eps: 0.0009527558 
Iteration: 6 Eps: 0.0005250807 
Iteration: 7 Eps: 0.0005186212 
Iteration: 8 Eps: 0.0004923343 
Iteration: 9 Eps: 0.0005237427 
Iteration: 10 Eps: 0.0005455223 
Iteration: 11 Eps: 0.0005603 
Iteration: 12 Eps: 0.0005757178 
Iteration: 13 Eps: 0.000586565 
Iteration: 14 Eps: 0.0005957246 
Iteration: 15 Eps: 0.0006024851 
Iteration: 16 Eps: 0.0006079244 
Iteration: 17 Eps: 0.0006119175 
Iteration: 18 Eps: 0.0006150696 
Iteration: 19 Eps: 0.0006174444 
Iteration: 20 Eps: 0.0006192295 
Iteration: 21 Eps: 0.0006206151 
Iteration: 22 Eps: 0.0006216894 
Iteration: 23 Eps: 0.0006224858 
Iteration: 24 Eps: 0.000623162 
Iteration: 25 Eps: 0.0006236735 
Iteration: 26 Eps: 0.0006240729 
Iteration: 27 Eps: 0.0006243823 
Iteration: 28 Eps: 0.0006246145 
Iteration: 29 Eps: 0.0006247976 
Iteration: 30 Eps: 0.0006249506 
Iteration: 31 Eps: 0.0006250543 
Iteration: 32 Eps: 0.0006251461 
Iteration: 33 Eps: 0.0006252118 
Iteration: 34 Eps: 0.0006252662 
Iteration: 35 Eps: 0.0006253012 
Iteration: 36 Eps: 0.0006253359 
Iteration: 37 Eps: 0.0006253602 
Iteration: 38 Eps: 0.0006253824 
Iteration: 39 Eps: 0.0006253951 
Iteration: 40 Eps: 0.0006254118 
Iteration: 41 Eps: 0.000625411 
Iteration: 42 Eps: 0.0006254294 
Iteration: 43 Eps: 0.000625433 
Iteration: 44 Eps: 0.0006254366 
Iteration: 45 Eps: 0.000625442 
Iteration: 46 Eps: 0.0006254411 
Iteration: 47 Eps: 0.0006254413 
Iteration: 48 Eps: 0.0006254464 
Iteration: 49 Eps: 0.0006254455 
Iteration: 50 Eps: 0.0006254468 
Iteration: 51 Eps: 0.0006254493 
Iteration: 52 Eps: 0.0006254488 
Iteration: 53 Eps: 0.0006254471 
Iteration: 54 Eps: 0.0006254478 
Iteration: 55 Eps: 0.0006254488 
Iteration: 56 Eps: 0.0003514589 
Iteration: 57 Eps: 0.0003259671 
Iteration: 58 Eps: 0.000127245 
Iteration: 59 Eps: 0.0001217944 
Iteration: 60 Eps: 5.044354e-05 
Iteration: 61 Eps: 5.850839e-06 
Iteration: 62 Eps: 2.179028e-06 
Iteration: 63 Eps: 1.12444e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.119436 
Iteration: 3 Eps: 0.00940635 
Iteration: 4 Eps: 0.003223476 
Iteration: 5 Eps: 0.0004686104 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07536756 
Iteration: 3 Eps: 0.01176511 
Iteration: 4 Eps: 0.001374078 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07128437 
Iteration: 3 Eps: 0.01095981 
Iteration: 4 Eps: 0.002265092 
Iteration: 5 Eps: 0.0005765553 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05730071 
Iteration: 3 Eps: 0.01085926 
Iteration: 4 Eps: 0.002924932 
Iteration: 5 Eps: 0.0006616401 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05434851 
Iteration: 3 Eps: 0.005664095 
Iteration: 4 Eps: 0.00234118 
Iteration: 5 Eps: 0.0003211988 
Iteration: 6 Eps: 2.765377e-05 
Iteration: 7 Eps: 6.925854e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09417165 
Iteration: 3 Eps: 0.009968889 
Iteration: 4 Eps: 0.002088447 
Iteration: 5 Eps: 0.001057154 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1112276 
Iteration: 3 Eps: 0.006410956 
Iteration: 4 Eps: 0.001812662 
Iteration: 5 Eps: 0.0003426745 
Iteration: 6 Eps: 0.001041166 
2 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06485269 
Iteration: 3 Eps: 0.01081697 
Iteration: 4 Eps: 0.006816879 
Iteration: 5 Eps: 0.005796576 
Iteration: 6 Eps: 0.003147815 
Iteration: 7 Eps: 0.0007744351 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1251201 
Iteration: 3 Eps: 0.02370043 
Iteration: 4 Eps: 0.001736039 
Iteration: 5 Eps: 0.001649061 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.111235 
Iteration: 3 Eps: 0.004600118 
Iteration: 4 Eps: 0.001095088 
Iteration: 5 Eps: 0.0009409132 
Iteration: 6 Eps: 0.0005128426 
Iteration: 7 Eps: 0.0005086163 
Iteration: 8 Eps: 0.0004866609 
Iteration: 9 Eps: 0.000517774 
Iteration: 10 Eps: 0.0005419968 
Iteration: 11 Eps: 0.0005568371 
Iteration: 12 Eps: 0.0005729966 
Iteration: 13 Eps: 0.0005843391 
Iteration: 14 Eps: 0.0005941042 
Iteration: 15 Eps: 0.000601162 
Iteration: 16 Eps: 0.0006069206 
Iteration: 17 Eps: 0.0006110873 
Iteration: 18 Eps: 0.0006144532 
Iteration: 19 Eps: 0.000616999 
Iteration: 20 Eps: 0.0006188577 
Iteration: 21 Eps: 0.0006203258 
Iteration: 22 Eps: 0.0006214629 
Iteration: 23 Eps: 0.0006222666 
Iteration: 24 Eps: 0.0006230088 
Iteration: 25 Eps: 0.0006235652 
Iteration: 26 Eps: 0.0006239857 
Iteration: 27 Eps: 0.0006243143 
Iteration: 28 Eps: 0.0006245625 
Iteration: 29 Eps: 0.0006247646 
Iteration: 30 Eps: 0.0006249133 
Iteration: 31 Eps: 0.0006250368 
Iteration: 32 Eps: 0.0006251213 
Iteration: 33 Eps: 0.0006251988 
Iteration: 34 Eps: 0.0006252541 
Iteration: 35 Eps: 0.0006252965 
Iteration: 36 Eps: 0.0006253273 
Iteration: 37 Eps: 0.000625356 
Iteration: 38 Eps: 0.000625377 
Iteration: 39 Eps: 0.0006253949 
Iteration: 40 Eps: 0.0006254064 
Iteration: 41 Eps: 0.0006254174 
Iteration: 42 Eps: 0.0006254251 
Iteration: 43 Eps: 0.0006254296 
Iteration: 44 Eps: 0.0006254361 
Iteration: 45 Eps: 0.0006254391 
Iteration: 46 Eps: 0.0006254443 
Iteration: 47 Eps: 0.0006254429 
Iteration: 48 Eps: 0.0006254442 
Iteration: 49 Eps: 0.0006254471 
Iteration: 50 Eps: 0.0006254445 
Iteration: 51 Eps: 0.0006254495 
Iteration: 52 Eps: 0.0006254452 
Iteration: 53 Eps: 0.0006254472 
Iteration: 54 Eps: 0.0006254499 
Iteration: 55 Eps: 0.0006254466 
Iteration: 56 Eps: 0.000366332 
Iteration: 57 Eps: 0.0003285282 
Iteration: 58 Eps: 0.0001301046 
Iteration: 59 Eps: 0.0001199802 
Iteration: 60 Eps: 6.289157e-05 
Iteration: 61 Eps: 4.649464e-06 
Iteration: 62 Eps: 1.540644e-06 
Iteration: 63 Eps: 1.007015e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1200118 
Iteration: 3 Eps: 0.00909825 
Iteration: 4 Eps: 0.002699864 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07587058 
Iteration: 3 Eps: 0.01170565 
Iteration: 4 Eps: 0.001293258 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07161424 
Iteration: 3 Eps: 0.01086055 
Iteration: 4 Eps: 0.002131022 
Iteration: 5 Eps: 0.0005256176 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05751897 
Iteration: 3 Eps: 0.0108144 
Iteration: 4 Eps: 0.00280306 
Iteration: 5 Eps: 0.0005959807 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05478706 
Iteration: 3 Eps: 0.005623935 
Iteration: 4 Eps: 0.002020863 
Iteration: 5 Eps: 3.009109e-05 
Iteration: 6 Eps: 3.889082e-05 
Iteration: 7 Eps: 0.0001007589 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0946891 
Iteration: 3 Eps: 0.009895312 
Iteration: 4 Eps: 0.00207022 
Iteration: 5 Eps: 0.0009258227 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1117004 
Iteration: 3 Eps: 0.006339281 
Iteration: 4 Eps: 0.001833727 
Iteration: 5 Eps: 0.0008598107 
Iteration: 6 Eps: 0.0004202637 
3 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06528531 
Iteration: 3 Eps: 0.01062142 
Iteration: 4 Eps: 0.006525006 
Iteration: 5 Eps: 0.005443351 
Iteration: 6 Eps: 0.002927927 
Iteration: 7 Eps: 0.0007086814 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1255763 
Iteration: 3 Eps: 0.02353802 
Iteration: 4 Eps: 0.001652054 
Iteration: 5 Eps: 0.00149603 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1117355 
Iteration: 3 Eps: 0.004479295 
Iteration: 4 Eps: 0.001085332 
Iteration: 5 Eps: 0.0009254771 
Iteration: 6 Eps: 0.0004999234 
Iteration: 7 Eps: 0.0004987071 
Iteration: 8 Eps: 0.0004806424 
Iteration: 9 Eps: 0.0005119026 
Iteration: 10 Eps: 0.0005383218 
Iteration: 11 Eps: 0.0005533315 
Iteration: 12 Eps: 0.0005701769 
Iteration: 13 Eps: 0.0005820505 
Iteration: 14 Eps: 0.0005924246 
Iteration: 15 Eps: 0.0005997938 
Iteration: 16 Eps: 0.0006058768 
Iteration: 17 Eps: 0.0006102221 
Iteration: 18 Eps: 0.0006138091 
Iteration: 19 Eps: 0.0006165311 
Iteration: 20 Eps: 0.0006184696 
Iteration: 21 Eps: 0.0006215754 
Iteration: 22 Eps: 0.0006213191 
Iteration: 23 Eps: 0.0006208719 
Iteration: 24 Eps: 0.0006228953 
Iteration: 25 Eps: 0.0006233433 
Iteration: 26 Eps: 0.0006238811 
Iteration: 27 Eps: 0.0006242348 
Iteration: 28 Eps: 0.0006245031 
Iteration: 29 Eps: 0.0006247215 
Iteration: 30 Eps: 0.0006248766 
Iteration: 31 Eps: 0.000625009 
Iteration: 32 Eps: 0.000625105 
Iteration: 33 Eps: 0.0006251834 
Iteration: 34 Eps: 0.0006252397 
Iteration: 35 Eps: 0.0006252904 
Iteration: 36 Eps: 0.0006253221 
Iteration: 37 Eps: 0.0006253481 
Iteration: 38 Eps: 0.0006253731 
Iteration: 39 Eps: 0.0006253896 
Iteration: 40 Eps: 0.0006254012 
Iteration: 41 Eps: 0.000625414 
Iteration: 42 Eps: 0.0006254219 
Iteration: 43 Eps: 0.0006254262 
Iteration: 44 Eps: 0.0006254354 
Iteration: 45 Eps: 0.0006254402 
Iteration: 46 Eps: 0.0006254399 
Iteration: 47 Eps: 0.0006254447 
Iteration: 48 Eps: 0.0006254428 
Iteration: 49 Eps: 0.000625445 
Iteration: 50 Eps: 0.0006254484 
Iteration: 51 Eps: 0.0006254452 
Iteration: 52 Eps: 0.0006254492 
Iteration: 53 Eps: 0.0006254475 
Iteration: 54 Eps: 0.0006254459 
Iteration: 55 Eps: 0.0006254489 
Iteration: 56 Eps: 0.0003835749 
Iteration: 57 Eps: 0.0003328136 
Iteration: 58 Eps: 0.0001362649 
Iteration: 59 Eps: 0.0001211849 
Iteration: 60 Eps: 7.918158e-05 
Iteration: 61 Eps: 4.934811e-06 
Iteration: 62 Eps: 2.172921e-06 
Iteration: 63 Eps: 1.449616e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1205942 
Iteration: 3 Eps: 0.008832496 
Iteration: 4 Eps: 0.002497656 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.076378 
Iteration: 3 Eps: 0.01164753 
Iteration: 4 Eps: 0.001216195 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07194839 
Iteration: 3 Eps: 0.0107742 
Iteration: 4 Eps: 0.002011494 
Iteration: 5 Eps: 0.00047994 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05771642 
Iteration: 3 Eps: 0.01077846 
Iteration: 4 Eps: 0.002674048 
Iteration: 5 Eps: 0.0005451188 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05522928 
Iteration: 3 Eps: 0.005575795 
Iteration: 4 Eps: 0.001911527 
Iteration: 5 Eps: 1.828721e-05 
Iteration: 6 Eps: 1.886333e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0950611 
Iteration: 3 Eps: 0.009836788 
Iteration: 4 Eps: 0.003124306 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1122198 
Iteration: 3 Eps: 0.006249672 
Iteration: 4 Eps: 0.001832289 
Iteration: 5 Eps: 0.001244586 
4 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06572209 
Iteration: 3 Eps: 0.0104276 
Iteration: 4 Eps: 0.0062395 
Iteration: 5 Eps: 0.005043475 
Iteration: 6 Eps: 0.00270384 
Iteration: 7 Eps: 0.0006441884 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1260471 
Iteration: 3 Eps: 0.02338493 
Iteration: 4 Eps: 0.001574371 
Iteration: 5 Eps: 0.001351874 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1122464 
Iteration: 3 Eps: 0.004356152 
Iteration: 4 Eps: 0.001062161 
Iteration: 5 Eps: 0.0009067068 
Iteration: 6 Eps: 0.0004874458 
Iteration: 7 Eps: 0.0004884397 
Iteration: 8 Eps: 0.0004744843 
Iteration: 9 Eps: 0.000505723 
Iteration: 10 Eps: 0.0005343903 
Iteration: 11 Eps: 0.0005496117 
Iteration: 12 Eps: 0.0005672035 
Iteration: 13 Eps: 0.0005796402 
Iteration: 14 Eps: 0.0005906588 
Iteration: 15 Eps: 0.0005983574 
Iteration: 16 Eps: 0.0006047797 
Iteration: 17 Eps: 0.0006093173 
Iteration: 18 Eps: 0.0006131343 
Iteration: 19 Eps: 0.0006160419 
Iteration: 20 Eps: 0.0006180621 
Iteration: 21 Eps: 0.0006197093 
Iteration: 22 Eps: 0.0006209636 
Iteration: 23 Eps: 0.0006218758 
Iteration: 24 Eps: 0.0006226921 
Iteration: 25 Eps: 0.0006232684 
Iteration: 26 Eps: 0.0006237805 
Iteration: 27 Eps: 0.0006241755 
Iteration: 28 Eps: 0.0006244501 
Iteration: 29 Eps: 0.0006246775 
Iteration: 30 Eps: 0.0006248478 
Iteration: 31 Eps: 0.0006249813 
Iteration: 32 Eps: 0.0006250848 
Iteration: 33 Eps: 0.0006251665 
Iteration: 34 Eps: 0.0006252245 
Iteration: 35 Eps: 0.0006252793 
Iteration: 36 Eps: 0.0006253143 
Iteration: 37 Eps: 0.0006253452 
Iteration: 38 Eps: 0.0006253664 
Iteration: 39 Eps: 0.0006253844 
Iteration: 40 Eps: 0.0006254008 
Iteration: 41 Eps: 0.0006254115 
Iteration: 42 Eps: 0.0006254184 
Iteration: 43 Eps: 0.000625429 
Iteration: 44 Eps: 0.0006254352 
Iteration: 45 Eps: 0.0006254383 
Iteration: 46 Eps: 0.0006254432 
Iteration: 47 Eps: 0.0006254392 
Iteration: 48 Eps: 0.0006254431 
Iteration: 49 Eps: 0.000625447 
Iteration: 50 Eps: 0.0006254466 
Iteration: 51 Eps: 0.0006254485 
Iteration: 52 Eps: 0.0006254504 
Iteration: 53 Eps: 0.0006254452 
Iteration: 54 Eps: 0.0006254491 
Iteration: 55 Eps: 0.0006254469 
Iteration: 56 Eps: 0.0004034271 
Iteration: 57 Eps: 0.0003389889 
Iteration: 58 Eps: 0.0001457576 
Iteration: 59 Eps: 0.0001256932 
Iteration: 60 Eps: 9.914267e-05 
Iteration: 61 Eps: 7.105435e-06 
Iteration: 62 Eps: 4.3289e-06 
Iteration: 63 Eps: 2.538614e-06 
Iteration: 64 Eps: 1.26424e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1214179 
Iteration: 3 Eps: 0.008553717 
Iteration: 4 Eps: 0.002297868 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07708257 
Iteration: 3 Eps: 0.01146638 
Iteration: 4 Eps: 0.001104908 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07224957 
Iteration: 3 Eps: 0.01063645 
Iteration: 4 Eps: 0.001886945 
Iteration: 5 Eps: 0.0004324476 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05791594 
Iteration: 3 Eps: 0.01074216 
Iteration: 4 Eps: 0.002556493 
Iteration: 5 Eps: 0.0004850658 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05572783 
Iteration: 3 Eps: 0.005492272 
Iteration: 4 Eps: 0.001831118 
Iteration: 5 Eps: 7.170853e-06 
Iteration: 6 Eps: 7.40371e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09552473 
Iteration: 3 Eps: 0.009738593 
Iteration: 4 Eps: 0.002999822 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1126272 
Iteration: 3 Eps: 0.006092458 
Iteration: 4 Eps: 0.001856581 
Iteration: 5 Eps: 0.001152616 
5 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06616189 
Iteration: 3 Eps: 0.01023613 
Iteration: 4 Eps: 0.00597571 
Iteration: 5 Eps: 0.002572452 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1265057 
Iteration: 3 Eps: 0.023221 
Iteration: 4 Eps: 0.002770856 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1127202 
Iteration: 3 Eps: 0.004239576 
Iteration: 4 Eps: 0.001039483 
Iteration: 5 Eps: 0.0008874672 
Iteration: 6 Eps: 0.0004753466 
Iteration: 7 Eps: 0.0004779793 
Iteration: 8 Eps: 0.0004681637 
Iteration: 9 Eps: 0.0004997101 
Iteration: 10 Eps: 0.0005299563 
Iteration: 11 Eps: 0.0005457309 
Iteration: 12 Eps: 0.0005641202 
Iteration: 13 Eps: 0.0005754802 
Iteration: 14 Eps: 0.0005876514 
Iteration: 15 Eps: 0.0005965775 
Iteration: 16 Eps: 0.0006045653 
Iteration: 17 Eps: 0.0006081877 
Iteration: 18 Eps: 0.0006127247 
Iteration: 19 Eps: 0.0006153164 
Iteration: 20 Eps: 0.0006176966 
Iteration: 21 Eps: 0.0006193164 
Iteration: 22 Eps: 0.0006207102 
Iteration: 23 Eps: 0.0006216344 
Iteration: 24 Eps: 0.0006224396 
Iteration: 25 Eps: 0.0006231996 
Iteration: 26 Eps: 0.0006236855 
Iteration: 27 Eps: 0.0006240941 
Iteration: 28 Eps: 0.0006243954 
Iteration: 29 Eps: 0.0006246303 
Iteration: 30 Eps: 0.0006248157 
Iteration: 31 Eps: 0.0006249454 
Iteration: 32 Eps: 0.0006250647 
Iteration: 33 Eps: 0.000625146 
Iteration: 34 Eps: 0.0006252175 
Iteration: 35 Eps: 0.0006252673 
Iteration: 36 Eps: 0.000625307 
Iteration: 37 Eps: 0.0006253404 
Iteration: 38 Eps: 0.0006253612 
Iteration: 39 Eps: 0.0006253804 
Iteration: 40 Eps: 0.0006253961 
Iteration: 41 Eps: 0.0006254109 
Iteration: 42 Eps: 0.0006254149 
Iteration: 43 Eps: 0.000625425 
Iteration: 44 Eps: 0.0006254308 
Iteration: 45 Eps: 0.0006254375 
Iteration: 46 Eps: 0.0006254403 
Iteration: 47 Eps: 0.0006254412 
Iteration: 48 Eps: 0.0006254463 
Iteration: 49 Eps: 0.0006254429 
Iteration: 50 Eps: 0.0006254449 
Iteration: 51 Eps: 0.0006254481 
Iteration: 52 Eps: 0.0006254484 
Iteration: 53 Eps: 0.0006254481 
Iteration: 54 Eps: 0.0006254471 
Iteration: 55 Eps: 0.0006254479 
Iteration: 56 Eps: 0.0004263606 
Iteration: 57 Eps: 0.0003473275 
Iteration: 58 Eps: 0.0001579564 
Iteration: 59 Eps: 0.000130407 
Iteration: 60 Eps: 0.0001180789 
Iteration: 61 Eps: 1.062867e-05 
Iteration: 62 Eps: 7.637756e-06 
Iteration: 63 Eps: 4.092043e-06 
Iteration: 64 Eps: 1.853489e-06 
Iteration: 65 Eps: 1.199001e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1219548 
Iteration: 3 Eps: 0.008252035 
Iteration: 4 Eps: 0.002124416 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07758675 
Iteration: 3 Eps: 0.01141217 
Iteration: 4 Eps: 0.001043116 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07259378 
Iteration: 3 Eps: 0.01054277 
Iteration: 4 Eps: 0.00176842 
Iteration: 5 Eps: 0.0003916555 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05814746 
Iteration: 3 Eps: 0.0106867 
Iteration: 4 Eps: 0.002851074 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05617549 
Iteration: 3 Eps: 0.005459763 
Iteration: 4 Eps: 0.001742049 
Iteration: 5 Eps: 2.148137e-06 
Iteration: 6 Eps: 2.216834e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09599309 
Iteration: 3 Eps: 0.009640729 
Iteration: 4 Eps: 0.002880426 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1131833 
Iteration: 3 Eps: 0.006018416 
Iteration: 4 Eps: 0.001869091 
Iteration: 5 Eps: 0.001112899 
6 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06660014 
Iteration: 3 Eps: 0.01004556 
Iteration: 4 Eps: 0.005716468 
Iteration: 5 Eps: 0.002417893 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1269684 
Iteration: 3 Eps: 0.02324414 
Iteration: 4 Eps: 0.002511506 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1134698 
Iteration: 3 Eps: 0.004104839 
Iteration: 4 Eps: 0.0009913536 
Iteration: 5 Eps: 0.0008699767 
Iteration: 6 Eps: 0.0004642098 
Iteration: 7 Eps: 0.0004668186 
Iteration: 8 Eps: 0.0004618069 
Iteration: 9 Eps: 0.0004933709 
Iteration: 10 Eps: 0.0005228771 
Iteration: 11 Eps: 0.0005452138 
Iteration: 12 Eps: 0.0005611081 
Iteration: 13 Eps: 0.0005727122 
Iteration: 14 Eps: 0.000586597 
Iteration: 15 Eps: 0.0005945715 
Iteration: 16 Eps: 0.0006038347 
Iteration: 17 Eps: 0.000607 
Iteration: 18 Eps: 0.0006121524 
Iteration: 19 Eps: 0.0006147157 
Iteration: 20 Eps: 0.000617296 
Iteration: 21 Eps: 0.0006189564 
Iteration: 22 Eps: 0.0006204485 
Iteration: 23 Eps: 0.0006214585 
Iteration: 24 Eps: 0.0006222011 
Iteration: 25 Eps: 0.0006230669 
Iteration: 26 Eps: 0.0006235885 
Iteration: 27 Eps: 0.0006240098 
Iteration: 28 Eps: 0.0006243388 
Iteration: 29 Eps: 0.000624583 
Iteration: 30 Eps: 0.0006247767 
Iteration: 31 Eps: 0.0006249213 
Iteration: 32 Eps: 0.0006250399 
Iteration: 33 Eps: 0.0006251342 
Iteration: 34 Eps: 0.0006252007 
Iteration: 35 Eps: 0.00062526 
Iteration: 36 Eps: 0.0006252963 
Iteration: 37 Eps: 0.0006253312 
Iteration: 38 Eps: 0.000625356 
Iteration: 39 Eps: 0.0006253832 
Iteration: 40 Eps: 0.0006253907 
Iteration: 41 Eps: 0.0006254094 
Iteration: 42 Eps: 0.0006254155 
Iteration: 43 Eps: 0.0006254234 
Iteration: 44 Eps: 0.0006254309 
Iteration: 45 Eps: 0.0006254342 
Iteration: 46 Eps: 0.0006254382 
Iteration: 47 Eps: 0.0006254418 
Iteration: 48 Eps: 0.0006254434 
Iteration: 49 Eps: 0.0006254461 
Iteration: 50 Eps: 0.0006254445 
Iteration: 51 Eps: 0.0006254454 
Iteration: 52 Eps: 0.0006254497 
Iteration: 53 Eps: 0.0006254472 
Iteration: 54 Eps: 0.0006254492 
Iteration: 55 Eps: 0.0006254475 
Iteration: 56 Eps: 0.0004519038 
Iteration: 57 Eps: 0.0003577319 
Iteration: 58 Eps: 0.0001734384 
Iteration: 59 Eps: 0.0001327751 
Iteration: 60 Eps: 0.0001303047 
Iteration: 61 Eps: 1.303309e-05 
Iteration: 62 Eps: 9.615385e-06 
Iteration: 63 Eps: 5.047652e-06 
Iteration: 64 Eps: 2.215269e-06 
Iteration: 65 Eps: 1.428936e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1225775 
Iteration: 3 Eps: 0.007955762 
Iteration: 4 Eps: 0.001968114 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0780931 
Iteration: 3 Eps: 0.01132739 
Iteration: 4 Eps: 0.0009840846 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07294125 
Iteration: 3 Eps: 0.01037135 
Iteration: 4 Eps: 0.001292521 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05833937 
Iteration: 3 Eps: 0.01064329 
Iteration: 4 Eps: 0.002734407 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05662685 
Iteration: 3 Eps: 0.005428229 
Iteration: 4 Eps: 0.001690573 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09646587 
Iteration: 3 Eps: 0.00954611 
Iteration: 4 Eps: 0.002760661 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1136482 
Iteration: 3 Eps: 0.005935513 
Iteration: 4 Eps: 0.001877045 
Iteration: 5 Eps: 0.0009941252 
7 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06707185 
Iteration: 3 Eps: 0.009805853 
Iteration: 4 Eps: 0.005481676 
Iteration: 5 Eps: 0.002277222 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1274351 
Iteration: 3 Eps: 0.02307557 
Iteration: 4 Eps: 0.002378316 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1138994 
Iteration: 3 Eps: 0.003998897 
Iteration: 4 Eps: 0.0009722471 
Iteration: 5 Eps: 0.0008480549 
Iteration: 6 Eps: 0.0004549103 
Iteration: 7 Eps: 0.0004541889 
Iteration: 8 Eps: 0.0004554626 
Iteration: 9 Eps: 0.0004864573 
Iteration: 10 Eps: 0.0005185157 
Iteration: 11 Eps: 0.0005405724 
Iteration: 12 Eps: 0.0005577013 
Iteration: 13 Eps: 0.0005699033 
Iteration: 14 Eps: 0.0005844649 
Iteration: 15 Eps: 0.0005929226 
Iteration: 16 Eps: 0.000602564 
Iteration: 17 Eps: 0.0006059695 
Iteration: 18 Eps: 0.0006113786 
Iteration: 19 Eps: 0.0006141432 
Iteration: 20 Eps: 0.0006168314 
Iteration: 21 Eps: 0.0006185928 
Iteration: 22 Eps: 0.0006201549 
Iteration: 23 Eps: 0.0006212811 
Iteration: 24 Eps: 0.0006219913 
Iteration: 25 Eps: 0.0006228719 
Iteration: 26 Eps: 0.0006234792 
Iteration: 27 Eps: 0.0006239209 
Iteration: 28 Eps: 0.0006242745 
Iteration: 29 Eps: 0.0006245264 
Iteration: 30 Eps: 0.0006247384 
Iteration: 31 Eps: 0.0006248935 
Iteration: 32 Eps: 0.0006250144 
Iteration: 33 Eps: 0.0006251108 
Iteration: 34 Eps: 0.00062519 
Iteration: 35 Eps: 0.000625246 
Iteration: 36 Eps: 0.0006252896 
Iteration: 37 Eps: 0.0006253241 
Iteration: 38 Eps: 0.0006253506 
Iteration: 39 Eps: 0.0006253752 
Iteration: 40 Eps: 0.000625392 
Iteration: 41 Eps: 0.0006253975 
Iteration: 42 Eps: 0.0006254184 
Iteration: 43 Eps: 0.0006254192 
Iteration: 44 Eps: 0.0006254292 
Iteration: 45 Eps: 0.0006254384 
Iteration: 46 Eps: 0.0006254334 
Iteration: 47 Eps: 0.0006254414 
Iteration: 48 Eps: 0.0006254409 
Iteration: 49 Eps: 0.000625446 
Iteration: 50 Eps: 0.0006254439 
Iteration: 51 Eps: 0.0006254481 
Iteration: 52 Eps: 0.0006254445 
Iteration: 53 Eps: 0.0006254486 
Iteration: 54 Eps: 0.0006254459 
Iteration: 55 Eps: 0.0006254504 
Iteration: 56 Eps: 0.0004821187 
Iteration: 57 Eps: 0.0003664393 
Iteration: 58 Eps: 0.0001948384 
Iteration: 59 Eps: 0.000133371 
Iteration: 60 Eps: 0.0001426609 
Iteration: 61 Eps: 1.592497e-05 
Iteration: 62 Eps: 1.181145e-05 
Iteration: 63 Eps: 6.139666e-06 
Iteration: 64 Eps: 2.638281e-06 
Iteration: 65 Eps: 1.689423e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1232107 
Iteration: 3 Eps: 0.007662786 
Iteration: 4 Eps: 0.001818964 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07854571 
Iteration: 3 Eps: 0.01125497 
Iteration: 4 Eps: 0.0009214897 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07329199 
Iteration: 3 Eps: 0.01024906 
Iteration: 4 Eps: 0.001219937 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05855352 
Iteration: 3 Eps: 0.01060843 
Iteration: 4 Eps: 0.002620524 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05708192 
Iteration: 3 Eps: 0.005398073 
Iteration: 4 Eps: 0.0016038 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09694274 
Iteration: 3 Eps: 0.009453716 
Iteration: 4 Eps: 0.002642214 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1141148 
Iteration: 3 Eps: 0.005829568 
Iteration: 4 Eps: 0.001901431 
Iteration: 5 Eps: 0.0008975719 
8 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06752054 
Iteration: 3 Eps: 0.009622953 
Iteration: 4 Eps: 0.005229519 
Iteration: 5 Eps: 0.002130835 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1279083 
Iteration: 3 Eps: 0.02290883 
Iteration: 4 Eps: 0.00224997 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1143325 
Iteration: 3 Eps: 0.003895193 
Iteration: 4 Eps: 0.0009554414 
Iteration: 5 Eps: 0.0008270442 
Iteration: 6 Eps: 0.0004438989 
Iteration: 7 Eps: 0.0004427705 
Iteration: 8 Eps: 0.0004489542 
Iteration: 9 Eps: 0.000479418 
Iteration: 10 Eps: 0.0005160993 
Iteration: 11 Eps: 0.0005329571 
Iteration: 12 Eps: 0.0005540762 
Iteration: 13 Eps: 0.00056693 
Iteration: 14 Eps: 0.0005816531 
Iteration: 15 Eps: 0.0005914384 
Iteration: 16 Eps: 0.0006009337 
Iteration: 17 Eps: 0.0006051359 
Iteration: 18 Eps: 0.0006104298 
Iteration: 19 Eps: 0.0006135229 
Iteration: 20 Eps: 0.0006163125 
Iteration: 21 Eps: 0.0006182092 
Iteration: 22 Eps: 0.0006198488 
Iteration: 23 Eps: 0.0006210531 
Iteration: 24 Eps: 0.0006217683 
Iteration: 25 Eps: 0.0006227047 
Iteration: 26 Eps: 0.0006233628 
Iteration: 27 Eps: 0.0006238307 
Iteration: 28 Eps: 0.0006242048 
Iteration: 29 Eps: 0.0006244767 
Iteration: 30 Eps: 0.0006246951 
Iteration: 31 Eps: 0.0006248608 
Iteration: 32 Eps: 0.0006249917 
Iteration: 33 Eps: 0.000625095 
Iteration: 34 Eps: 0.0006251719 
Iteration: 35 Eps: 0.0006252327 
Iteration: 36 Eps: 0.0006252811 
Iteration: 37 Eps: 0.0006253178 
Iteration: 38 Eps: 0.0006253411 
Iteration: 39 Eps: 0.0006253723 
Iteration: 40 Eps: 0.0006253831 
Iteration: 41 Eps: 0.0006254041 
Iteration: 42 Eps: 0.0006254067 
Iteration: 43 Eps: 0.0006254188 
Iteration: 44 Eps: 0.0006254276 
Iteration: 45 Eps: 0.0006254324 
Iteration: 46 Eps: 0.0006254369 
Iteration: 47 Eps: 0.0006254412 
Iteration: 48 Eps: 0.0006254439 
Iteration: 49 Eps: 0.0006254401 
Iteration: 50 Eps: 0.0006254465 
Iteration: 51 Eps: 0.0006254482 
Iteration: 52 Eps: 0.000625446 
Iteration: 53 Eps: 0.0006254477 
Iteration: 54 Eps: 0.0006254496 
Iteration: 55 Eps: 0.0006254469 
Iteration: 56 Eps: 0.0005164971 
Iteration: 57 Eps: 0.0003611859 
Iteration: 58 Eps: 0.0002235382 
Iteration: 59 Eps: 0.0001336839 
Iteration: 60 Eps: 0.0001429976 
Iteration: 61 Eps: 1.832705e-05 
Iteration: 62 Eps: 1.150024e-05 
Iteration: 63 Eps: 5.902452e-06 
Iteration: 64 Eps: 2.518856e-06 
Iteration: 65 Eps: 1.61841e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1238494 
Iteration: 3 Eps: 0.00737604 
Iteration: 4 Eps: 0.001677589 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07900272 
Iteration: 3 Eps: 0.0111843 
Iteration: 4 Eps: 0.0008657218 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07364685 
Iteration: 3 Eps: 0.01021337 
Iteration: 4 Eps: 0.001152805 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05876937 
Iteration: 3 Eps: 0.01057367 
Iteration: 4 Eps: 0.00251088 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05754084 
Iteration: 3 Eps: 0.005369396 
Iteration: 4 Eps: 0.001519834 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09748666 
Iteration: 3 Eps: 0.009393089 
Iteration: 4 Eps: 0.002523723 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1145859 
Iteration: 3 Eps: 0.00575525 
Iteration: 4 Eps: 0.001916962 
Iteration: 5 Eps: 0.000804787 
9 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06797314 
Iteration: 3 Eps: 0.009439908 
Iteration: 4 Eps: 0.004862581 
Iteration: 5 Eps: 0.002030349 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1283888 
Iteration: 3 Eps: 0.02276141 
Iteration: 4 Eps: 0.00212649 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1147717 
Iteration: 3 Eps: 0.003710883 
Iteration: 4 Eps: 0.0009262003 
Iteration: 5 Eps: 0.0008066211 
Iteration: 6 Eps: 0.0004386155 
Iteration: 7 Eps: 0.0004301991 
Iteration: 8 Eps: 0.0004454784 
Iteration: 9 Eps: 0.0004728773 
Iteration: 10 Eps: 0.0005124421 
Iteration: 11 Eps: 0.0005288461 
Iteration: 12 Eps: 0.0005509289 
Iteration: 13 Eps: 0.0005658051 
Iteration: 14 Eps: 0.0005806009 
Iteration: 15 Eps: 0.0005901407 
Iteration: 16 Eps: 0.0005986216 
Iteration: 17 Eps: 0.0006045461 
Iteration: 18 Eps: 0.0006093621 
Iteration: 19 Eps: 0.0006130554 
Iteration: 20 Eps: 0.0006157899 
Iteration: 21 Eps: 0.0006178778 
Iteration: 22 Eps: 0.0006195523 
Iteration: 23 Eps: 0.0006217391 
Iteration: 24 Eps: 0.0006209223 
Iteration: 25 Eps: 0.0006226501 
Iteration: 26 Eps: 0.0006231115 
Iteration: 27 Eps: 0.0006237355 
Iteration: 28 Eps: 0.0006241407 
Iteration: 29 Eps: 0.00062442 
Iteration: 30 Eps: 0.0006246578 
Iteration: 31 Eps: 0.0006248289 
Iteration: 32 Eps: 0.0006249652 
Iteration: 33 Eps: 0.0006250713 
Iteration: 34 Eps: 0.0006251611 
Iteration: 35 Eps: 0.0006252234 
Iteration: 36 Eps: 0.0006252748 
Iteration: 37 Eps: 0.0006253093 
Iteration: 38 Eps: 0.0006253447 
Iteration: 39 Eps: 0.0006253617 
Iteration: 40 Eps: 0.0006253852 
Iteration: 41 Eps: 0.0006254017 
Iteration: 42 Eps: 0.0006254016 
Iteration: 43 Eps: 0.0006254252 
Iteration: 44 Eps: 0.0006254226 
Iteration: 45 Eps: 0.0006254331 
Iteration: 46 Eps: 0.0006254357 
Iteration: 47 Eps: 0.0006254397 
Iteration: 48 Eps: 0.0006254414 
Iteration: 49 Eps: 0.0006254449 
Iteration: 50 Eps: 0.0006254464 
Iteration: 51 Eps: 0.0006254442 
Iteration: 52 Eps: 0.0006254474 
Iteration: 53 Eps: 0.0006254448 
Iteration: 54 Eps: 0.0006254481 
Iteration: 55 Eps: 0.0006254468 
Iteration: 56 Eps: 0.0005498174 
Iteration: 57 Eps: 0.0003505076 
Iteration: 58 Eps: 0.0002532586 
Iteration: 59 Eps: 0.0001326941 
Iteration: 60 Eps: 0.0001387639 
Iteration: 61 Eps: 2.256738e-05 
Iteration: 62 Eps: 1.068878e-05 
Iteration: 63 Eps: 5.392278e-06 
Iteration: 64 Eps: 2.286345e-06 
Iteration: 65 Eps: 1.467303e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1244934 
Iteration: 3 Eps: 0.007096645 
Iteration: 4 Eps: 0.001544233 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07946354 
Iteration: 3 Eps: 0.01137122 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07400422 
Iteration: 3 Eps: 0.01017949 
Iteration: 4 Eps: 0.001087973 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05898745 
Iteration: 3 Eps: 0.01053353 
Iteration: 4 Eps: 0.002404267 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05792698 
Iteration: 3 Eps: 0.00531625 
Iteration: 4 Eps: 0.001443124 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09765526 
Iteration: 3 Eps: 0.00937334 
Iteration: 4 Eps: 0.002426255 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1150627 
Iteration: 3 Eps: 0.005675022 
Iteration: 4 Eps: 0.001909874 
Iteration: 5 Eps: 0.0007246706 
10 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0684297 
Iteration: 3 Eps: 0.009261527 
Iteration: 4 Eps: 0.004624541 
Iteration: 5 Eps: 0.001890956 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1288735 
Iteration: 3 Eps: 0.02263054 
Iteration: 4 Eps: 0.00200705 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1152174 
Iteration: 3 Eps: 0.003610722 
Iteration: 4 Eps: 0.000909841 
Iteration: 5 Eps: 0.0007851849 
Iteration: 6 Eps: 0.0004290584 
Iteration: 7 Eps: 0.0004187516 
Iteration: 8 Eps: 0.0004385744 
Iteration: 9 Eps: 0.0004653208 
Iteration: 10 Eps: 0.0005073276 
Iteration: 11 Eps: 0.0005239551 
Iteration: 12 Eps: 0.0005791488 
Iteration: 13 Eps: 0.0005463594 
Iteration: 14 Eps: 0.0005735322 
Iteration: 15 Eps: 0.0005866681 
Iteration: 16 Eps: 0.0005973531 
Iteration: 17 Eps: 0.0006036766 
Iteration: 18 Eps: 0.0006085967 
Iteration: 19 Eps: 0.0006122294 
Iteration: 20 Eps: 0.0006153071 
Iteration: 21 Eps: 0.0006174373 
Iteration: 22 Eps: 0.0006192535 
Iteration: 23 Eps: 0.0006205776 
Iteration: 24 Eps: 0.0006212976 
Iteration: 25 Eps: 0.000622387 
Iteration: 26 Eps: 0.0006231216 
Iteration: 27 Eps: 0.0006236472 
Iteration: 28 Eps: 0.0006240625 
Iteration: 29 Eps: 0.0006243678 
Iteration: 30 Eps: 0.0006246085 
Iteration: 31 Eps: 0.0006247934 
Iteration: 32 Eps: 0.0006249392 
Iteration: 33 Eps: 0.000625051 
Iteration: 34 Eps: 0.0006251398 
Iteration: 35 Eps: 0.0006252102 
Iteration: 36 Eps: 0.0006252575 
Iteration: 37 Eps: 0.0006253062 
Iteration: 38 Eps: 0.000625334 
Iteration: 39 Eps: 0.0006253628 
Iteration: 40 Eps: 0.0006253801 
Iteration: 41 Eps: 0.0006253944 
Iteration: 42 Eps: 0.0006254085 
Iteration: 43 Eps: 0.0006254147 
Iteration: 44 Eps: 0.0006254239 
Iteration: 45 Eps: 0.0006254357 
Iteration: 46 Eps: 0.0006254364 
Iteration: 47 Eps: 0.0006254427 
Iteration: 48 Eps: 0.0006254432 
Iteration: 49 Eps: 0.0006254417 
Iteration: 50 Eps: 0.0006254465 
Iteration: 51 Eps: 0.0006254441 
Iteration: 52 Eps: 0.0006254478 
Iteration: 53 Eps: 0.0006254482 
Iteration: 54 Eps: 0.0006254476 
Iteration: 55 Eps: 0.000625446 
Iteration: 56 Eps: 0.0005924988 
Iteration: 57 Eps: 0.0003401315 
Iteration: 58 Eps: 0.0002933846 
Iteration: 59 Eps: 0.0001299932 
Iteration: 60 Eps: 0.0001312435 
Iteration: 61 Eps: 3.196143e-05 
Iteration: 62 Eps: 8.813669e-06 
Iteration: 63 Eps: 4.439995e-06 
Iteration: 64 Eps: 1.899351e-06 
Iteration: 65 Eps: 1.247106e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1251442 
Iteration: 3 Eps: 0.006275736 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07992854 
Iteration: 3 Eps: 0.01122518 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07431937 
Iteration: 3 Eps: 0.01013726 
Iteration: 4 Eps: 0.001024781 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05920822 
Iteration: 3 Eps: 0.01046927 
Iteration: 4 Eps: 0.002300957 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05839673 
Iteration: 3 Eps: 0.005143207 
Iteration: 4 Eps: 0.001328948 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0982174 
Iteration: 3 Eps: 0.009315008 
Iteration: 4 Eps: 0.002342829 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1154512 
Iteration: 3 Eps: 0.005501907 
Iteration: 4 Eps: 0.001964574 
Iteration: 5 Eps: 0.000675326 
11 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06889027 
Iteration: 3 Eps: 0.009084996 
Iteration: 4 Eps: 0.004393084 
Iteration: 5 Eps: 0.001757662 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1293623 
Iteration: 3 Eps: 0.02249978 
Iteration: 4 Eps: 0.001891893 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.115663 
Iteration: 3 Eps: 0.003514216 
Iteration: 4 Eps: 0.0008400428 
Iteration: 5 Eps: 0.0007702734 
Iteration: 6 Eps: 0.0004588299 
Iteration: 7 Eps: 0.0004628915 
Iteration: 8 Eps: 0.0004286286 
Iteration: 9 Eps: 0.0004533703 
Iteration: 10 Eps: 0.0004948458 
Iteration: 11 Eps: 0.0005185098 
Iteration: 12 Eps: 0.000572652 
Iteration: 13 Eps: 0.0005437524 
Iteration: 14 Eps: 0.0005709436 
Iteration: 15 Eps: 0.0005852531 
Iteration: 16 Eps: 0.0005960318 
Iteration: 17 Eps: 0.0006029136 
Iteration: 18 Eps: 0.0006078716 
Iteration: 19 Eps: 0.0006116876 
Iteration: 20 Eps: 0.0006148945 
Iteration: 21 Eps: 0.0006171279 
Iteration: 22 Eps: 0.0006190052 
Iteration: 23 Eps: 0.0006203863 
Iteration: 24 Eps: 0.0006211047 
Iteration: 25 Eps: 0.0006222598 
Iteration: 26 Eps: 0.0006230251 
Iteration: 27 Eps: 0.0006235747 
Iteration: 28 Eps: 0.0006240107 
Iteration: 29 Eps: 0.0006243224 
Iteration: 30 Eps: 0.0006245794 
Iteration: 31 Eps: 0.0006247657 
Iteration: 32 Eps: 0.0006249198 
Iteration: 33 Eps: 0.0006250356 
Iteration: 34 Eps: 0.0006251279 
Iteration: 35 Eps: 0.000625201 
Iteration: 36 Eps: 0.0006252572 
Iteration: 37 Eps: 0.0006252979 
Iteration: 38 Eps: 0.0006253286 
Iteration: 39 Eps: 0.0006253573 
Iteration: 40 Eps: 0.0006253757 
Iteration: 41 Eps: 0.0006253907 
Iteration: 42 Eps: 0.0006254026 
Iteration: 43 Eps: 0.0006254147 
Iteration: 44 Eps: 0.0006254218 
Iteration: 45 Eps: 0.0006254315 
Iteration: 46 Eps: 0.0006254324 
Iteration: 47 Eps: 0.0006254413 
Iteration: 48 Eps: 0.0006254438 
Iteration: 49 Eps: 0.0006254421 
Iteration: 50 Eps: 0.0006254472 
Iteration: 51 Eps: 0.0006254445 
Iteration: 52 Eps: 0.0006254455 
Iteration: 53 Eps: 0.0006254469 
Iteration: 54 Eps: 0.0006254473 
Iteration: 55 Eps: 0.0006254452 
Iteration: 56 Eps: 0.0006097329 
Iteration: 57 Eps: 0.0003368478 
Iteration: 58 Eps: 0.0003100947 
Iteration: 59 Eps: 0.0001293367 
Iteration: 60 Eps: 0.0001295743 
Iteration: 61 Eps: 3.549677e-05 
Iteration: 62 Eps: 8.30163e-06 
Iteration: 63 Eps: 4.033148e-06 
Iteration: 64 Eps: 1.749951e-06 
Iteration: 65 Eps: 1.178269e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1258011 
Iteration: 3 Eps: 0.00610948 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08042203 
Iteration: 3 Eps: 0.01108298 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07460876 
Iteration: 3 Eps: 0.01007405 
Iteration: 4 Eps: 0.0009630934 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05943401 
Iteration: 3 Eps: 0.01036877 
Iteration: 4 Eps: 0.002192073 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05891634 
Iteration: 3 Eps: 0.005117838 
Iteration: 4 Eps: 0.001253046 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09878439 
Iteration: 3 Eps: 0.009255478 
Iteration: 4 Eps: 0.002229347 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1159469 
Iteration: 3 Eps: 0.005431231 
Iteration: 4 Eps: 0.003422028 
12 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06935528 
Iteration: 3 Eps: 0.008911451 
Iteration: 4 Eps: 0.004167695 
Iteration: 5 Eps: 0.00164613 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1298567 
Iteration: 3 Eps: 0.02235267 
Iteration: 4 Eps: 0.001780354 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.11611 
Iteration: 3 Eps: 0.003420586 
Iteration: 4 Eps: 0.0008261544 
Iteration: 5 Eps: 0.0007487269 
Iteration: 6 Eps: 0.0004494591 
Iteration: 7 Eps: 0.0004516423 
Iteration: 8 Eps: 0.0004217113 
Iteration: 9 Eps: 0.0004454821 
Iteration: 10 Eps: 0.0004875318 
Iteration: 11 Eps: 0.0005144782 
Iteration: 12 Eps: 0.0005668789 
Iteration: 13 Eps: 0.0005414677 
Iteration: 14 Eps: 0.0005682934 
Iteration: 15 Eps: 0.0005835598 
Iteration: 16 Eps: 0.0005943635 
Iteration: 17 Eps: 0.0005984057 
Iteration: 18 Eps: 0.0006053582 
Iteration: 19 Eps: 0.0006134573 
Iteration: 20 Eps: 0.0006149847 
Iteration: 21 Eps: 0.0006171434 
Iteration: 22 Eps: 0.0006187871 
Iteration: 23 Eps: 0.0006201353 
Iteration: 24 Eps: 0.0006208971 
Iteration: 25 Eps: 0.0006220625 
Iteration: 26 Eps: 0.0006229089 
Iteration: 27 Eps: 0.0006234636 
Iteration: 28 Eps: 0.0006239344 
Iteration: 29 Eps: 0.0006242584 
Iteration: 30 Eps: 0.0006245285 
Iteration: 31 Eps: 0.0006247327 
Iteration: 32 Eps: 0.000624888 
Iteration: 33 Eps: 0.00062501 
Iteration: 34 Eps: 0.0006251119 
Iteration: 35 Eps: 0.0006251821 
Iteration: 36 Eps: 0.0006252447 
Iteration: 37 Eps: 0.0006252883 
Iteration: 38 Eps: 0.0006253248 
Iteration: 39 Eps: 0.0006253536 
Iteration: 40 Eps: 0.0006253765 
Iteration: 41 Eps: 0.0006253914 
Iteration: 42 Eps: 0.0006254023 
Iteration: 43 Eps: 0.0006254149 
Iteration: 44 Eps: 0.0006254217 
Iteration: 45 Eps: 0.0006254254 
Iteration: 46 Eps: 0.0006254372 
Iteration: 47 Eps: 0.0006254363 
Iteration: 48 Eps: 0.0006254409 
Iteration: 49 Eps: 0.0006254403 
Iteration: 50 Eps: 0.0006254455 
Iteration: 51 Eps: 0.0006254457 
Iteration: 52 Eps: 0.0006254463 
Iteration: 53 Eps: 0.0006254453 
Iteration: 54 Eps: 0.0006254518 
Iteration: 55 Eps: 0.0006254469 
Iteration: 56 Eps: 0.000625449 
Iteration: 57 Eps: 0.0003449292 
Iteration: 58 Eps: 0.000325291 
Iteration: 59 Eps: 0.0001269971 
Iteration: 60 Eps: 0.0001234879 
Iteration: 61 Eps: 4.565249e-05 
Iteration: 62 Eps: 6.437229e-06 
Iteration: 63 Eps: 2.604511e-06 
Iteration: 64 Eps: 1.258625e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1264625 
Iteration: 3 Eps: 0.005945229 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08097199 
Iteration: 3 Eps: 0.01094205 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07490198 
Iteration: 3 Eps: 0.01001565 
Iteration: 4 Eps: 0.0009027401 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05965924 
Iteration: 3 Eps: 0.01030866 
Iteration: 4 Eps: 0.002096436 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05944667 
Iteration: 3 Eps: 0.005107125 
Iteration: 4 Eps: 0.001179757 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09935628 
Iteration: 3 Eps: 0.009196535 
Iteration: 4 Eps: 0.002119758 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1164456 
Iteration: 3 Eps: 0.00536229 
Iteration: 4 Eps: 0.00329912 
13 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06982429 
Iteration: 3 Eps: 0.008740254 
Iteration: 4 Eps: 0.003947965 
Iteration: 5 Eps: 0.001521595 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1303539 
Iteration: 3 Eps: 0.0222675 
Iteration: 4 Eps: 0.001671667 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1165609 
Iteration: 3 Eps: 0.003329603 
Iteration: 4 Eps: 0.0008130187 
Iteration: 5 Eps: 0.0007266069 
Iteration: 6 Eps: 0.0004407169 
Iteration: 7 Eps: 0.0004381636 
Iteration: 8 Eps: 0.0004136139 
Iteration: 9 Eps: 0.0004376493 
Iteration: 10 Eps: 0.0004797236 
Iteration: 11 Eps: 0.0005103717 
Iteration: 12 Eps: 0.0005607968 
Iteration: 13 Eps: 0.0005390669 
Iteration: 14 Eps: 0.0005657498 
Iteration: 15 Eps: 0.0005816014 
Iteration: 16 Eps: 0.0005926573 
Iteration: 17 Eps: 0.0006000537 
Iteration: 18 Eps: 0.0006054663 
Iteration: 19 Eps: 0.0006101446 
Iteration: 20 Eps: 0.0006140557 
Iteration: 21 Eps: 0.0006162436 
Iteration: 22 Eps: 0.0006195481 
Iteration: 23 Eps: 0.0006198854 
Iteration: 24 Eps: 0.0006195839 
Iteration: 25 Eps: 0.0006219302 
Iteration: 26 Eps: 0.0006226564 
Iteration: 27 Eps: 0.000623347 
Iteration: 28 Eps: 0.0006238342 
Iteration: 29 Eps: 0.0006241857 
Iteration: 30 Eps: 0.0006244754 
Iteration: 31 Eps: 0.0006246863 
Iteration: 32 Eps: 0.0006248571 
Iteration: 33 Eps: 0.0006249862 
Iteration: 34 Eps: 0.0006250931 
Iteration: 35 Eps: 0.0006251708 
Iteration: 36 Eps: 0.0006252298 
Iteration: 37 Eps: 0.0006252827 
Iteration: 38 Eps: 0.0006253171 
Iteration: 39 Eps: 0.0006253482 
Iteration: 40 Eps: 0.0006253755 
Iteration: 41 Eps: 0.0006253829 
Iteration: 42 Eps: 0.0006254005 
Iteration: 43 Eps: 0.0006254076 
Iteration: 44 Eps: 0.000625421 
Iteration: 45 Eps: 0.0006254283 
Iteration: 46 Eps: 0.0006254339 
Iteration: 47 Eps: 0.0006254378 
Iteration: 48 Eps: 0.0006254393 
Iteration: 49 Eps: 0.0006254435 
Iteration: 50 Eps: 0.0006254412 
Iteration: 51 Eps: 0.0006254467 
Iteration: 52 Eps: 0.0006254442 
Iteration: 53 Eps: 0.0006254503 
Iteration: 54 Eps: 0.0006254488 
Iteration: 55 Eps: 0.0006254499 
Iteration: 56 Eps: 0.0006254475 
Iteration: 57 Eps: 0.0003642128 
Iteration: 58 Eps: 0.0003280884 
Iteration: 59 Eps: 0.0001295366 
Iteration: 60 Eps: 0.0001200711 
Iteration: 61 Eps: 6.100005e-05 
Iteration: 62 Eps: 4.7499e-06 
Iteration: 63 Eps: 1.565583e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1271318 
Iteration: 3 Eps: 0.005782457 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08142095 
Iteration: 3 Eps: 0.01080187 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07519656 
Iteration: 3 Eps: 0.009952718 
Iteration: 4 Eps: 0.000882744 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05988669 
Iteration: 3 Eps: 0.01022153 
Iteration: 4 Eps: 0.001976559 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05998144 
Iteration: 3 Eps: 0.005078182 
Iteration: 4 Eps: 0.001113038 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09993308 
Iteration: 3 Eps: 0.009137546 
Iteration: 4 Eps: 0.002014901 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1169477 
Iteration: 3 Eps: 0.005294781 
Iteration: 4 Eps: 0.003680211 
14 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07029718 
Iteration: 3 Eps: 0.008571606 
Iteration: 4 Eps: 0.003734423 
Iteration: 5 Eps: 0.001402633 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.134285 
Iteration: 3 Eps: 0.02215299 
Iteration: 4 Eps: 0.001504925 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1182512 
Iteration: 3 Eps: 0.003017456 
Iteration: 4 Eps: 0.0008453575 
Iteration: 5 Eps: 0.0007037011 
Iteration: 6 Eps: 0.0004318745 
Iteration: 7 Eps: 0.0004229876 
Iteration: 8 Eps: 0.0004050121 
Iteration: 9 Eps: 0.000429576 
Iteration: 10 Eps: 0.0004716267 
Iteration: 11 Eps: 0.0005061456 
Iteration: 12 Eps: 0.0005544579 
Iteration: 13 Eps: 0.0005364396 
Iteration: 14 Eps: 0.0005618243 
Iteration: 15 Eps: 0.0005784836 
Iteration: 16 Eps: 0.0005907529 
Iteration: 17 Eps: 0.0005994335 
Iteration: 18 Eps: 0.0006041785 
Iteration: 19 Eps: 0.0006094896 
Iteration: 20 Eps: 0.0006132713 
Iteration: 21 Eps: 0.0006157644 
Iteration: 22 Eps: 0.0006191945 
Iteration: 23 Eps: 0.0006195801 
Iteration: 24 Eps: 0.0006193144 
Iteration: 25 Eps: 0.0006216329 
Iteration: 26 Eps: 0.0006225014 
Iteration: 27 Eps: 0.000623207 
Iteration: 28 Eps: 0.0006237417 
Iteration: 29 Eps: 0.0006241123 
Iteration: 30 Eps: 0.0006244188 
Iteration: 31 Eps: 0.0006246405 
Iteration: 32 Eps: 0.0006248214 
Iteration: 33 Eps: 0.000624962 
Iteration: 34 Eps: 0.000625072 
Iteration: 35 Eps: 0.0006251536 
Iteration: 36 Eps: 0.0006252204 
Iteration: 37 Eps: 0.0006252701 
Iteration: 38 Eps: 0.0006253097 
Iteration: 39 Eps: 0.0006253406 
Iteration: 40 Eps: 0.0006253632 
Iteration: 41 Eps: 0.000625381 
Iteration: 42 Eps: 0.0006253968 
Iteration: 43 Eps: 0.0006254059 
Iteration: 44 Eps: 0.0006254172 
Iteration: 45 Eps: 0.0006254284 
Iteration: 46 Eps: 0.0006254328 
Iteration: 47 Eps: 0.000625438 
Iteration: 48 Eps: 0.0006254383 
Iteration: 49 Eps: 0.0006254429 
Iteration: 50 Eps: 0.0006254442 
Iteration: 51 Eps: 0.0006254456 
Iteration: 52 Eps: 0.0006254454 
Iteration: 53 Eps: 0.0006254471 
Iteration: 54 Eps: 0.0006254484 
Iteration: 55 Eps: 0.0006254458 
Iteration: 56 Eps: 0.0006254484 
Iteration: 57 Eps: 0.0003878516 
Iteration: 58 Eps: 0.0003340472 
Iteration: 59 Eps: 0.0001381427 
Iteration: 60 Eps: 0.0001219342 
Iteration: 61 Eps: 8.34032e-05 
Iteration: 62 Eps: 5.255172e-06 
Iteration: 63 Eps: 2.518839e-06 
Iteration: 64 Eps: 1.635752e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1278048 
Iteration: 3 Eps: 0.005621449 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08184921 
Iteration: 3 Eps: 0.0106618 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07549401 
Iteration: 3 Eps: 0.01219555 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06011738 
Iteration: 3 Eps: 0.01013734 
Iteration: 4 Eps: 0.001887467 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06052066 
Iteration: 3 Eps: 0.007820055 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1005148 
Iteration: 3 Eps: 0.009069143 
Iteration: 4 Eps: 0.00195749 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1174538 
Iteration: 3 Eps: 0.005228522 
Iteration: 4 Eps: 0.003531522 
15 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07082083 
Iteration: 3 Eps: 0.008392097 
Iteration: 4 Eps: 0.003531654 
Iteration: 5 Eps: 0.001291646 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1347578 
Iteration: 3 Eps: 0.02199854 
Iteration: 4 Eps: 0.001405644 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1186731 
Iteration: 3 Eps: 0.002962836 
Iteration: 4 Eps: 0.0008494986 
Iteration: 5 Eps: 0.0006824445 
Iteration: 6 Eps: 0.0004258169 
Iteration: 7 Eps: 0.0004086903 
Iteration: 8 Eps: 0.0003993134 
Iteration: 9 Eps: 0.0004220992 
Iteration: 10 Eps: 0.0004663672 
Iteration: 11 Eps: 0.0005022467 
Iteration: 12 Eps: 0.0005499027 
Iteration: 13 Eps: 0.0005341534 
Iteration: 14 Eps: 0.000559801 
Iteration: 15 Eps: 0.0005768712 
Iteration: 16 Eps: 0.000589407 
Iteration: 17 Eps: 0.0005984221 
Iteration: 18 Eps: 0.0006033012 
Iteration: 19 Eps: 0.0006088518 
Iteration: 20 Eps: 0.000612799 
Iteration: 21 Eps: 0.000615374 
Iteration: 22 Eps: 0.0006189329 
Iteration: 23 Eps: 0.0006193379 
Iteration: 24 Eps: 0.0006191535 
Iteration: 25 Eps: 0.0006214446 
Iteration: 26 Eps: 0.0006223361 
Iteration: 27 Eps: 0.0006230944 
Iteration: 28 Eps: 0.0006236707 
Iteration: 29 Eps: 0.0006240554 
Iteration: 30 Eps: 0.0006243746 
Iteration: 31 Eps: 0.0006246091 
Iteration: 32 Eps: 0.0006248005 
Iteration: 33 Eps: 0.000624937 
Iteration: 34 Eps: 0.0006250524 
Iteration: 35 Eps: 0.0006251385 
Iteration: 36 Eps: 0.0006252062 
Iteration: 37 Eps: 0.0006252642 
Iteration: 38 Eps: 0.0006253045 
Iteration: 39 Eps: 0.0006253359 
Iteration: 40 Eps: 0.0006253644 
Iteration: 41 Eps: 0.0006253779 
Iteration: 42 Eps: 0.0006253976 
Iteration: 43 Eps: 0.0006254045 
Iteration: 44 Eps: 0.0006254139 
Iteration: 45 Eps: 0.0006254258 
Iteration: 46 Eps: 0.0006254323 
Iteration: 47 Eps: 0.0006254339 
Iteration: 48 Eps: 0.0006254421 
Iteration: 49 Eps: 0.0006254428 
Iteration: 50 Eps: 0.0006254439 
Iteration: 51 Eps: 0.0006254447 
Iteration: 52 Eps: 0.0006254478 
Iteration: 53 Eps: 0.000625445 
Iteration: 54 Eps: 0.0006254466 
Iteration: 55 Eps: 0.0006254477 
Iteration: 56 Eps: 0.000625448 
Iteration: 57 Eps: 0.0004013539 
Iteration: 58 Eps: 0.0003382969 
Iteration: 59 Eps: 0.0001447601 
Iteration: 60 Eps: 0.0001251772 
Iteration: 61 Eps: 9.70503e-05 
Iteration: 62 Eps: 6.776926e-06 
Iteration: 63 Eps: 4.005196e-06 
Iteration: 64 Eps: 2.382716e-06 
Iteration: 65 Eps: 1.206436e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.128485 
Iteration: 3 Eps: 0.005466419 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08227765 
Iteration: 3 Eps: 0.0105214 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.075793 
Iteration: 3 Eps: 0.01205648 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06034963 
Iteration: 3 Eps: 0.01006436 
Iteration: 4 Eps: 0.001800678 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06104224 
Iteration: 3 Eps: 0.007726522 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1011015 
Iteration: 3 Eps: 0.009107534 
Iteration: 4 Eps: 0.001797944 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1179639 
Iteration: 3 Eps: 0.00516336 
Iteration: 4 Eps: 0.00338471 
16 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07129663 
Iteration: 3 Eps: 0.008229948 
Iteration: 4 Eps: 0.003350894 
Iteration: 5 Eps: 0.001195542 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1352362 
Iteration: 3 Eps: 0.02184393 
Iteration: 4 Eps: 0.001310155 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1191002 
Iteration: 3 Eps: 0.002889765 
Iteration: 4 Eps: 0.003127474 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1292229 
Iteration: 3 Eps: 0.005302823 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08270968 
Iteration: 3 Eps: 0.01038162 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07609622 
Iteration: 3 Eps: 0.01191755 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06058425 
Iteration: 3 Eps: 0.009991254 
Iteration: 4 Eps: 0.001714788 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06155387 
Iteration: 3 Eps: 0.007633082 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1016934 
Iteration: 3 Eps: 0.009049878 
Iteration: 4 Eps: 0.001700366 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1184787 
Iteration: 3 Eps: 0.00510119 
Iteration: 4 Eps: 0.003237211 
17 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07177682 
Iteration: 3 Eps: 0.008065785 
Iteration: 4 Eps: 0.003146558 
Iteration: 5 Eps: 0.001093265 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1361581 
Iteration: 3 Eps: 0.02145499 
Iteration: 4 Eps: 0.001246927 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.119529 
Iteration: 3 Eps: 0.002815763 
Iteration: 4 Eps: 0.002968869 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1299099 
Iteration: 3 Eps: 0.005147156 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08314569 
Iteration: 3 Eps: 0.01024252 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07640203 
Iteration: 3 Eps: 0.01177895 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06082123 
Iteration: 3 Eps: 0.009918224 
Iteration: 4 Eps: 0.001662085 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06203073 
Iteration: 3 Eps: 0.007540543 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1022901 
Iteration: 3 Eps: 0.008990536 
Iteration: 4 Eps: 0.001608105 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1189972 
Iteration: 3 Eps: 0.005036938 
Iteration: 4 Eps: 0.003079617 
18 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07226099 
Iteration: 3 Eps: 0.007911163 
Iteration: 4 Eps: 0.002949525 
Iteration: 5 Eps: 0.0009949358 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1365598 
Iteration: 3 Eps: 0.02131634 
Iteration: 4 Eps: 0.001165273 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.119962 
Iteration: 3 Eps: 0.002744143 
Iteration: 4 Eps: 0.00281455 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1306032 
Iteration: 3 Eps: 0.005305903 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08358388 
Iteration: 3 Eps: 0.01010459 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07670913 
Iteration: 3 Eps: 0.01164087 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.061099 
Iteration: 3 Eps: 0.009914565 
Iteration: 4 Eps: 0.001598567 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06246499 
Iteration: 3 Eps: 0.007448011 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1028917 
Iteration: 3 Eps: 0.008918439 
Iteration: 4 Eps: 0.001519281 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1195191 
Iteration: 3 Eps: 0.004979425 
Iteration: 4 Eps: 0.002940879 
19 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07274932 
Iteration: 3 Eps: 0.007770109 
Iteration: 4 Eps: 0.002766499 
Iteration: 5 Eps: 0.0009054192 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1369647 
Iteration: 3 Eps: 0.02118494 
Iteration: 4 Eps: 0.001074349 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.120399 
Iteration: 3 Eps: 0.002675474 
Iteration: 4 Eps: 0.002663421 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1313002 
Iteration: 3 Eps: 0.005142922 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08402571 
Iteration: 3 Eps: 0.009966513 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07701939 
Iteration: 3 Eps: 0.01150336 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06133893 
Iteration: 3 Eps: 0.009838796 
Iteration: 4 Eps: 0.001519178 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06290199 
Iteration: 3 Eps: 0.0073555 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1034997 
Iteration: 3 Eps: 0.008845973 
Iteration: 4 Eps: 0.001433964 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1200451 
Iteration: 3 Eps: 0.004942058 
Iteration: 4 Eps: 0.002804972 
20 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07324161 
Iteration: 3 Eps: 0.007631351 
Iteration: 4 Eps: 0.002589689 
Iteration: 5 Eps: 0.00082131 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.137373 
Iteration: 3 Eps: 0.02114424 
Iteration: 4 Eps: 0.0009851257 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1208399 
Iteration: 3 Eps: 0.002611628 
Iteration: 4 Eps: 0.002517403 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1320058 
Iteration: 3 Eps: 0.004982301 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08447149 
Iteration: 3 Eps: 0.009834827 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07733259 
Iteration: 3 Eps: 0.01137243 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0615811 
Iteration: 3 Eps: 0.009761085 
Iteration: 4 Eps: 0.001443829 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06334274 
Iteration: 3 Eps: 0.007263103 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1041174 
Iteration: 3 Eps: 0.009571014 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1205753 
Iteration: 3 Eps: 0.004871211 
Iteration: 4 Eps: 0.002673173 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.09301427 
Iteration: 3 Eps: 0.0090005 
Iteration: 4 Eps: 0.006133793 
Iteration: 5 Eps: 0.007086598 
Iteration: 6 Eps: 0.008533805 
Iteration: 7 Eps: 0.009070334 
Iteration: 8 Eps: 0.01148391 
Iteration: 9 Eps: 0.01136147 
Iteration: 10 Eps: 0.01438043 
Iteration: 11 Eps: 0.01403495 
Iteration: 12 Eps: 0.01721382 
Iteration: 13 Eps: 0.0163518 
Iteration: 14 Eps: 0.01946374 
Iteration: 15 Eps: 0.01832197 
Iteration: 16 Eps: 0.02124097 
Iteration: 17 Eps: 0.01976722 
Iteration: 18 Eps: 0.02252025 
Iteration: 19 Eps: 0.02107639 
Iteration: 20 Eps: 0.02347063 
Iteration: 21 Eps: 0.02200612 
Iteration: 22 Eps: 0.02419412 
Iteration: 23 Eps: 0.02270002 
Iteration: 24 Eps: 0.02465958 
Iteration: 25 Eps: 0.02325113 
Iteration: 26 Eps: 0.02502428 
Iteration: 27 Eps: 0.02367488 
Iteration: 28 Eps: 0.02527165 
Iteration: 29 Eps: 0.02400126 
Iteration: 30 Eps: 0.02544825 
Iteration: 31 Eps: 0.02426352 
Iteration: 32 Eps: 0.02557781 
Iteration: 33 Eps: 0.02447562 
Iteration: 34 Eps: 0.0256702 
Iteration: 35 Eps: 0.02464518 
Iteration: 36 Eps: 0.02573624 
Iteration: 37 Eps: 0.02478536 
Iteration: 38 Eps: 0.02578145 
Iteration: 39 Eps: 0.02490221 
Iteration: 40 Eps: 0.02581247 
Iteration: 41 Eps: 0.0249992 
Iteration: 42 Eps: 0.02583211 
Iteration: 43 Eps: 0.02508078 
Iteration: 44 Eps: 0.02584362 
Iteration: 45 Eps: 0.02515009 
Iteration: 46 Eps: 0.02584872 
Iteration: 47 Eps: 0.02520914 
Iteration: 48 Eps: 0.0258497 
Iteration: 49 Eps: 0.02526009 
Iteration: 50 Eps: 0.02584763 
Iteration: 51 Eps: 0.02530386 
Iteration: 52 Eps: 0.02584298 
Iteration: 53 Eps: 0.02534197 
Iteration: 54 Eps: 0.02583685 
Iteration: 55 Eps: 0.0253753 
Iteration: 56 Eps: 0.02582959 
Iteration: 57 Eps: 0.0254046 
Iteration: 58 Eps: 0.02582173 
Iteration: 59 Eps: 0.02543051 
Iteration: 60 Eps: 0.02581353 
Iteration: 61 Eps: 0.0254534 
Iteration: 62 Eps: 0.02580518 
Iteration: 63 Eps: 0.02547378 
Iteration: 64 Eps: 0.02579685 
Iteration: 65 Eps: 0.02549189 
Iteration: 66 Eps: 0.02578869 
Iteration: 67 Eps: 0.02550813 
Iteration: 68 Eps: 0.02578075 
Iteration: 69 Eps: 0.02552264 
Iteration: 70 Eps: 0.02577315 
Iteration: 71 Eps: 0.02553576 
Iteration: 72 Eps: 0.02576587 
Iteration: 73 Eps: 0.02554751 
Iteration: 74 Eps: 0.02575893 
Iteration: 75 Eps: 0.02555812 
Iteration: 76 Eps: 0.02575241 
Iteration: 77 Eps: 0.02556775 
Iteration: 78 Eps: 0.02574628 
Iteration: 79 Eps: 0.02557637 
Iteration: 80 Eps: 0.02574042 
Iteration: 81 Eps: 0.02558424 
Iteration: 82 Eps: 0.02573502 
Iteration: 83 Eps: 0.02559139 
Iteration: 84 Eps: 0.02572993 
Iteration: 85 Eps: 0.02559789 
Iteration: 86 Eps: 0.02572519 
Iteration: 87 Eps: 0.02560377 
Iteration: 88 Eps: 0.02572078 
Iteration: 89 Eps: 0.02560913 
Iteration: 90 Eps: 0.02571666 
Iteration: 91 Eps: 0.02561404 
Iteration: 92 Eps: 0.02571285 
Iteration: 93 Eps: 0.0256185 
Iteration: 94 Eps: 0.02570929 
Iteration: 95 Eps: 0.02562255 
Iteration: 96 Eps: 0.02570602 
Iteration: 97 Eps: 0.02562624 
Iteration: 98 Eps: 0.02570296 
Iteration: 99 Eps: 0.02578505 
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=TRUE,scale=FALSE)
> #X = scale(X,center=TRUE,scale=FALSE)
> weights = sqrt(blocksize)
> 
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> temp = grouplasso(240,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07781546 
Iteration: 3 Eps: 0.01125919 
Iteration: 4 Eps: 0.00699493 
Iteration: 5 Eps: 0.008272696 
Iteration: 6 Eps: 0.009277768 
Iteration: 7 Eps: 0.01078081 
Iteration: 8 Eps: 0.01275409 
Iteration: 9 Eps: 0.01354936 
Iteration: 10 Eps: 0.01583905 
Iteration: 11 Eps: 0.01619166 
Iteration: 12 Eps: 0.01852897 
Iteration: 13 Eps: 0.01843207 
Iteration: 14 Eps: 0.02064566 
Iteration: 15 Eps: 0.02020383 
Iteration: 16 Eps: 0.022217 
Iteration: 17 Eps: 0.02153784 
Iteration: 18 Eps: 0.02333604 
Iteration: 19 Eps: 0.02251904 
Iteration: 20 Eps: 0.0241161 
Iteration: 21 Eps: 0.02323486 
Iteration: 22 Eps: 0.02465508 
Iteration: 23 Eps: 0.02375807 
Iteration: 24 Eps: 0.02502585 
Iteration: 25 Eps: 0.02414353 
Iteration: 26 Eps: 0.02528057 
Iteration: 27 Eps: 0.02443116 
Iteration: 28 Eps: 0.02545605 
Iteration: 29 Eps: 0.02464954 
Iteration: 30 Eps: 0.02557715 
Iteration: 31 Eps: 0.02481819 
Iteration: 32 Eps: 0.02566049 
Iteration: 33 Eps: 0.02495047 
Iteration: 34 Eps: 0.02571728 
Iteration: 35 Eps: 0.02505588 
Iteration: 36 Eps: 0.02575527 
Iteration: 37 Eps: 0.02514102 
Iteration: 38 Eps: 0.02577995 
Iteration: 39 Eps: 0.02521066 
Iteration: 40 Eps: 0.02579509 
Iteration: 41 Eps: 0.02526829 
Iteration: 42 Eps: 0.02580331 
Iteration: 43 Eps: 0.02531648 
Iteration: 44 Eps: 0.02580668 
Iteration: 45 Eps: 0.02535716 
Iteration: 46 Eps: 0.02580655 
Iteration: 47 Eps: 0.02539185 
Iteration: 48 Eps: 0.025804 
Iteration: 49 Eps: 0.02542161 
Iteration: 50 Eps: 0.02579977 
Iteration: 51 Eps: 0.02544737 
Iteration: 52 Eps: 0.0257944 
Iteration: 53 Eps: 0.02546979 
Iteration: 54 Eps: 0.02578839 
Iteration: 55 Eps: 0.02548946 
Iteration: 56 Eps: 0.02578195 
Iteration: 57 Eps: 0.02550673 
Iteration: 58 Eps: 0.02577543 
Iteration: 59 Eps: 0.0255221 
Iteration: 60 Eps: 0.0257688 
Iteration: 61 Eps: 0.02553563 
Iteration: 62 Eps: 0.02576233 
  ^C ^C
> grouplasso(500,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08214167 
Iteration: 3 Eps: 0.009778946 
Iteration: 4 Eps: 0.003760384 
Iteration: 5 Eps: 0.004393874 
Iteration: 6 Eps: 0.004912765 
Iteration: 7 Eps: 0.005988426 
Iteration: 8 Eps: 0.007283252 
Iteration: 9 Eps: 0.008539008 
Iteration: 10 Eps: 0.01023589 
Iteration: 11 Eps: 0.01151575 
Iteration: 12 Eps: 0.01333511 
Iteration: 13 Eps: 0.01446237 
Iteration: 14 Eps: 0.01618117 
Iteration: 15 Eps: 0.01706889 
Iteration: 16 Eps: 0.01856139 
Iteration: 17 Eps: 0.01919512 
Iteration: 18 Eps: 0.02042654 
Iteration: 19 Eps: 0.0208429 
Iteration: 20 Eps: 0.0218346 
Iteration: 21 Eps: 0.02208091 
Iteration: 22 Eps: 0.02287596 
Iteration: 23 Eps: 0.02299713 
Iteration: 24 Eps: 0.02363923 
Iteration: 25 Eps: 0.02367107 
Iteration: 26 Eps: 0.0241953 
Iteration: 27 Eps: 0.0241652 
Iteration: 28 Eps: 0.02459897 
Iteration: 29 Eps: 0.02452829 
Iteration: 30 Eps: 0.0248927 
Iteration: 31 Eps: 0.02479691 
Iteration: 32 Eps: 0.02510757 
Iteration: 33 Eps: 0.0249971 
Iteration: 34 Eps: 0.02526519 
Iteration: 35 Eps: 0.02514734 
Iteration: 36 Eps: 0.02538104 
Iteration: 37 Eps: 0.02526073 
Iteration: 38 Eps: 0.02546621 
Iteration: 39 Eps: 0.0253468 
Iteration: 40 Eps: 0.02552886 
Iteration: 41 Eps: 0.02541252 
Iteration: 42 Eps: 0.02557483 
Iteration: 43 Eps: 0.02546296 
Iteration: 44 Eps: 0.02560836 
Iteration: 45 Eps: 0.02550193 
Iteration: 46 Eps: 0.02563277 
Iteration: 47 Eps: 0.02553218 
Iteration: 48 Eps: 0.02565034 
Iteration: 49 Eps: 0.02555583 
Iteration: 50 Eps: 0.02566282 
Iteration: 51 Eps: 0.02557444 
Iteration: 52 Eps: 0.02567161 
Iteration: 53 Eps: 0.02558918 
Iteration: 54 Eps: 0.02567763 
Iteration: 55 Eps: 0.02560094 
Iteration: 56 Eps: 0.02568158 
Iteration: 57 Eps: 0.02561045 
Iteration: 58 Eps: 0.02568406 
Iteration: 59 Eps: 0.02561819 
Iteration: 60 Eps: 0.02568544 
Iteration: 61 Eps: 0.02562449 
Iteration: 62 Eps: 0.02568603 
Iteration: 63 Eps: 0.02562973 
Iteration: 64 Eps: 0.02568609 
Iteration: 65 Eps: 0.0256341 
Iteration: 66 Eps: 0.02568576 
Iteration: 67 Eps: 0.0256378 
Iteration: 68 Eps: 0.02568515 
Iteration: 69 Eps: 0.02564092 
Iteration: 70 Eps: 0.02568434 
Iteration: 71 Eps: 0.02564362 
Iteration: 72 Eps: 0.02568348 
Iteration: 73 Eps: 0.02564595 
Iteration: 74 Eps: 0.02568251 
Iteration: 75 Eps: 0.02564797 
Iteration: 76 Eps: 0.02568156 
Iteration: 77 Eps: 0.02564979 
Iteration: 78 Eps: 0.02568064 
Iteration: 79 Eps: 0.02565139 
Iteration: 80 Eps: 0.02567968 
Iteration: 81 Eps: 0.02565277 
Iteration: 82 Eps: 0.02567877 
Iteration: 83 Eps: 0.02565401 
Iteration: 84 Eps: 0.02567789 
Iteration: 85 Eps: 0.02565515 
Iteration: 86 Eps: 0.0256771 
Iteration: 87 Eps: 0.02565616 
Iteration: 88 Eps: 0.02567633 
Iteration: 89 Eps: 0.02565705 
Iteration: 90 Eps: 0.0256756 
temp = grouplasso(500,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 91 Eps: 0.0256579 
Iteration: 92 Eps: 0.02567492 
Iteration: 93 Eps: 0.02565863 
Iteration: 94 Eps: 0.0256743 
Iteration: 95 Eps: 0.02565933 
Iteration: 96 Eps: 0.02567374 
Iteration: 97 Eps: 0.02565999 
Iteration: 98 Eps: 0.02567318 
Iteration: 99 Eps: 0.02566055 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]    98311.5088     4647.5270    94667.8283    10490.4974   -13482.4404
  [6]     -937.1961   -47406.0712  -106743.1512    15122.3410    -7826.7872
 [11]    21690.3628    71164.4562   -66526.0659   -29881.7180    -4837.6271
 [16]   -26300.2554    17097.8488    30138.3732  -107413.0425   -37776.8595
 [21]    83142.0771     6782.7997    21160.4568   -35088.9215    48222.7969
 [26]   215421.1082   385686.6751  -111101.4560   687536.3482  -281423.3946
 [31]  -333380.1025   -71366.0823   579184.0268  -186734.5485  -572963.4275
 [36]   687237.9671  -450254.6914  -118029.2025  -212805.6834   -98926.6363
 [41]   233711.3705   360052.0841   601331.2160  -149296.1936   220516.4811
 [46]   -93407.1322  -999999.9779   837239.4846   136394.8323  -807160.0741
 [51]    -1035.1535    12465.4573    85682.9785   166768.7318   -50694.1166
 [56]   -73240.6497   -83760.0705   -42549.9712   132625.8015    45820.3018
 [61]    92180.9292   195527.6353   -29157.7710    47725.6516      733.9723
 [66]    -7052.1480  -132568.3973    42658.6283   -44181.4796   135000.7901
 [71]  -123200.7000    48232.0812   122738.3826    60075.2183    66699.3700
 [76]   149103.9338  -140462.1242    17718.1632    31282.4329    40920.7660
 [81]   -43376.8760    23456.2101    48012.1347   100897.4071     2924.8202
 [86]     7875.1298    69321.2283   129385.2521   184693.1984    70365.2357
 [91]    36027.4386    89604.4099   -23969.9025    45154.4038    70302.8914
 [96]   -64396.2724    48397.2243    40687.0357   -93139.1129   -89992.7492

$iter
[1] 100

$eps
           [,1]
[1,] 0.02573865

> 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08214167 
Iteration: 3 Eps: 0.009778946 
Iteration: 4 Eps: 0.003760384 
Iteration: 5 Eps: 0.004393874 
Iteration: 6 Eps: 0.004912765 
Iteration: 7 Eps: 0.005988426 
Iteration: 8 Eps: 0.007283252 
Iteration: 9 Eps: 0.008539008 
Iteration: 10 Eps: 0.01023589 
Iteration: 11 Eps: 0.01151575 
Iteration: 12 Eps: 0.01333511 
Iteration: 13 Eps: 0.01446237 
Iteration: 14 Eps: 0.01618117 
Iteration: 15 Eps: 0.01706889 
Iteration: 16 Eps: 0.01856139 
  ^C ^C
> grouplasso(1500,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1006229 
Iteration: 3 Eps: 0.006885942 
Iteration: 4 Eps: 0.0002077386 
Iteration: 5 Eps: 2.672249e-05 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -1.271156e+00 -1.310243e+00  1.398995e+00 -6.483131e-02  8.133439e-01
  [6]  7.249492e-01 -1.876495e+00 -2.205530e+00  4.607690e-01 -1.719950e+00
 [11]  1.848906e+00 -1.096458e+00 -4.659976e-01  1.758247e+00 -1.329319e+00
 [16]  3.854129e-01 -1.362914e+00 -1.233860e+00  6.402596e-01  4.335655e-01
 [21]  5.856770e-01 -9.507775e-01  5.697170e-01  9.376538e-02  3.217785e-02
 [26]  3.122587e-01  3.783020e-01 -9.678435e-02  6.992110e-01 -4.066948e-01
 [31] -3.263241e-01 -1.481602e-01  6.100020e-01 -1.748900e-01 -6.263940e-01
 [36]  7.346075e-01 -5.253784e-01 -1.407024e-01 -3.417031e-01 -5.574753e-02
 [41]  1.879802e-01  3.609508e-01  6.959183e-01 -1.782691e-01  2.064060e-01
 [46] -6.467226e-02 -1.258360e+00  9.534755e-01  1.101450e-01 -1.003175e+00
 [51] -2.880785e-03 -3.401330e-03  4.765109e-05  9.336361e-03 -9.943993e-03
 [56] -5.466981e-03 -9.133186e-03  4.692532e-03  2.661437e-03 -1.296059e-03
 [61]  7.535531e-03  5.223559e-03 -4.291049e-03  3.693550e-03 -2.674651e-03
 [66]  4.489473e-03 -7.696829e-03  9.422157e-05 -4.618477e-03  1.069469e-04
 [71] -1.351125e-01  2.443000e-02  2.756063e-02 -2.770335e-01  6.969080e-02
 [76]  1.878572e-01  1.199956e-01 -2.417625e-02  6.985517e-02  8.351996e-02
 [81] -1.916488e-01  3.504519e-02  4.922495e-02  1.371809e-01 -1.441778e-01
 [86] -2.348522e-02 -7.299547e-02 -3.454900e-03  4.955038e-02  1.139030e-01
 [91]  4.047828e-04  1.201631e-03 -1.841027e-04  6.252639e-04  3.137036e-04
 [96] -6.216916e-04  2.814141e-04  1.030965e-04 -2.056302e-04 -3.684787e-04

$iter
[1] 6

$eps
             [,1]
[1,] 1.516494e-06

> temp = grouplasso(1500,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1006229 
Iteration: 3 Eps: 0.006885942 
Iteration: 4 Eps: 0.0002077386 
Iteration: 5 Eps: 2.672249e-05 
> y = temp$beta
> x = temp$truebeta
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y)
+ temp = grouplasso(2000,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Error: unexpected symbol in:
"abline(lm(x~y)
temp"
> y = temp$beta
> x = temp$truebeta
> #pdf('hw4partdbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> temp = grouplasso(2000,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1963078 
Iteration: 3 Eps: 0.01587866 
Iteration: 4 Eps: 0.0004474637 
> y = temp$beta
> x = temp$truebeta
> #pdf('hw4partdbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> temp = grouplasso(1000,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1581654 
Iteration: 3 Eps: 0.01596185 
Iteration: 4 Eps: 0.002347092 
Iteration: 5 Eps: 0.001961312 
Iteration: 6 Eps: 0.0009965241 
Iteration: 7 Eps: 0.0007532673 
Iteration: 8 Eps: 0.0006304619 
Iteration: 9 Eps: 0.0006950402 
Iteration: 10 Eps: 0.001030182 
Iteration: 11 Eps: 0.001721351 
Iteration: 12 Eps: 0.003042546 
Iteration: 13 Eps: 0.004777571 
Iteration: 14 Eps: 0.006829776 
Iteration: 15 Eps: 0.008686488 
Iteration: 16 Eps: 0.01045348 
Iteration: 17 Eps: 0.01197611 
Iteration: 18 Eps: 0.01343646 
Iteration: 19 Eps: 0.01472583 
Iteration: 20 Eps: 0.01594783 
Iteration: 21 Eps: 0.01702095 
Iteration: 22 Eps: 0.01802423 
Iteration: 23 Eps: 0.01889831 
Iteration: 24 Eps: 0.01970859 
Iteration: 25 Eps: 0.02040839 
Iteration: 26 Eps: 0.02105387 
Iteration: 27 Eps: 0.02160613 
Iteration: 28 Eps: 0.02211439 
Iteration: 29 Eps: 0.02254547 
Iteration: 30 Eps: 0.02294279 
Iteration: 31 Eps: 0.02327663 
Iteration: 32 Eps: 0.02358506 
Iteration: 33 Eps: 0.02384158 
Iteration: 34 Eps: 0.02407995 
Iteration: 35 Eps: 0.02427605 
Iteration: 36 Eps: 0.02445979 
Iteration: 37 Eps: 0.02460893 
Iteration: 38 Eps: 0.02475021 
Iteration: 39 Eps: 0.02486309 
Iteration: 40 Eps: 0.02497158 
Iteration: 41 Eps: 0.02505673 
Iteration: 42 Eps: 0.02514007 
Iteration: 43 Eps: 0.025204 
Iteration: 44 Eps: 0.02526801 
Iteration: 45 Eps: 0.02531586 
Iteration: 46 Eps: 0.02536511 
Iteration: 47 Eps: 0.02540073 
Iteration: 48 Eps: 0.02543872 
Iteration: 49 Eps: 0.02546514 
Iteration: 50 Eps: 0.02549447 
Iteration: 51 Eps: 0.02551391 
Iteration: 52 Eps: 0.02553667 
Iteration: 53 Eps: 0.02555088 
Iteration: 54 Eps: 0.02556858 
Iteration: 55 Eps: 0.02557888 
Iteration: 56 Eps: 0.02559271 
Iteration: 57 Eps: 0.02560005 
Iteration: 58 Eps: 0.02561096 
Iteration: 59 Eps: 0.02561613 
Iteration: 60 Eps: 0.02562474 
Iteration: 61 Eps: 0.02562833 
Iteration: 62 Eps: 0.02563518 
Iteration: 63 Eps: 0.02563755 
Iteration: 64 Eps: 0.02564306 
Iteration: 65 Eps: 0.0256445 
Iteration: 66 Eps: 0.02564898 
Iteration: 67 Eps: 0.02564981 
Iteration: 68 Eps: 0.02565344 
Iteration: 69 Eps: 0.02565382 
Iteration: 70 Eps: 0.02565685 
Iteration: 71 Eps: 0.02565687 
Iteration: 72 Eps: 0.0256594 
Iteration: 73 Eps: 0.02565918 
Iteration: 74 Eps: 0.02566129 
  ^C ^C
> temp = grouplasso(1500,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1769072 
Iteration: 3 Eps: 0.01548087 
Iteration: 4 Eps: 0.0007910694 
Iteration: 5 Eps: 0.0001953895 
Iteration: 6 Eps: 1.979682e-05 
> y = temp$beta
> x = temp$truebeta
> #pdf('hw4partdbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> temp = grouplasso(1200,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.165015 
Iteration: 3 Eps: 0.0156566 
Iteration: 4 Eps: 0.001390174 
Iteration: 5 Eps: 0.0007517245 
Iteration: 6 Eps: 0.0001953948 
Iteration: 7 Eps: 5.519587e-05 
Iteration: 8 Eps: 1.533646e-05 
> y = temp$beta
> x = temp$truebeta
> #pdf('hw4partdbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> #dev.off()
> temp$beta
  [1] -2.741896e-03 -1.024741e-04 -2.547084e-03 -6.544438e-05  9.563986e-04
  [6]  7.388935e-06  5.422895e-04  1.744120e-03 -5.269851e-04  5.805656e-04
 [11] -8.442178e-05 -2.004753e-04  1.525243e-04  2.994594e-05 -1.332596e-05
 [16]  4.952773e-04 -4.499849e-04 -5.219293e-04  1.213384e-03  6.302972e-04
 [21] -8.621767e-03 -1.608591e-03 -1.772277e-03  1.233889e-03 -9.198856e-04
 [26]  4.059217e-01  6.595407e-01 -2.394024e-01  1.268477e+00 -5.344357e-01
 [31] -6.065362e-01 -1.153100e-01  9.638054e-01 -2.699827e-01 -1.032507e+00
 [36]  1.188139e+00 -7.526225e-01 -1.849660e-01 -4.519482e-01 -7.227523e-02
 [41]  4.288911e-01  5.721873e-01  1.053892e+00 -3.700768e-01  4.015994e-01
 [46] -1.402043e-01 -1.788471e+00  1.536325e+00  1.959486e-01 -1.504415e+00
 [51]  6.818952e-03 -6.039218e-03  2.436530e-03  1.820913e-02 -1.642177e-02
 [56] -2.093249e-02 -1.031654e-02  6.002393e-03  1.048315e-02  2.124475e-03
 [61]  1.758689e-02  9.946033e-03 -8.065803e-03  7.252272e-03 -1.670780e-02
 [66]  2.028703e-02 -2.009267e-02  8.492382e-03 -5.959076e-03  3.270954e-03
 [71] -5.544236e-02  3.037020e-02  2.382121e-02 -2.020878e-02  2.951168e-02
 [76]  9.314880e-02 -4.921596e-02  1.914901e-02 -1.553541e-02  1.324072e-02
 [81] -3.626457e-02 -1.020903e-02  2.478868e-02  2.399023e-02  2.139604e-02
 [86] -1.230111e-03 -2.170031e-02  6.829692e-02  7.106370e-02  1.343862e-02
 [91] -9.705872e-05  1.422584e-03 -8.568610e-04  1.786843e-03  1.109778e-03
 [96] -1.093652e-03  8.440049e-04  5.795713e-04 -1.491968e-03 -5.421121e-04
> grouplasso(200,1,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1299734 
Iteration: 3 Eps: 0.01961664 
Iteration: 4 Eps: 0.01568963 
Iteration: 5 Eps: 0.01710435 
Iteration: 6 Eps: 0.0172094 
Iteration: 7 Eps: 0.01774886 
Iteration: 8 Eps: 0.0199817 
Iteration: 9 Eps: 0.01870937 
Iteration: 10 Eps: 0.02139628 
Iteration: 11 Eps: 0.01979089 
Iteration: 12 Eps: 0.02249142 
Iteration: 13 Eps: 0.02075359 
Iteration: 14 Eps: 0.02332574 
Iteration: 15 Eps: 0.02158211 
Iteration: 16 Eps: 0.02397091 
Iteration: 17 Eps: 0.02227003 
Iteration: 18 Eps: 0.02446433 
Iteration: 19 Eps: 0.02283494 
Iteration: 20 Eps: 0.02483924 
Iteration: 21 Eps: 0.02329502 
Iteration: 22 Eps: 0.0251221 
Iteration: 23 Eps: 0.0236696 
Iteration: 24 Eps: 0.02533449 
Iteration: 25 Eps: 0.02397477 
Iteration: 26 Eps: 0.02549268 
Iteration: 27 Eps: 0.02422435 
Iteration: 28 Eps: 0.02560938 
Iteration: 29 Eps: 0.02442955 
Iteration: 30 Eps: 0.02569455 
Iteration: 31 Eps: 0.02459921 
Iteration: 32 Eps: 0.02575569 
Iteration: 33 Eps: 0.02474039 
Iteration: 34 Eps: 0.02579851 
Iteration: 35 Eps: 0.02485862 
Iteration: 36 Eps: 0.0258275 
Iteration: 37 Eps: 0.02495834 
Iteration: 38 Eps: 0.02584596 
Iteration: 39 Eps: 0.02504293 
Iteration: 40 Eps: 0.02585658 
Iteration: 41 Eps: 0.02511517 
Iteration: 42 Eps: 0.02586132 
Iteration: 43 Eps: 0.02517725 
Iteration: 44 Eps: 0.02586171 
Iteration: 45 Eps: 0.02523085 
Iteration: 46 Eps: 0.02585895 
Iteration: 47 Eps: 0.02527735 
Iteration: 48 Eps: 0.02585381 
Iteration: 49 Eps: 0.02531804 
  ^C ^C
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> grouplasso(200,1,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1299734 
Iteration: 3 Eps: 0.01961664 
Iteration: 4 Eps: 0.01568963 
Iteration: 5 Eps: 0.01710435 
Iteration: 6 Eps: 0.0172094 
Iteration: 7 Eps: 0.01774886 
Iteration: 8 Eps: 0.0199817 
Iteration: 9 Eps: 0.01870937 
Iteration: 10 Eps: 0.02139628 
Iteration: 11 Eps: 0.01979089 
Iteration: 12 Eps: 0.02249142 
Iteration: 13 Eps: 0.02075359 
Iteration: 14 Eps: 0.02332574 
Iteration: 15 Eps: 0.02158211 
Iteration: 16 Eps: 0.02397091 
Iteration: 17 Eps: 0.02227003 
Iteration: 18 Eps: 0.02446433 
Iteration: 19 Eps: 0.02283494 
Iteration: 20 Eps: 0.02483924 
Iteration: 21 Eps: 0.02329502 
Iteration: 22 Eps: 0.0251221 
Iteration: 23 Eps: 0.0236696 
Iteration: 24 Eps: 0.02533449 
Iteration: 25 Eps: 0.02397477 
Iteration: 26 Eps: 0.02549268 
Iteration: 27 Eps: 0.02422435 
Iteration: 28 Eps: 0.02560938 
Iteration: 29 Eps: 0.02442955 
Iteration: 30 Eps: 0.02569455 
Iteration: 31 Eps: 0.02459921 
Iteration: 32 Eps: 0.02575569 
Iteration: 33 Eps: 0.02474039 
Iteration: 34 Eps: 0.02579851 
Iteration: 35 Eps: 0.02485862 
Iteration: 36 Eps: 0.0258275 
Iteration: 37 Eps: 0.02495834 
Iteration: 38 Eps: 0.02584596 
Iteration: 39 Eps: 0.02504293 
Iteration: 40 Eps: 0.02585658 
Iteration: 41 Eps: 0.02511517 
Iteration: 42 Eps: 0.02586132 
Iteration: 43 Eps: 0.02517725 
Iteration: 44 Eps: 0.02586171 
Iteration: 45 Eps: 0.02523085 
Iteration: 46 Eps: 0.02585895 
Iteration: 47 Eps: 0.02527735 
Iteration: 48 Eps: 0.02585381 
Iteration: 49 Eps: 0.02531804 
Iteration: 50 Eps: 0.02584725 
Iteration: 51 Eps: 0.02535365 
Iteration: 52 Eps: 0.02583956 
Iteration: 53 Eps: 0.02538498 
Iteration: 54 Eps: 0.02583126 
Iteration: 55 Eps: 0.02541271 
Iteration: 56 Eps: 0.02582255 
Iteration: 57 Eps: 0.02543726 
Iteration: 58 Eps: 0.02581371 
Iteration: 59 Eps: 0.02545914 
Iteration: 60 Eps: 0.02580489 
Iteration: 61 Eps: 0.02547869 
Iteration: 62 Eps: 0.02579631 
Iteration: 63 Eps: 0.02549612 
Iteration: 64 Eps: 0.02578795 
Iteration: 65 Eps: 0.02551176 
Iteration: 66 Eps: 0.0257799 
Iteration: 67 Eps: 0.02552586 
Iteration: 68 Eps: 0.02577223 
Iteration: 69 Eps: 0.02553854 
Iteration: 70 Eps: 0.02576486 
Iteration: 71 Eps: 0.02554995 
Iteration: 72 Eps: 0.02575792 
Iteration: 73 Eps: 0.02556025 
Iteration: 74 Eps: 0.02575139 
Iteration: 75 Eps: 0.02556962 
Iteration: 76 Eps: 0.02574524 
Iteration: 77 Eps: 0.02557808 
Iteration: 78 Eps: 0.02573949 
Iteration: 79 Eps: 0.02558579 
Iteration: 80 Eps: 0.0257341 
Iteration: 81 Eps: 0.02559275 
Iteration: 82 Eps: 0.02572908 
Iteration: 83 Eps: 0.02559911 
Iteration: 84 Eps: 0.02572437 
Iteration: 85 Eps: 0.02560491 
Iteration: 86 Eps: 0.02572004 
Iteration: 87 Eps: 0.02561017 
Iteration: 88 Eps: 0.02571597 
Iteration: 89 Eps: 0.02561494 
Iteration: 90 Eps: 0.02571218 
Iteration: 91 Eps: 0.02561933 
Iteration: 92 Eps: 0.02570866 
Iteration: 93 Eps: 0.0256233 
Iteration: 94 Eps: 0.02570543 
Iteration: 95 Eps: 0.02562695 
Iteration: 96 Eps: 0.02570242 
Iteration: 97 Eps: 0.02563542 
Iteration: 98 Eps: 0.02586553 
Iteration: 99 Eps: 0.02532897 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]   134206.705     2185.419   140476.962    19595.466   -11118.308
  [6]    14263.852   -40985.001  -154862.079    31013.783    -6950.727
 [11]    26683.752   108157.274   -73737.318   -51260.817     8095.320
 [16]   -44577.806    27414.305    46473.916  -159324.933   -44179.023
 [21]   121319.603    12751.073     7176.648   -38644.995    60542.632
 [26]   301417.032   511324.972  -154316.692   915681.931  -395393.065
 [31]  -432931.780  -114396.979   817933.768  -269885.534  -791260.650
 [36]   929504.133  -609106.620  -175926.039  -315839.926  -130845.668
 [41]   313551.507   484794.359   850227.019  -171372.442   305658.058
 [46]  -105721.103  -999999.978   999999.978   243002.948  -999999.978
 [51]    -7556.389    15440.190   103062.547   221461.291   -38256.708
 [56]   -84692.644  -103063.434   -47635.923   154920.822    61262.047
 [61]   116286.976   250826.000   -48152.029    54824.545    13952.818
 [66]   -13269.070  -163697.634    52574.553   -45920.820   174750.481
 [71]  -154651.062    50608.855   134878.426    44968.552    89008.095
 [76]   191918.364  -176908.682    26217.599    25960.139    47855.453
 [81]   -53449.238    37010.957    81857.219   131791.093   -11873.852
 [86]    12882.340    81681.850   157862.209   224212.504   103611.240
 [91]    63070.311   112863.331   -39300.946    51452.378    99488.125
 [96]   -79301.091    68080.932    46915.998   -96357.455  -100956.758

$iter
[1] 100

$eps
          [,1]
[1,] 0.0256161

> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> y = scale(y,center=FALSE,scale=TRUE)
> X = scale(X,center=FALSE,scale=TRUE)
> weights = sqrt(blocksize)
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> grouplasso(300,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.2149637 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -0.2208827359 -0.0717261342  0.1403266077 -0.0603291557  0.1708723440
  [6]  0.0017936335 -0.0994821400  0.0118091039 -0.0199740117 -0.0130266503
 [11]  0.1155416476 -0.1140499964 -0.1041971250  0.1393212228  0.0010851766
 [16] -0.0231561744 -0.1416318316 -0.0831516356  0.0405364183 -0.0348108364
 [21]  0.0006531071 -0.0978353136  0.0462526804  0.3514606252  0.1003083582
 [26] -0.2665329801 -0.3962314678  0.2485360016 -0.8089175948  0.4198517401
 [31]  0.3799514655 -0.1100313422 -0.3166271148 -0.0274382399  0.7159775287
 [36] -0.8017836972  0.5015812687  0.1114534857  0.1885324719 -0.2215872395
 [41] -0.3551131669 -0.2078359699 -0.5014674490  0.5777184298 -0.2523525063
 [46]  0.1861869613  0.8086753912 -0.8559884389  0.0649824711  0.7807450750
 [51] -0.0156477247 -0.0029881081 -0.0632494504 -0.0983370481  0.0712939451
 [56]  0.1221248195  0.0943587159  0.0714083566 -0.0029292655 -0.0081370471
 [61] -0.0228465191 -0.1234343116  0.0477799797  0.0437126553  0.0186974736
 [66]  0.0201111873 -0.0055810193 -0.0159379783 -0.0065097116 -0.0227589341
 [71] -0.0651424728 -0.1183588646  0.1893945442 -1.0689903674  0.0346297523
 [76]  0.4854970082  1.0724556368 -0.1952365476  0.3566528289  0.0587788933
 [81] -0.8191943641  0.4987501130  0.1982912479  0.0142835359 -0.5093049274
 [86] -0.2571781993 -0.0985997925 -0.0455881468 -0.2039430748  0.3230644944
 [91]  0.0961899387  0.2230285570 -0.0939908016 -0.0084802887  0.2732095225
 [96] -0.0155348517  0.0607492164  0.1259108787 -0.1267773170  0.0356678645

$iter
[1] 3

$eps
     [,1]
[1,]    0

> grouplasso(200,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1813676 
Iteration: 3 Eps: 0.01560786 
Iteration: 4 Eps: 0.0005992773 
Iteration: 5 Eps: 9.136571e-05 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -0.0153145767 -0.0338013163  0.0577425876 -0.0015878511  0.0170932288
  [6]  0.0123527581 -0.0458619714 -0.0754303533  0.0134713666 -0.0603033276
 [11]  0.0831490766 -0.0411995057 -0.0407254510  0.0593925819 -0.0494482225
 [16]  0.0131533731 -0.0550243601 -0.0333825662 -0.0003801211  0.0052734130
 [21]  0.0315571090 -0.0144304273  0.0115322130  0.0766307869  0.0242242461
 [26]  0.2281088261  0.2851308833 -0.0688161803  0.6049505065 -0.2692643390
 [31] -0.2577530220 -0.1139747328  0.5202320119 -0.1137574325 -0.5136198529
 [36]  0.5679719454 -0.3903394149 -0.1004641072 -0.2858473256 -0.0755115885
 [41]  0.1600599143  0.2761991998  0.5682988481 -0.1498563579  0.1407941879
 [46] -0.0456331750 -0.9476856143  0.7288274864  0.0909518120 -0.7576451106
 [51] -0.0007853751 -0.0017358946  0.0001903839  0.0041048022 -0.0057678038
 [56] -0.0014016191 -0.0034511997  0.0012545115  0.0017675875 -0.0006212971
 [61]  0.0021781027  0.0014849878 -0.0014701513  0.0008515524 -0.0004311413
 [66]  0.0017030979 -0.0027666887  0.0002304822 -0.0008759337  0.0004068446
 [71] -0.0710261993  0.0082432735  0.0433850574 -0.1988848461  0.0840507216
 [76]  0.1257899935  0.1081040698 -0.0181948309  0.0573327585  0.0454353703
 [81] -0.1310773302  0.0240842471  0.0496113273  0.0799614918 -0.0888558502
 [86] -0.0132437392 -0.0465353510  0.0082947801  0.0076430980  0.0750448690
 [91]  0.0019727018 -0.0012742060  0.0007180436 -0.0025398495 -0.0009366562
 [96]  0.0016641620 -0.0001799631 -0.0003666600  0.0007955135  0.0002831388

$iter
[1] 6

$eps
     [,1]
[1,]    0

> grouplasso(100,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1505187 
Iteration: 3 Eps: 0.01628455 
Iteration: 4 Eps: 0.003462945 
Iteration: 5 Eps: 0.003444233 
Iteration: 6 Eps: 0.002458721 
Iteration: 7 Eps: 0.002481559 
Iteration: 8 Eps: 0.002590141 
Iteration: 9 Eps: 0.003076641 
Iteration: 10 Eps: 0.004024104 
Iteration: 11 Eps: 0.005183309 
Iteration: 12 Eps: 0.00677774 
Iteration: 13 Eps: 0.008275153 
Iteration: 14 Eps: 0.009938046 
Iteration: 15 Eps: 0.01135768 
Iteration: 16 Eps: 0.01281221 
Iteration: 17 Eps: 0.01407069 
Iteration: 18 Eps: 0.01529323 
Iteration: 19 Eps: 0.0163768 
Iteration: 20 Eps: 0.01738178 
Iteration: 21 Eps: 0.01828775 
Iteration: 22 Eps: 0.01910144 
Iteration: 23 Eps: 0.01984139 
Iteration: 24 Eps: 0.02049307 
Iteration: 25 Eps: 0.02108642 
Iteration: 26 Eps: 0.02160259 
Iteration: 27 Eps: 0.02207155 
Iteration: 28 Eps: 0.02247804 
Iteration: 29 Eps: 0.02284508 
Iteration: 30 Eps: 0.02316296 
Iteration: 31 Eps: 0.02344774 
Iteration: 32 Eps: 0.0236953 
Iteration: 33 Eps: 0.02391496 
Iteration: 34 Eps: 0.02410694 
Iteration: 35 Eps: 0.02427566 
Iteration: 36 Eps: 0.02442404 
Iteration: 37 Eps: 0.02455316 
Iteration: 38 Eps: 0.02466761 
Iteration: 39 Eps: 0.02476606 
Iteration: 40 Eps: 0.02485422 
Iteration: 41 Eps: 0.02492916 
Iteration: 42 Eps: 0.024997 
Iteration: 43 Eps: 0.02505389 
Iteration: 44 Eps: 0.02510602 
Iteration: 45 Eps: 0.02514914 
Iteration: 46 Eps: 0.02518926 
Iteration: 47 Eps: 0.02522185 
Iteration: 48 Eps: 0.02525273 
Iteration: 49 Eps: 0.02527731 
Iteration: 50 Eps: 0.0253011 
Iteration: 51 Eps: 0.02531962 
Iteration: 52 Eps: 0.02533793 
Iteration: 53 Eps: 0.02535183 
Iteration: 54 Eps: 0.02536596 
Iteration: 55 Eps: 0.02537636 
Iteration: 56 Eps: 0.02538733 
Iteration: 57 Eps: 0.02539507 
Iteration: 58 Eps: 0.02540356 
Iteration: 59 Eps: 0.02540931 
Iteration: 60 Eps: 0.02541596 
Iteration: 61 Eps: 0.02542016 
Iteration: 62 Eps: 0.02542535 
Iteration: 63 Eps: 0.02542844 
Iteration: 64 Eps: 0.02543251 
Iteration: 65 Eps: 0.02543474 
Iteration: 66 Eps: 0.02543796 
Iteration: 67 Eps: 0.02543954 
Iteration: 68 Eps: 0.02544209 
Iteration: 69 Eps: 0.0254432 
Iteration: 70 Eps: 0.02544525 
Iteration: 71 Eps: 0.02544596 
Iteration: 72 Eps: 0.02544762 
Iteration: 73 Eps: 0.0254481 
Iteration: 74 Eps: 0.02544942 
Iteration: 75 Eps: 0.02544972 
Iteration: 76 Eps: 0.02545081 
Iteration: 77 Eps: 0.02545095 
Iteration: 78 Eps: 0.02545183 
Iteration: 79 Eps: 0.02545191 
Iteration: 80 Eps: 0.02545265 
Iteration: 81 Eps: 0.02545262 
Iteration: 82 Eps: 0.02545324 
Iteration: 83 Eps: 0.02545317 
Iteration: 84 Eps: 0.02545372 
Iteration: 85 Eps: 0.0254536 
Iteration: 86 Eps: 0.02545406 
Iteration: 87 Eps: 0.02545392 
Iteration: 88 Eps: 0.02545428 
Iteration: 89 Eps: 0.02545417 
Iteration: 90 Eps: 0.02545447 
Iteration: 91 Eps: 0.02545432 
Iteration: 92 Eps: 0.02545462 
Iteration: 93 Eps: 0.02545448 
Iteration: 94 Eps: 0.02545474 
Iteration: 95 Eps: 0.02545462 
Iteration: 96 Eps: 0.02545484 
Iteration: 97 Eps: 0.02545469 
Iteration: 98 Eps: 0.02545488 
Iteration: 99 Eps: 0.02545478 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]   44371.1543    2229.4347   43597.3967    4532.5459   -6281.0622
  [6]     243.7133  -21198.2162  -48311.5409    6659.4544   -3507.1261
 [11]   10142.9050   31937.7997  -30113.8489  -13674.8135   -2034.5957
 [16]  -12237.3773    7643.3381   13258.6621  -47707.3997  -16913.5870
 [21]   37930.2662    2732.2148    9785.1767  -16325.9917   22068.6327
 [26]   95577.6958  172265.8425  -48774.4843  314967.6859 -127476.7554
 [31] -149160.0274  -32211.8212  261361.4008  -82070.4773 -262834.9936
 [36]  308667.0142 -204209.4222  -54924.5587  -99477.8570  -46028.6315
 [41]  100326.0344  161239.9177  273064.1299  -67238.6370  100496.2609
 [46]  -41189.4363 -470641.0774  377259.2627   58302.6339 -365645.9922
 [51]     918.3910    6878.8999   39690.8323   75676.8102  -25234.6246
 [56]  -31873.5749  -37251.1112  -20215.0646   61612.8094   19177.3262
 [61]   41912.3495   91521.0375  -11389.0954   21204.5453    1900.1603
 [66]   -5011.8768  -60402.7770   20511.9569  -19438.1650   63425.3249
 [71]  -54770.9993   22023.2646   56591.7320   29099.5316   31209.6344
 [76]   66402.8118  -63514.9514    8578.5975   14534.9577   19049.1006
 [81]  -20002.1147   10550.4337   20259.8279   44688.6209    2963.6719
 [86]    3312.3354   31060.2434   58613.4895   86439.5422   30338.2749
 [91]   15287.3081   40531.9047   -9696.7705   20650.2162   31077.1966
 [96]  -29681.6743   21697.7408   19042.5933  -42867.8432  -41747.1561

$iter
[1] 100

$eps
           [,1]
[1,] 0.02545494

> grouplasso(150,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1655694 
Iteration: 3 Eps: 0.01559986 
Iteration: 4 Eps: 0.001138864 
Iteration: 5 Eps: 0.0004830144 
Iteration: 6 Eps: 9.142291e-05 
Iteration: 7 Eps: 1.633461e-05 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -9.543627e-03 -6.222009e-02  1.241641e-01  7.954599e-04  2.433549e-02
  [6]  2.523732e-02 -1.033141e-01 -1.815152e-01  3.246121e-02 -1.370427e-01
 [11]  1.556826e-01 -6.183834e-02 -9.374339e-02  1.172819e-01 -9.323793e-02
 [16]  1.588169e-02 -7.739887e-02 -5.055331e-02 -7.629576e-03  7.170192e-05
 [21]  4.041345e-02 -1.830651e-02  2.094980e-02  2.378985e-02 -8.357626e-03
 [26]  3.042535e-01  5.095338e-01 -1.637305e-01  9.853824e-01 -4.137795e-01
 [31] -4.661773e-01 -1.516796e-01  7.699745e-01 -1.955620e-01 -8.178341e-01
 [36]  9.215105e-01 -6.151519e-01 -1.560209e-01 -3.625489e-01 -1.006217e-01
 [41]  3.150116e-01  4.521509e-01  8.664049e-01 -2.727830e-01  2.821403e-01
 [46] -9.066808e-02 -1.477013e+00  1.191428e+00  1.319917e-01 -1.172034e+00
 [51] -1.035394e-03 -2.103976e-03  1.611233e-03  8.924923e-03 -8.213434e-03
 [56] -5.884815e-03 -6.478419e-03  2.205757e-03  5.064278e-03  2.476913e-04
 [61]  7.391113e-03  4.863062e-03 -4.127052e-03  2.981076e-03 -3.082331e-03
 [66]  5.734067e-03 -8.522128e-03  1.283038e-03 -3.282624e-03  1.628668e-03
 [71] -8.172755e-02  2.728409e-02  5.183489e-02 -6.731888e-02  6.211219e-02
 [76]  1.165661e-01  2.722917e-03  2.750072e-03  2.938701e-02  2.617394e-02
 [81] -8.079246e-02  1.087666e-02  3.327766e-02  7.474509e-02 -3.100933e-02
 [86] -1.715534e-03 -1.351014e-02  4.925273e-02  5.332132e-02  4.062448e-02
 [91]  1.554865e-04  6.497691e-04 -4.214074e-04  7.720655e-04  5.005575e-04
 [96] -3.870880e-04  3.456187e-04  1.310241e-04 -4.059305e-04 -2.501131e-04

$iter
[1] 8

$eps
             [,1]
[1,] 2.216235e-06

> temp = grouplasso(150,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.1655694 
Iteration: 3 Eps: 0.01559986 
Iteration: 4 Eps: 0.001138864 
Iteration: 5 Eps: 0.0004830144 
Iteration: 6 Eps: 9.142291e-05 
Iteration: 7 Eps: 1.633461e-05 
> y = temp$beta
> x = temp$truebeta
> #pdf('hw4partdbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> #dev.off()
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=FALSE,scale=TRUE)
> #X = scale(X,center=FALSE,scale=TRUE)
> weights = sqrt(blocksize)
> 
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> weights = rep(1,9)
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=FALSE,scale=TRUE)
> #X = scale(X,center=FALSE,scale=TRUE)
> #weights = sqrt(blocksize)
> weights = rep(1,9)
> grouplasso(150,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0746861 
Iteration: 3 Eps: 0.01268338 
Iteration: 4 Eps: 0.009993362 
Iteration: 5 Eps: 0.01142115 
Iteration: 6 Eps: 0.01256795 
Iteration: 7 Eps: 0.01413601 
Iteration: 8 Eps: 0.01647147 
Iteration: 9 Eps: 0.01650759 
Iteration: 10 Eps: 0.01918116 
Iteration: 11 Eps: 0.01857512 
Iteration: 12 Eps: 0.02127913 
Iteration: 13 Eps: 0.02016095 
Iteration: 14 Eps: 0.02277887 
Iteration: 15 Eps: 0.02135125 
Iteration: 16 Eps: 0.02381434 
Iteration: 17 Eps: 0.02222322 
Iteration: 18 Eps: 0.02451387 
Iteration: 19 Eps: 0.02286551 
Iteration: 20 Eps: 0.02498177 
Iteration: 21 Eps: 0.02334475 
Iteration: 22 Eps: 0.0252949 
Iteration: 23 Eps: 0.02371 
Iteration: 24 Eps: 0.0255054 
Iteration: 25 Eps: 0.02399525 
Iteration: 26 Eps: 0.0256476 
Iteration: 27 Eps: 0.02422326 
Iteration: 28 Eps: 0.0257438 
Iteration: 29 Eps: 0.02440936 
Iteration: 30 Eps: 0.02580848 
Iteration: 31 Eps: 0.02456405 
Iteration: 32 Eps: 0.02585138 
Iteration: 33 Eps: 0.02469453 
Iteration: 34 Eps: 0.02587877 
Iteration: 35 Eps: 0.02480585 
Iteration: 36 Eps: 0.02589521 
Iteration: 37 Eps: 0.02490172 
Iteration: 38 Eps: 0.02590361 
Iteration: 39 Eps: 0.0249849 
Iteration: 40 Eps: 0.02590619 
Iteration: 41 Eps: 0.02505757 
Iteration: 42 Eps: 0.02590458 
Iteration: 43 Eps: 0.02512106 
Iteration: 44 Eps: 0.0258999 
Iteration: 45 Eps: 0.02517715 
Iteration: 46 Eps: 0.02589306 
Iteration: 47 Eps: 0.02522663 
Iteration: 48 Eps: 0.02588463 
Iteration: 49 Eps: 0.0252704 
Iteration: 50 Eps: 0.02587519 
Iteration: 51 Eps: 0.0253094 
Iteration: 52 Eps: 0.0258652 
Iteration: 53 Eps: 0.02534399 
Iteration: 54 Eps: 0.02585482 
Iteration: 55 Eps: 0.02537495 
Iteration: 56 Eps: 0.0258444 
Iteration: 57 Eps: 0.02540262 
Iteration: 58 Eps: 0.025834 
Iteration: 59 Eps: 0.02542737 
Iteration: 60 Eps: 0.02582385 
Iteration: 61 Eps: 0.02544962 
Iteration: 62 Eps: 0.0258139 
Iteration: 63 Eps: 0.0254696 
Iteration: 64 Eps: 0.02580447 
Iteration: 65 Eps: 0.02548768 
Iteration: 66 Eps: 0.02579529 
Iteration: 67 Eps: 0.02550389 
Iteration: 68 Eps: 0.02578652 
Iteration: 69 Eps: 0.0255184 
Iteration: 70 Eps: 0.02577824 
Iteration: 71 Eps: 0.02553168 
Iteration: 72 Eps: 0.02577041 
Iteration: 73 Eps: 0.02554364 
Iteration: 74 Eps: 0.02576302 
Iteration: 75 Eps: 0.02555441 
Iteration: 76 Eps: 0.02575604 
Iteration: 77 Eps: 0.02556423 
Iteration: 78 Eps: 0.02574949 
Iteration: 79 Eps: 0.02557312 
Iteration: 80 Eps: 0.02574343 
Iteration: 81 Eps: 0.02558124 
Iteration: 82 Eps: 0.02573773 
Iteration: 83 Eps: 0.02558858 
Iteration: 84 Eps: 0.02573242 
Iteration: 85 Eps: 0.0255953 
Iteration: 86 Eps: 0.02572745 
Iteration: 87 Eps: 0.02560138 
Iteration: 88 Eps: 0.02572283 
Iteration: 89 Eps: 0.02560693 
Iteration: 90 Eps: 0.02571855 
Iteration: 91 Eps: 0.02561198 
Iteration: 92 Eps: 0.02571458 
Iteration: 93 Eps: 0.02561659 
Iteration: 94 Eps: 0.0257109 
Iteration: 95 Eps: 0.02562083 
Iteration: 96 Eps: 0.02570748 
Iteration: 97 Eps: 0.02579821 
Iteration: 98 Eps: 0.02534629 
Iteration: 99 Eps: 0.02547886 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]   139689.341     1454.933   150233.038    20058.576    -9651.916
  [6]    20905.870   -36936.223  -167846.399    34422.742    -6051.361
 [11]    28415.942   118046.280   -70601.360   -55872.899    12656.380
 [16]   -44711.799    32888.360    52238.188  -172604.297   -42264.627
 [21]   130684.626    13184.754     1780.854   -39501.092    60900.260
 [26]   311910.905   524982.621  -155608.472   951432.258  -424366.776
 [31]  -447538.698  -123190.190   860820.322  -282011.288  -832322.157
 [36]   948605.850  -632206.279  -180528.707  -349441.507  -137050.318
 [41]   314149.408   497132.558   903402.363  -163100.026   323919.013
 [46]   -97890.534  -999999.978   999999.978   257888.427  -999999.978
 [51]    -8695.626    15136.248   106414.489   226993.241   -34326.828
 [56]   -83268.584  -104454.523   -50473.193   158961.193    59525.611
 [61]   120042.373   263365.341   -53480.155    54858.067    19470.205
 [66]   -15107.782  -167482.473    55456.639   -42762.259   178753.927
 [71]  -161125.827    50727.310   133077.404    31296.568    92630.718
 [76]   194855.758  -178544.623    25436.974    23562.399    49867.679
 [81]   -56313.135    39529.467    87537.296   139304.401   -15962.714
 [86]    12659.640    81792.913   159574.057   222868.902   108960.738
 [91]    68423.335   115151.981   -38550.913    49896.160   105389.017
 [96]   -82956.431    73107.127    48186.333   -93720.132  -103523.462

$iter
[1] 100

$eps
           [,1]
[1,] 0.02619655

> grouplasso(150,1,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07470442 
Iteration: 3 Eps: 0.01261432 
Iteration: 4 Eps: 0.009890587 
Iteration: 5 Eps: 0.01140642 
Iteration: 6 Eps: 0.01256657 
Iteration: 7 Eps: 0.01411141 
Iteration: 8 Eps: 0.01645415 
Iteration: 9 Eps: 0.01649421 
Iteration: 10 Eps: 0.019166 
Iteration: 11 Eps: 0.01856313 
Iteration: 12 Eps: 0.02126727 
Iteration: 13 Eps: 0.02015219 
Iteration: 14 Eps: 0.02276941 
Iteration: 15 Eps: 0.02134438 
Iteration: 16 Eps: 0.0238071 
Iteration: 17 Eps: 0.02221844 
Iteration: 18 Eps: 0.02450825 
Iteration: 19 Eps: 0.02286236 
Iteration: 20 Eps: 0.02497781 
Iteration: 21 Eps: 0.02334266 
Iteration: 22 Eps: 0.02529201 
Iteration: 23 Eps: 0.02370866 
Iteration: 24 Eps: 0.02550321 
Iteration: 25 Eps: 0.02399458 
Iteration: 26 Eps: 0.02564611 
Iteration: 27 Eps: 0.02422296 
Iteration: 28 Eps: 0.02574267 
Iteration: 29 Eps: 0.02440936 
Iteration: 30 Eps: 0.02580764 
Iteration: 31 Eps: 0.02456421 
Iteration: 32 Eps: 0.02585071 
Iteration: 33 Eps: 0.02469478 
Iteration: 34 Eps: 0.02587828 
Iteration: 35 Eps: 0.02480615 
Iteration: 36 Eps: 0.02589481 
Iteration: 37 Eps: 0.02490207 
Iteration: 38 Eps: 0.02590324 
Iteration: 39 Eps: 0.02498528 
Iteration: 40 Eps: 0.02590589 
Iteration: 41 Eps: 0.02505783 
Iteration: 42 Eps: 0.0259043 
Iteration: 43 Eps: 0.02512145 
Iteration: 44 Eps: 0.02589963 
Iteration: 45 Eps: 0.02517746 
Iteration: 46 Eps: 0.02589271 
Iteration: 47 Eps: 0.02522685 
Iteration: 48 Eps: 0.02588441 
Iteration: 49 Eps: 0.0252707 
Iteration: 50 Eps: 0.02587502 
Iteration: 51 Eps: 0.02530961 
Iteration: 52 Eps: 0.02586501 
Iteration: 53 Eps: 0.02534425 
Iteration: 54 Eps: 0.02585467 
Iteration: 55 Eps: 0.02537519 
Iteration: 56 Eps: 0.02584432 
Iteration: 57 Eps: 0.0254028 
Iteration: 58 Eps: 0.02583391 
Iteration: 59 Eps: 0.02542758 
Iteration: 60 Eps: 0.02582372 
Iteration: 61 Eps: 0.02544975 
Iteration: 62 Eps: 0.02581382 
Iteration: 63 Eps: 0.02546975 
Iteration: 64 Eps: 0.02580428 
Iteration: 65 Eps: 0.02548774 
Iteration: 66 Eps: 0.02579517 
Iteration: 67 Eps: 0.02550389 
Iteration: 68 Eps: 0.02578643 
Iteration: 69 Eps: 0.02551858 
Iteration: 70 Eps: 0.02577813 
Iteration: 71 Eps: 0.02553172 
Iteration: 72 Eps: 0.02577036 
Iteration: 73 Eps: 0.0255437 
Iteration: 74 Eps: 0.02576292 
Iteration: 75 Eps: 0.02555453 
Iteration: 76 Eps: 0.025756 
Iteration: 77 Eps: 0.02556433 
Iteration: 78 Eps: 0.02574947 
Iteration: 79 Eps: 0.02557323 
Iteration: 80 Eps: 0.02574336 
Iteration: 81 Eps: 0.02558132 
Iteration: 82 Eps: 0.02573767 
Iteration: 83 Eps: 0.02558866 
Iteration: 84 Eps: 0.02573235 
Iteration: 85 Eps: 0.02559531 
Iteration: 86 Eps: 0.02572738 
Iteration: 87 Eps: 0.02560143 
Iteration: 88 Eps: 0.02572278 
Iteration: 89 Eps: 0.02560697 
Iteration: 90 Eps: 0.02571853 
Iteration: 91 Eps: 0.02561203 
Iteration: 92 Eps: 0.02571453 
Iteration: 93 Eps: 0.02561664 
Iteration: 94 Eps: 0.02571085 
Iteration: 95 Eps: 0.02562084 
Iteration: 96 Eps: 0.02570744 
Iteration: 97 Eps: 0.02579734 
Iteration: 98 Eps: 0.02534509 
Iteration: 99 Eps: 0.0254739 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]   139662.028     1457.115   150163.233    20075.517    -9649.929
  [6]    20861.920   -36952.768  -167778.782    34408.145    -6063.511
 [11]    28379.510   117992.651   -70624.071   -55853.159    12624.009
 [16]   -44710.920    32864.660    52229.913  -172536.298   -42277.894
 [21]   130647.674    13193.147     1794.272   -39494.837    60890.200
 [26]   311912.347   524830.986  -155649.631   951247.274  -424239.758
 [31]  -447417.580  -123132.943   860625.956  -281934.119  -832113.268
 [36]   948537.414  -632049.965  -180525.592  -349248.150  -136982.796
 [41]   314196.997   497034.504   903135.436  -163142.428   323753.144
 [46]   -97970.354  -999999.978   999999.978   257787.984  -999999.978
 [51]    -8701.992    15141.778   106384.216   226974.776   -34354.119
 [56]   -83278.956  -104448.183   -50451.705   158954.479    59547.657
 [61]   120018.254   263280.127   -53467.981    54856.121    19441.444
 [66]   -15104.323  -167476.671    55451.000   -42788.766   178741.124
 [71]  -161093.167    50714.830   133078.408    31385.361    92632.169
 [76]   194838.264  -178540.650    25437.347    23576.771    49861.097
 [81]   -56311.761    39495.759    87511.701   139274.992   -15933.235
 [86]    12670.989    81796.744   159559.205   222870.231   108931.939
 [91]    68399.747   115140.262   -38557.521    49913.694   105350.217
 [96]   -82932.179    73077.029    48178.918   -93725.214  -103513.928

$iter
[1] 100

$eps
           [,1]
[1,] 0.02619264

> f3 = function(thetaj,notthetaj,w,Zj,notZj,lambda1,lambda2,j,blocksize){
+     temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2)))
+     temp3 = thetaj*Zj
+     for (k in 1:(blocksize-1)){temp3 = temp3 + notthetaj[k]*notZj[k]}
+     temp4 = (1/2)*t(w - temp3)%*%(w-temp3)
+     out = temp2+temp4
+     return(out)}
> grouplasso = function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){
+ 
+ if(missing(maxiter)){maxiter = 100}
+ if(missing(weights)){weights = sqrt(blocksize)}
+ lambda1vec = lambda1*weights
+     #lambda2 = 0
+ 
+ iter = 1
+ eps = 1
+ if(missing(tol)){tol = 10^(-5)}
+ 
+ while(eps>tol&iter<maxiter){
+     cat('Iteration:',iter,'Eps:',eps,'\n')
+     for(currentgroup in 1:group){    
+         (oldbeta = beta)
+         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
+         (Xl = X[,group.indx==currentgroup])
+         (betal = beta[group.indx==currentgroup])
+ 
+         (ZkThk = r)
+         (ZkThk[] = 0)
+         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
+ 
+         (a = t(Xl)%*%r)
+         (t = a)
+         (t[] = 0)
+         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
+         
+         if(lambda2==0){
+             if(sqrt(t(t(Xl)%*%r)%*%t(Xl)%*%r)<lambda1){betal=0}
+                     else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                     (temp= optimize(f3,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+             }
+             (beta[group.indx==currentgroup] = betal)
+             betal[]=0
+         }
+         }
+         
+             else{
+         (J = (1/(sqrt(blocksize[currentgroup])*lambda1vec[currentgroup]^2))*t(a-lambda2*t)%*%(a-lambda2*t))
+         if(J<=1){#setting the entire block to 0
+             betal=0
+         }
+         else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                 if(abs(t(Xl[,j])%*%w)<lambda2){betal[j] = 0}
+                 else{
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+                 }
+             }
+         }
+         (beta[group.indx==currentgroup] = betal)
+         betal[]=0
+     }
+     }
+     eps = (t(beta-oldbeta)%*%(beta-oldbeta))/(t(oldbeta)%*%oldbeta)
+     iter = iter + 1  
+ }
+ return(list(truebeta=truebeta,beta=beta,iter=iter,eps=eps))
+ }
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=FALSE,scale=TRUE)
>                                         #X = scale(X,center=FALSE,scale=TRUE)
> weights = sqrt(blocksize)
> #weights = rep(1,9)
> 
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> grouplasso(150,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07636487 
Iteration: 3 Eps: 0.01188535 
Iteration: 4 Eps: 0.008326114 
Iteration: 5 Eps: 0.009715543 
Iteration: 6 Eps: 0.01080365 
Iteration: 7 Eps: 0.01235914 
Iteration: 8 Eps: 0.01451104 
Iteration: 9 Eps: 0.01499338 
Iteration: 10 Eps: 0.01746501 
Iteration: 11 Eps: 0.01739638 
Iteration: 12 Eps: 0.01990495 
Iteration: 13 Eps: 0.01934165 
Iteration: 14 Eps: 0.02174087 
Iteration: 15 Eps: 0.02083846 
Iteration: 16 Eps: 0.0230574 
Iteration: 17 Eps: 0.02194613 
Iteration: 18 Eps: 0.02397002 
Iteration: 19 Eps: 0.02275674 
Iteration: 20 Eps: 0.0245922 
Iteration: 21 Eps: 0.02335038 
Iteration: 22 Eps: 0.02501401 
Iteration: 23 Eps: 0.02378938 
Iteration: 24 Eps: 0.02529933 
Iteration: 25 Eps: 0.02411896 
Iteration: 26 Eps: 0.02549239 
Iteration: 27 Eps: 0.02437122 
Iteration: 28 Eps: 0.02562331 
Iteration: 29 Eps: 0.02456835 
Iteration: 30 Eps: 0.02571188 
Iteration: 31 Eps: 0.02472535 
Iteration: 32 Eps: 0.02577123 
Iteration: 33 Eps: 0.0248526 
Iteration: 34 Eps: 0.02581018 
Iteration: 35 Eps: 0.02495728 
Iteration: 36 Eps: 0.02583472 
Iteration: 37 Eps: 0.02504454 
Iteration: 38 Eps: 0.02584906 
Iteration: 39 Eps: 0.02511805 
Iteration: 40 Eps: 0.02585605 
Iteration: 41 Eps: 0.02518066 
Iteration: 42 Eps: 0.02585791 
Iteration: 43 Eps: 0.02523437 
Iteration: 44 Eps: 0.02585607 
Iteration: 45 Eps: 0.0252808 
Iteration: 46 Eps: 0.02585155 
Iteration: 47 Eps: 0.0253212 
Iteration: 48 Eps: 0.0258454 
Iteration: 49 Eps: 0.02535656 
Iteration: 50 Eps: 0.02583793 
Iteration: 51 Eps: 0.02538767 
Iteration: 52 Eps: 0.02582982 
Iteration: 53 Eps: 0.02541514 
Iteration: 54 Eps: 0.02582127 
Iteration: 55 Eps: 0.02543951 
Iteration: 56 Eps: 0.0258126 
Iteration: 57 Eps: 0.02546118 
Iteration: 58 Eps: 0.02580389 
Iteration: 59 Eps: 0.02548046 
Iteration: 60 Eps: 0.02579535 
Iteration: 61 Eps: 0.02549775 
Iteration: 62 Eps: 0.02578709 
Iteration: 63 Eps: 0.02551318 
Iteration: 64 Eps: 0.02577907 
Iteration: 65 Eps: 0.02552716 
Iteration: 66 Eps: 0.0257714 
Iteration: 67 Eps: 0.02553967 
Iteration: 68 Eps: 0.02576414 
Iteration: 69 Eps: 0.02555102 
Iteration: 70 Eps: 0.02575726 
Iteration: 71 Eps: 0.02556123 
Iteration: 72 Eps: 0.02575077 
Iteration: 73 Eps: 0.0255705 
Iteration: 74 Eps: 0.02574464 
Iteration: 75 Eps: 0.02557888 
Iteration: 76 Eps: 0.02573893 
Iteration: 77 Eps: 0.0255865 
Iteration: 78 Eps: 0.02573357 
Iteration: 79 Eps: 0.02559342 
Iteration: 80 Eps: 0.02572859 
Iteration: 81 Eps: 0.02559968 
Iteration: 82 Eps: 0.0257239 
Iteration: 83 Eps: 0.02560543 
Iteration: 84 Eps: 0.02571958 
Iteration: 85 Eps: 0.02561062 
Iteration: 86 Eps: 0.02571557 
Iteration: 87 Eps: 0.02561539 
Iteration: 88 Eps: 0.02571183 
Iteration: 89 Eps: 0.02561974 
Iteration: 90 Eps: 0.02570834 
Iteration: 91 Eps: 0.02562368 
Iteration: 92 Eps: 0.02570511 
Iteration: 93 Eps: 0.02562728 
Iteration: 94 Eps: 0.02570213 
Iteration: 95 Eps: 0.02563055 
Iteration: 96 Eps: 0.02569938 
Iteration: 97 Eps: 0.02565667 
Iteration: 98 Eps: 0.02580365 
Iteration: 99 Eps: 0.02534678 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]   134922.803     2237.614   141472.942    19730.128   -11115.812
  [6]    14987.059   -40627.415  -156101.752    31501.220    -6885.806
 [11]    26802.116   109022.505   -73468.751   -51744.983     8541.380
 [16]   -44618.865    28091.610    47064.324  -160671.317   -44052.731
 [21]   122374.093    12679.809     6495.827   -38577.394    60495.711
 [26]   302993.025   512747.691  -155009.487   919906.706  -398368.935
 [31]  -433946.345  -115506.401   823133.855  -271372.990  -795802.690
 [36]   932590.404  -611426.743  -176947.874  -318719.203  -131589.787
 [41]   314410.956   486322.850   856301.365  -170613.447   307174.675
 [46]  -105581.547  -999999.978   999999.978   244308.807  -999999.978
 [51]    -7905.256    15714.291   103212.779   222255.157   -37896.522
 [56]   -84651.679  -103330.282   -47892.923   155619.480    61309.270
 [61]   116657.524   252155.635   -48696.108    54806.626    14765.900
 [66]   -13770.124  -164063.093    53000.601   -45606.350   175534.246
 [71]  -154994.272    50351.694   134729.440    45348.588    89206.920
 [76]   191950.133  -178351.769    26608.813    25321.211    47674.431
 [81]   -53190.184    37173.295    82112.769   132278.804   -11419.416
 [86]    13070.534    82229.828   158506.559   224537.753   103608.985
 [91]    63517.578   113105.103   -39285.936    51397.390   100085.025
 [96]   -79696.947    68490.857    46931.245   -95961.803  -101315.942

$iter
[1] 100

$eps
           [,1]
[1,] 0.02568305

> grouplasso(250,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07797825 
Iteration: 3 Eps: 0.01119336 
Iteration: 4 Eps: 0.006852874 
Iteration: 5 Eps: 0.008113918 
Iteration: 6 Eps: 0.009106651 
Iteration: 7 Eps: 0.01060138 
Iteration: 8 Eps: 0.01255328 
Iteration: 9 Eps: 0.01337972 
Iteration: 10 Eps: 0.01564848 
Iteration: 11 Eps: 0.01604562 
Iteration: 12 Eps: 0.01836291 
Iteration: 13 Eps: 0.0183184 
Iteration: 14 Eps: 0.0205112 
Iteration: 15 Eps: 0.0201216 
Iteration: 16 Eps: 0.02211176 
Iteration: 17 Eps: 0.0214824 
Iteration: 18 Eps: 0.02325533 
Iteration: 19 Eps: 0.02248432 
Iteration: 20 Eps: 0.02405461 
Iteration: 21 Eps: 0.0232153 
Iteration: 22 Eps: 0.02460814 
Iteration: 23 Eps: 0.02374922 
Iteration: 24 Eps: 0.02498972 
Iteration: 25 Eps: 0.02414192 
Iteration: 26 Eps: 0.02525244 
Iteration: 27 Eps: 0.02443437 
Iteration: 28 Eps: 0.02543373 
Iteration: 29 Eps: 0.02465578 
Iteration: 30 Eps: 0.02555915 
Iteration: 31 Eps: 0.02482621 
Iteration: 32 Eps: 0.02564568 
Iteration: 33 Eps: 0.02495956 
Iteration: 34 Eps: 0.02570494 
Iteration: 35 Eps: 0.02506538 
Iteration: 36 Eps: 0.02574484 
Iteration: 37 Eps: 0.02515055 
Iteration: 38 Eps: 0.02577096 
Iteration: 39 Eps: 0.02521998 
Iteration: 40 Eps: 0.02578719 
Iteration: 41 Eps: 0.02527721 
Iteration: 42 Eps: 0.02579635 
Iteration: 43 Eps: 0.02532491 
Iteration: 44 Eps: 0.02580045 
Iteration: 45 Eps: 0.02536513 
Iteration: 46 Eps: 0.02580089 
Iteration: 47 Eps: 0.02539924 
Iteration: 48 Eps: 0.02579889 
Iteration: 49 Eps: 0.02542848 
Iteration: 50 Eps: 0.0257951 
Iteration: 51 Eps: 0.0254537 
Iteration: 52 Eps: 0.02579017 
Iteration: 53 Eps: 0.02547565 
Iteration: 54 Eps: 0.02578443 
Iteration: 55 Eps: 0.02549475 
Iteration: 56 Eps: 0.02577834 
Iteration: 57 Eps: 0.02551165 
Iteration: 58 Eps: 0.025772 
Iteration: 59 Eps: 0.02552654 
Iteration: 60 Eps: 0.02576567 
Iteration: 61 Eps: 0.02553979 
Iteration: 62 Eps: 0.02575947 
Iteration: 63 Eps: 0.02555153 
Iteration: 64 Eps: 0.02575331 
Iteration: 65 Eps: 0.02556208 
Iteration: 66 Eps: 0.02574745 
Iteration: 67 Eps: 0.02557152 
Iteration: 68 Eps: 0.02574183 
Iteration: 69 Eps: 0.02558003 
Iteration: 70 Eps: 0.02573651 
Iteration: 71 Eps: 0.02558768 
Iteration: 72 Eps: 0.02573146 
Iteration: 73 Eps: 0.0255946 
Iteration: 74 Eps: 0.02572668 
Iteration: 75 Eps: 0.02560086 
Iteration: 76 Eps: 0.0257223 
Iteration: 77 Eps: 0.0256066 
Iteration: 78 Eps: 0.02571816 
Iteration: 79 Eps: 0.02561173 
Iteration: 80 Eps: 0.02571424 
Iteration: 81 Eps: 0.02561643 
Iteration: 82 Eps: 0.02571064 
Iteration: 83 Eps: 0.02562072 
Iteration: 84 Eps: 0.02570732 
Iteration: 85 Eps: 0.0256246 
Iteration: 86 Eps: 0.02570417 
Iteration: 87 Eps: 0.02562814 
Iteration: 88 Eps: 0.02570131 
Iteration: 89 Eps: 0.02563139 
Iteration: 90 Eps: 0.02569862 
Iteration: 91 Eps: 0.02563435 
Iteration: 92 Eps: 0.02569611 
Iteration: 93 Eps: 0.02563704 
Iteration: 94 Eps: 0.02569385 
Iteration: 95 Eps: 0.02563951 
Iteration: 96 Eps: 0.02569168 
Iteration: 97 Eps: 0.02564175 
Iteration: 98 Eps: 0.02576931 
Iteration: 99 Eps: 0.02556048 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]   126624.538     2688.525   129381.033    17300.419   -12161.623
  [6]     9542.713   -45036.899  -142688.048    25976.452    -8204.113
 [11]    25365.871    99153.345   -74474.370   -45798.868     3681.282
 [16]   -40305.172    24000.035    41578.502  -147786.019   -44402.922
 [21]   110918.811    10957.162    12647.479   -38962.987    59125.931
 [26]   283156.216   489854.960  -144816.805   869859.190  -367781.747
 [31]  -415664.952  -105322.011   766545.514  -254764.371  -744211.837
 [36]   884174.364  -578787.068  -163873.057  -290277.520  -126715.401
 [41]   298456.619   462492.497   793968.692  -169979.080   288867.056
 [46]  -105759.761  -999999.978   999999.978   224255.709  -999999.978
 [51]    -5104.323    15055.770   101621.345   212615.314   -41801.554
 [56]   -85506.904   -98939.894   -46969.672   149077.834    60203.374
 [61]   112360.870   239910.081   -44247.181    55264.726     8343.323
 [66]   -10055.294  -159593.115    50225.638   -48830.348   166800.643
 [71]  -148942.590    51198.709   134711.981    51762.955    85781.421
 [76]   186503.357  -171001.555    25736.695    29143.197    47408.846
 [81]   -50328.568    33057.700    76535.745   124693.558    -7788.954
 [86]    10093.971    80737.223   153876.650   222276.188    98008.413
 [91]    59121.903   108070.013   -36874.425    52279.953    92928.751
 [96]   -76514.092    63595.995    46631.270   -97836.467   -98844.306

$iter
[1] 100

$eps
           [,1]
[1,] 0.02540692

> set.seed(123456)
> p = 10
> n = 20
> group = 5
> blocksize = rep(ceiling(p/group),group)
> nonsparse = 5
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> for(i in 1:group){
+   group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
+ }
> 
> #(y = scale(y,center=TRUE,scale=FALSE))
> #(X = scale(X,center=TRUE,scale=FALSE))
> weights = sqrt(blocksize)
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> (notthetaj = betal[(1:blocksize[currentgroup])!=j])
Error: object 'betal' not found
> (oldbeta = beta)
 [1] 0 0 0 0 0 0 0 0 0 0
>         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
Error: object 'currentgroup' not found
>         (Xl = X[,group.indx==currentgroup])
Error: object 'currentgroup' not found
>         (betal = beta[group.indx==currentgroup])
Error: object 'currentgroup' not found
> (ZkThk = r)
Error: object 'r' not found
>         (ZkThk[] = 0)
Error in ZkThk[] = 0 : object 'ZkThk' not found
>         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
Error: object 'currentgroup' not found
> currentgroup=1
> (oldbeta = beta)
 [1] 0 0 0 0 0 0 0 0 0 0
>         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
             [,1]
 [1,]   5.9986746
 [2,]  17.8115453
 [3,]   6.3222653
 [4,]  -0.3661159
 [5,]   6.1895956
 [6,]   0.5596230
 [7,]   4.7550081
 [8,]   3.7347211
 [9,]  -3.9765303
[10,]  17.3668051
[11,]   1.1079650
[12,]  -2.1605002
[13,]  -2.4933501
[14,]  12.8297338
[15,]  -9.3042821
[16,]  18.6917158
[17,] -15.8941884
[18,]   2.0617441
[19,]   4.7812955
[20,]  -9.7440256
>         (Xl = X[,group.indx==currentgroup])
            [,1]       [,2]
 [1,]  2.9778432 -3.4040644
 [2,]  2.5356509 -4.1935475
 [3,] -1.0874432 -3.6734966
 [4,] -1.5844330 -3.2809460
 [5,] -1.3870589 -0.2222216
 [6,] -3.0165527  2.0050477
 [7,]  0.3485796  3.7988906
 [8,] -4.0347376  3.7779368
 [9,]  4.8784694  3.5387959
[10,] -3.3243052 -3.3401248
[11,]  2.9798913  0.2296875
[12,]  0.9379402  3.6912820
[13,]  4.0531001 -2.6884331
[14,]  3.8084865 -3.8091909
[15,]  4.9383655  3.2395123
[16,]  3.9595634 -4.1972302
[17,]  3.7864335  4.5236307
[18,] -3.0239425  3.7161736
[19,] -1.6500640  2.1215382
[20,]  2.7720632  1.0540451
>         (betal = beta[group.indx==currentgroup])
[1] 0 0
>         
>         (ZkThk = r)
             [,1]
 [1,]   5.9986746
 [2,]  17.8115453
 [3,]   6.3222653
 [4,]  -0.3661159
 [5,]   6.1895956
 [6,]   0.5596230
 [7,]   4.7550081
 [8,]   3.7347211
 [9,]  -3.9765303
[10,]  17.3668051
[11,]   1.1079650
[12,]  -2.1605002
[13,]  -2.4933501
[14,]  12.8297338
[15,]  -9.3042821
[16,]  18.6917158
[17,] -15.8941884
[18,]   2.0617441
[19,]   4.7812955
[20,]  -9.7440256
>         (ZkThk[] = 0)
[1] 0
>         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
> 
>         (a = t(Xl)%*%r)
          [,1]
[1,]  -77.3076
[2,] -380.1442
>         (t = a)
          [,1]
[1,]  -77.3076
[2,] -380.1442
>         (t[] = 0)
[1] 0
>         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
> (notthetaj = betal[(1:blocksize[currentgroup])!=j])
[1] 0
> w=w
Error: object 'w' not found
> (w = r - ZkThk)
             [,1]
 [1,]   5.9986746
 [2,]  17.8115453
 [3,]   6.3222653
 [4,]  -0.3661159
 [5,]   6.1895956
 [6,]   0.5596230
 [7,]   4.7550081
 [8,]   3.7347211
 [9,]  -3.9765303
[10,]  17.3668051
[11,]   1.1079650
[12,]  -2.1605002
[13,]  -2.4933501
[14,]  12.8297338
[15,]  -9.3042821
[16,]  18.6917158
[17,] -15.8941884
[18,]   2.0617441
[19,]   4.7812955
[20,]  -9.7440256
> (Zj = Xl[,j])
 [1] -3.4040644 -4.1935475 -3.6734966 -3.2809460 -0.2222216  2.0050477
 [7]  3.7988906  3.7779368  3.5387959 -3.3401248  0.2296875  3.6912820
[13] -2.6884331 -3.8091909  3.2395123 -4.1972302  4.5236307  3.7161736
[19]  2.1215382  1.0540451
> (notZj = Xl[,(1:blocksize[currentgroup])!=j])
 [1]  2.9778432  2.5356509 -1.0874432 -1.5844330 -1.3870589 -3.0165527
 [7]  0.3485796 -4.0347376  4.8784694 -3.3243052  2.9798913  0.9379402
[13]  4.0531001  3.8084865  4.9383655  3.9595634  3.7864335 -3.0239425
[19] -1.6500640  2.7720632
> dim(notZj)
NULL
> length(notZj)
[1] 20
> length(w)
[1] 20
> f2 = function(thetaj,notthetaj,w,Zj,notZj,lambda1,lambda2,j,blocksize){
+     (temp1 = lambda2*(abs(thetaj)+sum(abs(notthetaj))))
+     temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2)))
+     temp3 = thetaj*Zj
+     for (k in 1:(blocksize-1)){temp3 = temp3 + notthetaj[k]*notZj[,k]}
+     temp4 = (1/2)*t(w - temp3)%*%(w-temp3)
+     out = temp1+temp2+temp4
+     return(out)}
> f3 = function(thetaj,notthetaj,w,Zj,notZj,lambda1,lambda2,j,blocksize){
+     temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2)))
+     temp3 = thetaj*Zj
+     for (k in 1:(blocksize-1)){temp3 = temp3 + notthetaj[k]*notZj[,k]}
+     temp4 = (1/2)*t(w - temp3)%*%(w-temp3)
+     out = temp2+temp4
+     return(out)}
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=FALSE,scale=TRUE)
>                                         #X = scale(X,center=FALSE,scale=TRUE)
> weights = sqrt(blocksize)
> #weights = rep(1,9)
> 
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> grouplasso(250,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Error in notZj[, k] (from #4) : incorrect number of dimensions
> A = matrix(runif(16),nrow=4,ncol=4)
> A
           [,1]       [,2]      [,3]      [,4]
[1,] 0.85000477 0.73709165 0.4605027 0.4985303
[2,] 0.87558227 0.56781556 0.9797435 0.8491275
[3,] 0.47799421 0.83081196 0.1154366 0.4993307
[4,] 0.03216205 0.09392484 0.3362172 0.8311296
> A[,3]
[1] 0.4605027 0.9797435 0.1154366 0.3362172
> dim(A)
[1] 4 4
> dim(runif(16))
NULL
> is.null(dim(runif(16)))
[1] TRUE
> p = 10
> n = 20
> group = 2
> blocksize = rep(ceiling(p/group),group)
> nonsparse = 5
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> for(i in 1:group){
+   group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
+ }
> 
> #(y = scale(y,center=TRUE,scale=FALSE))
> #(X = scale(X,center=TRUE,scale=FALSE))
> weights = sqrt(blocksize)
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> currentgroup
[1] 1
> (oldbeta = beta)
 [1] 0 0 0 0 0 0 0 0 0 0
>         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
            [,1]
 [1,]  3.7987060
 [2,]  3.4364847
 [3,]  2.3119578
 [4,] -7.0189969
 [5,] -6.1015672
 [6,]  6.2624658
 [7,] -9.3723708
 [8,] -0.9728547
 [9,]  6.9298869
[10,]  0.2751019
[11,] -0.8782451
[12,]  9.3313729
[13,] -1.8749207
[14,]  4.8454374
[15,] -2.1198227
[16,] -4.2407449
[17,] -0.3322942
[18,] -7.1579979
[19,] -6.1345396
[20,]  7.9477157
>         (Xl = X[,group.indx==currentgroup])
            [,1]        [,2]       [,3]       [,4]        [,5]
 [1,]  3.9956189 -2.93631050  1.0742821 -2.7354911  3.60216438
 [2,]  4.5256634 -2.49714646  1.6291318 -3.9804018  1.57918544
 [3,]  0.7911780 -3.03405404  4.0213248  1.0439097 -0.92714522
 [4,] -2.8324315  2.44540270  2.1241448  2.6242377 -0.63128277
 [5,] -3.8294136  3.31081920 -2.7593973  2.8549393 -0.32171451
 [6,]  1.0075972 -2.34106127  0.1917539 -3.9215822 -0.82014549
 [7,] -0.6997425  1.28985382  4.3895379 -4.3134538  2.80395720
 [8,] -0.5210369 -1.76028163  4.4437481 -2.1271348  0.06319924
 [9,] -4.9093585 -4.13915304  3.5770796 -3.3483566 -4.78404528
[10,]  3.9160145 -3.93500282  2.8499937  0.4324368  4.25222315
[11,]  2.7899307 -2.33869139  0.9382650 -0.6817665  2.29673930
[12,]  4.5244393 -3.73781700 -2.4546205  3.3954369 -0.31680683
[13,] -3.4312393 -2.77523570  1.5921449 -3.5173330  1.11587689
[14,]  1.5084785  0.75115100 -1.2277583 -4.9709425 -1.11237175
[15,] -4.5627743 -1.74736643 -4.4556722 -2.1805265  1.96181370
[16,] -3.0917462  0.59200739 -0.2886048 -1.9399865  1.67381191
[17,]  4.3279925 -2.02913419 -0.9728250  4.2588118  2.93628759
[18,] -3.9643563 -2.06351030 -1.2690421  4.0558327  3.18591740
[19,] -2.8418583 -0.61227520 -2.8596166 -3.8554901  4.86067280
[20,] -1.5490902  0.06841418 -2.8465433 -4.2904258 -2.38768690
>         (betal = beta[group.indx==currentgroup])
[1] 0 0 0 0 0
> 
>         if(t(Xl)%*%r<lambda1){betal=0}
Warning message:
In if (t(Xl) %*% r < lambda1) { :
  the condition has length > 1 and only the first element will be used
>         else{
Error: unexpected 'else' in "        else"
>             betal = solve(t(Xl)%*%Xl+lambda1/sqrt(t(betal)%*%betal))%*%t(Xl)%*%r
Error in solve(t(Xl) %*% Xl + lambda1/sqrt(t(betal) %*% betal)) : 
  error in evaluating the argument 'a' in selecting a method for function 'solve': Error in t(Xl) %*% Xl + lambda1/sqrt(t(betal) %*% betal) : 
  non-conformable arrays
>          }
Error: unexpected '}' in "         }"
>         
>         (ZkThk = r)
            [,1]
 [1,]  3.7987060
 [2,]  3.4364847
 [3,]  2.3119578
 [4,] -7.0189969
 [5,] -6.1015672
 [6,]  6.2624658
 [7,] -9.3723708
 [8,] -0.9728547
 [9,]  6.9298869
[10,]  0.2751019
[11,] -0.8782451
[12,]  9.3313729
[13,] -1.8749207
[14,]  4.8454374
[15,] -2.1198227
[16,] -4.2407449
[17,] -0.3322942
[18,] -7.1579979
[19,] -6.1345396
[20,]  7.9477157
>         (ZkThk[] = 0)
[1] 0
>         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
> 
>         (a = t(Xl)%*%r)
           [,1]
[1,]  164.59272
[2,] -121.96317
[3,]  -15.45413
[4,]  -75.89618
[5,] -136.38712
>         (t = a)
           [,1]
[1,]  164.59272
[2,] -121.96317
[3,]  -15.45413
[4,]  -75.89618
[5,] -136.38712
>         (t[] = 0)
[1] 0
>         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
> (notthetaj = betal[(1:blocksize[currentgroup])!=j])
[1]  0 NA NA NA
> betal
[1] 0
> blocksize[currentgroup]
[1] 5
> j
[1] 5
> j=1
> (notthetaj = betal[(1:blocksize[currentgroup])!=j])
[1] NA NA NA NA
> (1:blocksize[currentgroup])!=j
[1] FALSE  TRUE  TRUE  TRUE  TRUE
> betal
[1] 0
> (betal = beta[group.indx==currentgroup])
[1] 0 0 0 0 0
> (oldbeta = beta)
 [1] 0 0 0 0 0 0 0 0 0 0
>         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
            [,1]
 [1,]  3.7987060
 [2,]  3.4364847
 [3,]  2.3119578
 [4,] -7.0189969
 [5,] -6.1015672
 [6,]  6.2624658
 [7,] -9.3723708
 [8,] -0.9728547
 [9,]  6.9298869
[10,]  0.2751019
[11,] -0.8782451
[12,]  9.3313729
[13,] -1.8749207
[14,]  4.8454374
[15,] -2.1198227
[16,] -4.2407449
[17,] -0.3322942
[18,] -7.1579979
[19,] -6.1345396
[20,]  7.9477157
>         (Xl = X[,group.indx==currentgroup])
            [,1]        [,2]       [,3]       [,4]        [,5]
 [1,]  3.9956189 -2.93631050  1.0742821 -2.7354911  3.60216438
 [2,]  4.5256634 -2.49714646  1.6291318 -3.9804018  1.57918544
 [3,]  0.7911780 -3.03405404  4.0213248  1.0439097 -0.92714522
 [4,] -2.8324315  2.44540270  2.1241448  2.6242377 -0.63128277
 [5,] -3.8294136  3.31081920 -2.7593973  2.8549393 -0.32171451
 [6,]  1.0075972 -2.34106127  0.1917539 -3.9215822 -0.82014549
 [7,] -0.6997425  1.28985382  4.3895379 -4.3134538  2.80395720
 [8,] -0.5210369 -1.76028163  4.4437481 -2.1271348  0.06319924
 [9,] -4.9093585 -4.13915304  3.5770796 -3.3483566 -4.78404528
[10,]  3.9160145 -3.93500282  2.8499937  0.4324368  4.25222315
[11,]  2.7899307 -2.33869139  0.9382650 -0.6817665  2.29673930
[12,]  4.5244393 -3.73781700 -2.4546205  3.3954369 -0.31680683
[13,] -3.4312393 -2.77523570  1.5921449 -3.5173330  1.11587689
[14,]  1.5084785  0.75115100 -1.2277583 -4.9709425 -1.11237175
[15,] -4.5627743 -1.74736643 -4.4556722 -2.1805265  1.96181370
[16,] -3.0917462  0.59200739 -0.2886048 -1.9399865  1.67381191
[17,]  4.3279925 -2.02913419 -0.9728250  4.2588118  2.93628759
[18,] -3.9643563 -2.06351030 -1.2690421  4.0558327  3.18591740
[19,] -2.8418583 -0.61227520 -2.8596166 -3.8554901  4.86067280
[20,] -1.5490902  0.06841418 -2.8465433 -4.2904258 -2.38768690
>         (betal = beta[group.indx==currentgroup])
[1] 0 0 0 0 0
> t(Xl)%*%r<lambda1
     [,1]
[1,] TRUE
[2,] TRUE
[3,] TRUE
[4,] TRUE
[5,] TRUE
> #code for group lasso
> grouplasso = function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){
+ 
+ if(missing(maxiter)){maxiter = 100}
+ if(missing(weights)){weights = sqrt(blocksize)}
+ lambda1vec = lambda1*weights
+     #lambda2 = 0
+ 
+ iter = 1
+ eps = 1
+ if(missing(tol)){tol = 10^(-5)}
+ 
+ while(eps>tol&iter<maxiter){
+     cat('Iteration:',iter,'Eps:',eps,'\n')
+     for(currentgroup in 1:group){    
+         (oldbeta = beta)
+         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
+         (Xl = X[,group.indx==currentgroup])
+         (betal = beta[group.indx==currentgroup])
+ 
+         (ZkThk = r)
+         (ZkThk[] = 0)
+         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
+ 
+         (a = t(Xl)%*%r)
+         (t = a)
+         (t[] = 0)
+         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
+         
+         if(lambda2==0){
+             if(sqrt(t(t(Xl)%*%r)%*%t(Xl)%*%r)<lambda1){betal[]=0}
+                     else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+             }
+             (beta[group.indx==currentgroup] = betal)
+             betal[]=0
+         }
+         }
+         
+             else{
+         (J = (1/(sqrt(blocksize[currentgroup])*lambda1vec[currentgroup]^2))*t(a-lambda2*t)%*%(a-lambda2*t))
+         if(J<=1){#setting the entire block to 0
+             betal[]=0
+         }
+         else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                 if(abs(t(Xl[,j])%*%w)<lambda2){betal[j] = 0}
+                 else{
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+                 }
+             }
+         }
+         (beta[group.indx==currentgroup] = betal)
+         betal[]=0
+     }
+     }
+     eps = (t(beta-oldbeta)%*%(beta-oldbeta))/(t(oldbeta)%*%oldbeta)
+     iter = iter + 1  
+ }
+ return(list(truebeta=truebeta,beta=beta,iter=iter,eps=eps))
+ }
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=FALSE,scale=TRUE)
>                                         #X = scale(X,center=FALSE,scale=TRUE)
> weights = sqrt(blocksize)
> #weights = rep(1,9)
> 
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> grouplasso(250,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Error in notZj[, k] (from #5) : incorrect number of dimensions
> set.seed(123456)
> p = 10
> n = 20
> group = 2
> blocksize = rep(ceiling(p/group),group)
> nonsparse = 5
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> for(i in 1:group){
+   group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
+ }
> 
> #(y = scale(y,center=TRUE,scale=FALSE))
> #(X = scale(X,center=TRUE,scale=FALSE))
> weights = sqrt(blocksize)
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> (oldbeta = beta)
 [1] 1 1 1 1 1 1 1 1 1 1
>         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
              [,1]
 [1,]   7.13303392
 [2,]  18.73183611
 [3,]   3.47405698
 [4,]  -9.35475108
 [5,]  11.36762258
 [6,]  -1.07296597
 [7,]   1.13707388
 [8,]   8.13765185
 [9,]  -5.45372562
[10,]  23.54763665
[11,]  -3.13818741
[12,]   2.77182545
[13,]   0.02611415
[14,]   5.71870163
[15,] -11.37854755
[16,]  15.22419042
[17,] -10.86091139
[18,]  -1.44895222
[19,]  13.34707817
[20,]  -3.39934409
>         (Xl = X[,group.indx==currentgroup])
            [,1]       [,2]        [,3]       [,4]       [,5]
 [1,]  2.9778432 -3.4040644 -2.74567816 -3.0396432 -3.5798373
 [2,]  2.5356509 -4.1935475  2.39595136 -4.8041981 -4.9868854
 [3,] -1.0874432 -3.6734966  3.95542447  0.2772740  3.3343310
 [4,] -1.5844330 -3.2809460 -2.05536759 -3.1837043  4.4549432
 [5,] -1.3870589 -0.2222216  0.15352517 -3.5226525  0.6790092
 [6,] -3.0165527  2.0050477 -0.65350450  0.9097402 -0.9830622
 [7,]  0.3485796  3.7988906  0.75165124 -4.9700993 -3.1494045
 [8,] -4.0347376  3.7779368  2.40956019 -1.3898390  0.4754075
 [9,]  4.8784694  3.5387959  1.78172634 -3.7073230  0.6288556
[10,] -3.3243052 -3.3401248 -1.37983814 -4.8542095 -3.3903304
[11,]  2.9798913  0.2296875 -1.65442543 -3.0556950 -1.9214812
[12,]  0.9379402  3.6912820  2.48855999  1.4867069 -1.4046955
[13,]  4.0531001 -2.6884331  0.06616552  4.4062879 -3.3295855
[14,]  3.8084865 -3.8091909  3.62259152 -1.5364389 -3.0657407
[15,]  4.9383655  3.2395123  2.59557256  3.4496815 -0.4527572
[16,]  3.9595634 -4.1972302  4.64383255 -3.7061646 -4.6054232
[17,]  3.7864335  4.5236307  3.34437237  3.5175602  3.6124940
[18,] -3.0239425  3.7161736  3.37036932 -2.8157283  2.6815945
[19,] -1.6500640  2.1215382 -2.32532910 -3.6776864 -3.8717647
[20,]  2.7720632  1.0540451 -3.24067506  1.2145472 -1.0408960
>         (betal = beta[group.indx==currentgroup])
[1] 1 1 1 1 1
> (ZkThk = r)
              [,1]
 [1,]   7.13303392
 [2,]  18.73183611
 [3,]   3.47405698
 [4,]  -9.35475108
 [5,]  11.36762258
 [6,]  -1.07296597
 [7,]   1.13707388
 [8,]   8.13765185
 [9,]  -5.45372562
[10,]  23.54763665
[11,]  -3.13818741
[12,]   2.77182545
[13,]   0.02611415
[14,]   5.71870163
[15,] -11.37854755
[16,]  15.22419042
[17,] -10.86091139
[18,]  -1.44895222
[19,]  13.34707817
[20,]  -3.39934409
>         (ZkThk[] = 0)
[1] 0
> for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
> ZkThk
           [,1]
 [1,] -28.50504
 [2,] -12.52448
 [3,] -27.16168
 [4,]  19.36439
 [5,]  10.27804
 [6,]   0.00000
 [7,]   0.00000
 [8,]   0.00000
 [9,]   0.00000
[10,]   0.00000
[11,]   0.00000
[12,]   0.00000
[13,]   0.00000
[14,]   0.00000
[15,]   0.00000
[16,]   0.00000
[17,]   0.00000
[18,]   0.00000
[19,]   0.00000
[20,]   0.00000
> (a = t(Xl)%*%r)
           [,1]
[1,] -119.03640
[2,] -295.35511
[3,]   51.71078
[4,] -410.97138
[5,] -394.94621
>         (t = a)
           [,1]
[1,] -119.03640
[2,] -295.35511
[3,]   51.71078
[4,] -410.97138
[5,] -394.94621
>         (t[] = 0)
[1] 0
>         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
> t
           [,1]
[1,] -0.2975910
[2,] -0.7383878
[3,]  0.1292769
[4,] -1.0000000
[5,] -0.9873655
> (notthetaj = betal[(1:blocksize[currentgroup])!=j])
[1] 1 1 1 1
> (w=w)
             [,1]
 [1,]   5.9986746
 [2,]  17.8115453
 [3,]   6.3222653
 [4,]  -0.3661159
 [5,]   6.1895956
 [6,]   0.5596230
 [7,]   4.7550081
 [8,]   3.7347211
 [9,]  -3.9765303
[10,]  17.3668051
[11,]   1.1079650
[12,]  -2.1605002
[13,]  -2.4933501
[14,]  12.8297338
[15,]  -9.3042821
[16,]  18.6917158
[17,] -15.8941884
[18,]   2.0617441
[19,]   4.7812955
[20,]  -9.7440256
> j
[1] 5
> j=1
> (notthetaj = betal[(1:blocksize[currentgroup])!=j])
[1] 1 1 1 1
> (w=w)
             [,1]
 [1,]   5.9986746
 [2,]  17.8115453
 [3,]   6.3222653
 [4,]  -0.3661159
 [5,]   6.1895956
 [6,]   0.5596230
 [7,]   4.7550081
 [8,]   3.7347211
 [9,]  -3.9765303
[10,]  17.3668051
[11,]   1.1079650
[12,]  -2.1605002
[13,]  -2.4933501
[14,]  12.8297338
[15,]  -9.3042821
[16,]  18.6917158
[17,] -15.8941884
[18,]   2.0617441
[19,]   4.7812955
[20,]  -9.7440256
> (Zj = Xl[,j])
 [1]  2.9778432  2.5356509 -1.0874432 -1.5844330 -1.3870589 -3.0165527
 [7]  0.3485796 -4.0347376  4.8784694 -3.3243052  2.9798913  0.9379402
[13]  4.0531001  3.8084865  4.9383655  3.9595634  3.7864335 -3.0239425
[19] -1.6500640  2.7720632
> (notZj = Xl[,(1:blocksize[currentgroup])!=j])
            [,1]        [,2]       [,3]       [,4]
 [1,] -3.4040644 -2.74567816 -3.0396432 -3.5798373
 [2,] -4.1935475  2.39595136 -4.8041981 -4.9868854
 [3,] -3.6734966  3.95542447  0.2772740  3.3343310
 [4,] -3.2809460 -2.05536759 -3.1837043  4.4549432
 [5,] -0.2222216  0.15352517 -3.5226525  0.6790092
 [6,]  2.0050477 -0.65350450  0.9097402 -0.9830622
 [7,]  3.7988906  0.75165124 -4.9700993 -3.1494045
 [8,]  3.7779368  2.40956019 -1.3898390  0.4754075
 [9,]  3.5387959  1.78172634 -3.7073230  0.6288556
[10,] -3.3401248 -1.37983814 -4.8542095 -3.3903304
[11,]  0.2296875 -1.65442543 -3.0556950 -1.9214812
[12,]  3.6912820  2.48855999  1.4867069 -1.4046955
[13,] -2.6884331  0.06616552  4.4062879 -3.3295855
[14,] -3.8091909  3.62259152 -1.5364389 -3.0657407
[15,]  3.2395123  2.59557256  3.4496815 -0.4527572
[16,] -4.1972302  4.64383255 -3.7061646 -4.6054232
[17,]  4.5236307  3.34437237  3.5175602  3.6124940
[18,]  3.7161736  3.37036932 -2.8157283  2.6815945
[19,]  2.1215382 -2.32532910 -3.6776864 -3.8717647
[20,]  1.0540451 -3.24067506  1.2145472 -1.0408960
> lambda1
[1] 250
> lambda2
[1] 400
> lambda2=0
> blocksize
[1] 5 5
> blocksize[currentgroup])
Error: unexpected ')' in "blocksize[currentgroup])"
> (blocksize = blocksize[currentgroup])
[1] 5
> lambda2 = 1
> dim(notZj)
[1] 20  4
> is.null(dim(notZj))
[1] FALSE
> thetaj = 5
> (temp1 = lambda2*(abs(thetaj)+sum(abs(notthetaj))))
[1] 9
> (temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2))))
[1] 1346.291
> (temp3 = thetaj*Zj)
 [1]  14.889216  12.678255  -5.437216  -7.922165  -6.935294 -15.082763
 [7]   1.742898 -20.173688  24.392347 -16.621526  14.899456   4.689701
[13]  20.265500  19.042432  24.691828  19.797817  18.932168 -15.119713
[19]  -8.250320  13.860316
> k=1
> notthetaj[k]*notZj[,k]
 [1] -3.4040644 -4.1935475 -3.6734966 -3.2809460 -0.2222216  2.0050477
 [7]  3.7988906  3.7779368  3.5387959 -3.3401248  0.2296875  3.6912820
[13] -2.6884331 -3.8091909  3.2395123 -4.1972302  4.5236307  3.7161736
[19]  2.1215382  1.0540451
> for (k in 1:(blocksize-1)){
+         temp3 = temp3 + notthetaj[k]*notZj[,k]}
> temp3
 [1]   2.119993   1.089575  -1.543683 -11.987240  -9.847634 -13.804542
 [7]  -1.826064 -14.900622  26.634402 -29.586029   8.497542  10.951554
[13]  18.719935  14.253653  33.523837  11.932831  33.930225  -8.167303
[19] -16.003562  11.847337
> (w - temp3)
            [,1]
 [1,]   3.878682
 [2,]  16.721970
 [3,]   7.865948
 [4,]  11.621124
 [5,]  16.037230
 [6,]  14.364165
 [7,]   6.581072
 [8,]  18.635343
 [9,] -30.610932
[10,]  46.952834
[11,]  -7.389577
[12,] -13.112055
[13,] -21.213285
[14,]  -1.423920
[15,] -42.828119
[16,]   6.758885
[17,] -49.824413
[18,]  10.229048
[19,]  20.784857
[20,] -21.591363
> (temp4 = (1/2)*t(w - temp3)%*%(w-temp3))
         [,1]
[1,] 5265.547
> (out = temp1+temp2+temp4)
         [,1]
[1,] 6620.838
> f2 = function(thetaj,notthetaj,w,Zj,notZj,lambda1,lambda2,j,blocksize){
+     if(is.null(dim(notZj))){
+     (temp1 = lambda2*(abs(thetaj)+sum(abs(notthetaj))))
+     (temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2))))
+     (temp3 = thetaj*Zj)
+     for (k in 1:(blocksize-1)){temp3 = temp3 + notthetaj*notZj}
+     (temp4 = (1/2)*t(w - temp3)%*%(w-temp3))
+     (out = temp1+temp2+temp4)}
+     else{
+     (temp1 = lambda2*(abs(thetaj)+sum(abs(notthetaj))))
+     (temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2))))
+     (temp3 = thetaj*Zj)
+     for (k in 1:(blocksize-1)){
+         temp3 = temp3 + notthetaj[k]*notZj[,k]}
+     (temp4 = (1/2)*t(w - temp3)%*%(w-temp3))
+     (out = temp1+temp2+temp4)}
+     return(out)}
> (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
Error in f(arg, ...) (from #11) : object 'lambda1vec' not found
> (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1,lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
$minimum
[1] -0.1890006

$objective
         [,1]
[1,] 3007.195

> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=FALSE,scale=TRUE)
>                                         #X = scale(X,center=FALSE,scale=TRUE)
> weights = sqrt(blocksize)
> #weights = rep(1,9)
> 
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> grouplasso(250,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07478877 
Iteration: 3 Eps: 0.01133916 
Iteration: 4 Eps: 0.006027789 
Iteration: 5 Eps: 0.008692055 
Iteration: 6 Eps: 0.009070235 
Iteration: 7 Eps: 0.01039029 
Iteration: 8 Eps: 0.01259985 
Iteration: 9 Eps: 0.013293 
Iteration: 10 Eps: 0.01606157 
Iteration: 11 Eps: 0.01628308 
Iteration: 12 Eps: 0.01939927 
Iteration: 13 Eps: 0.01919453 
Iteration: 14 Eps: 0.02228087 
Iteration: 15 Eps: 0.02174024 
Iteration: 16 Eps: 0.0245808 
Iteration: 17 Eps: 0.02380835 
Iteration: 18 Eps: 0.02629643 
Iteration: 19 Eps: 0.02540787 
Iteration: 20 Eps: 0.02752282 
Iteration: 21 Eps: 0.02660719 
Iteration: 22 Eps: 0.02837744 
Iteration: 23 Eps: 0.02749219 
Iteration: 24 Eps: 0.02896493 
Iteration: 25 Eps: 0.02814149 
Iteration: 26 Eps: 0.0293658 
Iteration: 27 Eps: 0.02861821 
Iteration: 28 Eps: 0.02963795 
Iteration: 29 Eps: 0.02897008 
Iteration: 30 Eps: 0.02982234 
Iteration: 31 Eps: 0.02923253 
Iteration: 32 Eps: 0.02994724 
Iteration: 33 Eps: 0.02943059 
Iteration: 34 Eps: 0.03003164 
Iteration: 35 Eps: 0.02958163 
Iteration: 36 Eps: 0.03008834 
Iteration: 37 Eps: 0.02969802 
Iteration: 38 Eps: 0.03012615 
Iteration: 39 Eps: 0.02978847 
Iteration: 40 Eps: 0.03015085 
Iteration: 41 Eps: 0.02985926 
Iteration: 42 Eps: 0.03016653 
Iteration: 43 Eps: 0.02991507 
Iteration: 44 Eps: 0.03017598 
Iteration: 45 Eps: 0.02995941 
Iteration: 46 Eps: 0.03018123 
Iteration: 47 Eps: 0.02999482 
Iteration: 48 Eps: 0.03018356 
Iteration: 49 Eps: 0.03002321 
Iteration: 50 Eps: 0.03018399 
Iteration: 51 Eps: 0.03004606 
Iteration: 52 Eps: 0.03018313 
Iteration: 53 Eps: 0.0300646 
Iteration: 54 Eps: 0.03018152 
Iteration: 55 Eps: 0.03007972 
Iteration: 56 Eps: 0.03017951 
Iteration: 57 Eps: 0.030092 
Iteration: 58 Eps: 0.03017725 
Iteration: 59 Eps: 0.0301021 
Iteration: 60 Eps: 0.03017487 
Iteration: 61 Eps: 0.03011037 
Iteration: 62 Eps: 0.03017256 
Iteration: 63 Eps: 0.03011714 
Iteration: 64 Eps: 0.03017037 
Iteration: 65 Eps: 0.03012275 
Iteration: 66 Eps: 0.03016841 
Iteration: 67 Eps: 0.03012743 
Iteration: 68 Eps: 0.03016647 
Iteration: 69 Eps: 0.03013135 
Iteration: 70 Eps: 0.03016472 
Iteration: 71 Eps: 0.03013461 
Iteration: 72 Eps: 0.0301631 
Iteration: 73 Eps: 0.03013728 
Iteration: 74 Eps: 0.03016178 
Iteration: 75 Eps: 0.0301396 
Iteration: 76 Eps: 0.03016054 
Iteration: 77 Eps: 0.03014147 
Iteration: 78 Eps: 0.03015942 
Iteration: 79 Eps: 0.03014306 
Iteration: 80 Eps: 0.03015847 
Iteration: 81 Eps: 0.03014447 
Iteration: 82 Eps: 0.03015762 
Iteration: 83 Eps: 0.03014562 
Iteration: 84 Eps: 0.03015683 
Iteration: 85 Eps: 0.03014653 
Iteration: 86 Eps: 0.03015621 
Iteration: 87 Eps: 0.03014737 
Iteration: 88 Eps: 0.03015563 
Iteration: 89 Eps: 0.03014804 
Iteration: 90 Eps: 0.03015512 
Iteration: 91 Eps: 0.03014861 
Iteration: 92 Eps: 0.03015471 
Iteration: 93 Eps: 0.03014912 
Iteration: 94 Eps: 0.03015437 
Iteration: 95 Eps: 0.03014955 
Iteration: 96 Eps: 0.03015398 
Iteration: 97 Eps: 0.03014988 
Iteration: 98 Eps: 0.03015371 
Iteration: 99 Eps: 0.03015022 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]   41927.3001    6327.7032   33012.9581   -1665.9113   -7486.0606
  [6]    -773.6364  -23077.3661  -43164.0209   10963.0258   -5359.7309
 [11]   10589.6821   21246.5326  -28919.5844   -9280.7563   -3185.5173
 [16]   -6709.3927    8482.3433   14156.8638  -41500.3161  -12295.9380
 [21]   36522.2121   -2768.6170   16511.0515  -14132.8498   21959.5212
 [26]   76681.3696  154794.3247  -45781.5487  261114.3125 -143984.2086
 [31] -148274.7415  -20446.0958  222670.2908  -85093.3562 -233511.3459
 [36]  282747.8892 -140586.7418  -18763.6370  -78919.3604  -34730.2686
 [41]   87354.6693   93480.4672  213652.9015 -101195.3932   93223.6517
 [46]  -29538.5194 -458754.0049  281314.7096   47876.4512 -335729.0146
 [51]    4695.4305    9439.0075   26734.8074   56901.7125  -31671.9847
 [56]  -15133.9614  -35364.8614  -19180.3024   53083.2236    1992.1860
 [61]   41599.8964   85259.1874  -15805.4091   19178.8878    2010.7372
 [66]    4914.9480  -39718.1438   10822.9811  -18136.7668   62093.9007
 [71]  -68259.2083   21970.2466   57796.9290   24257.4420   32533.2560
 [76]   59631.9582  -60079.7151    1830.8582   23109.7767   21053.8440
 [81]  -11346.5417   10012.6470   10796.1519   34776.6011    3756.2436
 [86]    5488.0122   41074.5063   44333.0684   83854.1455   28902.3201
 [91]    5195.4888   40873.5442   -5373.2967   21611.3330   38577.1945
 [96]  -26905.8297   11730.9185   11036.1821  -35596.4172  -44139.5555

$iter
[1] 100

$eps
           [,1]
[1,] 0.03015352

> #code for group lasso
> grouplasso = function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){
+ 
+ if(missing(maxiter)){maxiter = 100}
+ if(missing(weights)){weights = sqrt(blocksize)}
+ lambda1vec = lambda1*weights
+     #lambda2 = 0
+ 
+ iter = 1
+ eps = 1
+ if(missing(tol)){tol = 10^(-5)}
+ 
+ while(eps>tol&iter<maxiter){
+     cat('Iteration:',iter,'Eps:',eps,'\n')
+     for(currentgroup in 1:group){    
+         (oldbeta = beta)
+         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
+         (Xl = X[,group.indx==currentgroup])
+         (betal = beta[group.indx==currentgroup])
+ 
+         (ZkThk = r)
+         (ZkThk[] = 0)
+         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
+ 
+         (a = t(Xl)%*%r)
+         (t = a)
+         (t[] = 0)
+         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
+         
+         if(lambda2==0){
+             if(sqrt(t(t(Xl)%*%r)%*%t(Xl)%*%r)<lambda1){betal[]=0}
+                     else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+             }
+             (beta[group.indx==currentgroup] = betal)
+             betal[]=0
+         }
+         }
+         
+             else{
+         (J = (1/(sqrt(blocksize[currentgroup])*lambda1vec[currentgroup]^2))*t(a-lambda2*t)%*%(a-lambda2*t))
+         if(J<=1){#setting the entire block to 0
+             betal[]=0
+         }
+         else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                 if(abs(t(Xl[,j])%*%w)<lambda2){betal[j] = 0}
+                 else{
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+                 }
+             }
+         }
+         (beta[group.indx==currentgroup] = betal)
+         betal[]=0
+     }
+     }
+     eps = (t(beta-oldbeta)%*%(beta-oldbeta))/(t(oldbeta)%*%oldbeta)
+     iter = iter + 1  
+ }
+ return(list(truebeta=truebeta,beta=beta,iter=iter,eps=eps))
+ }
> f2 = function(thetaj,notthetaj,w,Zj,notZj,lambda1,lambda2,j,blocksize){
+     if(is.null(dim(notZj))){
+     (temp1 = lambda2*(abs(thetaj)+sum(abs(notthetaj))))
+     (temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2))))
+     (temp3 = thetaj*Zj)
+     for (k in 1:(blocksize-1)){temp3 = temp3 + notthetaj*notZj}
+     (temp4 = (1/2)*t(w - temp3)%*%(w-temp3))
+     (out = temp1+temp2+temp4)}
+     else{
+     (temp1 = lambda2*(abs(thetaj)+sum(abs(notthetaj))))
+     (temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2))))
+     (temp3 = thetaj*Zj)
+     for (k in 1:(blocksize-1)){
+         temp3 = temp3 + notthetaj[k]*notZj[,k]}
+     (temp4 = (1/2)*t(w - temp3)%*%(w-temp3))
+     (out = temp1+temp2+temp4)}
+     return(out)}
> grouplasso(300,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07559246 
Iteration: 3 Eps: 0.01111591 
Iteration: 4 Eps: 0.005527686 
Iteration: 5 Eps: 0.007991176 
Iteration: 6 Eps: 0.008271051 
Iteration: 7 Eps: 0.009502869 
Iteration: 8 Eps: 0.0115281 
Iteration: 9 Eps: 0.01231284 
Iteration: 10 Eps: 0.01489897 
Iteration: 11 Eps: 0.01531677 
Iteration: 12 Eps: 0.01826379 
Iteration: 13 Eps: 0.0183205 
Iteration: 14 Eps: 0.02126332 
Iteration: 15 Eps: 0.02100484 
Iteration: 16 Eps: 0.0237195 
Iteration: 17 Eps: 0.02322229 
Iteration: 18 Eps: 0.02559383 
Iteration: 19 Eps: 0.02495823 
Iteration: 20 Eps: 0.02696166 
Iteration: 21 Eps: 0.02627083 
Iteration: 22 Eps: 0.02793396 
Iteration: 23 Eps: 0.02724452 
Iteration: 24 Eps: 0.02861611 
Iteration: 25 Eps: 0.02796112 
Iteration: 26 Eps: 0.02909189 
Iteration: 27 Eps: 0.0284879 
Iteration: 28 Eps: 0.02942266 
Iteration: 29 Eps: 0.02887645 
Iteration: 30 Eps: 0.02965248 
Iteration: 31 Eps: 0.02916541 
Iteration: 32 Eps: 0.02981261 
Iteration: 33 Eps: 0.02938282 
Iteration: 34 Eps: 0.02992449 
Iteration: 35 Eps: 0.02954808 
Iteration: 36 Eps: 0.03000275 
Iteration: 37 Eps: 0.02967481 
Iteration: 38 Eps: 0.03005747 
Iteration: 39 Eps: 0.02977278 
Iteration: 40 Eps: 0.03009561 
Iteration: 41 Eps: 0.02984907 
Iteration: 42 Eps: 0.03012193 
Iteration: 43 Eps: 0.02990889 
Iteration: 44 Eps: 0.03013991 
Iteration: 45 Eps: 0.02995603 
Iteration: 46 Eps: 0.03015194 
Iteration: 47 Eps: 0.02999339 
Iteration: 48 Eps: 0.03015973 
Iteration: 49 Eps: 0.03002312 
Iteration: 50 Eps: 0.03016451 
Iteration: 51 Eps: 0.03004694 
Iteration: 52 Eps: 0.03016722 
Iteration: 53 Eps: 0.03006603 
Iteration: 54 Eps: 0.03016844 
Iteration: 55 Eps: 0.03008141 
Iteration: 56 Eps: 0.03016874 
Iteration: 57 Eps: 0.0300939 
Iteration: 58 Eps: 0.03016836 
Iteration: 59 Eps: 0.03010404 
Iteration: 60 Eps: 0.03016757 
Iteration: 61 Eps: 0.0301122 
Iteration: 62 Eps: 0.03016653 
Iteration: 63 Eps: 0.03011898 
Iteration: 64 Eps: 0.0301654 
Iteration: 65 Eps: 0.0301245 
Iteration: 66 Eps: 0.03016421 
Iteration: 67 Eps: 0.03012911 
Iteration: 68 Eps: 0.03016301 
Iteration: 69 Eps: 0.03013286 
Iteration: 70 Eps: 0.03016179 
Iteration: 71 Eps: 0.03013597 
Iteration: 72 Eps: 0.03016073 
Iteration: 73 Eps: 0.03013849 
Iteration: 74 Eps: 0.03015975 
Iteration: 75 Eps: 0.0301407 
Iteration: 76 Eps: 0.03015882 
Iteration: 77 Eps: 0.03014249 
Iteration: 78 Eps: 0.03015797 
Iteration: 79 Eps: 0.03014396 
Iteration: 80 Eps: 0.03015727 
Iteration: 81 Eps: 0.03014516 
Iteration: 82 Eps: 0.03015658 
Iteration: 83 Eps: 0.03014624 
Iteration: 84 Eps: 0.030156 
Iteration: 85 Eps: 0.03014711 
Iteration: 86 Eps: 0.03015546 
Iteration: 87 Eps: 0.03014785 
Iteration: 88 Eps: 0.03015501 
Iteration: 89 Eps: 0.03014847 
Iteration: 90 Eps: 0.0301546 
Iteration: 91 Eps: 0.03014899 
Iteration: 92 Eps: 0.03015424 
Iteration: 93 Eps: 0.03014942 
Iteration: 94 Eps: 0.03015395 
Iteration: 95 Eps: 0.03014984 
Iteration: 96 Eps: 0.03015368 
Iteration: 97 Eps: 0.03015014 
Iteration: 98 Eps: 0.03015346 
Iteration: 99 Eps: 0.03015044 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]   39280.2742    5928.1050   30930.1529   -1561.3977   -7014.1283
  [6]    -724.0406  -21621.3047  -40438.6863   10271.1441   -5021.0919
 [11]    9920.9243   19905.4428  -27093.3947   -8694.1801   -2984.2839
 [16]   -6284.6320    7949.0316   13263.3722  -38881.1322  -11520.4148
 [21]   34215.4229   -2595.6008   15467.7338  -13240.7972   20572.8972
 [26]   71838.6084  145023.6928  -42889.7114  244627.8253 -134890.8252
 [31] -138912.6570  -19158.5935  208613.9603  -79725.2701 -218768.5704
 [36]  264896.9027 -131711.2544  -17581.3255  -73935.9264  -32542.0434
 [41]   81839.4135   87581.0359  200167.1392  -94802.3069   87338.1375
 [46]  -27673.0283 -429796.2258  263553.1773   44853.7981 -314529.0951
 [51]    4398.2247    8844.2764   25047.4569   53309.2108  -29670.4289
 [56]  -14179.2165  -33131.6214  -17970.4786   49732.4100    1867.2395
 [61]   38973.1611   79876.3400  -14807.2220   17968.0213    1883.5483
 [66]    4603.3552  -37209.3710   10139.9010  -16991.4317   58174.7447
 [71]  -63947.0897   20585.5936   54146.1620   22742.4120   30476.3998
 [76]   55862.3039  -56299.1271    1720.1265   21647.7689   19723.3550
 [81]  -10621.1092    9379.9587   10111.8469   32578.1215    3527.2558
 [86]    5142.4694   38486.2663   41538.7427   78564.9249   27067.9553
 [91]    4865.6497   38290.5446   -5032.5999   20247.7565   36141.1421
 [96]  -25208.0284   10988.7002   10339.1982  -33347.6540  -41353.8714

$iter
[1] 100

$eps
           [,1]
[1,] 0.03015325

> set.seed(123456)
> p = 100
> n = 1000
> group = 20
> blocksize = rep(ceiling(p/group),group)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> for(i in 1:group){
+   group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
+ }
> weights = sqrt(blocksize)
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> grouplasso(220,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07558211 
Iteration: 3 Eps: 0.0008849478 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -1.2737156870 -1.4285796281  1.2713880243  0.0255491521  0.6336834070
  [6] -0.0402087839 -1.9581448543 -1.9750708593  0.5287564743 -1.9454187824
 [11]  2.3223335981 -1.3857478123 -0.4915098796  1.9722424938 -1.3423769199
 [16]  0.6634922426 -1.6268175048 -1.4963382710  0.9299462804  0.6590018683
 [21]  0.5281842807 -1.1406033365  0.3793705277 -0.0677546547  0.0278165765
 [26] -0.0458811831  0.0189658762 -0.0188415089 -0.0246036005  0.0143243881
 [31] -0.0096564004 -0.0008553841 -0.0334224278  0.0016201512  0.0020301950
 [36]  0.0051877250 -0.0080404387  0.0041603712  0.0058656026  0.0000798718
 [41]  0.0102235561 -0.0049615145  0.0066894861  0.0161356558  0.0051227659
 [46] -0.0131330306 -0.0184172821  0.0003666400  0.0004155630 -0.0062449826
 [51] -0.0193287821  0.0219081898  0.0249281242  0.0095670501 -0.0047255273
 [56]  0.0114106249 -0.0192841774 -0.0024030273 -0.0201234266  0.0065358660
 [61] -0.0010761255  0.0129575089 -0.0036664411  0.0070985547  0.0019813423
 [66] -0.0079621397  0.0130645771 -0.0126507923  0.0137406192 -0.0030745027
 [71] -0.0016861325  0.0208233782 -0.0088991907  0.0437025550  0.0006450409
 [76]  0.0113435456 -0.0018248032 -0.0015043375 -0.0094520737  0.0055101965
 [81] -0.0003082538  0.0033771143 -0.0088176994  0.0015248535 -0.0042657970
 [86] -0.0179463176 -0.0207097519 -0.0193482364  0.0065337259  0.0071741380
 [91]  0.0029635485  0.0065689447  0.0147440344 -0.0053813408  0.0144352724
 [96] -0.0020720814 -0.0003812165  0.0018337610 -0.0003751076 -0.0019563637

$iter
[1] 4

$eps
             [,1]
[1,] 6.967317e-06

> grouplasso(20,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07152218 
Iteration: 3 Eps: 0.001037367 
Iteration: 4 Eps: 2.053831e-05 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -1.2975025752 -1.4472085961  1.2879264571  0.0405686145  0.6703500170
  [6] -0.0343274523 -1.9886773920 -2.0111123638  0.5325428066 -2.0071455324
 [11]  2.3583134732 -1.4182354399 -0.4809682016  1.9780826943 -1.3756841623
 [16]  0.6251944322 -1.6520024904 -1.5642015234  0.9450969176  0.6863015412
 [21]  0.5596103866 -1.1994581039  0.3721807313 -0.0711332089 -0.0247078304
 [26] -0.0495972072  0.0326438303 -0.0075267840 -0.0382076479  0.0205032269
 [31] -0.0040112992  0.0011925156 -0.0581172087  0.0140351216  0.0107917612
 [36]  0.0153498887 -0.0194111453  0.0066541309  0.0323173742 -0.0015430864
 [41]  0.0159699883  0.0062821777  0.0001360993  0.0428284553  0.0199142835
 [46] -0.0117149802 -0.0238625414  0.0020803692  0.0158986050 -0.0127407053
 [51] -0.0154661225  0.0214156158  0.0396791986  0.0140731701 -0.0208093134
 [56]  0.0291082163 -0.0334100418  0.0015290837 -0.0567221209  0.0171387791
 [61] -0.0083023663  0.0374996237 -0.0036895255  0.0280010710 -0.0010484825
 [66] -0.0072680253  0.0458968548 -0.0218615787  0.0285610709 -0.0265345865
 [71] -0.0075476823  0.0138787321 -0.0023018315  0.0578156686 -0.0185335981
 [76]  0.0224633306 -0.0072314088 -0.0098416872 -0.0159743011  0.0251231866
 [81]  0.0061160396  0.0078790269 -0.0454173167 -0.0034592625 -0.0348157862
 [86] -0.0158263911  0.0067265912 -0.0148966916 -0.0008017221 -0.0088592593
 [91] -0.0054659337  0.0039643530  0.0189555404 -0.0077954774  0.0414800872
 [96] -0.0132322760 -0.0049880455  0.0107815097 -0.0039066200 -0.0185769671

$iter
[1] 5

$eps
             [,1]
[1,] 1.426037e-06

> grouplasso(2,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0711444 
Iteration: 3 Eps: 0.001055513 
Iteration: 4 Eps: 2.365342e-05 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -1.3004351713 -1.4509337380  1.2896733288  0.0394364524  0.6702336737
  [6] -0.0354526973 -1.9922330776 -2.0144140021  0.5331369708 -2.0099142577
 [11]  2.3631266045 -1.4194616921 -0.4812711546  1.9810670867 -1.3759693214
 [16]  0.6264533697 -1.6549338409 -1.5680193632  0.9471880267  0.6873326907
 [21]  0.5607455510 -1.2037962396  0.3719468692 -0.0719713559 -0.0243779769
 [26] -0.0528085054  0.0348325476 -0.0079012534 -0.0401185590  0.0230289220
 [31] -0.0045221599  0.0021773042 -0.0633854837  0.0139257128  0.0113025467
 [36]  0.0173479995 -0.0211364303  0.0086877257  0.0355962769 -0.0019702884
 [41]  0.0176791512  0.0062266726 -0.0008595324  0.0481101357  0.0227847380
 [46] -0.0143185427 -0.0261604697  0.0026450154  0.0175176648 -0.0160181431
 [51] -0.0141856511  0.0229483091  0.0434556363  0.0152504047 -0.0236994275
 [56]  0.0321009458 -0.0360106979  0.0003965366 -0.0616429718  0.0175076639
 [61] -0.0093592549  0.0419637588 -0.0034764455  0.0315685787 -0.0036269265
 [66] -0.0075991703  0.0509073912 -0.0242652829  0.0311622782 -0.0301103586
 [71] -0.0085703665  0.0152338864 -0.0017954427  0.0641468172 -0.0194248841
 [76]  0.0254294261 -0.0084608482 -0.0113141249 -0.0173425964  0.0289364818
 [81]  0.0081355515  0.0088738303 -0.0508579872 -0.0048619412 -0.0385105224
 [86] -0.0203802843  0.0094089167 -0.0190867943 -0.0012483420 -0.0103671303
 [91] -0.0059885248  0.0036294558  0.0208434041 -0.0079857441  0.0468895758
 [96] -0.0156462997 -0.0065290564  0.0122226703 -0.0045748548 -0.0216508742

$iter
[1] 5

$eps
             [,1]
[1,] 1.631328e-06

> grouplasso(1.5,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07113389 
Iteration: 3 Eps: 0.001056077 
Iteration: 4 Eps: 2.374705e-05 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -1.3005159751 -1.4510339120  1.2897211954  0.0394033624  0.6702304866
  [6] -0.0354860905 -1.9923343279 -2.0144987463  0.5331744156 -2.0099914227
 [11]  2.3632671073 -1.4194953921 -0.4813040319  1.9811535500 -1.3759767254
 [16]  0.6264924622 -1.6550204845 -1.5681270108  0.9472488559  0.6873637081
 [21]  0.5607795978 -1.2039177039  0.3719405278 -0.0720298341 -0.0243638744
 [26] -0.0529019598  0.0348900968 -0.0079011041 -0.0401639641  0.0231051397
 [31] -0.0045265056  0.0022416394 -0.0635329520  0.0139166911  0.0113024670
 [36]  0.0174068477 -0.0211849155  0.0087587826  0.0356835111 -0.0020215005
 [41]  0.0177364417  0.0062083767 -0.0008829690  0.0482613252  0.0228672551
 [46] -0.0143944907 -0.0262154289  0.0026611383  0.0175594359 -0.0161280616
 [51] -0.0141425650  0.0229863079  0.0435656090  0.0152839691 -0.0237847387
 [56]  0.0321869663 -0.0360833593  0.0003583593 -0.0617846746  0.0175123146
 [61] -0.0093897187  0.0420927722 -0.0034599454  0.0316727310 -0.0037027347
 [66] -0.0076041381  0.0510448727 -0.0243333900  0.0312384532 -0.0302150449
 [71] -0.0085872222  0.0152586880 -0.0017706306  0.0643286085 -0.0194400916
 [76]  0.0255221979 -0.0084819512 -0.0113583279 -0.0173760573  0.0290512684
 [81]  0.0082180499  0.0088890965 -0.0510146968 -0.0048977554 -0.0386136693
 [86] -0.0205199982  0.0094937010 -0.0192031089 -0.0012992156 -0.0104037308
 [91] -0.0059929765  0.0036068367  0.0208945564 -0.0080063825  0.0470386823
 [96] -0.0157160529 -0.0065752830  0.0122652970 -0.0046190516 -0.0217410973

$iter
[1] 5

$eps
            [,1]
[1,] 1.63672e-06

> grouplasso(1,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07112461 
Iteration: 3 Eps: 0.001056271 
Iteration: 4 Eps: 2.386538e-05 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -1.3005980068 -1.4511455780  1.2897668839  0.0393643808  0.6702108700
  [6] -0.0355151481 -1.9924370867 -2.0145997647  0.5331805166 -2.0100692092
 [11]  2.3633970264 -1.4195239022 -0.4812918538  1.9812291110 -1.3759864276
 [16]  0.6265405078 -1.6551015303 -1.5682391581  0.9473001839  0.6873718907
 [21]  0.5608150178 -1.2040402909  0.3719165695 -0.0720524253 -0.0243550612
 [26] -0.0529890200  0.0349587386 -0.0078914537 -0.0402257152  0.0231802351
 [31] -0.0045451981  0.0022655642 -0.0636764240  0.0139230359  0.0113264980
 [36]  0.0174653031 -0.0212263968  0.0087973667  0.0357726516 -0.0020284963
 [41]  0.0177722999  0.0061908544 -0.0009137041  0.0484075667  0.0229519667
 [46] -0.0144639118 -0.0262766351  0.0027109272  0.0176095534 -0.0162177747
 [51] -0.0141265559  0.0230346015  0.0436670662  0.0153103571 -0.0238734846
 [56]  0.0322689090 -0.0361548525  0.0003174363 -0.0619243400  0.0175382542
 [61] -0.0094280521  0.0422225673 -0.0034911212  0.0317662314 -0.0038113612
 [66] -0.0076217746  0.0511876224 -0.0244039886  0.0313057768 -0.0303171904
 [71] -0.0086065143  0.0153185518 -0.0017571355  0.0645013310 -0.0194558349
 [76]  0.0256111521 -0.0085294073 -0.0113991095 -0.0174184984  0.0291568282
 [81]  0.0082634289  0.0089428948 -0.0511630111 -0.0049351278 -0.0387162473
 [86] -0.0206550279  0.0095846774 -0.0193171224 -0.0012973361 -0.0104414519
 [91] -0.0059898986  0.0036301159  0.0209499809 -0.0080064157  0.0471958039
 [96] -0.0157936442 -0.0066202838  0.0123002226 -0.0046164828 -0.0218281212

$iter
[1] 5

$eps
             [,1]
[1,] 1.645602e-06

> avgerror = 0
> for(k in 1:20){
+     lambda1 = 0.5*(k-1)+1
+ lambda2 = 0
+ oldbeta <- rep(1,p)
+ beta <- rep(1,p)
+     avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)}
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05871444 
Iteration: 3 Eps: 0.002281413 
Iteration: 4 Eps: 4.689458e-05 
Iteration: 5 Eps: 1.043627e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07262915 
Iteration: 3 Eps: 0.001455154 
Iteration: 4 Eps: 5.10069e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0698845 
Iteration: 3 Eps: 0.001244538 
Iteration: 4 Eps: 4.28029e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07758391 
Iteration: 3 Eps: 0.001414968 
Iteration: 4 Eps: 3.425075e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.059078 
Iteration: 3 Eps: 0.002010871 
Iteration: 4 Eps: 7.451025e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07564533 
Iteration: 3 Eps: 0.002869707 
Iteration: 4 Eps: 9.947389e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06740325 
Iteration: 3 Eps: 0.002092782 
Iteration: 4 Eps: 4.610557e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06205404 
Iteration: 3 Eps: 0.00176805 
Iteration: 4 Eps: 5.920906e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06720976 
Iteration: 3 Eps: 0.001331804 
Iteration: 4 Eps: 3.87709e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07186736 
Iteration: 3 Eps: 0.0009646328 
Iteration: 4 Eps: 4.260748e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05872353 
Iteration: 3 Eps: 0.002282282 
Iteration: 4 Eps: 4.693761e-05 
Iteration: 5 Eps: 1.047151e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07264229 
Iteration: 3 Eps: 0.001455156 
Iteration: 4 Eps: 5.088628e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0698976 
Iteration: 3 Eps: 0.001243411 
Iteration: 4 Eps: 4.259348e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07759455 
Iteration: 3 Eps: 0.001414992 
Iteration: 4 Eps: 3.416612e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05908961 
Iteration: 3 Eps: 0.002011144 
Iteration: 4 Eps: 7.432684e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07565623 
Iteration: 3 Eps: 0.002869014 
Iteration: 4 Eps: 9.920026e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06741335 
Iteration: 3 Eps: 0.002092403 
Iteration: 4 Eps: 4.593619e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06206313 
Iteration: 3 Eps: 0.001768068 
Iteration: 4 Eps: 5.882884e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06722105 
Iteration: 3 Eps: 0.001331419 
Iteration: 4 Eps: 3.867983e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0718802 
Iteration: 3 Eps: 0.0009642723 
Iteration: 4 Eps: 4.262232e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05873546 
Iteration: 3 Eps: 0.002282633 
Iteration: 4 Eps: 4.701569e-05 
Iteration: 5 Eps: 1.048889e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07265399 
Iteration: 3 Eps: 0.001454946 
Iteration: 4 Eps: 5.086991e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06991221 
Iteration: 3 Eps: 0.001242195 
Iteration: 4 Eps: 4.242853e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07760675 
Iteration: 3 Eps: 0.001414282 
Iteration: 4 Eps: 3.407493e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05909992 
Iteration: 3 Eps: 0.002011555 
Iteration: 4 Eps: 7.413122e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07566879 
Iteration: 3 Eps: 0.002866799 
Iteration: 4 Eps: 9.895584e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06742572 
Iteration: 3 Eps: 0.002091484 
Iteration: 4 Eps: 4.574407e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06207529 
Iteration: 3 Eps: 0.001767478 
Iteration: 4 Eps: 5.849517e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06723311 
Iteration: 3 Eps: 0.001330465 
Iteration: 4 Eps: 3.860808e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07189301 
Iteration: 3 Eps: 0.0009641537 
Iteration: 4 Eps: 4.261176e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05874528 
Iteration: 3 Eps: 0.002283626 
Iteration: 4 Eps: 4.706096e-05 
Iteration: 5 Eps: 1.050808e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07266366 
Iteration: 3 Eps: 0.00145487 
Iteration: 4 Eps: 5.074702e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06992486 
Iteration: 3 Eps: 0.001241387 
Iteration: 4 Eps: 4.220818e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07761624 
Iteration: 3 Eps: 0.001414129 
Iteration: 4 Eps: 3.401877e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05911152 
Iteration: 3 Eps: 0.00201181 
Iteration: 4 Eps: 7.386749e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07567912 
Iteration: 3 Eps: 0.002866103 
Iteration: 4 Eps: 9.871979e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06743805 
Iteration: 3 Eps: 0.002091078 
Iteration: 4 Eps: 4.554331e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06208563 
Iteration: 3 Eps: 0.001766876 
Iteration: 4 Eps: 5.806491e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06724302 
Iteration: 3 Eps: 0.001330211 
Iteration: 4 Eps: 3.851727e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07190672 
Iteration: 3 Eps: 0.0009633968 
Iteration: 4 Eps: 4.26066e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05875578 
Iteration: 3 Eps: 0.002284627 
Iteration: 4 Eps: 4.711623e-05 
Iteration: 5 Eps: 1.052105e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07267547 
Iteration: 3 Eps: 0.001454812 
Iteration: 4 Eps: 5.070256e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06993752 
Iteration: 3 Eps: 0.001240425 
Iteration: 4 Eps: 4.204084e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07762656 
Iteration: 3 Eps: 0.00141376 
Iteration: 4 Eps: 3.393389e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05912439 
Iteration: 3 Eps: 0.002011877 
Iteration: 4 Eps: 7.364921e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07569098 
Iteration: 3 Eps: 0.002864864 
Iteration: 4 Eps: 9.85021e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0674489 
Iteration: 3 Eps: 0.002090583 
Iteration: 4 Eps: 4.538688e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06209496 
Iteration: 3 Eps: 0.001766758 
Iteration: 4 Eps: 5.770175e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06725475 
Iteration: 3 Eps: 0.001329563 
Iteration: 4 Eps: 3.843118e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07192208 
Iteration: 3 Eps: 0.0009629294 
Iteration: 4 Eps: 4.261716e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0587664 
Iteration: 3 Eps: 0.00228532 
Iteration: 4 Eps: 4.718359e-05 
Iteration: 5 Eps: 1.053798e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07268726 
Iteration: 3 Eps: 0.001454724 
Iteration: 4 Eps: 5.062364e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06995125 
Iteration: 3 Eps: 0.001239297 
Iteration: 4 Eps: 4.185784e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07763695 
Iteration: 3 Eps: 0.001413373 
Iteration: 4 Eps: 3.384541e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.059135 
Iteration: 3 Eps: 0.002012263 
Iteration: 4 Eps: 7.344632e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07570278 
Iteration: 3 Eps: 0.002863548 
Iteration: 4 Eps: 9.828953e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06745963 
Iteration: 3 Eps: 0.002090138 
Iteration: 4 Eps: 4.521445e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06210492 
Iteration: 3 Eps: 0.001766483 
Iteration: 4 Eps: 5.731655e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06726579 
Iteration: 3 Eps: 0.001329055 
Iteration: 4 Eps: 3.833226e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07193509 
Iteration: 3 Eps: 0.0009623946 
Iteration: 4 Eps: 4.262301e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05877658 
Iteration: 3 Eps: 0.002286099 
Iteration: 4 Eps: 4.723884e-05 
Iteration: 5 Eps: 1.055206e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07269925 
Iteration: 3 Eps: 0.001454662 
Iteration: 4 Eps: 5.055707e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06996406 
Iteration: 3 Eps: 0.00123837 
Iteration: 4 Eps: 4.167068e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07764751 
Iteration: 3 Eps: 0.001413063 
Iteration: 4 Eps: 3.376269e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05914653 
Iteration: 3 Eps: 0.002012485 
Iteration: 4 Eps: 7.321529e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0757145 
Iteration: 3 Eps: 0.00286224 
Iteration: 4 Eps: 9.806821e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06747086 
Iteration: 3 Eps: 0.002089633 
Iteration: 4 Eps: 4.504448e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06211505 
Iteration: 3 Eps: 0.001766145 
Iteration: 4 Eps: 5.693291e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06727795 
Iteration: 3 Eps: 0.001328252 
Iteration: 4 Eps: 3.828246e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07194822 
Iteration: 3 Eps: 0.0009618756 
Iteration: 4 Eps: 4.263491e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05878714 
Iteration: 3 Eps: 0.002286854 
Iteration: 4 Eps: 4.730076e-05 
Iteration: 5 Eps: 1.056763e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07271124 
Iteration: 3 Eps: 0.001454735 
Iteration: 4 Eps: 5.048994e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06997577 
Iteration: 3 Eps: 0.00123733 
Iteration: 4 Eps: 4.149299e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07765765 
Iteration: 3 Eps: 0.001412746 
Iteration: 4 Eps: 3.367782e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05915833 
Iteration: 3 Eps: 0.002012691 
Iteration: 4 Eps: 7.299183e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07572639 
Iteration: 3 Eps: 0.002860796 
Iteration: 4 Eps: 9.778131e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06748196 
Iteration: 3 Eps: 0.002089169 
Iteration: 4 Eps: 4.486889e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0621252 
Iteration: 3 Eps: 0.001765807 
Iteration: 4 Eps: 5.659338e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06729025 
Iteration: 3 Eps: 0.001327751 
Iteration: 4 Eps: 3.819592e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07196131 
Iteration: 3 Eps: 0.0009613338 
Iteration: 4 Eps: 4.257985e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05879764 
Iteration: 3 Eps: 0.002287609 
Iteration: 4 Eps: 4.736056e-05 
Iteration: 5 Eps: 1.058124e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07272304 
Iteration: 3 Eps: 0.001454688 
Iteration: 4 Eps: 5.041943e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06998874 
Iteration: 3 Eps: 0.001236574 
Iteration: 4 Eps: 4.130465e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07766803 
Iteration: 3 Eps: 0.001412418 
Iteration: 4 Eps: 3.359284e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05916979 
Iteration: 3 Eps: 0.002012934 
Iteration: 4 Eps: 7.275731e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07573813 
Iteration: 3 Eps: 0.002859495 
Iteration: 4 Eps: 9.758465e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06749437 
Iteration: 3 Eps: 0.002088521 
Iteration: 4 Eps: 4.469187e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06213529 
Iteration: 3 Eps: 0.001765451 
Iteration: 4 Eps: 5.623142e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06730129 
Iteration: 3 Eps: 0.001327244 
Iteration: 4 Eps: 3.810366e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07197455 
Iteration: 3 Eps: 0.0009607742 
Iteration: 4 Eps: 4.258626e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05880833 
Iteration: 3 Eps: 0.002288402 
Iteration: 4 Eps: 4.74167e-05 
Iteration: 5 Eps: 1.059548e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07273484 
Iteration: 3 Eps: 0.001454611 
Iteration: 4 Eps: 5.034927e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0700016 
Iteration: 3 Eps: 0.001235599 
Iteration: 4 Eps: 4.111876e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07767891 
Iteration: 3 Eps: 0.001412046 
Iteration: 4 Eps: 3.345731e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0591814 
Iteration: 3 Eps: 0.002013173 
Iteration: 4 Eps: 7.255209e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07574996 
Iteration: 3 Eps: 0.002858225 
Iteration: 4 Eps: 9.729673e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0675054 
Iteration: 3 Eps: 0.00208808 
Iteration: 4 Eps: 4.451414e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06214655 
Iteration: 3 Eps: 0.001764763 
Iteration: 4 Eps: 5.598412e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06731258 
Iteration: 3 Eps: 0.001326689 
Iteration: 4 Eps: 3.802003e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07198784 
Iteration: 3 Eps: 0.0009605645 
Iteration: 4 Eps: 4.260565e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05882015 
Iteration: 3 Eps: 0.002289236 
Iteration: 4 Eps: 4.74679e-05 
Iteration: 5 Eps: 1.061334e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07274691 
Iteration: 3 Eps: 0.001454537 
Iteration: 4 Eps: 5.027715e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07001588 
Iteration: 3 Eps: 0.001234473 
Iteration: 4 Eps: 4.097864e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07768933 
Iteration: 3 Eps: 0.001411696 
Iteration: 4 Eps: 3.337375e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05919299 
Iteration: 3 Eps: 0.002013355 
Iteration: 4 Eps: 7.233993e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07576193 
Iteration: 3 Eps: 0.002856883 
Iteration: 4 Eps: 9.70658e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06751654 
Iteration: 3 Eps: 0.002087605 
Iteration: 4 Eps: 4.430773e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06215673 
Iteration: 3 Eps: 0.001764391 
Iteration: 4 Eps: 5.560745e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06732396 
Iteration: 3 Eps: 0.001326087 
Iteration: 4 Eps: 3.795671e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07200098 
Iteration: 3 Eps: 0.0009599921 
Iteration: 4 Eps: 4.260594e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05883076 
Iteration: 3 Eps: 0.002290034 
Iteration: 4 Eps: 4.751811e-05 
Iteration: 5 Eps: 1.062565e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07275592 
Iteration: 3 Eps: 0.001454101 
Iteration: 4 Eps: 5.024812e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07002884 
Iteration: 3 Eps: 0.001233505 
Iteration: 4 Eps: 4.081877e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07769971 
Iteration: 3 Eps: 0.001411177 
Iteration: 4 Eps: 3.331786e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05920465 
Iteration: 3 Eps: 0.002013599 
Iteration: 4 Eps: 7.210042e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07577373 
Iteration: 3 Eps: 0.002855619 
Iteration: 4 Eps: 9.685119e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06752805 
Iteration: 3 Eps: 0.002086862 
Iteration: 4 Eps: 4.42022e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06216684 
Iteration: 3 Eps: 0.001764051 
Iteration: 4 Eps: 5.52189e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06733518 
Iteration: 3 Eps: 0.00132566 
Iteration: 4 Eps: 3.788085e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07201411 
Iteration: 3 Eps: 0.0009594312 
Iteration: 4 Eps: 4.26099e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05884126 
Iteration: 3 Eps: 0.002290813 
Iteration: 4 Eps: 4.758223e-05 
Iteration: 5 Eps: 1.064177e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07276798 
Iteration: 3 Eps: 0.001454076 
Iteration: 4 Eps: 5.017805e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0700418 
Iteration: 3 Eps: 0.001232541 
Iteration: 4 Eps: 4.063649e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0777088 
Iteration: 3 Eps: 0.001410763 
Iteration: 4 Eps: 3.330719e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05921627 
Iteration: 3 Eps: 0.002013855 
Iteration: 4 Eps: 7.188114e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07578561 
Iteration: 3 Eps: 0.0028546 
Iteration: 4 Eps: 9.65905e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06753941 
Iteration: 3 Eps: 0.00208612 
Iteration: 4 Eps: 4.406156e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06217695 
Iteration: 3 Eps: 0.001763745 
Iteration: 4 Eps: 5.484051e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06734652 
Iteration: 3 Eps: 0.00132506 
Iteration: 4 Eps: 3.779775e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07202724 
Iteration: 3 Eps: 0.0009588965 
Iteration: 4 Eps: 4.252597e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05885186 
Iteration: 3 Eps: 0.002291565 
Iteration: 4 Eps: 4.763765e-05 
Iteration: 5 Eps: 1.065338e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07277985 
Iteration: 3 Eps: 0.001454024 
Iteration: 4 Eps: 5.011039e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07005458 
Iteration: 3 Eps: 0.001231565 
Iteration: 4 Eps: 4.04533e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07771922 
Iteration: 3 Eps: 0.001410431 
Iteration: 4 Eps: 3.324072e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05922794 
Iteration: 3 Eps: 0.00201408 
Iteration: 4 Eps: 7.172073e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07579593 
Iteration: 3 Eps: 0.002853162 
Iteration: 4 Eps: 9.636786e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06755086 
Iteration: 3 Eps: 0.002085631 
Iteration: 4 Eps: 4.391988e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06218746 
Iteration: 3 Eps: 0.001763302 
Iteration: 4 Eps: 5.447735e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06735786 
Iteration: 3 Eps: 0.001324471 
Iteration: 4 Eps: 3.76759e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07204039 
Iteration: 3 Eps: 0.0009585765 
Iteration: 4 Eps: 4.250095e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05886245 
Iteration: 3 Eps: 0.002292335 
Iteration: 4 Eps: 4.769042e-05 
Iteration: 5 Eps: 1.067245e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07279175 
Iteration: 3 Eps: 0.001453958 
Iteration: 4 Eps: 5.00322e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07006767 
Iteration: 3 Eps: 0.001230588 
Iteration: 4 Eps: 4.0263e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07772951 
Iteration: 3 Eps: 0.001410084 
Iteration: 4 Eps: 3.314491e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05923961 
Iteration: 3 Eps: 0.002014303 
Iteration: 4 Eps: 7.148599e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07580775 
Iteration: 3 Eps: 0.002851888 
Iteration: 4 Eps: 9.621815e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06756221 
Iteration: 3 Eps: 0.002085195 
Iteration: 4 Eps: 4.378218e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06219764 
Iteration: 3 Eps: 0.001762981 
Iteration: 4 Eps: 5.410682e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06736917 
Iteration: 3 Eps: 0.001323736 
Iteration: 4 Eps: 3.76327e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07205488 
Iteration: 3 Eps: 0.0009580174 
Iteration: 4 Eps: 4.25151e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05887304 
Iteration: 3 Eps: 0.002293104 
Iteration: 4 Eps: 4.774804e-05 
Iteration: 5 Eps: 1.068324e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07280361 
Iteration: 3 Eps: 0.001453885 
Iteration: 4 Eps: 4.9966e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07008081 
Iteration: 3 Eps: 0.001229377 
Iteration: 4 Eps: 4.013676e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07773994 
Iteration: 3 Eps: 0.001409765 
Iteration: 4 Eps: 3.3019e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05925128 
Iteration: 3 Eps: 0.002014535 
Iteration: 4 Eps: 7.129102e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07581958 
Iteration: 3 Eps: 0.002850594 
Iteration: 4 Eps: 9.599072e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06757357 
Iteration: 3 Eps: 0.002084686 
Iteration: 4 Eps: 4.361444e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06220793 
Iteration: 3 Eps: 0.001762501 
Iteration: 4 Eps: 5.376427e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06738051 
Iteration: 3 Eps: 0.001323122 
Iteration: 4 Eps: 3.755876e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07206919 
Iteration: 3 Eps: 0.0009575638 
Iteration: 4 Eps: 4.25115e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05888359 
Iteration: 3 Eps: 0.00229387 
Iteration: 4 Eps: 4.781276e-05 
Iteration: 5 Eps: 1.06969e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07281532 
Iteration: 3 Eps: 0.001454024 
Iteration: 4 Eps: 4.993372e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07009406 
Iteration: 3 Eps: 0.001228402 
Iteration: 4 Eps: 3.99557e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07775036 
Iteration: 3 Eps: 0.001409424 
Iteration: 4 Eps: 3.292342e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05926295 
Iteration: 3 Eps: 0.002014756 
Iteration: 4 Eps: 7.106302e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07583138 
Iteration: 3 Eps: 0.002849332 
Iteration: 4 Eps: 9.578088e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06758495 
Iteration: 3 Eps: 0.00208419 
Iteration: 4 Eps: 4.344386e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06221808 
Iteration: 3 Eps: 0.001762119 
Iteration: 4 Eps: 5.340828e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06739176 
Iteration: 3 Eps: 0.001322526 
Iteration: 4 Eps: 3.74734e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07208222 
Iteration: 3 Eps: 0.0009570601 
Iteration: 4 Eps: 4.254696e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05889416 
Iteration: 3 Eps: 0.002294659 
Iteration: 4 Eps: 4.787656e-05 
Iteration: 5 Eps: 1.071043e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07282704 
Iteration: 3 Eps: 0.001453907 
Iteration: 4 Eps: 4.988165e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0701072 
Iteration: 3 Eps: 0.001227445 
Iteration: 4 Eps: 3.976935e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07776079 
Iteration: 3 Eps: 0.001409075 
Iteration: 4 Eps: 3.284059e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05927462 
Iteration: 3 Eps: 0.002014934 
Iteration: 4 Eps: 7.082292e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07584323 
Iteration: 3 Eps: 0.002848132 
Iteration: 4 Eps: 9.565297e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06759634 
Iteration: 3 Eps: 0.002083684 
Iteration: 4 Eps: 4.326848e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06222838 
Iteration: 3 Eps: 0.001761753 
Iteration: 4 Eps: 5.306476e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0674031 
Iteration: 3 Eps: 0.001321944 
Iteration: 4 Eps: 3.740137e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07209537 
Iteration: 3 Eps: 0.0009565363 
Iteration: 4 Eps: 4.254109e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05890472 
Iteration: 3 Eps: 0.002295429 
Iteration: 4 Eps: 4.792299e-05 
Iteration: 5 Eps: 1.071161e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07283866 
Iteration: 3 Eps: 0.001453802 
Iteration: 4 Eps: 4.98261e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0701203 
Iteration: 3 Eps: 0.001226472 
Iteration: 4 Eps: 3.960352e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07777122 
Iteration: 3 Eps: 0.001408717 
Iteration: 4 Eps: 3.276136e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05928615 
Iteration: 3 Eps: 0.002014989 
Iteration: 4 Eps: 7.065175e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07585502 
Iteration: 3 Eps: 0.002846845 
Iteration: 4 Eps: 9.537958e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06760773 
Iteration: 3 Eps: 0.002083208 
Iteration: 4 Eps: 4.308982e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0622387 
Iteration: 3 Eps: 0.001761478 
Iteration: 4 Eps: 5.26832e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06741444 
Iteration: 3 Eps: 0.001321369 
Iteration: 4 Eps: 3.725679e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07210852 
Iteration: 3 Eps: 0.000956036 
Iteration: 4 Eps: 4.252445e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05891531 
Iteration: 3 Eps: 0.002295969 
Iteration: 4 Eps: 4.796325e-05 
Iteration: 5 Eps: 1.075004e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07285035 
Iteration: 3 Eps: 0.001453716 
Iteration: 4 Eps: 4.976357e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07013358 
Iteration: 3 Eps: 0.001225488 
Iteration: 4 Eps: 3.943533e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07778166 
Iteration: 3 Eps: 0.001408358 
Iteration: 4 Eps: 3.268636e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05929782 
Iteration: 3 Eps: 0.002015159 
Iteration: 4 Eps: 7.041461e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07586672 
Iteration: 3 Eps: 0.002845566 
Iteration: 4 Eps: 9.513592e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06761913 
Iteration: 3 Eps: 0.002082676 
Iteration: 4 Eps: 4.292704e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06224902 
Iteration: 3 Eps: 0.001761019 
Iteration: 4 Eps: 5.234877e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06742578 
Iteration: 3 Eps: 0.001320751 
Iteration: 4 Eps: 3.718305e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07212167 
Iteration: 3 Eps: 0.00095552 
Iteration: 4 Eps: 4.252553e-05 
> 
> 
> pdf('hw4partblambda.pdf')
> plot(0.5*(seq(1:20)-1)+1,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> plot(0.5*(seq(1:20)-1)+1,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> avgerror = 0
> for(k in 1:20){
+     lambda1 = 5*(k-1)+1
+ lambda2 = 0
+ oldbeta <- rep(1,p)
+ beta <- rep(1,p)
+     avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)}
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05871444 
Iteration: 3 Eps: 0.002281413 
Iteration: 4 Eps: 4.689458e-05 
Iteration: 5 Eps: 1.043627e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07262915 
Iteration: 3 Eps: 0.001455154 
Iteration: 4 Eps: 5.10069e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0698845 
Iteration: 3 Eps: 0.001244538 
Iteration: 4 Eps: 4.28029e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07758391 
Iteration: 3 Eps: 0.001414968 
Iteration: 4 Eps: 3.425075e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.059078 
Iteration: 3 Eps: 0.002010871 
Iteration: 4 Eps: 7.451025e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07564533 
Iteration: 3 Eps: 0.002869707 
Iteration: 4 Eps: 9.947389e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06740325 
Iteration: 3 Eps: 0.002092782 
Iteration: 4 Eps: 4.610557e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06205404 
Iteration: 3 Eps: 0.00176805 
Iteration: 4 Eps: 5.920906e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06720976 
Iteration: 3 Eps: 0.001331804 
Iteration: 4 Eps: 3.87709e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07186736 
Iteration: 3 Eps: 0.0009646328 
Iteration: 4 Eps: 4.260748e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05882015 
Iteration: 3 Eps: 0.002289236 
Iteration: 4 Eps: 4.74679e-05 
Iteration: 5 Eps: 1.061334e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07274691 
Iteration: 3 Eps: 0.001454537 
Iteration: 4 Eps: 5.027715e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07001588 
Iteration: 3 Eps: 0.001234473 
Iteration: 4 Eps: 4.097864e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07768933 
Iteration: 3 Eps: 0.001411696 
Iteration: 4 Eps: 3.337375e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05919299 
Iteration: 3 Eps: 0.002013355 
Iteration: 4 Eps: 7.233993e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07576193 
Iteration: 3 Eps: 0.002856883 
Iteration: 4 Eps: 9.70658e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06751654 
Iteration: 3 Eps: 0.002087605 
Iteration: 4 Eps: 4.430773e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06215673 
Iteration: 3 Eps: 0.001764391 
Iteration: 4 Eps: 5.560745e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06732396 
Iteration: 3 Eps: 0.001326087 
Iteration: 4 Eps: 3.795671e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07200098 
Iteration: 3 Eps: 0.0009599921 
Iteration: 4 Eps: 4.260594e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05892588 
Iteration: 3 Eps: 0.002296745 
Iteration: 4 Eps: 4.802694e-05 
Iteration: 5 Eps: 1.076476e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07286207 
Iteration: 3 Eps: 0.001453617 
Iteration: 4 Eps: 4.969141e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07014679 
Iteration: 3 Eps: 0.00122449 
Iteration: 4 Eps: 3.926418e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07779191 
Iteration: 3 Eps: 0.001407964 
Iteration: 4 Eps: 3.261185e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0593095 
Iteration: 3 Eps: 0.002015295 
Iteration: 4 Eps: 7.019327e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07587842 
Iteration: 3 Eps: 0.00284419 
Iteration: 4 Eps: 9.489093e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06763054 
Iteration: 3 Eps: 0.002082142 
Iteration: 4 Eps: 4.276423e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06225934 
Iteration: 3 Eps: 0.001760607 
Iteration: 4 Eps: 5.200716e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06743713 
Iteration: 3 Eps: 0.001320202 
Iteration: 4 Eps: 3.709909e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07213499 
Iteration: 3 Eps: 0.0009550215 
Iteration: 4 Eps: 4.250153e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05903158 
Iteration: 3 Eps: 0.002304203 
Iteration: 4 Eps: 4.859893e-05 
Iteration: 5 Eps: 1.089882e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07297904 
Iteration: 3 Eps: 0.001452953 
Iteration: 4 Eps: 4.899098e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07027583 
Iteration: 3 Eps: 0.001215082 
Iteration: 4 Eps: 3.769733e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07789606 
Iteration: 3 Eps: 0.001404836 
Iteration: 4 Eps: 3.186011e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05942501 
Iteration: 3 Eps: 0.002017094 
Iteration: 4 Eps: 6.809213e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07599541 
Iteration: 3 Eps: 0.002831584 
Iteration: 4 Eps: 9.27142e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0677441 
Iteration: 3 Eps: 0.002077258 
Iteration: 4 Eps: 4.123281e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06236249 
Iteration: 3 Eps: 0.001756667 
Iteration: 4 Eps: 4.857661e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06755159 
Iteration: 3 Eps: 0.001314428 
Iteration: 4 Eps: 3.631079e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07226753 
Iteration: 3 Eps: 0.0009503807 
Iteration: 4 Eps: 4.247211e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05913792 
Iteration: 3 Eps: 0.002312136 
Iteration: 4 Eps: 4.921618e-05 
Iteration: 5 Eps: 1.102995e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0730947 
Iteration: 3 Eps: 0.001451756 
Iteration: 4 Eps: 4.847054e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07040558 
Iteration: 3 Eps: 0.001205257 
Iteration: 4 Eps: 3.614204e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07799853 
Iteration: 3 Eps: 0.001401367 
Iteration: 4 Eps: 3.113381e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0595412 
Iteration: 3 Eps: 0.002018437 
Iteration: 4 Eps: 6.607164e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0761108 
Iteration: 3 Eps: 0.002819645 
Iteration: 4 Eps: 9.066102e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06785738 
Iteration: 3 Eps: 0.002071604 
Iteration: 4 Eps: 3.977472e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06246404 
Iteration: 3 Eps: 0.001752216 
Iteration: 4 Eps: 4.5388e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06766499 
Iteration: 3 Eps: 0.001308954 
Iteration: 4 Eps: 3.56698e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0723999 
Iteration: 3 Eps: 0.0009454936 
Iteration: 4 Eps: 4.235549e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05924364 
Iteration: 3 Eps: 0.002319565 
Iteration: 4 Eps: 4.97625e-05 
Iteration: 5 Eps: 1.117474e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07321049 
Iteration: 3 Eps: 0.00145121 
Iteration: 4 Eps: 4.793042e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07053538 
Iteration: 3 Eps: 0.001195711 
Iteration: 4 Eps: 3.469151e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07810327 
Iteration: 3 Eps: 0.001398031 
Iteration: 4 Eps: 3.042862e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05965778 
Iteration: 3 Eps: 0.002019904 
Iteration: 4 Eps: 6.405911e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07622776 
Iteration: 3 Eps: 0.002807169 
Iteration: 4 Eps: 8.864473e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06797233 
Iteration: 3 Eps: 0.002065958 
Iteration: 4 Eps: 3.842403e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06256702 
Iteration: 3 Eps: 0.001748149 
Iteration: 4 Eps: 4.241122e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06777795 
Iteration: 3 Eps: 0.001303221 
Iteration: 4 Eps: 3.490054e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07253137 
Iteration: 3 Eps: 0.0009403005 
Iteration: 4 Eps: 4.226439e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05935002 
Iteration: 3 Eps: 0.00232697 
Iteration: 4 Eps: 5.035991e-05 
Iteration: 5 Eps: 1.129898e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07332675 
Iteration: 3 Eps: 0.001450385 
Iteration: 4 Eps: 4.742445e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07066471 
Iteration: 3 Eps: 0.00118616 
Iteration: 4 Eps: 3.330197e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0782073 
Iteration: 3 Eps: 0.001394774 
Iteration: 4 Eps: 2.974999e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05977375 
Iteration: 3 Eps: 0.002020693 
Iteration: 4 Eps: 6.217436e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07634407 
Iteration: 3 Eps: 0.002794996 
Iteration: 4 Eps: 8.665063e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06808559 
Iteration: 3 Eps: 0.002060656 
Iteration: 4 Eps: 3.710322e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06266948 
Iteration: 3 Eps: 0.001743873 
Iteration: 4 Eps: 3.955875e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06789177 
Iteration: 3 Eps: 0.001297491 
Iteration: 4 Eps: 3.42191e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07266359 
Iteration: 3 Eps: 0.0009355856 
Iteration: 4 Eps: 4.208496e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05945615 
Iteration: 3 Eps: 0.002334113 
Iteration: 4 Eps: 5.099736e-05 
Iteration: 5 Eps: 1.141152e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0734425 
Iteration: 3 Eps: 0.001449334 
Iteration: 4 Eps: 4.692807e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07079417 
Iteration: 3 Eps: 0.001176865 
Iteration: 4 Eps: 3.2029e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07831127 
Iteration: 3 Eps: 0.001391415 
Iteration: 4 Eps: 2.909875e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05988983 
Iteration: 3 Eps: 0.002021411 
Iteration: 4 Eps: 6.024876e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07646056 
Iteration: 3 Eps: 0.002782803 
Iteration: 4 Eps: 8.481789e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06819895 
Iteration: 3 Eps: 0.002055251 
Iteration: 4 Eps: 3.589144e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06277205 
Iteration: 3 Eps: 0.001739301 
Iteration: 4 Eps: 3.685872e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06800516 
Iteration: 3 Eps: 0.001291923 
Iteration: 4 Eps: 3.362894e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07279593 
Iteration: 3 Eps: 0.0009308686 
Iteration: 4 Eps: 4.194065e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05956137 
Iteration: 3 Eps: 0.002341545 
Iteration: 4 Eps: 5.159194e-05 
Iteration: 5 Eps: 1.151501e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07355601 
Iteration: 3 Eps: 0.001448854 
Iteration: 4 Eps: 4.653964e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07092271 
Iteration: 3 Eps: 0.001167822 
Iteration: 4 Eps: 3.075798e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0784149 
Iteration: 3 Eps: 0.001388161 
Iteration: 4 Eps: 2.845395e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06000511 
Iteration: 3 Eps: 0.002022059 
Iteration: 4 Eps: 5.8432e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07657586 
Iteration: 3 Eps: 0.002771374 
Iteration: 4 Eps: 8.31693e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06831154 
Iteration: 3 Eps: 0.002049568 
Iteration: 4 Eps: 3.474429e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06287366 
Iteration: 3 Eps: 0.001734772 
Iteration: 4 Eps: 3.43074e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06811783 
Iteration: 3 Eps: 0.001286237 
Iteration: 4 Eps: 3.302207e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07292664 
Iteration: 3 Eps: 0.0009260347 
Iteration: 4 Eps: 4.181437e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05966663 
Iteration: 3 Eps: 0.002348899 
Iteration: 4 Eps: 5.219315e-05 
Iteration: 5 Eps: 1.16236e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07367052 
Iteration: 3 Eps: 0.001447926 
Iteration: 4 Eps: 4.611027e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07104924 
Iteration: 3 Eps: 0.001158776 
Iteration: 4 Eps: 2.958959e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07851691 
Iteration: 3 Eps: 0.001385064 
Iteration: 4 Eps: 2.784839e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06012016 
Iteration: 3 Eps: 0.002022372 
Iteration: 4 Eps: 5.658569e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07668958 
Iteration: 3 Eps: 0.002759824 
Iteration: 4 Eps: 8.139405e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06842341 
Iteration: 3 Eps: 0.002044245 
Iteration: 4 Eps: 3.36356e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06297605 
Iteration: 3 Eps: 0.001730086 
Iteration: 4 Eps: 3.186036e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06822951 
Iteration: 3 Eps: 0.001280596 
Iteration: 4 Eps: 3.243062e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07305762 
Iteration: 3 Eps: 0.0009211539 
Iteration: 4 Eps: 4.163665e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05977161 
Iteration: 3 Eps: 0.002356333 
Iteration: 4 Eps: 5.281072e-05 
Iteration: 5 Eps: 1.171635e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07378521 
Iteration: 3 Eps: 0.001446912 
Iteration: 4 Eps: 4.571388e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07117736 
Iteration: 3 Eps: 0.001149566 
Iteration: 4 Eps: 2.846442e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07862106 
Iteration: 3 Eps: 0.001381839 
Iteration: 4 Eps: 2.731564e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06023487 
Iteration: 3 Eps: 0.002022787 
Iteration: 4 Eps: 5.488697e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07680559 
Iteration: 3 Eps: 0.002748301 
Iteration: 4 Eps: 7.974933e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06853645 
Iteration: 3 Eps: 0.002038594 
Iteration: 4 Eps: 3.260856e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06307672 
Iteration: 3 Eps: 0.00172561 
Iteration: 4 Eps: 2.964852e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06834286 
Iteration: 3 Eps: 0.001274988 
Iteration: 4 Eps: 3.189053e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07318783 
Iteration: 3 Eps: 0.0009164797 
Iteration: 4 Eps: 4.146253e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05987779 
Iteration: 3 Eps: 0.002363508 
Iteration: 4 Eps: 5.342502e-05 
Iteration: 5 Eps: 1.177217e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07390054 
Iteration: 3 Eps: 0.001446193 
Iteration: 4 Eps: 4.528862e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07130528 
Iteration: 3 Eps: 0.001140798 
Iteration: 4 Eps: 2.731845e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07872404 
Iteration: 3 Eps: 0.001378553 
Iteration: 4 Eps: 2.681301e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06035049 
Iteration: 3 Eps: 0.002022715 
Iteration: 4 Eps: 5.320391e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07692119 
Iteration: 3 Eps: 0.00273704 
Iteration: 4 Eps: 7.814512e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06865002 
Iteration: 3 Eps: 0.002032951 
Iteration: 4 Eps: 3.169479e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06317754 
Iteration: 3 Eps: 0.001721154 
Iteration: 4 Eps: 2.754474e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0684548 
Iteration: 3 Eps: 0.001269544 
Iteration: 4 Eps: 3.137835e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07331811 
Iteration: 3 Eps: 0.0009118354 
Iteration: 4 Eps: 4.127217e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05998383 
Iteration: 3 Eps: 0.00237062 
Iteration: 4 Eps: 5.398419e-05 
Iteration: 5 Eps: 1.188023e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07401416 
Iteration: 3 Eps: 0.001445689 
Iteration: 4 Eps: 4.491875e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07143335 
Iteration: 3 Eps: 0.001131789 
Iteration: 4 Eps: 2.631162e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07882678 
Iteration: 3 Eps: 0.001375453 
Iteration: 4 Eps: 2.623678e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06046491 
Iteration: 3 Eps: 0.00202261 
Iteration: 4 Eps: 5.156184e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07703745 
Iteration: 3 Eps: 0.002726721 
Iteration: 4 Eps: 7.663661e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06876339 
Iteration: 3 Eps: 0.002027144 
Iteration: 4 Eps: 3.08364e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06327918 
Iteration: 3 Eps: 0.001716364 
Iteration: 4 Eps: 2.559445e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06856752 
Iteration: 3 Eps: 0.001263959 
Iteration: 4 Eps: 3.088509e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07344781 
Iteration: 3 Eps: 0.0009070736 
Iteration: 4 Eps: 4.111927e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06009 
Iteration: 3 Eps: 0.002377566 
Iteration: 4 Eps: 5.460982e-05 
Iteration: 5 Eps: 1.194908e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07412885 
Iteration: 3 Eps: 0.001444745 
Iteration: 4 Eps: 4.453517e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07156059 
Iteration: 3 Eps: 0.001123148 
Iteration: 4 Eps: 2.53565e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07893029 
Iteration: 3 Eps: 0.001372692 
Iteration: 4 Eps: 2.571707e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0605807 
Iteration: 3 Eps: 0.002022058 
Iteration: 4 Eps: 4.998182e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07715276 
Iteration: 3 Eps: 0.002715717 
Iteration: 4 Eps: 7.513676e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06887423 
Iteration: 3 Eps: 0.002022038 
Iteration: 4 Eps: 2.999597e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06338129 
Iteration: 3 Eps: 0.001711468 
Iteration: 4 Eps: 2.380332e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06867874 
Iteration: 3 Eps: 0.001258827 
Iteration: 4 Eps: 3.044462e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07357723 
Iteration: 3 Eps: 0.0009027111 
Iteration: 4 Eps: 4.092513e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06019483 
Iteration: 3 Eps: 0.002384927 
Iteration: 4 Eps: 5.523159e-05 
Iteration: 5 Eps: 1.200682e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07424334 
Iteration: 3 Eps: 0.001443795 
Iteration: 4 Eps: 4.422013e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07168803 
Iteration: 3 Eps: 0.001114527 
Iteration: 4 Eps: 2.444182e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07903477 
Iteration: 3 Eps: 0.001369544 
Iteration: 4 Eps: 2.521893e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06069612 
Iteration: 3 Eps: 0.002021363 
Iteration: 4 Eps: 4.845261e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07726843 
Iteration: 3 Eps: 0.002704922 
Iteration: 4 Eps: 7.37002e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06898689 
Iteration: 3 Eps: 0.002016355 
Iteration: 4 Eps: 2.919056e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0634823 
Iteration: 3 Eps: 0.001706775 
Iteration: 4 Eps: 2.217998e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0687891 
Iteration: 3 Eps: 0.001253625 
Iteration: 4 Eps: 3.001323e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07370715 
Iteration: 3 Eps: 0.0008981072 
Iteration: 4 Eps: 4.074353e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06030056 
Iteration: 3 Eps: 0.002391701 
Iteration: 4 Eps: 5.585014e-05 
Iteration: 5 Eps: 1.206312e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07435756 
Iteration: 3 Eps: 0.001442774 
Iteration: 4 Eps: 4.382907e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07181523 
Iteration: 3 Eps: 0.001106062 
Iteration: 4 Eps: 2.356162e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07913905 
Iteration: 3 Eps: 0.001366424 
Iteration: 4 Eps: 2.475327e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06080903 
Iteration: 3 Eps: 0.002020931 
Iteration: 4 Eps: 4.701006e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07738394 
Iteration: 3 Eps: 0.002694239 
Iteration: 4 Eps: 7.232034e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06909975 
Iteration: 3 Eps: 0.002010872 
Iteration: 4 Eps: 2.843572e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06358425 
Iteration: 3 Eps: 0.001701841 
Iteration: 4 Eps: 2.060454e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06890183 
Iteration: 3 Eps: 0.001248169 
Iteration: 4 Eps: 2.960577e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07383693 
Iteration: 3 Eps: 0.0008935873 
Iteration: 4 Eps: 4.056329e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06040669 
Iteration: 3 Eps: 0.002398509 
Iteration: 4 Eps: 5.647444e-05 
Iteration: 5 Eps: 1.210877e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07447159 
Iteration: 3 Eps: 0.00144185 
Iteration: 4 Eps: 4.343114e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0719411 
Iteration: 3 Eps: 0.001097898 
Iteration: 4 Eps: 2.275544e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07924333 
Iteration: 3 Eps: 0.001363307 
Iteration: 4 Eps: 2.428626e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06092434 
Iteration: 3 Eps: 0.002019896 
Iteration: 4 Eps: 4.558758e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0774991 
Iteration: 3 Eps: 0.002683521 
Iteration: 4 Eps: 7.090101e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06921275 
Iteration: 3 Eps: 0.002005074 
Iteration: 4 Eps: 2.777803e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06368578 
Iteration: 3 Eps: 0.001696726 
Iteration: 4 Eps: 1.925716e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06901423 
Iteration: 3 Eps: 0.001242755 
Iteration: 4 Eps: 2.920774e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07396632 
Iteration: 3 Eps: 0.0008890745 
Iteration: 4 Eps: 4.037523e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06051261 
Iteration: 3 Eps: 0.002405245 
Iteration: 4 Eps: 5.708036e-05 
Iteration: 5 Eps: 1.215284e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07458556 
Iteration: 3 Eps: 0.001440699 
Iteration: 4 Eps: 4.296857e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07206789 
Iteration: 3 Eps: 0.001089628 
Iteration: 4 Eps: 2.196954e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0793473 
Iteration: 3 Eps: 0.001360552 
Iteration: 4 Eps: 2.379153e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06103941 
Iteration: 3 Eps: 0.002018698 
Iteration: 4 Eps: 4.420181e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07761412 
Iteration: 3 Eps: 0.00267335 
Iteration: 4 Eps: 6.961609e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06932569 
Iteration: 3 Eps: 0.001999302 
Iteration: 4 Eps: 2.71541e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06378723 
Iteration: 3 Eps: 0.001691757 
Iteration: 4 Eps: 1.801209e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06912662 
Iteration: 3 Eps: 0.001237308 
Iteration: 4 Eps: 2.884332e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07409553 
Iteration: 3 Eps: 0.0008845947 
Iteration: 4 Eps: 4.018849e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06061885 
Iteration: 3 Eps: 0.002411666 
Iteration: 4 Eps: 5.773333e-05 
Iteration: 5 Eps: 1.218613e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0746992 
Iteration: 3 Eps: 0.001439799 
Iteration: 4 Eps: 4.25474e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07219448 
Iteration: 3 Eps: 0.001081479 
Iteration: 4 Eps: 2.120032e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07945122 
Iteration: 3 Eps: 0.001357483 
Iteration: 4 Eps: 2.338525e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0611543 
Iteration: 3 Eps: 0.002017361 
Iteration: 4 Eps: 4.290226e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07772937 
Iteration: 3 Eps: 0.002663365 
Iteration: 4 Eps: 6.83586e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06943845 
Iteration: 3 Eps: 0.001993573 
Iteration: 4 Eps: 2.653746e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06388873 
Iteration: 3 Eps: 0.001686746 
Iteration: 4 Eps: 1.681895e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06923853 
Iteration: 3 Eps: 0.001231992 
Iteration: 4 Eps: 2.849057e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0742246 
Iteration: 3 Eps: 0.0008801168 
Iteration: 4 Eps: 4.007173e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06072482 
Iteration: 3 Eps: 0.002418294 
Iteration: 4 Eps: 5.835301e-05 
Iteration: 5 Eps: 1.22051e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07481232 
Iteration: 3 Eps: 0.001438858 
Iteration: 4 Eps: 4.211375e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07232073 
Iteration: 3 Eps: 0.001073379 
Iteration: 4 Eps: 2.049826e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07955504 
Iteration: 3 Eps: 0.001354267 
Iteration: 4 Eps: 2.296813e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06126922 
Iteration: 3 Eps: 0.002015845 
Iteration: 4 Eps: 4.161471e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07784449 
Iteration: 3 Eps: 0.002653384 
Iteration: 4 Eps: 6.712604e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06955096 
Iteration: 3 Eps: 0.001987877 
Iteration: 4 Eps: 2.600166e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06399015 
Iteration: 3 Eps: 0.001681721 
Iteration: 4 Eps: 1.577212e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06935047 
Iteration: 3 Eps: 0.00122668 
Iteration: 4 Eps: 2.814518e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07435316 
Iteration: 3 Eps: 0.0008757529 
Iteration: 4 Eps: 3.988258e-05 
> plot(0.5*(seq(1:20)-1)+1,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> avgerror = 0
> for(k in 1:10){
+  cat(k,'\n')
+     lambda1 = 20*(k-1)+10
+ lambda2 = 0
+ oldbeta <- rep(1,p)
+ beta <- rep(1,p)
+     avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05890472 
Iteration: 3 Eps: 0.002295429 
Iteration: 4 Eps: 4.792299e-05 
Iteration: 5 Eps: 1.071161e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07283866 
Iteration: 3 Eps: 0.001453802 
Iteration: 4 Eps: 4.98261e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0701203 
Iteration: 3 Eps: 0.001226472 
Iteration: 4 Eps: 3.960352e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07777122 
Iteration: 3 Eps: 0.001408717 
Iteration: 4 Eps: 3.276136e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05928615 
Iteration: 3 Eps: 0.002014989 
Iteration: 4 Eps: 7.065175e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07585502 
Iteration: 3 Eps: 0.002846845 
Iteration: 4 Eps: 9.537958e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06760773 
Iteration: 3 Eps: 0.002083208 
Iteration: 4 Eps: 4.308982e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0622387 
Iteration: 3 Eps: 0.001761478 
Iteration: 4 Eps: 5.26832e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06741444 
Iteration: 3 Eps: 0.001321369 
Iteration: 4 Eps: 3.725679e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07210852 
Iteration: 3 Eps: 0.000956036 
Iteration: 4 Eps: 4.252445e-05 
2 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05932861 
Iteration: 3 Eps: 0.002325519 
Iteration: 4 Eps: 5.024083e-05 
Iteration: 5 Eps: 1.127525e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07330352 
Iteration: 3 Eps: 0.001450553 
Iteration: 4 Eps: 4.75233e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07063893 
Iteration: 3 Eps: 0.00118806 
Iteration: 4 Eps: 3.356782e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07818642 
Iteration: 3 Eps: 0.001395408 
Iteration: 4 Eps: 2.988227e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05975058 
Iteration: 3 Eps: 0.002020523 
Iteration: 4 Eps: 6.256356e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07632074 
Iteration: 3 Eps: 0.002797424 
Iteration: 4 Eps: 8.710107e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06806295 
Iteration: 3 Eps: 0.002061745 
Iteration: 4 Eps: 3.736235e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06264893 
Iteration: 3 Eps: 0.001744781 
Iteration: 4 Eps: 4.013572e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06786896 
Iteration: 3 Eps: 0.001298627 
Iteration: 4 Eps: 3.435006e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07263712 
Iteration: 3 Eps: 0.0009365364 
Iteration: 4 Eps: 4.21511e-05 
3 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05975045 
Iteration: 3 Eps: 0.002354893 
Iteration: 4 Eps: 5.268521e-05 
Iteration: 5 Eps: 1.169653e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07376237 
Iteration: 3 Eps: 0.001447124 
Iteration: 4 Eps: 4.578567e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07115158 
Iteration: 3 Eps: 0.001151385 
Iteration: 4 Eps: 2.868267e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07860021 
Iteration: 3 Eps: 0.00138248 
Iteration: 4 Eps: 2.738405e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06021191 
Iteration: 3 Eps: 0.002022766 
Iteration: 4 Eps: 5.523164e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07678258 
Iteration: 3 Eps: 0.002750536 
Iteration: 4 Eps: 8.007826e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06851406 
Iteration: 3 Eps: 0.002039711 
Iteration: 4 Eps: 3.280468e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06305619 
Iteration: 3 Eps: 0.001726573 
Iteration: 4 Eps: 3.008077e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06832018 
Iteration: 3 Eps: 0.00127613 
Iteration: 4 Eps: 3.200547e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07316208 
Iteration: 3 Eps: 0.0009174148 
Iteration: 4 Eps: 4.150013e-05 
4 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0601736 
Iteration: 3 Eps: 0.002383572 
Iteration: 4 Eps: 5.510554e-05 
Iteration: 5 Eps: 1.199153e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07422042 
Iteration: 3 Eps: 0.001443982 
Iteration: 4 Eps: 4.429619e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07166252 
Iteration: 3 Eps: 0.00111624 
Iteration: 4 Eps: 2.462242e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07901393 
Iteration: 3 Eps: 0.001370172 
Iteration: 4 Eps: 2.531633e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06067295 
Iteration: 3 Eps: 0.002021519 
Iteration: 4 Eps: 4.875776e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0772453 
Iteration: 3 Eps: 0.002707074 
Iteration: 4 Eps: 7.398199e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06896458 
Iteration: 3 Eps: 0.002017488 
Iteration: 4 Eps: 2.934213e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06346301 
Iteration: 3 Eps: 0.001707538 
Iteration: 4 Eps: 2.249599e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06876658 
Iteration: 3 Eps: 0.001254721 
Iteration: 4 Eps: 3.009727e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07368109 
Iteration: 3 Eps: 0.0008990306 
Iteration: 4 Eps: 4.078228e-05 
5 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06059763 
Iteration: 3 Eps: 0.002410575 
Iteration: 4 Eps: 5.75676e-05 
Iteration: 5 Eps: 1.21744e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07467646 
Iteration: 3 Eps: 0.001439984 
Iteration: 4 Eps: 4.263442e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07216919 
Iteration: 3 Eps: 0.001083083 
Iteration: 4 Eps: 2.134522e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07943048 
Iteration: 3 Eps: 0.001358075 
Iteration: 4 Eps: 2.342976e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06113128 
Iteration: 3 Eps: 0.002017652 
Iteration: 4 Eps: 4.316252e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07770633 
Iteration: 3 Eps: 0.002665334 
Iteration: 4 Eps: 6.860667e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06941595 
Iteration: 3 Eps: 0.001994702 
Iteration: 4 Eps: 2.665073e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06386845 
Iteration: 3 Eps: 0.001687763 
Iteration: 4 Eps: 1.705756e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06921628 
Iteration: 3 Eps: 0.001233031 
Iteration: 4 Eps: 2.85605e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07419884 
Iteration: 3 Eps: 0.0008810066 
Iteration: 4 Eps: 4.012282e-05 
6 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06102162 
Iteration: 3 Eps: 0.002436289 
Iteration: 4 Eps: 6.005776e-05 
Iteration: 5 Eps: 1.227318e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07512991 
Iteration: 3 Eps: 0.001436054 
Iteration: 4 Eps: 4.070452e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07267276 
Iteration: 3 Eps: 0.001051376 
Iteration: 4 Eps: 1.868372e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07984632 
Iteration: 3 Eps: 0.001346038 
Iteration: 4 Eps: 2.184844e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0615907 
Iteration: 3 Eps: 0.002010753 
Iteration: 4 Eps: 3.827208e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07816606 
Iteration: 3 Eps: 0.00262637 
Iteration: 4 Eps: 6.384806e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06986423 
Iteration: 3 Eps: 0.001972021 
Iteration: 4 Eps: 2.470081e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0642721 
Iteration: 3 Eps: 0.001667742 
Iteration: 4 Eps: 1.339211e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06966226 
Iteration: 3 Eps: 0.00121215 
Iteration: 4 Eps: 2.727356e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07471 
Iteration: 3 Eps: 0.000863848 
Iteration: 4 Eps: 3.934737e-05 
7 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06144465 
Iteration: 3 Eps: 0.002460358 
Iteration: 4 Eps: 6.260695e-05 
Iteration: 5 Eps: 1.226404e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07558258 
Iteration: 3 Eps: 0.001432225 
Iteration: 4 Eps: 3.81132e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0731712 
Iteration: 3 Eps: 0.001021792 
Iteration: 4 Eps: 1.650183e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0802625 
Iteration: 3 Eps: 0.001334187 
Iteration: 4 Eps: 2.037971e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0620482 
Iteration: 3 Eps: 0.00200169 
Iteration: 4 Eps: 3.414806e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07862463 
Iteration: 3 Eps: 0.002589864 
Iteration: 4 Eps: 5.957312e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07031278 
Iteration: 3 Eps: 0.001949146 
Iteration: 4 Eps: 2.324216e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06467569 
Iteration: 3 Eps: 0.001647211 
Iteration: 4 Eps: 1.095976e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07010649 
Iteration: 3 Eps: 0.001191934 
Iteration: 4 Eps: 2.604061e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07521855 
Iteration: 3 Eps: 0.0008473416 
Iteration: 4 Eps: 3.851922e-05 
8 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06186791 
Iteration: 3 Eps: 0.002483506 
Iteration: 4 Eps: 6.496406e-05 
Iteration: 5 Eps: 1.2202e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07603297 
Iteration: 3 Eps: 0.001428221 
Iteration: 4 Eps: 3.503406e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07366861 
Iteration: 3 Eps: 0.0009936975 
Iteration: 4 Eps: 1.468619e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08067921 
Iteration: 3 Eps: 0.001322229 
Iteration: 4 Eps: 1.909376e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06250429 
Iteration: 3 Eps: 0.001990636 
Iteration: 4 Eps: 3.075026e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07908323 
Iteration: 3 Eps: 0.002555862 
Iteration: 4 Eps: 5.567003e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07076046 
Iteration: 3 Eps: 0.001926455 
Iteration: 4 Eps: 2.212476e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06507783 
Iteration: 3 Eps: 0.001626641 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07054872 
Iteration: 3 Eps: 0.001172223 
Iteration: 4 Eps: 2.4605e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07572158 
Iteration: 3 Eps: 0.0008315652 
Iteration: 4 Eps: 3.712135e-05 
9 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06229145 
Iteration: 3 Eps: 0.002504508 
Iteration: 4 Eps: 6.727403e-05 
Iteration: 5 Eps: 1.215839e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07647974 
Iteration: 3 Eps: 0.001424464 
Iteration: 4 Eps: 3.153286e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07416008 
Iteration: 3 Eps: 0.0009674258 
Iteration: 4 Eps: 1.312272e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08109792 
Iteration: 3 Eps: 0.001310456 
Iteration: 4 Eps: 1.78982e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06295903 
Iteration: 3 Eps: 0.001977918 
Iteration: 4 Eps: 2.786386e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07953927 
Iteration: 3 Eps: 0.002524109 
Iteration: 4 Eps: 5.258034e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07120699 
Iteration: 3 Eps: 0.001903569 
Iteration: 4 Eps: 2.125083e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06547898 
Iteration: 3 Eps: 0.001605863 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0709898 
Iteration: 3 Eps: 0.00115312 
Iteration: 4 Eps: 2.325395e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07622209 
Iteration: 3 Eps: 0.0008164797 
Iteration: 4 Eps: 3.606099e-05 
10 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06271354 
Iteration: 3 Eps: 0.002524148 
Iteration: 4 Eps: 6.949446e-05 
Iteration: 5 Eps: 1.2083e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07692523 
Iteration: 3 Eps: 0.001420834 
Iteration: 4 Eps: 2.803826e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07464938 
Iteration: 3 Eps: 0.0009425076 
Iteration: 4 Eps: 1.17719e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08151546 
Iteration: 3 Eps: 0.001298619 
Iteration: 4 Eps: 1.678048e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06341268 
Iteration: 3 Eps: 0.001963879 
Iteration: 4 Eps: 2.537965e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07999431 
Iteration: 3 Eps: 0.00249431 
Iteration: 4 Eps: 4.92013e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07165279 
Iteration: 3 Eps: 0.001880615 
Iteration: 4 Eps: 2.050934e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06587891 
Iteration: 3 Eps: 0.001585132 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07142791 
Iteration: 3 Eps: 0.001134726 
Iteration: 4 Eps: 2.180408e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07671874 
Iteration: 3 Eps: 0.0008022331 
Iteration: 4 Eps: 3.485925e-05 
> plot(20*(seq(1:10)-1)+10,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> avgerror = 0
> for(k in 1:10){
+  cat(k,'\n')
+     lambda1 = 40*(k-1)+10
+ lambda2 = 0
+ oldbeta <- rep(1,p)
+ beta <- rep(1,p)
+     avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05890472 
Iteration: 3 Eps: 0.002295429 
Iteration: 4 Eps: 4.792299e-05 
Iteration: 5 Eps: 1.071161e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07283866 
Iteration: 3 Eps: 0.001453802 
Iteration: 4 Eps: 4.98261e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0701203 
Iteration: 3 Eps: 0.001226472 
Iteration: 4 Eps: 3.960352e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07777122 
Iteration: 3 Eps: 0.001408717 
Iteration: 4 Eps: 3.276136e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05928615 
Iteration: 3 Eps: 0.002014989 
Iteration: 4 Eps: 7.065175e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07585502 
Iteration: 3 Eps: 0.002846845 
Iteration: 4 Eps: 9.537958e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06760773 
Iteration: 3 Eps: 0.002083208 
Iteration: 4 Eps: 4.308982e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0622387 
Iteration: 3 Eps: 0.001761478 
Iteration: 4 Eps: 5.26832e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06741444 
Iteration: 3 Eps: 0.001321369 
Iteration: 4 Eps: 3.725679e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07210852 
Iteration: 3 Eps: 0.000956036 
Iteration: 4 Eps: 4.252445e-05 
2 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.05975045 
Iteration: 3 Eps: 0.002354893 
Iteration: 4 Eps: 5.268521e-05 
Iteration: 5 Eps: 1.169653e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07376237 
Iteration: 3 Eps: 0.001447124 
Iteration: 4 Eps: 4.578567e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07115158 
Iteration: 3 Eps: 0.001151385 
Iteration: 4 Eps: 2.868267e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07860021 
Iteration: 3 Eps: 0.00138248 
Iteration: 4 Eps: 2.738405e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06021191 
Iteration: 3 Eps: 0.002022766 
Iteration: 4 Eps: 5.523164e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07678258 
Iteration: 3 Eps: 0.002750536 
Iteration: 4 Eps: 8.007826e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06851406 
Iteration: 3 Eps: 0.002039711 
Iteration: 4 Eps: 3.280468e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06305619 
Iteration: 3 Eps: 0.001726573 
Iteration: 4 Eps: 3.008077e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06832018 
Iteration: 3 Eps: 0.00127613 
Iteration: 4 Eps: 3.200547e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07316208 
Iteration: 3 Eps: 0.0009174148 
Iteration: 4 Eps: 4.150013e-05 
3 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06059763 
Iteration: 3 Eps: 0.002410575 
Iteration: 4 Eps: 5.75676e-05 
Iteration: 5 Eps: 1.21744e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07467646 
Iteration: 3 Eps: 0.001439984 
Iteration: 4 Eps: 4.263442e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07216919 
Iteration: 3 Eps: 0.001083083 
Iteration: 4 Eps: 2.134522e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07943048 
Iteration: 3 Eps: 0.001358075 
Iteration: 4 Eps: 2.342976e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06113128 
Iteration: 3 Eps: 0.002017652 
Iteration: 4 Eps: 4.316252e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07770633 
Iteration: 3 Eps: 0.002665334 
Iteration: 4 Eps: 6.860667e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06941595 
Iteration: 3 Eps: 0.001994702 
Iteration: 4 Eps: 2.665073e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06386845 
Iteration: 3 Eps: 0.001687763 
Iteration: 4 Eps: 1.705756e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06921628 
Iteration: 3 Eps: 0.001233031 
Iteration: 4 Eps: 2.85605e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07419884 
Iteration: 3 Eps: 0.0008810066 
Iteration: 4 Eps: 4.012282e-05 
4 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06144465 
Iteration: 3 Eps: 0.002460358 
Iteration: 4 Eps: 6.260695e-05 
Iteration: 5 Eps: 1.226404e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07558258 
Iteration: 3 Eps: 0.001432225 
Iteration: 4 Eps: 3.81132e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0731712 
Iteration: 3 Eps: 0.001021792 
Iteration: 4 Eps: 1.650183e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0802625 
Iteration: 3 Eps: 0.001334187 
Iteration: 4 Eps: 2.037971e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0620482 
Iteration: 3 Eps: 0.00200169 
Iteration: 4 Eps: 3.414806e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07862463 
Iteration: 3 Eps: 0.002589864 
Iteration: 4 Eps: 5.957312e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07031278 
Iteration: 3 Eps: 0.001949146 
Iteration: 4 Eps: 2.324216e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06467569 
Iteration: 3 Eps: 0.001647211 
Iteration: 4 Eps: 1.095976e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07010649 
Iteration: 3 Eps: 0.001191934 
Iteration: 4 Eps: 2.604061e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07521855 
Iteration: 3 Eps: 0.0008473416 
Iteration: 4 Eps: 3.851922e-05 
5 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06229145 
Iteration: 3 Eps: 0.002504508 
Iteration: 4 Eps: 6.727403e-05 
Iteration: 5 Eps: 1.215839e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07647974 
Iteration: 3 Eps: 0.001424464 
Iteration: 4 Eps: 3.153286e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07416008 
Iteration: 3 Eps: 0.0009674258 
Iteration: 4 Eps: 1.312272e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08109792 
Iteration: 3 Eps: 0.001310456 
Iteration: 4 Eps: 1.78982e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06295903 
Iteration: 3 Eps: 0.001977918 
Iteration: 4 Eps: 2.786386e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07953927 
Iteration: 3 Eps: 0.002524109 
Iteration: 4 Eps: 5.258034e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07120699 
Iteration: 3 Eps: 0.001903569 
Iteration: 4 Eps: 2.125083e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06547898 
Iteration: 3 Eps: 0.001605863 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0709898 
Iteration: 3 Eps: 0.00115312 
Iteration: 4 Eps: 2.325395e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07622209 
Iteration: 3 Eps: 0.0008164797 
Iteration: 4 Eps: 3.606099e-05 
6 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06313534 
Iteration: 3 Eps: 0.002542018 
Iteration: 4 Eps: 7.146929e-05 
Iteration: 5 Eps: 1.201552e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07736889 
Iteration: 3 Eps: 0.001417614 
Iteration: 4 Eps: 2.470411e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07513556 
Iteration: 3 Eps: 0.0009192087 
Iteration: 4 Eps: 1.060587e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08193365 
Iteration: 3 Eps: 0.001287011 
Iteration: 4 Eps: 1.579183e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06386491 
Iteration: 3 Eps: 0.00194861 
Iteration: 4 Eps: 2.322661e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08044849 
Iteration: 3 Eps: 0.002466533 
Iteration: 4 Eps: 4.60451e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07209786 
Iteration: 3 Eps: 0.001857723 
Iteration: 4 Eps: 1.979447e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06627785 
Iteration: 3 Eps: 0.001564462 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07186599 
Iteration: 3 Eps: 0.001116645 
Iteration: 4 Eps: 2.040478e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07721177 
Iteration: 3 Eps: 0.0007886561 
Iteration: 4 Eps: 3.366373e-05 
7 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06398076 
Iteration: 3 Eps: 0.002571983 
Iteration: 4 Eps: 7.482148e-05 
Iteration: 5 Eps: 1.190507e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07825156 
Iteration: 3 Eps: 0.001412999 
Iteration: 4 Eps: 1.920357e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07610105 
Iteration: 3 Eps: 0.000876421 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08277221 
Iteration: 3 Eps: 0.001263431 
Iteration: 4 Eps: 1.41567e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06476598 
Iteration: 3 Eps: 0.001915237 
Iteration: 4 Eps: 1.97261e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08135392 
Iteration: 3 Eps: 0.002416215 
Iteration: 4 Eps: 4.059536e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07298525 
Iteration: 3 Eps: 0.001811827 
Iteration: 4 Eps: 1.905541e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06707284 
Iteration: 3 Eps: 0.001523623 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07273801 
Iteration: 3 Eps: 0.001082126 
Iteration: 4 Eps: 1.773218e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07818808 
Iteration: 3 Eps: 0.0007634358 
Iteration: 4 Eps: 3.132404e-05 
8 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06482491 
Iteration: 3 Eps: 0.00259518 
Iteration: 4 Eps: 7.202726e-05 
Iteration: 5 Eps: 1.373556e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07912803 
Iteration: 3 Eps: 0.0014098 
Iteration: 4 Eps: 1.58859e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07705373 
Iteration: 3 Eps: 0.0008390405 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08361229 
Iteration: 3 Eps: 0.001240245 
Iteration: 4 Eps: 1.277067e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06566078 
Iteration: 3 Eps: 0.001879566 
Iteration: 4 Eps: 1.687557e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08225562 
Iteration: 3 Eps: 0.002371977 
Iteration: 4 Eps: 3.602656e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07387045 
Iteration: 3 Eps: 0.001766134 
Iteration: 4 Eps: 1.7441e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06786436 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07360476 
Iteration: 3 Eps: 0.0009657824 
Iteration: 4 Eps: 1.924616e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07915135 
Iteration: 3 Eps: 0.0007406191 
Iteration: 4 Eps: 2.908983e-05 
9 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06566918 
Iteration: 3 Eps: 0.00261175 
Iteration: 4 Eps: 7.303053e-05 
Iteration: 5 Eps: 1.035508e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07999936 
Iteration: 3 Eps: 0.001407589 
Iteration: 4 Eps: 1.301188e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07799616 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08445492 
Iteration: 3 Eps: 0.00121729 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06655212 
Iteration: 3 Eps: 0.00184253 
Iteration: 4 Eps: 1.453713e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08315411 
Iteration: 3 Eps: 0.002332432 
Iteration: 4 Eps: 3.232001e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07475355 
Iteration: 3 Eps: 0.001721217 
Iteration: 4 Eps: 1.588961e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06865215 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07446678 
Iteration: 3 Eps: 0.0009414152 
Iteration: 4 Eps: 1.766673e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08010534 
Iteration: 3 Eps: 0.0007197405 
Iteration: 4 Eps: 2.656116e-05 
10 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06651057 
Iteration: 3 Eps: 0.002622921 
Iteration: 4 Eps: 7.274401e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08086526 
Iteration: 3 Eps: 0.001405624 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07893113 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08530096 
Iteration: 3 Eps: 0.001195401 
Iteration: 4 Eps: 1.181187e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06744042 
Iteration: 3 Eps: 0.00180423 
Iteration: 4 Eps: 1.263669e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08404921 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07563485 
Iteration: 3 Eps: 0.001676961 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06943722 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07532507 
Iteration: 3 Eps: 0.0009181499 
Iteration: 4 Eps: 1.618477e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.08104929 
Iteration: 3 Eps: 0.0007005578 
> 
> 
> pdf('hw4partblambda.pdf')
> plot(20*(seq(1:10)-1)+10,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> plot(40*(seq(1:10)-1)+10,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> pdf('hw4partblambda.pdf')
> plot(40*(seq(1:10)-1)+10,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> temp = grouplasso(220,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07558211 
Iteration: 3 Eps: 0.0008849478 
> y = temp$beta
> x = temp$truebeta
> pdf('hw4partbbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> dev.off()
null device 
          1 
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> weights = rep(1,9)
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 40*(k-1)+10
+ lambda2 = 0
+ oldbeta <- rep(1,p)
+ beta <- rep(1,p)
+     avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.04770166 
Iteration: 3 Eps: 0.009531612 
Iteration: 4 Eps: 0.01359695 
Iteration: 5 Eps: 0.01055826 
Iteration: 6 Eps: 0.00533652 
Iteration: 7 Eps: 0.003847381 
Iteration: 8 Eps: 0.002619514 
Iteration: 9 Eps: 0.001489505 
Iteration: 10 Eps: 0.001164585 
Iteration: 11 Eps: 0.0008844205 
Iteration: 12 Eps: 0.0006435045 
Iteration: 13 Eps: 0.0005473357 
Iteration: 14 Eps: 0.0005173013 
Iteration: 15 Eps: 0.000444195 
Iteration: 16 Eps: 0.0004194163 
Iteration: 17 Eps: 0.0004020974 
Iteration: 18 Eps: 0.0003859894 
Iteration: 19 Eps: 0.0003685849 
Iteration: 20 Eps: 0.0003607412 
Iteration: 21 Eps: 0.0003497886 
Iteration: 22 Eps: 0.0003406489 
Iteration: 23 Eps: 0.0003313304 
Iteration: 24 Eps: 0.0003237327 
Iteration: 25 Eps: 0.0003147398 
Iteration: 26 Eps: 0.0003071512 
Iteration: 27 Eps: 0.0002988488 
Iteration: 28 Eps: 0.0002915278 
Iteration: 29 Eps: 0.0002834989 
Iteration: 30 Eps: 0.0002765864 
Iteration: 31 Eps: 0.000269001 
Iteration: 32 Eps: 0.0002622803 
Iteration: 33 Eps: 0.0002550366 
Iteration: 34 Eps: 0.000248614 
Iteration: 35 Eps: 0.0002417056 
Iteration: 36 Eps: 0.0002355851 
Iteration: 37 Eps: 0.0002290321 
Iteration: 38 Eps: 0.0002232015 
Iteration: 39 Eps: 0.0002169832 
Iteration: 40 Eps: 0.0002114331 
Iteration: 41 Eps: 0.0002055005 
Iteration: 42 Eps: 0.0002001916 
Iteration: 43 Eps: 0.0001945682 
Iteration: 44 Eps: 0.0001895164 
Iteration: 45 Eps: 0.0001841861 
Iteration: 46 Eps: 0.0001793704 
Iteration: 47 Eps: 0.0001743003 
Iteration: 48 Eps: 0.0001698205 
Iteration: 49 Eps: 0.0001650232 
Iteration: 50 Eps: 0.0001606631 
Iteration: 51 Eps: 0.0001560994 
Iteration: 52 Eps: 0.0001519784 
Iteration: 53 Eps: 0.0001476644 
Iteration: 54 Eps: 0.0001437457 
Iteration: 55 Eps: 0.0001396515 
Iteration: 56 Eps: 0.0001359253 
Iteration: 57 Eps: 0.0001320423 
Iteration: 58 Eps: 0.0001285102 
Iteration: 59 Eps: 0.0001248432 
Iteration: 60 Eps: 0.0001214888 
Iteration: 61 Eps: 0.0001180192 
Iteration: 62 Eps: 0.0001148467 
Iteration: 63 Eps: 0.0001115555 
Iteration: 64 Eps: 0.0001085357 
Iteration: 65 Eps: 0.0001054065 
Iteration: 66 Eps: 0.000102529 
Iteration: 67 Eps: 9.956644e-05 
avgerror = 0
Iteration: 68 Eps: 9.683833e-05 
Iteration: 69 Eps: 9.402707e-05 
Iteration: 70 Eps: 9.144764e-05 
Iteration: 71 Eps: 8.880382e-05 
Iteration: 72 Eps: 8.641075e-05 
Iteration: 73 Eps: 8.392362e-05 
Iteration: 74 Eps: 8.161234e-05 
Iteration: 75 Eps: 7.924853e-05 
Iteration: 76 Eps: 7.706818e-05 
Iteration: 77 Eps: 7.483623e-05 
Iteration: 78 Eps: 7.27634e-05 
Iteration: 79 Eps: 7.064226e-05 
Iteration: 80 Eps: 6.867377e-05 
Iteration: 81 Eps: 6.666994e-05 
Iteration: 82 Eps: 6.480383e-05 
Iteration: 83 Eps: 6.29023e-05 
Iteration: 84 Eps: 6.113309e-05 
Iteration: 85 Eps: 5.93275e-05 
Iteration: 86 Eps: 5.76487e-05 
  ^C ^CIteration: 87 Eps: 5.59507e-05 

> #second code for group lasso
> grouplasso2 = function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){
+ 
+ if(missing(maxiter)){maxiter = 100}
+ if(missing(weights)){weights = sqrt(blocksize)}
+ lambda1vec = lambda1*weights
+     #lambda2 = 0
+ 
+ iter = 1
+ eps2 = 1
+ if(missing(tol)){tol = 10^(-5)}
+ 
+ 
+ while(eps2>tol&iter<maxiter){
+     cat('Iteration:',iter,'Eps:',eps,'\n')
+     for(currentgroup in 1:group){    
+         (oldbeta = beta)
+         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
+         (Xl = X[,group.indx==currentgroup])
+         (betal = beta[group.indx==currentgroup])
+ 
+         (ZkThk = r)
+         (ZkThk[] = 0)
+         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
+ 
+         (a = t(Xl)%*%r)
+         (t = a)
+         (t[] = 0)
+         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
+         
+         if(lambda2==0){
+             if(sqrt(t(t(Xl)%*%r)%*%t(Xl)%*%r)<lambda1){betal[]=0}
+                     else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+             }
+             (beta[group.indx==currentgroup] = betal)
+             betal[]=0
+         }
+         }
+         
+             else{
+         (J = (1/(sqrt(blocksize[currentgroup])*lambda1vec[currentgroup]^2))*t(a-lambda2*t)%*%(a-lambda2*t))
+         if(J<=1){#setting the entire block to 0
+             betal[]=0
+         }
+         else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                 if(abs(t(Xl[,j])%*%w)<lambda2){betal[j] = 0}
+                 else{
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+                 }
+             }
+         }
+         (beta[group.indx==currentgroup] = betal)
+         betal[]=0
+     }
+     }
+     eps1 = (t(beta-oldbeta)%*%(beta-oldbeta))/(t(oldbeta)%*%oldbeta)
+     eps2 <- ((t(y - X%*%beta)%*%(y- X%*%beta))-(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta)))/(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta))
+     iter = iter + 1  
+ }
+ return(list(truebeta=truebeta,beta=beta,iter=iter,eps=eps2))
+ }
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=FALSE,scale=TRUE)
>                                         #X = scale(X,center=FALSE,scale=TRUE)
> #weights = sqrt(blocksize)
> weights = rep(1,9)
> 
> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> weights = sqrt(blocksize)
> grouplasso(100,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07241992 
Iteration: 3 Eps: 0.01207463 
Iteration: 4 Eps: 0.00759423 
Iteration: 5 Eps: 0.01078157 
Iteration: 6 Eps: 0.01141887 
Iteration: 7 Eps: 0.01292949 
Iteration: 8 Eps: 0.01562159 
Iteration: 9 Eps: 0.01593609 
Iteration: 10 Eps: 0.019182 
Iteration: 11 Eps: 0.01875039 
Iteration: 12 Eps: 0.02231103 
Iteration: 13 Eps: 0.02131679 
Iteration: 14 Eps: 0.02478785 
Iteration: 15 Eps: 0.02344737 
Iteration: 16 Eps: 0.02663695 
Iteration: 17 Eps: 0.02511323 
Iteration: 18 Eps: 0.02793604 
Iteration: 19 Eps: 0.02637127 
Iteration: 20 Eps: 0.02881334 
Iteration: 21 Eps: 0.02730234 
Iteration: 22 Eps: 0.02938926 
Iteration: 23 Eps: 0.02798607 
Iteration: 24 Eps: 0.02975888 
Iteration: 25 Eps: 0.02848847 
Iteration: 26 Eps: 0.02999083 
Iteration: 27 Eps: 0.02885981 
Iteration: 28 Eps: 0.03013268 
Iteration: 29 Eps: 0.02913704 
Iteration: 30 Eps: 0.03021634 
Iteration: 31 Eps: 0.02934675 
Iteration: 32 Eps: 0.03026276 
Iteration: 33 Eps: 0.02950725 
Iteration: 34 Eps: 0.03028556 
Iteration: 35 Eps: 0.02963143 
Iteration: 36 Eps: 0.03029338 
Iteration: 37 Eps: 0.02972866 
Iteration: 38 Eps: 0.0302923 
Iteration: 39 Eps: 0.02980563 
Iteration: 40 Eps: 0.03028601 
Iteration: 41 Eps: 0.02986708 
Iteration: 42 Eps: 0.03027679 
Iteration: 43 Eps: 0.02991647 
Iteration: 44 Eps: 0.03026616 
Iteration: 45 Eps: 0.02995647 
Iteration: 46 Eps: 0.03025515 
Iteration: 47 Eps: 0.02998908 
Iteration: 48 Eps: 0.0302443 
Iteration: 49 Eps: 0.03001577 
Iteration: 50 Eps: 0.03023394 
  ^C ^CIteration: 51 Eps: 0.03003796 

> #code for group lasso
> grouplasso = function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){
+ 
+ if(missing(maxiter)){maxiter = 100}
+ if(missing(weights)){weights = sqrt(blocksize)}
+ lambda1vec = lambda1*weights
+     #lambda2 = 0
+ 
+ iter = 1
+ eps1 = 1
+ #eps2 = 1
+ if(missing(tol)){tol = 10^(-5)}
+ 
+ 
+ #while(eps2>tol&iter<maxiter)
+ while(eps1>tol&iter<maxiter){
+     cat('Iteration:',iter,'Eps:',eps1,'\n')
+     for(currentgroup in 1:group){    
+         (oldbeta = beta)
+         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
+         (Xl = X[,group.indx==currentgroup])
+         (betal = beta[group.indx==currentgroup])
+ 
+         (ZkThk = r)
+         (ZkThk[] = 0)
+         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
+ 
+         (a = t(Xl)%*%r)
+         (t = a)
+         (t[] = 0)
+         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
+         
+         if(lambda2==0){
+             if(sqrt(t(t(Xl)%*%r)%*%t(Xl)%*%r)<lambda1){betal[]=0}
+                     else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+             }
+             (beta[group.indx==currentgroup] = betal)
+             betal[]=0
+         }
+         }
+         
+             else{
+         (J = (1/(sqrt(blocksize[currentgroup])*lambda1vec[currentgroup]^2))*t(a-lambda2*t)%*%(a-lambda2*t))
+         if(J<=1){#setting the entire block to 0
+             betal[]=0
+         }
+         else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                 if(abs(t(Xl[,j])%*%w)<lambda2){betal[j] = 0}
+                 else{
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+                 }
+             }
+         }
+         (beta[group.indx==currentgroup] = betal)
+         betal[]=0
+     }
+     }
+     eps1 = (t(beta-oldbeta)%*%(beta-oldbeta))/(t(oldbeta)%*%oldbeta)
+     eps2 <- ((t(y - X%*%beta)%*%(y- X%*%beta))-(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta)))/(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta))
+     iter = iter + 1  
+ }
+ return(list(truebeta=truebeta,beta=beta,iter=iter,eps=eps1))
+ }
> 
>                                         #second code for group lasso
> grouplasso2 = function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){
+ 
+ if(missing(maxiter)){maxiter = 100}
+ if(missing(weights)){weights = sqrt(blocksize)}
+ lambda1vec = lambda1*weights
+     #lambda2 = 0
+ 
+ iter = 1
+ eps2 = 1
+ if(missing(tol)){tol = 10^(-5)}
+ 
+ 
+ while(eps2>tol&iter<maxiter){
+     cat('Iteration:',iter,'Eps:',eps2,'\n')
+     for(currentgroup in 1:group){    
+         (oldbeta = beta)
+         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
+         (Xl = X[,group.indx==currentgroup])
+         (betal = beta[group.indx==currentgroup])
+ 
+         (ZkThk = r)
+         (ZkThk[] = 0)
+         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
+ 
+         (a = t(Xl)%*%r)
+         (t = a)
+         (t[] = 0)
+         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
+         
+         if(lambda2==0){
+             if(sqrt(t(t(Xl)%*%r)%*%t(Xl)%*%r)<lambda1){betal[]=0}
+                     else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+             }
+             (beta[group.indx==currentgroup] = betal)
+             betal[]=0
+         }
+         }
+         
+             else{
+         (J = (1/(sqrt(blocksize[currentgroup])*lambda1vec[currentgroup]^2))*t(a-lambda2*t)%*%(a-lambda2*t))
+         if(J<=1){#setting the entire block to 0
+             betal[]=0
+         }
+         else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                 if(abs(t(Xl[,j])%*%w)<lambda2){betal[j] = 0}
+                 else{
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+                 }
+             }
+         }
+         (beta[group.indx==currentgroup] = betal)
+         betal[]=0
+     }
+     }
+     eps1 = (t(beta-oldbeta)%*%(beta-oldbeta))/(t(oldbeta)%*%oldbeta)
+     eps2 <- ((t(y - X%*%beta)%*%(y- X%*%beta))-(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta)))/(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta))
+     iter = iter + 1  
+ }
+ return(list(truebeta=truebeta,beta=beta,iter=iter,eps=eps2))
+ }
> grouplasso2(100,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -0.98327963 -1.95405521  1.86904253 -0.73867633  0.28503762 -0.43652560
  [7] -1.87783978 -2.17472478  0.58009766 -1.97855865  2.07966560 -1.98812146
 [13] -1.09694845  2.76662126 -1.26677082  1.22152544 -1.56253594 -1.05363332
 [19]  1.35564778  0.74751690  0.67985442 -1.18639787  0.17662703  0.37086153
 [25]  0.18582585  0.60237739  0.20832623 -0.04874524  0.68066122 -0.21916297
 [31]  0.50810100 -0.26387809  2.01049674 -0.95433793 -0.61520343  1.14404618
 [37] -0.27838666 -0.59709901 -0.46256662 -0.34836985  1.47146380  0.48486446
 [43]  1.28669958  0.42072382  0.19137508 -0.03217445 -1.82291642  1.23218230
 [49]  0.64879674 -1.83795193  0.41443587 -0.01798819  0.26399867  0.55278428
 [55]  0.27333826 -0.08698395 -0.14615497  0.18192195  0.30955723  0.17257131
 [61] -0.12600919  0.28631233 -0.04597209  0.18819503 -0.24243254  0.39890917
 [67] -0.22388513  0.01621085 -0.35690386  0.42767066  2.25338910 -1.73659648
 [73] -1.01014549 -0.20281981  1.58796852  0.85898815  1.57797737  0.91511073
 [79] -1.14104132  0.20559571 -1.17811589 -1.60097296  0.58425396  1.56913568
 [85] -0.15591326 -0.58512926 -1.84772704 -0.39859859 -2.10448130 -0.34453905
 [91] -0.07588265  0.45411091 -0.15918935 -0.01698262  0.63121203  0.07519439
 [97]  0.22438810  0.37069335 -0.30148619  0.08783556

$iter
[1] 2

$eps
           [,1]
[1,] -0.1207778

> grouplasso2(10,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -0.99394839 -1.97366422  1.88374893 -0.74461230  0.28860490 -0.44139620
  [7] -1.89441581 -2.19182763  0.58649150 -1.99052963  2.09461254 -2.00221912
 [13] -1.10331463  2.78156883 -1.27358023  1.23322277 -1.57510318 -1.06289611
 [19]  1.36954833  0.75497650  0.68736419 -1.20022162  0.17758088  0.37606214
 [25]  0.19161834  0.61157876  0.21291365 -0.05027310  0.69072727 -0.22247168
 [31]  0.51313067 -0.26184276  2.03259481 -0.96854008 -0.62209869  1.15976151
 [37] -0.27734940 -0.60290978 -0.46735258 -0.35071954  1.49051628  0.49160752
 [43]  1.30168762  0.42432191  0.19406645 -0.03291445 -1.84253317  1.24756804
 [49]  0.65861299 -1.85833326  0.42691419 -0.02234588  0.26912214  0.56220313
 [55]  0.27740273 -0.08956425 -0.14649456  0.18566710  0.31739905  0.17602800
 [61] -0.12622127  0.29125544 -0.04312856  0.19315422 -0.25235550  0.40920119
 [67] -0.22842522  0.01959808 -0.36797099  0.44503353  2.27547055 -1.75066044
 [73] -1.01300020 -0.20138801  1.60815780  0.87230281  1.59159884  0.92381409
 [79] -1.14567959  0.21082829 -1.18598889 -1.61559917  0.59304152  1.58125473
 [85] -0.15712283 -0.59018689 -1.86734198 -0.39989285 -2.11857907 -0.34577308
 [91] -0.07944073  0.46115654 -0.15971803 -0.01506658  0.64365438  0.07614744
 [97]  0.23126637  0.38439015 -0.31312448  0.09437123

$iter
[1] 2

$eps
           [,1]
[1,] -0.1184478

> grouplasso2(1,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -0.99502815 -1.97564037  1.88522499 -0.74519672  0.28895392 -0.44189162
  [7] -1.89607806 -2.19354056  0.58714283 -1.99172360  2.09611452 -2.00363200
 [13] -1.10395240  2.78306369 -1.27425874  1.23440222 -1.57636642 -1.06382535
 [19]  1.37094375  0.75571441  0.68812370 -1.20161094  0.17765972  0.37660859
 [25]  0.19220323  0.61250225  0.21336777 -0.05045351  0.69174796 -0.22279525
 [31]  0.51362731 -0.26162968  2.03482970 -0.96997448 -0.62279172  1.16134940
 [37] -0.27723204 -0.60348900 -0.46781477 -0.35096217  1.49243777  0.49227256
 [43]  1.30319326  0.42469746  0.19432095 -0.03298552 -1.84449951  1.24911655
 [49]  0.65959871 -1.86037091  0.42819576 -0.02280262  0.26963389  0.56315375
 [55]  0.27781058 -0.08983668 -0.14651390  0.18603687  0.31821040  0.17636756
 [61] -0.12622199  0.29176749 -0.04284287  0.19365805 -0.25338366  0.41025216
 [67] -0.22890825  0.01993663 -0.36910320  0.44681012  2.27769844 -1.75207712
 [73] -1.01329270 -0.20121844  1.61020261  0.87365022  1.59297073  0.92468718
 [79] -1.14613321  0.21134676 -1.18677920 -1.61706609  0.59395207  1.58246535
 [85] -0.15725886 -0.59070785 -1.86930555 -0.40002768 -2.11998433 -0.34588756
 [91] -0.07980926  0.46188982 -0.15975261 -0.01489021  0.64491461  0.07626336
 [97]  0.23197729  0.38578949 -0.31431075  0.09503919

$iter
[1] 2

$eps
           [,1]
[1,] -0.1182157

> grouplasso2(0.1,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -0.99514812 -1.97581920  1.88539143 -0.74527402  0.28900541 -0.44194051
  [7] -1.89626234 -2.19373009  0.58720422 -1.99185694  2.09628177 -2.00378939
 [13] -1.10402399  2.78322907 -1.27433655  1.23453321 -1.57650563 -1.06393031
 [19]  1.37109953  0.75580696  0.68821014 -1.20176458  0.17768567  0.37664911
 [25]  0.19227515  0.61261408  0.21343143 -0.05046226  0.69186151 -0.22284664
 [31]  0.51369643 -0.26161519  2.03503771 -0.97013625 -0.62287006  1.16152529
 [37] -0.27722754 -0.60356122 -0.46789119 -0.35098222  1.49260770  0.49236550
 [43]  1.30336197  0.42472176  0.19436696 -0.03299277 -1.84467590  1.24928321
 [49]  0.65970847 -1.86055900  0.42831360 -0.02284849  0.26969923  0.56326478
 [55]  0.27786146 -0.08985651 -0.14653658  0.18609136  0.31828591  0.17642107
 [61] -0.12624855  0.29181293 -0.04280465  0.19371588 -0.25348518  0.41036869
 [67] -0.22894155  0.01996562 -0.36922302  0.44700450  2.27790578 -1.75223938
 [73] -1.01332281 -0.20123116  1.61041502  0.87379623  1.59312097  0.92478781
 [79] -1.14619349  0.21141425 -1.18686487 -1.61722838  0.59402626  1.58259762
 [85] -0.15725620 -0.59074486 -1.86952413 -0.40003823 -2.12014820 -0.34590545
 [91] -0.07983888  0.46194618 -0.15977905 -0.01486264  0.64505428  0.07626096
 [97]  0.23205081  0.38594564 -0.31444205  0.09512094

$iter
[1] 2

$eps
          [,1]
[1,] -0.118191

> grouplasso(200,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.07399156 
Iteration: 3 Eps: 0.01157407 
Iteration: 4 Eps: 0.006540544 
Iteration: 5 Eps: 0.009393137 
Iteration: 6 Eps: 0.009863632 
Iteration: 7 Eps: 0.0112583 
Iteration: 8 Eps: 0.0136408 
Iteration: 9 Eps: 0.01422291 
Iteration: 10 Eps: 0.01716238 
Iteration: 11 Eps: 0.0171745 
Iteration: 12 Eps: 0.0204498 
Iteration: 13 Eps: 0.01998047 
Iteration: 14 Eps: 0.02320297 
Iteration: 15 Eps: 0.0223861 
Iteration: 16 Eps: 0.02534827 
Iteration: 17 Eps: 0.0243118 
Iteration: 18 Eps: 0.02691475 
Iteration: 19 Eps: 0.02578633 
Iteration: 20 Eps: 0.02801266 
Iteration: 21 Eps: 0.0268851 
Iteration: 22 Eps: 0.02876294 
Iteration: 23 Eps: 0.02769317 
Iteration: 24 Eps: 0.02926769 
Iteration: 25 Eps: 0.02828532 
Iteration: 26 Eps: 0.02960379 
Iteration: 27 Eps: 0.02872028 
Iteration: 28 Eps: 0.02982569 
Iteration: 29 Eps: 0.02904216 
Iteration: 30 Eps: 0.02997116 
Iteration: 31 Eps: 0.02928313 
Iteration: 32 Eps: 0.03006584 
Iteration: 33 Eps: 0.02946564 
Iteration: 34 Eps: 0.03012656 
Iteration: 35 Eps: 0.02960549 
Iteration: 36 Eps: 0.03016464 
Iteration: 37 Eps: 0.02971378 
Iteration: 38 Eps: 0.03018768 
Iteration: 39 Eps: 0.02979839 
Iteration: 40 Eps: 0.03020062 
  ^C ^CIteration: 41 Eps: 0.02986503 

Error in t(w - temp3) (from #15) : 
  error in evaluating the argument 'x' in selecting a method for function 't': object 'nil' not found
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=FALSE,scale=TRUE)
>                                         #X = scale(X,center=FALSE,scale=TRUE)
> weights = sqrt(blocksize)
> #weights = rep(1,9)
> 
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> grouplasso(200,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
$truebeta
  [1]  0.531625000  1.499700674  1.832747936  1.559760450  0.478340565
  [6] -0.714525233  0.704181178  0.006558303 -0.816739145  1.672808360
 [11]  1.635825714 -0.130904737  0.780989647  1.455865997  1.946480606
 [16] -0.972338897  0.355815840  0.136201085  1.046084444  0.024773551
 [21]  0.548231799 -1.286295556  0.103465147 -0.193421198  1.463990761
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1]  6.950640e-01  1.237257e+00  1.873727e+00  1.596261e+00  4.520418e-01
  [6] -4.815262e-01  7.118152e-01  2.479112e-02 -9.483214e-01  1.666698e+00
 [11]  1.450920e+00 -1.670963e-01  7.361066e-01  1.500651e+00  2.044779e+00
 [16] -9.410202e-01  3.340498e-01  1.223653e-01  9.705725e-01  1.165726e-01
 [21]  6.208509e-01 -1.276143e+00  1.187147e-01 -1.796750e-01  1.429723e+00
 [26] -9.485094e-06  2.826321e-06 -2.124790e-05 -7.342092e-06 -1.523964e-06
 [31] -1.230574e-05  1.449098e-05  7.642000e-06  2.410045e-05 -1.159438e-05
 [36]  4.972038e-06  5.051794e-06 -1.223089e-05  2.774010e-06  8.619549e-06
 [41] -2.297669e-07 -1.751551e-05 -7.536030e-06 -6.242868e-06 -1.503718e-05
 [46] -7.588773e-06  5.368025e-06  1.193867e-05  1.402821e-05  1.709200e-05
 [51] -7.386939e-06 -5.500251e-06  2.806774e-05 -9.124143e-06  4.517154e-06
 [56] -1.296644e-05  2.315089e-05  2.231778e-05 -1.915762e-05  5.743692e-06
 [61] -1.268660e-05 -2.640472e-05  1.403202e-05  1.156464e-05 -3.241002e-05
 [66] -1.002878e-05  6.389549e-06 -2.360005e-06  1.507412e-05  3.369884e-05
 [71] -1.366210e-05  4.431979e-06  2.634476e-05  1.164629e-05  2.842178e-05
 [76] -4.306796e-05 -1.040901e-05 -5.155128e-07 -2.494349e-05  1.487480e-05
 [81]  2.162593e-05 -5.254308e-07  2.386444e-06 -1.296246e-05 -2.808750e-07
 [86] -3.314181e-05 -2.539469e-06  3.586886e-05  9.718904e-06  1.290612e-05
 [91] -1.785878e-05 -2.165608e-06  2.146614e-05  1.387191e-06 -1.554225e-05
 [96]  1.024141e-05  1.004426e-05  3.071640e-06  8.811055e-06  8.625644e-06

$iter
[1] 2

$eps
             [,1]
[1,] 5.005263e-11

> oldbeta <- rep(1,p)
> beta <- rep(1,p)
> oldbeta <- oldbeta/sqrt(t(oldbeta)%*%oldbeta)
> beta <- beta/sqrt(t(beta)%*%beta)
> temp = grouplasso(200,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.004123326 
Iteration: 3 Eps: 0.0002360083 
Iteration: 4 Eps: 3.307409e-05 
> y = temp$beta
> x = temp$truebeta
> #pdf('hw4partdbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> #dev.off()
> getwd()
[1] "/Users/syedrahman/Documents/Spring2015/HighDimData/HW/HW4/2ndtry"
> source("hw.4-2.R")
Error in source("hw.4-2.R") : hw.4-2.R:2:3: unexpected symbol
1: 
2: R version
     ^
> source('hw.4-2.R')
Error in source("hw.4-2.R") : hw.4-2.R:2:3: unexpected symbol
1: 
2: R version
     ^
> source("hw.4-2.R")
Error in source("hw.4-2.R") : hw.4-2.R:2:3: unexpected symbol
1: 
2: R version
     ^
> setwd("/Users/syedrahman/Documents/Spring2015/HighDimData/HW/HW4/2ndtry")
> 
> f2 = function(thetaj,notthetaj,w,Zj,notZj,lambda1,lambda2,j,blocksize){
+     if(is.null(dim(notZj))){
+     (temp1 = lambda2*(abs(thetaj)+sum(abs(notthetaj))))
+     (temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2))))
+     (temp3 = thetaj*Zj)
+     for (k in 1:(blocksize-1)){temp3 = temp3 + notthetaj*notZj}
+     (temp4 = (1/2)*t(w - temp3)%*%(w-temp3))
+     (out = temp1+temp2+temp4)}
+     else{
+     (temp1 = lambda2*(abs(thetaj)+sum(abs(notthetaj))))
+     (temp2 = lambda1*(sqrt(thetaj^2+sum(notthetaj^2))))
+     (temp3 = thetaj*Zj)
+     for (k in 1:(blocksize-1)){
+         temp3 = temp3 + notthetaj[k]*notZj[,k]}
+     (temp4 = (1/2)*t(w - temp3)%*%(w-temp3))
+     (out = temp1+temp2+temp4)}
+     return(out)}
> 
> #code for group lasso
> grouplasso = function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){
+ 
+ if(missing(maxiter)){maxiter = 100}
+ if(missing(weights)){weights = sqrt(blocksize)}
+ lambda1vec = lambda1*weights
+     #lambda2 = 0
+ 
+ iter = 1
+ eps1 = 1
+ #eps2 = 1
+ if(missing(tol)){tol = 10^(-5)}
+ 
+ 
+ #while(eps2>tol&iter<maxiter)
+ while(eps1>tol&iter<maxiter){
+     cat('Iteration:',iter,'Eps:',eps1,'\n')
+     for(currentgroup in 1:group){    
+         (oldbeta = beta)
+         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
+         (Xl = X[,group.indx==currentgroup])
+         (betal = beta[group.indx==currentgroup])
+ 
+         (ZkThk = r)
+         (ZkThk[] = 0)
+         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
+ 
+         (a = t(Xl)%*%r)
+         (t = a)
+         (t[] = 0)
+         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
+         
+         if(lambda2==0){
+             if(sqrt(t(t(Xl)%*%r)%*%t(Xl)%*%r)<lambda1){betal[]=0}
+                     else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+             }
+             (beta[group.indx==currentgroup] = betal)
+             betal[]=0
+         }
+         }
+         
+             else{
+         (J = (1/(sqrt(blocksize[currentgroup])*lambda1vec[currentgroup]^2))*t(a-lambda2*t)%*%(a-lambda2*t))
+         if(J<=1){#setting the entire block to 0
+             betal[]=0
+         }
+         else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                 if(abs(t(Xl[,j])%*%w)<lambda2){betal[j] = 0}
+                 else{
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+                 }
+             }
+         }
+         (beta[group.indx==currentgroup] = betal)
+         betal[]=0
+     }
+     }
+     eps1 = (t(beta-oldbeta)%*%(beta-oldbeta))/(t(oldbeta)%*%oldbeta)
+     eps2 <- ((t(y - X%*%beta)%*%(y- X%*%beta))-(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta)))/(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta))
+     iter = iter + 1  
+ }
+ return(list(truebeta=truebeta,beta=beta,iter=iter,eps=eps1))
+ }
> 
>                                         #second code for group lasso
> grouplasso2 = function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){
+ 
+ if(missing(maxiter)){maxiter = 100}
+ if(missing(weights)){weights = sqrt(blocksize)}
+ lambda1vec = lambda1*weights
+     #lambda2 = 0
+ 
+ iter = 1
+ eps2 = 1
+ if(missing(tol)){tol = 10^(-5)}
+ 
+ 
+ while(eps2>tol&iter<maxiter){
+     cat('Iteration:',iter,'Eps:',eps2,'\n')
+     for(currentgroup in 1:group){    
+         (oldbeta = beta)
+         (r = y - X[,group.indx!=currentgroup]%*%(beta[group.indx!=currentgroup]))
+         (Xl = X[,group.indx==currentgroup])
+         (betal = beta[group.indx==currentgroup])
+ 
+         (ZkThk = r)
+         (ZkThk[] = 0)
+         for(currentindex in 1:blocksize[currentgroup]){
+                 ZkThk[currentindex] = sum(Xl[,(1:blocksize[currentgroup])!=currentindex]*betal[(1:blocksize[currentgroup])!=currentindex])
+         }
+ 
+         (a = t(Xl)%*%r)
+         (t = a)
+         (t[] = 0)
+         for(j in 1:blocksize[currentgroup]){
+             if(abs(a[j]/lambda2)<=1){t[j] = a[j]/lambda2}
+             else{t[j] = sign(a[j]/lambda2)}
+         }
+         
+         if(lambda2==0){
+             if(sqrt(t(t(Xl)%*%r)%*%t(Xl)%*%r)<lambda1){betal[]=0}
+                     else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+             }
+             (beta[group.indx==currentgroup] = betal)
+             betal[]=0
+         }
+         }
+         
+             else{
+         (J = (1/(sqrt(blocksize[currentgroup])*lambda1vec[currentgroup]^2))*t(a-lambda2*t)%*%(a-lambda2*t))
+         if(J<=1){#setting the entire block to 0
+             betal[]=0
+         }
+         else{# otherwise here we minimize the function using coordinate descent
+             (w = r - ZkThk)
+             for(j in 1:blocksize[currentgroup]){
+                 if(abs(t(Xl[,j])%*%w)<lambda2){betal[j] = 0}
+                 else{
+                     (temp= optimize(f2,c(-1000000,1000000),maximum = FALSE,(notthetaj = betal[(1:blocksize[currentgroup])!=j]),w=w,(Zj = Xl[,j]),(notZj = Xl[,(1:blocksize[currentgroup])!=j]),lambda1=lambda1vec[currentgroup],lambda2=lambda2,j,blocksize = blocksize[currentgroup]))
+                     (betal[j] = temp$minimum)
+                 }
+             }
+         }
+         (beta[group.indx==currentgroup] = betal)
+         betal[]=0
+     }
+     }
+     eps1 = (t(beta-oldbeta)%*%(beta-oldbeta))/(t(oldbeta)%*%oldbeta)
+     eps2 <- ((t(y - X%*%beta)%*%(y- X%*%beta))-(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta)))/(t(y - X%*%oldbeta)%*%(y- X%*%oldbeta))
+     iter = iter + 1  
+ }
+ return(list(truebeta=truebeta,beta=beta,iter=iter,eps=eps2))
+ }
> 
> 
> 
> # Code for 10-fold cross-validation to obtain optimal tuning parameters
> 
> crossval <- function(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group){
+ 
+ (m <- ceiling(n*0.1))
+ (numTests <- n/m) 
+ (TrainBetas <- matrix(NA, p))
+ (TestErrors <- rep(NA, numTests))
+ for (i in 1:numTests){
+     (XTest <- X[((m*(i-1)+1):(m*i)), ])
+     (yTest <- y[((m*(i-1)+1):(m*i))])
+     (XTrain <- X[-((m*(i-1)+1):(m*i)), ])
+     (yTrain <- y[-((m*(i-1)+1):(m*i))])
+     (nTrain <- length(yTrain))
+     (TrainingResults = grouplasso(lambda1,lambda2,p,nTrain,yTrain,XTrain,truebeta,oldbeta,beta,blocksize,maxiter,tol,group.indx,weights,group))
+     (TrainBetas <- as.matrix(TrainingResults$beta))
+     (TestErrors[i] <- (1/2) * as.numeric( t(yTest - XTest%*%TrainBetas)%*% (yTest - XTest%*%TrainBetas)))
+ }
+ 
+ (avgError <- mean(TestErrors))
+ return(avgError)
+ }
> #part b, lambda2 = 0
> set.seed(123456)
> p = 100
> n = 1000
> group = 20
> blocksize = rep(ceiling(p/group),group)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> for(i in 1:group){
+   group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
+ }
> 
> #y = scale(y,center=TRUE,scale=FALSE)
> #X = scale(X,center=TRUE,scale=FALSE)
> weights = sqrt(blocksize)
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+  cat(k,'\n')
+     lambda1 = 40*(k-1)+10
+ lambda2 = 0
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.061989e-05 
Iteration: 3 Eps: 0.0001298221 
Iteration: 4 Eps: 2.249131e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.102443e-05 
Iteration: 3 Eps: 4.454928e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.394707e-05 
Iteration: 3 Eps: 6.634938e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0001455245 
Iteration: 3 Eps: 0.0001156368 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.675248e-05 
Iteration: 3 Eps: 6.261973e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.256674e-05 
Iteration: 3 Eps: 0.0001179559 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.709082e-05 
Iteration: 3 Eps: 0.0001185138 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.842654e-05 
Iteration: 3 Eps: 2.087397e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 3.227783e-05 
Iteration: 3 Eps: 4.093633e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.076325e-05 
Iteration: 3 Eps: 2.633367e-05 
2 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.966798e-05 
Iteration: 3 Eps: 0.0001042431 
Iteration: 4 Eps: 1.400336e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.040477e-05 
Iteration: 3 Eps: 3.165325e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.813215e-05 
Iteration: 3 Eps: 3.865303e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.120855e-05 
Iteration: 3 Eps: 7.459001e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.282507e-05 
Iteration: 3 Eps: 3.322346e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 4.563267e-05 
Iteration: 3 Eps: 4.566147e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.306827e-05 
Iteration: 3 Eps: 5.877596e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.077947e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.435576e-05 
Iteration: 3 Eps: 1.605394e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 3.153855e-05 
Iteration: 3 Eps: 1.426036e-05 
3 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.033822e-05 
Iteration: 3 Eps: 6.7388e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 3.59372e-05 
Iteration: 3 Eps: 2.006907e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.41925e-05 
Iteration: 3 Eps: 2.007592e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.006111e-05 
Iteration: 3 Eps: 4.194423e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.588535e-05 
Iteration: 3 Eps: 1.44552e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.240571e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.034125e-05 
Iteration: 3 Eps: 2.266573e-05 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.382626e-05 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.5166e-05 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.943909e-05 
Iteration: 3 Eps: 1.671711e-05 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 


Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
  ^C ^CIteration: 1 Eps: 1 

> source("hw.4-2.R")
Error in source("hw.4-2.R") : hw.4-2.R:265:10: unexpected symbol
264: n = 1000
265: group = 9oldbeta
              ^
> source("hw.4-2.R")
Error in source("hw.4-2.R") : hw.4-2.R:283:17: unexpected symbol
282: oldbeta <- rep(0,p)
283: beta <- rep(0,p)oldbeta
                     ^
> source("hw.4-2.R")
Error in source("hw.4-2.R") : hw.4-2.R:292:20: unexpected symbol
291: lambda2 = 0
292: oldbeta <- rep(0,p)beta
                        ^
> source("hw.4-2.R")
1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.061989e-05 
Iteration: 3 Eps: 0.0001298221 
Iteration: 4 Eps: 2.249131e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.102443e-05 
Iteration: 3 Eps: 4.454928e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.394707e-05 
Iteration: 3 Eps: 6.634938e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0001455245 
Iteration: 3 Eps: 0.0001156368 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.675248e-05 
Iteration: 3 Eps: 6.261973e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.256674e-05 
Iteration: 3 Eps: 0.0001179559 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.709082e-05 
Iteration: 3 Eps: 0.0001185138 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.842654e-05 
Iteration: 3 Eps: 2.087397e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 3.227783e-05 
Iteration: 3 Eps: 4.093633e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.076325e-05 
Iteration: 3 Eps: 2.633367e-05 
2 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.966798e-05 
Iteration: 3 Eps: 0.0001042431 
Iteration: 4 Eps: 1.400336e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.040477e-05 
Iteration: 3 Eps: 3.165325e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.813215e-05 
Iteration: 3 Eps: 3.865303e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.120855e-05 
Iteration: 3 Eps: 7.459001e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.282507e-05 
Iteration: 3 Eps: 3.322346e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 4.563267e-05 
Iteration: 3 Eps: 4.566147e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.306827e-05 
Iteration: 3 Eps: 5.877596e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.077947e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.435576e-05 
Iteration: 3 Eps: 1.605394e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 3.153855e-05 
Iteration: 3 Eps: 1.426036e-05 
3 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.033822e-05 
Iteration: 3 Eps: 6.7388e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 3.59372e-05 
Iteration: 3 Eps: 2.006907e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.41925e-05 
Iteration: 3 Eps: 2.007592e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.006111e-05 
Iteration: 3 Eps: 4.194423e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.588535e-05 
Iteration: 3 Eps: 1.44552e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.240571e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.034125e-05 
Iteration: 3 Eps: 2.266573e-05 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.382626e-05 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.5166e-05 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.943909e-05 
Iteration: 3 Eps: 1.671711e-05 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.338443e-05 
Iteration: 3 Eps: 0.0005917963 
Iteration: 4 Eps: 8.473004e-05 
Iteration: 5 Eps: 9.059857e-06 
Iteration: 6 Eps: 4.643202e-06 
Iteration: 7 Eps: 1.856704e-06 
Iteration: 8 Eps: 2.91135e-06 
Iteration: 9 Eps: 1.659033e-06 
Iteration: 10 Eps: 1.638319e-06 
Iteration: 11 Eps: 1.321846e-06 
Iteration: 12 Eps: 1.557191e-06 
Iteration: 13 Eps: 1.259459e-06 
Iteration: 14 Eps: 1.234721e-06 
Iteration: 15 Eps: 1.143826e-06 
Iteration: 16 Eps: 1.097492e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0001331582 
Iteration: 3 Eps: 0.0002413678 
Iteration: 4 Eps: 9.614591e-05 
Iteration: 5 Eps: 1.104804e-05 
Iteration: 6 Eps: 1.492899e-06 
Iteration: 7 Eps: 2.457712e-06 
Iteration: 8 Eps: 1.37052e-06 
Iteration: 9 Eps: 1.349908e-06 
Iteration: 10 Eps: 1.010496e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.931535e-05 
Iteration: 3 Eps: 0.000211984 
Iteration: 4 Eps: 9.001223e-05 
Iteration: 5 Eps: 3.339982e-05 
Iteration: 6 Eps: 1.296451e-05 
Iteration: 7 Eps: 9.727714e-06 
Iteration: 8 Eps: 1.32149e-05 
Iteration: 9 Eps: 1.392328e-05 
Iteration: 10 Eps: 1.981546e-05 
Iteration: 11 Eps: 2.183734e-05 
Iteration: 12 Eps: 2.76719e-05 
Iteration: 13 Eps: 3.073984e-05 
Iteration: 14 Eps: 3.601547e-05 
Iteration: 15 Eps: 3.982836e-05 
Iteration: 16 Eps: 4.459722e-05 
Iteration: 17 Eps: 4.864747e-05 
Iteration: 18 Eps: 5.295403e-05 
Iteration: 19 Eps: 5.680347e-05 
Iteration: 20 Eps: 6.050366e-05 
Iteration: 21 Eps: 6.377076e-05 
Iteration: 22 Eps: 6.668671e-05 
Iteration: 23 Eps: 6.91638e-05 
Iteration: 24 Eps: 7.122251e-05 
Iteration: 25 Eps: 7.287668e-05 
Iteration: 26 Eps: 7.414469e-05 
Iteration: 27 Eps: 7.50735e-05 
Iteration: 28 Eps: 7.570123e-05 
Iteration: 29 Eps: 7.607814e-05 
Iteration: 30 Eps: 7.623978e-05 
Iteration: 31 Eps: 7.623071e-05 
Iteration: 32 Eps: 7.608273e-05 
Iteration: 33 Eps: 7.58324e-05 
Iteration: 34 Eps: 7.55008e-05 
Iteration: 35 Eps: 7.511309e-05 
Iteration: 36 Eps: 7.468617e-05 
Iteration: 37 Eps: 7.423491e-05 
Iteration: 38 Eps: 7.377069e-05 
Iteration: 39 Eps: 7.330294e-05 
Iteration: 40 Eps: 7.283844e-05 
Iteration: 41 Eps: 7.238233e-05 
Iteration: 42 Eps: 7.193946e-05 
Iteration: 43 Eps: 7.151181e-05 
Iteration: 44 Eps: 7.110052e-05 
Iteration: 45 Eps: 7.070953e-05 
Iteration: 46 Eps: 7.033671e-05 
Iteration: 47 Eps: 6.998329e-05 
Iteration: 48 Eps: 6.964964e-05 
Iteration: 49 Eps: 6.933577e-05 
Iteration: 50 Eps: 6.903884e-05 
Iteration: 51 Eps: 6.876053e-05 
Iteration: 52 Eps: 6.850189e-05 
Iteration: 53 Eps: 6.825698e-05 
Iteration: 54 Eps: 6.802948e-05 
Iteration: 55 Eps: 6.781604e-05 
Iteration: 56 Eps: 6.761634e-05 
Iteration: 57 Eps: 6.743064e-05 
Iteration: 58 Eps: 6.725772e-05 
Iteration: 59 Eps: 6.709707e-05 
Iteration: 60 Eps: 6.694578e-05 
Iteration: 61 Eps: 6.680638e-05 
Iteration: 62 Eps: 6.667638e-05 
Iteration: 63 Eps: 6.655655e-05 
Iteration: 64 Eps: 6.644404e-05 
Iteration: 65 Eps: 6.634126e-05 
Iteration: 66 Eps: 6.624316e-05 
Iteration: 67 Eps: 6.615258e-05 
Iteration: 68 Eps: 6.606935e-05 
Iteration: 69 Eps: 6.59923e-05 
Iteration: 70 Eps: 6.591852e-05 
Iteration: 71 Eps: 6.585454e-05 
Iteration: 72 Eps: 6.579034e-05 
Iteration: 73 Eps: 6.573481e-05 
Iteration: 74 Eps: 6.567966e-05 
Iteration: 75 Eps: 6.563246e-05 
Iteration: 76 Eps: 6.558365e-05 
Iteration: 77 Eps: 6.554262e-05 
Iteration: 78 Eps: 6.550374e-05 
Iteration: 79 Eps: 6.546677e-05 
Iteration: 80 Eps: 6.543344e-05 
Iteration: 81 Eps: 6.539908e-05 
Iteration: 82 Eps: 6.537235e-05 
Iteration: 83 Eps: 6.534602e-05 
Iteration: 84 Eps: 6.531918e-05 
Iteration: 85 Eps: 6.529733e-05 
Iteration: 86 Eps: 6.527707e-05 
Iteration: 87 Eps: 6.525644e-05 
Iteration: 88 Eps: 6.524047e-05 
Iteration: 89 Eps: 6.522033e-05 
Iteration: 90 Eps: 6.521145e-05 
Iteration: 91 Eps: 6.519203e-05 
Iteration: 92 Eps: 6.517682e-05 
Iteration: 93 Eps: 6.516546e-05 
Iteration: 94 Eps: 6.515172e-05 
Iteration: 95 Eps: 6.514416e-05 
Iteration: 96 Eps: 6.513445e-05 
Iteration: 97 Eps: 6.512117e-05 
Iteration: 98 Eps: 6.511527e-05 
Iteration: 99 Eps: 6.510555e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.000188356 
Iteration: 3 Eps: 0.0002229874 
Iteration: 4 Eps: 0.0001013262 
Iteration: 5 Eps: 1.70625e-05 
Iteration: 6 Eps: 2.887889e-06 
Iteration: 7 Eps: 3.217659e-06 
Iteration: 8 Eps: 1.784732e-06 
Iteration: 9 Eps: 1.227661e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0001321987 
Iteration: 3 Eps: 0.000200445 
Iteration: 4 Eps: 6.725455e-05 
Iteration: 5 Eps: 1.275082e-05 
Iteration: 6 Eps: 2.374423e-06 
Iteration: 7 Eps: 2.504598e-06 
Iteration: 8 Eps: 1.674026e-06 
Iteration: 9 Eps: 1.006267e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0002198961 
Iteration: 3 Eps: 0.0005921997 
Iteration: 4 Eps: 0.0001749464 
Iteration: 5 Eps: 1.765519e-05 
Iteration: 6 Eps: 2.618021e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0001342231 
Iteration: 3 Eps: 0.0004977169 
Iteration: 4 Eps: 0.0001899654 
Iteration: 5 Eps: 6.076999e-06 
Iteration: 6 Eps: 3.040325e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.228823e-05 
Iteration: 3 Eps: 0.0002413127 
Iteration: 4 Eps: 0.0001283456 
Iteration: 5 Eps: 3.90863e-06 
Iteration: 6 Eps: 3.328964e-06 
Iteration: 7 Eps: 1.630644e-06 
Iteration: 8 Eps: 1.070712e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0001495724 
Iteration: 3 Eps: 0.0001519175 
Iteration: 4 Eps: 7.630392e-05 
Iteration: 5 Eps: 2.658944e-06 
Iteration: 6 Eps: 1.377468e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.765064e-05 
Iteration: 3 Eps: 9.871606e-05 
Iteration: 4 Eps: 4.483611e-05 
Iteration: 5 Eps: 6.65609e-06 
Iteration: 6 Eps: 2.563152e-06 
2 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.120905e-05 
Iteration: 3 Eps: 0.0003822972 
Iteration: 4 Eps: 6.827697e-05 
Iteration: 5 Eps: 8.338353e-06 
Iteration: 6 Eps: 1.440807e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.756676e-05 
Iteration: 3 Eps: 0.0001087948 
Iteration: 4 Eps: 5.052622e-05 
Iteration: 5 Eps: 4.157006e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.229265e-05 
Iteration: 3 Eps: 0.0001251365 
Iteration: 4 Eps: 5.241696e-05 
Iteration: 5 Eps: 1.589714e-05 
Iteration: 6 Eps: 5.352487e-06 
Iteration: 7 Eps: 4.044976e-06 
Iteration: 8 Eps: 5.000016e-06 
Iteration: 9 Eps: 5.666937e-06 
Iteration: 10 Eps: 7.803743e-06 
Iteration: 11 Eps: 9.220164e-06 
Iteration: 12 Eps: 1.16991e-05 
Iteration: 13 Eps: 1.378483e-05 
Iteration: 14 Eps: 1.652652e-05 
Iteration: 15 Eps: 1.91178e-05 
Iteration: 16 Eps: 2.213574e-05 
Iteration: 17 Eps: 2.520128e-05 
Iteration: 18 Eps: 2.855241e-05 
Iteration: 19 Eps: 3.203025e-05 
Iteration: 20 Eps: 3.565117e-05 
Iteration: 21 Eps: 3.936807e-05 
Iteration: 22 Eps: 4.310777e-05 
Iteration: 23 Eps: 4.683582e-05 
Iteration: 24 Eps: 5.042058e-05 
Iteration: 25 Eps: 5.383073e-05 
Iteration: 26 Eps: 5.69983e-05 
Iteration: 27 Eps: 5.985936e-05 
Iteration: 28 Eps: 6.24051e-05 
Iteration: 29 Eps: 6.459991e-05 
Iteration: 30 Eps: 6.646893e-05 
Iteration: 31 Eps: 6.801881e-05 
Iteration: 32 Eps: 6.924579e-05 
Iteration: 33 Eps: 7.021028e-05 
Iteration: 34 Eps: 7.09247e-05 
Iteration: 35 Eps: 7.144306e-05 
Iteration: 36 Eps: 7.177615e-05 
Iteration: 37 Eps: 7.196184e-05 
Iteration: 38 Eps: 7.202432e-05 
Iteration: 39 Eps: 7.199214e-05 
Iteration: 40 Eps: 7.188738e-05 
Iteration: 41 Eps: 7.172714e-05 
Iteration: 42 Eps: 7.152067e-05 
Iteration: 43 Eps: 7.128203e-05 
Iteration: 44 Eps: 7.102596e-05 
Iteration: 45 Eps: 7.075376e-05 
Iteration: 46 Eps: 7.047664e-05 
Iteration: 47 Eps: 7.019383e-05 
Iteration: 48 Eps: 6.99156e-05 
Iteration: 49 Eps: 6.963757e-05 
Iteration: 50 Eps: 6.937148e-05 
Iteration: 51 Eps: 6.911386e-05 
Iteration: 52 Eps: 6.885715e-05 
Iteration: 53 Eps: 6.862293e-05 
Iteration: 54 Eps: 6.83896e-05 
Iteration: 55 Eps: 6.817986e-05 
Iteration: 56 Eps: 6.79741e-05 
Iteration: 57 Eps: 6.778129e-05 
Iteration: 58 Eps: 6.759763e-05 
Iteration: 59 Eps: 6.742548e-05 
Iteration: 60 Eps: 6.72603e-05 
Iteration: 61 Eps: 6.710883e-05 
Iteration: 62 Eps: 6.696405e-05 
Iteration: 63 Eps: 6.683016e-05 
Iteration: 64 Eps: 6.670207e-05 
Iteration: 65 Eps: 6.658494e-05 
Iteration: 66 Eps: 6.647381e-05 
Iteration: 67 Eps: 6.636959e-05 
Iteration: 68 Eps: 6.627289e-05 
Iteration: 69 Eps: 6.618393e-05 
Iteration: 70 Eps: 6.610044e-05 
Iteration: 71 Eps: 6.602367e-05 
Iteration: 72 Eps: 6.594915e-05 
Iteration: 73 Eps: 6.588248e-05 
Iteration: 74 Eps: 6.581798e-05 
Iteration: 75 Eps: 6.576052e-05 
Iteration: 76 Eps: 6.570495e-05 
Iteration: 77 Eps: 6.565629e-05 
Iteration: 78 Eps: 6.560799e-05 
Iteration: 79 Eps: 6.556492e-05 
Iteration: 80 Eps: 6.552454e-05 
Iteration: 81 Eps: 6.548623e-05 
Iteration: 82 Eps: 6.545139e-05 
Iteration: 83 Eps: 6.541935e-05 
Iteration: 84 Eps: 6.53891e-05 
Iteration: 85 Eps: 6.536127e-05 
Iteration: 86 Eps: 6.533396e-05 
Iteration: 87 Eps: 6.531097e-05 
Iteration: 88 Eps: 6.528846e-05 
Iteration: 89 Eps: 6.526771e-05 
Iteration: 90 Eps: 6.524947e-05 
Iteration: 91 Eps: 6.522886e-05 
Iteration: 92 Eps: 6.521251e-05 
Iteration: 93 Eps: 6.520054e-05 
Iteration: 94 Eps: 6.518656e-05 
Iteration: 95 Eps: 6.517031e-05 
Iteration: 96 Eps: 6.515867e-05 
Iteration: 97 Eps: 6.51472e-05 
Iteration: 98 Eps: 6.513626e-05 
Iteration: 99 Eps: 6.513106e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.852735e-05 
Iteration: 3 Eps: 0.0001337692 
Iteration: 4 Eps: 5.481192e-05 
Iteration: 5 Eps: 7.063579e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.843781e-05 
Iteration: 3 Eps: 0.0001265434 
Iteration: 4 Eps: 4.27576e-05 
Iteration: 5 Eps: 5.836347e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.0001111369 
Iteration: 3 Eps: 0.000342315 
Iteration: 4 Eps: 8.204326e-05 
Iteration: 5 Eps: 7.252268e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 4.705386e-05 
Iteration: 3 Eps: 0.0002534464 
Iteration: 4 Eps: 7.852055e-05 
Iteration: 5 Eps: 2.52227e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.447435e-06 
Iteration: 3 Eps: 0.0001262915 
Iteration: 4 Eps: 5.977548e-05 
Iteration: 5 Eps: 2.552429e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.677887e-05 
Iteration: 3 Eps: 8.048514e-05 
Iteration: 4 Eps: 3.666045e-05 
Iteration: 5 Eps: 1.390997e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 3.198892e-05 
Iteration: 3 Eps: 4.639415e-05 
Iteration: 4 Eps: 1.390063e-05 
Iteration: 5 Eps: 1.679044e-06 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.433696e-05 
Iteration: 3 Eps: 2.915428e-05 
Iteration: 4 Eps: 1.264487e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.227865e-06 
Iteration: 3 Eps: 4.286763e-05 
Iteration: 4 Eps: 1.544648e-05 
Iteration: 5 Eps: 5.750069e-06 
Iteration: 6 Eps: 1.886134e-06 
Iteration: 7 Eps: 1.143468e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.820739e-05 
Iteration: 3 Eps: 4.23148e-05 
Iteration: 4 Eps: 1.823331e-05 
Iteration: 5 Eps: 2.410458e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.159866e-05 
Iteration: 3 Eps: 5.633213e-05 
Iteration: 4 Eps: 2.359205e-05 
Iteration: 5 Eps: 2.670551e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.990393e-05 
Iteration: 3 Eps: 0.0001258983 
Iteration: 4 Eps: 3.437997e-05 
Iteration: 5 Eps: 4.366633e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.819479e-06 
Iteration: 3 Eps: 4.799117e-05 
Iteration: 4 Eps: 2.193767e-05 
Iteration: 5 Eps: 2.893322e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.555682e-05 
Iteration: 3 Eps: 2.846227e-05 
Iteration: 4 Eps: 1.162131e-05 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.496983e-06 
Iteration: 3 Eps: 8.751438e-06 
Iteration: 4 Eps: 3.616135e-06 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> temp = grouplasso(120,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 0.06934309 
Iteration: 3 Eps: 0.005755129 
Iteration: 4 Eps: 0.001010656 
Iteration: 5 Eps: 8.183601e-05 
> y = temp$beta
> x = temp$truebeta
> pdf('hw4partbbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> dev.off()
null device 
          1 
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> set.seed(123456)
> p = 100
> n = 1000
> group = 20
> blocksize = rep(ceiling(p/group),group)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> for(i in 1:group){
+   group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
+ }
> 
> #y = scale(y,center=TRUE,scale=FALSE)
> #X = scale(X,center=TRUE,scale=FALSE)
> weights = sqrt(blocksize)
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> temp = grouplasso(120,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
> y = temp$beta
> x = temp$truebeta
> pdf('hw4partbbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> dev.off()
null device 
          1 
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> oldbeta <- rep(0,p)
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparse = 25
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparse] <- runif(nonsparse,min=-2,max=2)
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=FALSE,scale=TRUE)
>                                         #X = scale(X,center=FALSE,scale=TRUE)
> weights = sqrt(blocksize)
> 
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> grouplasso(240,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
$truebeta
  [1] -1.353013819 -1.471246485  1.374419039  0.062825408  0.780120074
  [6]  0.174828237 -1.982943555 -1.871554442  0.693420263 -1.968833342
 [11]  1.938445873 -1.646034740 -0.506496322  1.943218215 -1.641982592
 [16]  0.769281968 -1.741368975 -1.358798488  0.922490006  0.662252586
 [21]  0.647995163 -1.346941521  0.554377354 -0.010085491 -0.007331497
 [26]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [31]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [36]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [41]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [46]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [51]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [56]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [61]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [66]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [71]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [76]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [81]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [86]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [91]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000
 [96]  0.000000000  0.000000000  0.000000000  0.000000000  0.000000000

$beta
  [1] -1.121384e+00 -1.604512e+00  1.494112e+00 -3.265312e-02  7.974285e-01
  [6]  2.833247e-01 -1.982302e+00 -2.141305e+00  5.071950e-01 -1.992585e+00
 [11]  1.858954e+00 -1.672788e+00 -6.123802e-01  2.082932e+00 -1.646145e+00
 [16]  6.049951e-01 -1.543483e+00 -1.394538e+00  9.473236e-01  5.567514e-01
 [21]  5.682363e-01 -1.265743e+00  5.183015e-01 -1.762993e-05  1.682849e-05
 [26] -1.390703e-06 -9.596881e-06 -1.067270e-05  3.462068e-06 -6.246524e-06
 [31]  1.765670e-05  1.082688e-05 -3.667362e-05  9.049600e-06 -9.424882e-07
 [36] -1.108420e-05  4.921409e-06 -2.807737e-05  3.114921e-05  2.780608e-05
 [41] -5.704230e-06 -3.029909e-08  1.419964e-06  4.344315e-06  6.609286e-06
 [46] -5.897088e-07  5.703510e-06 -1.848118e-05  3.589646e-06  6.106196e-06
 [51]  1.687456e-06  1.112043e-05 -2.195526e-06  3.198595e-05 -8.740707e-06
 [56] -6.305330e-07 -2.049146e-05  2.717753e-05  2.739792e-06 -2.244137e-06
 [61] -7.309920e-07  7.683272e-06 -1.743691e-06 -7.479028e-06  1.259266e-05
 [66] -1.998229e-05  1.889139e-05 -4.144964e-07  2.949901e-06 -1.904797e-05
 [71]  1.995242e-06  1.675496e-05 -2.205629e-05  1.185890e-05  1.387676e-05
 [76]  2.093793e-05 -2.040038e-05  2.182853e-05 -2.766220e-05 -1.273336e-05
 [81] -3.505630e-06 -8.265045e-06 -1.218687e-05  3.648595e-05 -1.134254e-06
 [86] -5.108194e-06 -1.125351e-05 -4.141338e-05  3.702056e-05 -3.130567e-06
 [91] -1.960554e-05  3.074056e-05  1.509647e-05  2.067965e-05  1.111645e-05
 [96]  1.573642e-05  2.071994e-05  6.277720e-05  1.879299e-05 -2.254506e-05

$iter
[1] 2

$eps
             [,1]
[1,] 1.837462e-10

> lambda1
[1] 250
> lambda1=240
> lambda2 = 0
> crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
[1] 239.9407
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 40*(k-1)+100
+ lambda2 = 0
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.912651e-06 
Iteration: 3 Eps: 1.844549e-05 
Iteration: 4 Eps: 7.56743e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.632846e-06 
Iteration: 3 Eps: 2.631964e-05 
Iteration: 4 Eps: 9.294684e-06 
Iteration: 5 Eps: 3.926823e-06 
Iteration: 6 Eps: 1.290702e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.601956e-06 
Iteration: 3 Eps: 2.351905e-05 
Iteration: 4 Eps: 1.052802e-05 
Iteration: 5 Eps: 1.600892e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.280388e-06 
Iteration: 3 Eps: 4.2716e-05 
Iteration: 4 Eps: 2.003577e-05 
Iteration: 5 Eps: 2.400811e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.739069e-05 
Iteration: 3 Eps: 8.404324e-05 
Iteration: 4 Eps: 2.802948e-05 
Iteration: 5 Eps: 4.696701e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.086623e-06 
Iteration: 3 Eps: 2.0813e-05 
Iteration: 4 Eps: 7.493644e-06 
Iteration: 1 Eps: 1 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> 
> pdf('hw4partdlambda.pdf')
> plot(40*(seq(1:10)-1)+100,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> plot(40*(seq(1:10)-1)+100,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 20*(k-1)+100
+ lambda2 = 0
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.912651e-06 
Iteration: 3 Eps: 1.844549e-05 
Iteration: 4 Eps: 7.56743e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.632846e-06 
Iteration: 3 Eps: 2.631964e-05 
Iteration: 4 Eps: 9.294684e-06 
Iteration: 5 Eps: 3.926823e-06 
Iteration: 6 Eps: 1.290702e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.601956e-06 
Iteration: 3 Eps: 2.351905e-05 
Iteration: 4 Eps: 1.052802e-05 
Iteration: 5 Eps: 1.600892e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.280388e-06 
Iteration: 3 Eps: 4.2716e-05 
Iteration: 4 Eps: 2.003577e-05 
Iteration: 5 Eps: 2.400811e-06 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.739069e-05 
Iteration: 3 Eps: 8.404324e-05 
Iteration: 4 Eps: 2.802948e-05 
Iteration: 5 Eps: 4.696701e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 9.086623e-06 
Iteration: 3 Eps: 2.0813e-05 
Iteration: 4 Eps: 7.493644e-06 
Iteration: 1 Eps: 1 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.425213e-06 
Iteration: 3 Eps: 4.794638e-06 
Iteration: 4 Eps: 1.931638e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> 
> pdf('hw4partdlambda.pdf')
> plot(20*(seq(1:10)-1)+100,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[1]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> temp = grouplasso(140,0,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-5),group.indx,weights,group)
Iteration: 1 Eps: 1 
> y = temp$beta
> x = temp$truebeta
> pdf('hw4partdbeta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> dev.off()
null device 
          1 
> set.seed(123456)
> p = 100
> n = 1000
> group = 20
> blocksize = rep(ceiling(p/group),20)
> nonsparsepergroup = 4
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> for(i in 1:5){
+     truebeta[(5*(i-1)+1):(5*(i-1)+nonsparsepergroup)] <- runif(nonsparsepergroup,min=-2,max=2)
+ }
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> for(i in 1:group){
+   group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
+ }
> #y = scale(y,center=TRUE,scale=FALSE)
> #X = scale(X,center=TRUE,scale=FALSE)
> weights = sqrt(blocksize)
> 
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 220
+ lambda2 = 20*(k-1)+10
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 120
+ lambda2 = 20*(k-1)+10
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.448562e-06 
Iteration: 3 Eps: 6.185093e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.13412e-06 
Iteration: 3 Eps: 2.093492e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.128296e-06 
Iteration: 3 Eps: 5.183523e-06 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 4.695147e-06 
Iteration: 3 Eps: 4.503443e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> 
> 
> pdf('hw4parte1lambda.pdf')
> plot(40*(seq(1:10)-1)+60,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> pdf('hw4parte1lambda.pdf')
> plot(20*(seq(1:10)-1)+10,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 120
+ lambda2 = 5*(k-1)+1
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.094311e-06 
Iteration: 3 Eps: 7.764907e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.791551e-06 
Iteration: 3 Eps: 2.738375e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.052375e-06 
Iteration: 3 Eps: 6.117486e-06 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.420391e-06 
Iteration: 3 Eps: 7.11822e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.405708e-06 
Iteration: 3 Eps: 2.359882e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.550748e-06 
Iteration: 3 Eps: 5.610586e-06 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.339612e-06 
Iteration: 3 Eps: 6.080577e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.070704e-06 
Iteration: 3 Eps: 2.031294e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.027789e-06 
Iteration: 3 Eps: 5.081909e-06 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.819987e-06 
Iteration: 3 Eps: 5.582095e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.760026e-06 
Iteration: 3 Eps: 1.726546e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.330865e-06 
Iteration: 3 Eps: 5.112882e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.471799e-06 
Iteration: 3 Eps: 1.443812e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.073894e-06 
Iteration: 3 Eps: 4.866842e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> 
> 
> pdf('hw4parte1lambda.pdf')
> plot(5*(seq(1:10)-1)+1,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 120
+ lambda2 = 2*(k-1)+1
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.094311e-06 
Iteration: 3 Eps: 7.764907e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.791551e-06 
Iteration: 3 Eps: 2.738375e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.052375e-06 
Iteration: 3 Eps: 6.117486e-06 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.822331e-06 
Iteration: 3 Eps: 7.503924e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.634212e-06 
Iteration: 3 Eps: 2.584038e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.879489e-06 
Iteration: 3 Eps: 5.942924e-06 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.550927e-06 
Iteration: 3 Eps: 7.243485e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.484682e-06 
Iteration: 3 Eps: 2.437351e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.658404e-06 
Iteration: 3 Eps: 5.719427e-06 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.785077e-06 
Iteration: 3 Eps: 6.507906e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.341508e-06 
Iteration: 3 Eps: 2.296919e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.443619e-06 
Iteration: 3 Eps: 5.502284e-06 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.561468e-06 
Iteration: 3 Eps: 6.293398e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.200427e-06 
Iteration: 3 Eps: 2.158532e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.232602e-06 
Iteration: 3 Eps: 5.288967e-06 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.339612e-06 
Iteration: 3 Eps: 6.080577e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.070704e-06 
Iteration: 3 Eps: 2.031294e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.027789e-06 
Iteration: 3 Eps: 5.081909e-06 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.128847e-06 
Iteration: 3 Eps: 5.878386e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.941883e-06 
Iteration: 3 Eps: 1.904933e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 4.82812e-06 
Iteration: 3 Eps: 4.880068e-06 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.921956e-06 
Iteration: 3 Eps: 5.679913e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.821382e-06 
Iteration: 3 Eps: 1.786737e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.719242e-06 
Iteration: 3 Eps: 5.48545e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.701694e-06 
Iteration: 3 Eps: 1.669327e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.522447e-06 
Iteration: 3 Eps: 5.296664e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.589451e-06 
Iteration: 3 Eps: 1.559225e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> 
> 
> pdf('hw4parte1lambda.pdf')
> plot(2*(seq(1:10)-1)+1,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> set.seed(123456)
> p = 100
> n = 1000
> group = 20
> blocksize = rep(ceiling(p/group),20)
> nonsparsepergroup = 4
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> for(i in 1:5){
+     truebeta[(5*(i-1)+1):(5*(i-1)+nonsparsepergroup)] <- runif(nonsparsepergroup,min=-2,max=2)
+ }
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> for(i in 1:group){
+   group.indx[((i-1)*blocksize[i]+1):(i*blocksize[i])] <- i
+ }
> #y = scale(y,center=TRUE,scale=FALSE)
> #X = scale(X,center=TRUE,scale=FALSE)
> weights = sqrt(blocksize)
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:9){
+     cat(k,'\n')
+     lambda1 = 120
+ lambda2 = 2*(k-1)+1
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.094311e-06 
Iteration: 3 Eps: 7.764907e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.791551e-06 
Iteration: 3 Eps: 2.738375e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.052375e-06 
Iteration: 3 Eps: 6.117486e-06 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.822331e-06 
Iteration: 3 Eps: 7.503924e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.634212e-06 
Iteration: 3 Eps: 2.584038e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.879489e-06 
Iteration: 3 Eps: 5.942924e-06 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.550927e-06 
Iteration: 3 Eps: 7.243485e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.484682e-06 
Iteration: 3 Eps: 2.437351e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.658404e-06 
Iteration: 3 Eps: 5.719427e-06 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.785077e-06 
Iteration: 3 Eps: 6.507906e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.341508e-06 
Iteration: 3 Eps: 2.296919e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.443619e-06 
Iteration: 3 Eps: 5.502284e-06 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.561468e-06 
Iteration: 3 Eps: 6.293398e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.200427e-06 
Iteration: 3 Eps: 2.158532e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.232602e-06 
Iteration: 3 Eps: 5.288967e-06 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.339612e-06 
Iteration: 3 Eps: 6.080577e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.070704e-06 
Iteration: 3 Eps: 2.031294e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.027789e-06 
Iteration: 3 Eps: 5.081909e-06 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.128847e-06 
Iteration: 3 Eps: 5.878386e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.941883e-06 
Iteration: 3 Eps: 1.904933e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 4.82812e-06 
Iteration: 3 Eps: 4.880068e-06 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.921956e-06 
Iteration: 3 Eps: 5.679913e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.821382e-06 
Iteration: 3 Eps: 1.786737e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.719242e-06 
Iteration: 3 Eps: 5.48545e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.701694e-06 
Iteration: 3 Eps: 1.669327e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> 
> 
> pdf('hw4parte1lambda.pdf')
> plot(2*(seq(1:9)-1)+1,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:8){
+     cat(k,'\n')
+     lambda1 = 120
+ lambda2 = 2*(k-1)+1
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 8.094311e-06 
Iteration: 3 Eps: 7.764907e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.791551e-06 
Iteration: 3 Eps: 2.738375e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.052375e-06 
Iteration: 3 Eps: 6.117486e-06 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.822331e-06 
Iteration: 3 Eps: 7.503924e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.634212e-06 
Iteration: 3 Eps: 2.584038e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.879489e-06 
Iteration: 3 Eps: 5.942924e-06 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 7.550927e-06 
Iteration: 3 Eps: 7.243485e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.484682e-06 
Iteration: 3 Eps: 2.437351e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.658404e-06 
Iteration: 3 Eps: 5.719427e-06 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.785077e-06 
Iteration: 3 Eps: 6.507906e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.341508e-06 
Iteration: 3 Eps: 2.296919e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.443619e-06 
Iteration: 3 Eps: 5.502284e-06 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.561468e-06 
Iteration: 3 Eps: 6.293398e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.200427e-06 
Iteration: 3 Eps: 2.158532e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.232602e-06 
Iteration: 3 Eps: 5.288967e-06 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.339612e-06 
Iteration: 3 Eps: 6.080577e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 2.070704e-06 
Iteration: 3 Eps: 2.031294e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.027789e-06 
Iteration: 3 Eps: 5.081909e-06 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 6.128847e-06 
Iteration: 3 Eps: 5.878386e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.941883e-06 
Iteration: 3 Eps: 1.904933e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 4.82812e-06 
Iteration: 3 Eps: 4.880068e-06 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 5.921956e-06 
Iteration: 3 Eps: 5.679913e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 2 Eps: 1.821382e-06 
Iteration: 3 Eps: 1.786737e-06 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> pdf('hw4parte1lambda.pdf')
> plot(2*(seq(1:8)-1)+1,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> temp = grouplasso(120,13,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)
Iteration: 1 Eps: 1 
> y = temp$beta
> x = temp$truebeta
> pdf('hw4parte1beta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> dev.off()
null device 
          1 
> set.seed(123456)
> p = 100
> n = 1000
> group = 9
> blocksize = c(10,5,5,3,2,25,20,20,10)
> nonsparseperblock = c(8,4,4,2,1)
> X <- matrix(runif(n*p,min=-5,max=5),n,p)
> truebeta <- rep(0,p)
> truebeta[1:nonsparseperblock[1]] <- runif(nonsparseperblock[1],min=-2,max=2)
> for(i in 2:5){
+     truebeta[(sum(blocksize[1:(i-1)])+1):(sum(blocksize[1:(i-1)])+nonsparseperblock[i])] <- runif(nonsparseperblock[i],min=-2,max=2)}
> y <- X%*%truebeta + rnorm(n)
> group.indx <- rep(0,p)
> group.indx[1:blocksize[1]] <- 1
> for(i in 2:group){
+     group.indx[(sum(blocksize[1:(i-1)])+1):sum(blocksize[1:i])] <- i  
+ }
> #y = scale(y,center=TRUE,scale=FALSE)
> #X = scale(X,center=TRUE,scale=FALSE)
> weights = sqrt(blocksize)
> 
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 140
+ lambda2 = 2*(k-1)+1
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
2 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
3 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
4 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
5 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
6 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
7 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
8 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
9 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
10 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
Iteration: 1 Eps: 1 
> pdf('hw4parte2lambda.pdf')
> plot(2*(seq(1:10)-1)+1,avgerror,type='l',col='blue',ylab='MSE',xlab=expression(lambda[2]),main = 'MSE for Group Lasso')
> dev.off()
null device 
          1 
> temp = grouplasso(140,0.5,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)
Iteration: 1 Eps: 1 
> y = temp$beta
> x = temp$truebeta
> pdf('hw4parte2beta.pdf')
> plot(y,x,col='green',xlab=expression(hat(beta)[j]),ylab=expression(beta[j]),main = 'Estimated Betas vs True Betas')
> abline(lm(x~y))
> dev.off()
null device 
          1 
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 140
+ lambda2 = 0.2*(k-1)+0.1
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Error: dims [product 900] do not match the length of object [0]
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 140
+ lambda2 = 0.2*(k-1)+0.5
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Error: dims [product 900] do not match the length of object [0]
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 140
+ lambda2 = 0.5*(k-1)+0.5
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Error: dims [product 900] do not match the length of object [0]
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 140
+ lambda2 = 0.5*(k-1)+1
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Error: dims [product 900] do not match the length of object [0]
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 140
+ lambda2 = 1*(k-1)+1
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Error: dims [product 900] do not match the length of object [0]
> oldbeta <- rep(0,p)
> beta <- rep(0,p)
> avgerror = 0
> for(k in 1:10){
+     cat(k,'\n')
+     lambda1 = 140
+ lambda2 = 2*(k-1)+2
+ oldbeta <- rep(0,p)
+ beta <- rep(0,p)
+ avgerror[k] = crossval(lambda1,lambda2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)}
1 
Iteration: 1 Eps: 1 
Error: dims [product 900] do not match the length of object [0]
> grouplasso(140,1,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)
Iteration: 1 Eps: 1 
Error in while (eps1 > tol & iter < maxiter) { (from hw.4-2.R#53) : 
  missing value where TRUE/FALSE needed
> grouplasso(140,2,p,n,y,X,truebeta,oldbeta,beta,blocksize,100,10^(-6),group.indx,weights,group)
Iteration: 1 Eps: 1 
Error in while (eps1 > tol & iter < maxiter) { (from hw.4-2.R#53) : 
  missing value where TRUE/FALSE needed
> q()
Save workspace image? [y/n/c]: y

Process R finished at Thu Apr 23 02:36:34 2015
