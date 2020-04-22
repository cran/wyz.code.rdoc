\name{beautify}
\alias{beautify}
\title{Beautify \R documentation content}
\description{\R documentation beautifying functions}
\usage{
beautify(escapeBraces_b_1 = FALSE)
}
\arguments{
\item{escapeBraces_b_1}{A single \emph{\code{boolean}} value, allowing to escape braces also}
}
\value{
A named \emph{\code{list}} of \R vectorized \emph{\code{functions}}. See examples below.

Content provided to function will be processed by function
\emph{\bold{\code{\link{generateMarkup}}}}.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
b <- beautify()
cat('length', length(b), '\n')
#25

cat(names(b), '\n')
# acronym bold cite code dQuote email emph enc env figure file format kbd link
# option pkg preformatted samp source sQuote strong url var verb codelink

x <- 'some content'
cat(x, ':', b$code(x), '\n')
#some content : \code{some content}
}
