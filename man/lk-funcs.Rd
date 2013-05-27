\docType{functions}
\name{powh}
\alias{iav}
\alias{powh}
\title{powh}
\usage{
  powh(ln, n)
}
\arguments{
  \item{x;}{a vector holding a time series}
}
\value{
  a \code{vector} with the inter-annual variation each time
  step
}
\description{
  Beverton and Holt (1956) developed a method to estimate
  population parameters such as total mortality (Z) from
  length data e.g.

  \deqn{Z=K\frac{L_{\infty}-\overline{L}}{\overline{L}-L^\prime}}

  Based on this equation Powell (1979) developed a method,
  extended by Wetherall et al. (1987), to estimate growth
  and mortality parameters. This assumes that the right
  hand tail of a length frequency distribution was
  determined by the asymptotic length L and the ratio
  between Z and the growth rate K. The Beverton and Holt
  methods assumes good estimates for K and $L_{\infty}$,
  while the Powell-Wetherall method only requires an
  estimate of K, since $L_{\infty}$ is estimated by the
  method as well as Z/K.These method therefore provide
  estimates for each distribution of Z/K, if K is unknown
  and Z if K is known.

  As well as assuming that growth follows the von
  Bertalanffy growth function, it is also assumed that the
  population is in a steady state with constant exponential
  mortality, no changes in selection pattern of the fishery
  and constant recruitment. In the Powell-Wetherall method
  $L^\prime$ can take any value between the smallest and
  largest sizes. Equation 1 then provides a series of
  estimates of Z and since

  \deqn{ \overline{L}-L{\prime}=a+bL{\prime} }

  a and b can be estimated by a regression analysis where

  \deqn{b={-K}/{Z+K}} \deqn{a=-bL_{\infty}}

  Therefore plotting $\overline{L}-L^\prime$ against
  $L^\prime$ therefore provides an estimate of $L_{\infty}$
  and Z/K

  \deqn{L_{\infty}=-a/b} \deqn{Z/K={-1-b}/{b}}

  If K is known then it also provides an estimate of Z
}
\examples{
x=1
}
\references{
  R. Beverton and S. Holt. Review of method for estimating
  mortality rates in exploited fish populations, with
  special reference to sources of bias in catch sampling.
  Rapports et Proces-Verbaux., 140(1): 67--83, 1956.

  D. G. Powell.  Estimation of mortality and growth
  parameters from the length frequency of a catch [model].
  \emph{Rapports et Proces-Verbaux des Reunions}, 175,
  1979.

  J. Wetherall, J. Polovina, and S. Ralston.  Estimating
  growth and mortality in steady-state fish stocks from
  length-frequency data.  \emph{ICLARM Conf. Proc, pages
  53--74, 1987.
}

