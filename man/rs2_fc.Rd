\name{rs2_fc}
\alias{rs2_fc}
\title{Gibbs update for dyadic variance
}
\description{
Gibbs update for dyadic variance
}
\usage{
rs2_fc(E, rho)
}
\arguments{
  \item{E}{
square residual relational matrix
}
  \item{rho}{
current value of rho
}
}
\value{
a new value of s2
}
\author{
Peter Hoff
}
\examples{
## The function is currently defined as
function (E, rho) 
{
    H <- mhalf(solve(matrix(c(1, rho, rho, 1), 2, 2)))
    EM <- cbind(E[upper.tri(E)], t(E)[upper.tri(E)]) \%*\% H
    1/rgamma(1, (length(EM) + 1)/2, (sum(EM^2) + 1)/2)
  }
}