\name{getStandardSectionNames}
\alias{getStandardSectionNames}
\title{Get Standard Section Names}
\description{Get \R documentation standard section names}
\usage{
getStandardSectionNames(sort_b_1 = FALSE)
}
\arguments{
\item{sort_b_1}{A single \emph{\code{boolean}} value. Result is sorted when set to  \code{TRUE}.}
}
\value{A \emph{\code{vector}} of type characters, expressing section names.}
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
getStandardSectionNames()
# [1]  "name"           "docType"        "alias"          "title"          "description"
# [6]  "usage"          "arguments"      "details"        "value"          "custom_section"
# [11] "references"     "author"         "note"           "seealso"        "examples"
# [16] "keyword"        "concept"        "encoding"       "synopsis"       "Rdversion"
# [21] "RdOpts"         "Sexpr"
}
