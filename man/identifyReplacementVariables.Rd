\name{identifyReplacementVariables}
\alias{identifyReplacementVariables}
\title{Identify Replacement Variables}
\description{Identify replacement variables in the generated manual page to
ease their substitutions.}
\usage{
identifyReplacementVariables(filename_s)
}
\arguments{
\item{filename_s}{An unconstrained \emph{\code{vector}} of string values that are the source filenames}
}
\value{
When producing a manual page using \emph{\bold{\code{\link{produceManualPage}}}} function,
under format-driven mode, sections will be generated with a very simple content
based on format \bold{\code{'XXX_???'}} to ease post processing substitutions and
hand-crafted replacements.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\seealso{ Function \emph{\bold{\code{\link{produceManualPage}}}} and class
\emph{\bold{\code{\link{GenerationContext}}}}.}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
# identifyReplacementVariables('myfile.Rd')
}
