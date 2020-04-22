\name{generateEnumeration}
\alias{generateEnumeration}
\title{Generate Enumeration}
\description{Generate enumeration for \R documentation}
\usage{
generateEnumeration(entries_s, itemize_b_1 = FALSE)
}
\arguments{
\item{entries_s}{An unconstrained vector of \emph{\code{strings}}}
\item{itemize_b_1}{A single \emph{\code{boolean}} value}
}
\value{
A special character \emph{\code{vector}} to mimic either \bold{\code{enumerate}} or
\bold{\code{itemize}} accordingly to \R documentation specification.

Set \bold{\code{itemize_b_1}} to \emph{\code{TRUE}} if you want an item list,
instead of an enumeration.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
generateEnumeration(LETTERS[1:3])
# [1] "\\enumerate{\\item  A\n\\item  B\n\\item  C}"

generateEnumeration(LETTERS[1:3], TRUE)
# [1] "\\itemize{\\item  A\n\\item  B\n\\item  C}"
}
