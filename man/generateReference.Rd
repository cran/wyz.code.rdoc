\name{generateReference}
\alias{generateReference}
\title{Generate Reference}
\description{Generate text to standardize references.}
\usage{
generateReference(data_l)
}
\arguments{
\item{data_l}{An unconstrained \emph{\code{list}}}
}
\value{
A single \emph{\code{string}}, containing the generated reference text. Can be appended several
times to elaborate a multiple reference text.

See references and examples below.
}
\references{
Refer to
\href{https://cran.r-project.org/doc/manuals/R-exts.html}{Writing \R extensions}
to know more about using web references in \R documentation.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
generateReference(
  list(url = 'https://neonira.github.io/offensiveProgrammingBook/',
       label = 'Offensive Programming Book')
)
# "Refer to
# \\\\href{https://neonira.github.io/offensiveProgrammingBook/}{Offensive Programming Book}."
}