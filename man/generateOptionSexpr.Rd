\name{generateOptionSexpr}
\alias{generateOptionSexpr}
\title{Generate Option Sexpr}
\description{Generation option \code{Sexpr} in \R documentation}
\usage{
generateOptionSexpr(options_s_1, topicName_s_1, escapeBraces_b_1 = FALSE)
}
\arguments{
\item{options_s_1}{A single \emph{\code{string}} value that is generally \R code used to set expression options}
\item{topicName_s_1}{A single \emph{\code{string}} value that is the generally \R code}
\item{escapeBraces_b_1}{A single \emph{\code{boolean}} value, asking to escape
braces}
}
\value{
A single \emph{\code{string}}, containing one option \bold{\code{Sexpr}}. See references and examples below.
}
\references{
Refer to
\href{https://cran.r-project.org/doc/manuals/R-exts.html}{Writing \R extensions}
section 2.12, to know more about using \code{Sexpr} handling in \R documentation.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
generateOptionSexpr('echo=TRUE', 'x <- 1')
#[1] "\\\\Sexpr[echo=TRUE]{x <- 1}"
}
