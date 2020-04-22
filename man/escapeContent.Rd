\name{escapeContent}
\alias{escapeContent}
\title{Escape Specials Characters In Content}
\description{Manage characters to be escaped in \R documentation text}
\usage{
escapeContent(content_s_1, escapeBraces_b_1 = FALSE)
}
\arguments{
\item{content_s_1}{A single \emph{\code{string}} value that is the content to consider}
\item{escapeBraces_b_1}{A single \emph{\code{boolean}} value, allowing also to escape braces}
}
\value{
A single \code{string} with character '@' and '\%' escaped.

When \code{escapeBraces_b_1} is set, characters '\{' and '\}' are also escaped.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
escapeContent('www@xxx.com')
# "www@@xxx.com"

escapeContent('\\\\code{ x \%\% y }', TRUE)
# "\\\\code\\{ x \\%\\% y \\}"
}
