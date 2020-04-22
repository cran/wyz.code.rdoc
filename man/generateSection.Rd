\name{generateSection}
\alias{generateSection}
\title{Generate Section}
\description{Generate \R documentation section}
\usage{
generateSection(sectionName_s_1, content_s)
}
\arguments{
\item{sectionName_s_1}{A single \emph{\code{string}} value}
\item{content_s}{An unconstrained \emph{\code{vector}} of string values}
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

Refer to \href{https://developer.r-project.org/parseRd.pdf}{Parsing Rd files} by
Duncan Murdoch.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\note{
This function should not be used directly unless you need to write your own manual
page generation program.

To generate a manual page directly, you would better use \code{\link{produceManualPage}}.
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
generateSection('concept', 'meta programming')
# "\\\\concept{meta programming}"
}
