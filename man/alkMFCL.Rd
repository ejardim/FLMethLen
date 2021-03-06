\name{alkMFCL}
\alias{alkMFCL}
\title{Returns length age data from Multifan-CL as a list with four data frames}
\usage{
  alkMFCL(lfile, ffile, i = 1, df = TRUE)
}
\arguments{
  \item{lfile}{the \code{length.fit} file}

  \item{ffile}{the \code{freq} file}

  \item{i}{fleet to read in}
}
\value{
  a list with elements \code{caa} numbers by age, len,
  season and year, \code{laa} length by age season and
  year, \code{obs} observed length samples by season and
  year and \code{hat} fitted lengths by season and year,
}
\description{
  Returns length age data from Multifan-CL as a list with
  four data frames
}

