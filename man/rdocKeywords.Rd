\name{rdocKeywords}
\alias{rdocKeywords}
\title{R Documentation Keywords}
\description{Provides all \R documentation markup tags a.k.a keywords}
\usage{
rdocKeywords(asList_b_1 = FALSE)
}
\arguments{
\item{asList_b_1}{A single \emph{\code{boolean}}. }
}
\value{
A \emph{\code{vector}} of type characters, containing all \R documentation keywords,
when parameter \bold{\code{asList_b_1}} is \emph{\code{FALSE}}. Otherwise a
\emph{\code{list}} organizing this same content.
}
\references{
Refer to
\href{https://cran.r-project.org/doc/manuals/R-exts.html}{Writing \R extensions}.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
rdocKeywords()
}
