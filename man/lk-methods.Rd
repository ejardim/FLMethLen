\docType{methods}
\name{resample}
\alias{mixnorm}
\alias{resample}
\title{resample}
\usage{
  mixnorm(mn, sd, bin, left = T)
}
\arguments{
  \item{object}{an \code{FLQuant}}

  \item{dim}{dimensions of \code{FLQuant} to sample within,
  i.e. if equal to \code{2} then sampling is within
  \code{year}}

  \item{size}{sum of frequency disribution}

  \item{replace}{sample with replacement?, defaults to
  \code{FALSE} only useful if values in \code{object} are
  integers}

  \item{mn}{an \code{FLQuant} with means}

  \item{sd}{an \code{FLQuant} with standard deviation}
}
\value{
  a \code{FLQuant} with simulated frequency distribution

  an \code{FLPar} with expected probability for
  lengths-at-age
}
\description{
  Resamples from a distribution to generate a frequency
  table

  Simulates a normal density function from an
  \code{FLQuant}
}
\examples{
\dontrun{
  library(FLCore)
  data(ple4sex)

  apply(resample(catch.n(ple4sex)[,1:4],2,  100),2,  sum)
  apply(resample(catch.n(ple4sex)[,1:4],2:3,100),2:3,sum)
  apply(resample(catch.n(ple4sex)[,1:4],1:2,100),1:2,sum)
  }
\dontrun{
mn=FLQuant( 1:5,     dimnames=list(age=1:5,year=1991:2000,unit=1:2))
sd=FLQuant((1:5)/10,dimnames=list(age=1:5,year=1991:2000))
md=mixnorm(mn,sd,(1:20)/4)
ggplot(as.data.frame(dat))+geom_line(aes(len,data,group=age))+facet_wrap(year~unit)
 }
}

