
<!-- README.md is generated from README.Rmd. Please edit that file -->

# corrcoverage <img src="man/figures/logo.png" align="right" />

[![Coverage
status](https://codecov.io/gh/annahutch/corrcoverage/branch/master/graph/badge.svg)](https://codecov.io/github/annahutch/corrcoverage?branch=master)
[![Build
Status](https://travis-ci.org/annahutch/corrcoverage.svg?branch=master)](https://travis-ci.org/annahutch/corrcoverage)

Webpage: <https://annahutch.github.io/corrcoverage/>

The `corrcoverage` R package uses a computationally efficient algorithm
to find accurate coverage estimates of the causal variant in credible
sets obtained using the Bayesian approach for fine-mapping ([Maller et
al., 2012](https://www.ncbi.nlm.nih.gov/pubmed/23104008),
[Wakefield, 2009](https://onlinelibrary.wiley.com/doi/abs/10.1002/gepi.20359).).

The package only requires GWAS summary statistics and can be used to:

  - Perform Bayesian fine-mapping
  - Estimate the true genetic effect at the causal variant (see `est_mu`
    function)
  - Obtain an accurate coverage estimate of the causal variant in a
    credible set, the ‘corrected coverage estimate’ (see `corrcov`
    function and ‘Corrected Coverage’ vignette)
  - Find a new ‘corrected’ credible set with the desired coverage (see
    `corrected_cs` function and ‘New Credible Set’ vignette)

Please see the flowchart below to decide which function is best to solve
your problem. The interactive version (click-to-functions) is [avaliable
here](https://annahutch.github.io/PhD/package_flowchart.html)

![](https://annahutch.github.io/PhD/package_flowchart.svg)

-----

## Installation

You can install the released version of `corrcoverage` from
[github](https://github.com/) with:

``` r
install.packages("devtools") # if not already installed
devtools::install_github("annahutch/corrcoverage")
```

-----

## Examples

For examples, please see the vignettes on the webpage
[here](http://annahutch.github.io/corrcoverage/articles/my-vignette.html).

The ‘Corrected Coverage’ vignette
[here](https://annahutch.github.io/corrcoverage/articles/my-vignette.html)
should be read first. This shows readers how to use the `corrcoverage`
package to get an accurate coverage estimate of the causal variant in a
credible set.

The ‘New Credible Set’ vignette
[here](https://annahutch.github.io/corrcoverage/articles/New-Credible-Set.html)
follows on from the ‘Corrected Coverage’ vignette and shows readers how
the `corrcoverage` package can be used to obtain a new credible set with
the desired coverage of the causal variant.

The ‘Useful Info’ vignette
[here](https://annahutch.github.io/corrcoverage/articles/Useful-Info.html)
provides supplementary information about the usage of the package,
including information about other useful functions.

-----

In brief, the correction method involves simulating many credible sets
from ‘the same system as the original’ and finding what proportion of
these contain the true causal variant, whereby each variant is
considered causal in turn and the predictions are normalised by that
variant’s posterior probability of causality.

-----

## Abstract

The primary goal of Genome Wide Association Studies (GWAS) is to better
understand the biology of disease. GWAS have been successful in
identifying thousands of associations with common and complex diseases,
but these associations refer to physical genomic regions rather than
specific causal variants responsible for the disease. Consequently,
known GWAS association signals are used in follow-up studies, which
continue to untangle the relationship between genetic variation and
disease. Accurately localising the specific “causal variants” driving
the association signals identified by GWAS is difficult due to
correlations between SNPs. Standard practice in fine-mapping experiments
is therefore to report a credible set of variants which is believed to
contain the causal variant with some “coverage probability”.

We evaluated coverage probabilities of credible sets obtained using the
dominant method in the field and found that the claimed coverage
probabilities were systematically biased. In low power studies the true
coverage was below that claimed, suggesting that researchers should add
more variants to the credible set in order to achieve the required
coverage. In high power studies, the true coverage was higher than that
claimed, potentially allowing for higher resolution through the removal
of variants from the set, whilst still attaining the required coverage.
The algorithm to create credible sets contains an ordering step, which
aims to make the set as small as possible, but which is not accounted
for when estimating coverage probabilities. We showed that it is this
ordering step that induces coverage bias and have developed a method to
estimate this bias using rapid simulations based on the observed SNP
correlation structure. We provide R software for our method which
provides the user with an accurate coverage estimate of the causal
variant in the credible set. Obtaining accurate coverage estimates will
allow researchers to adjust their credible set to achieve the true
desired coverage - for example narrowing down a 95% credible set of 10
variants to just 5 variants.

While technical, our result - that standard coverage estimates of the
causal variant in GWAS are inaccurate and can be improved - impacts
standard practice in genetic association studies. Improvement in the
resolution of the fine-mapping experiment will enable more efficient
expenditure of resources in the follow-up process of annotating the
variants in the credible set to determine the implicated genes and
pathways, helping to untangle the complex relationship between genetic
variants and disease.

-----
