\name{generateOptionLink}
\alias{generateOptionLink}
\title{Generate Option Link}
\description{Generate cross reference in \R documentation}
\usage{
generateOptionLink(options_s_1, topicName_s_1, escapeBraces_b_1 = FALSE)
}
\arguments{
\item{options_s_1}{A single \emph{\code{string}} value that is generally a package name}
\item{topicName_s_1}{A single \emph{\code{string}} value that is the generally
a function name}
\item{escapeBraces_b_1}{A single \emph{\code{boolean}} value, asking to escape
braces}
}
\value{
A single \emph{\code{string}}, containing one option link. See references and examples below.
}
\references{
Refer to
\href{https://cran.r-project.org/doc/manuals/R-exts.html}{Writing \R extensions}
section 2.5, to know more about using cross references in \R documentation.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\examples{
# Typical use case
generateOptionLink('myPackage', 'myFunction')
#[1] "\\\\link[myPackage]{myFunction}"

# Refer to reference R documentation for following case
generateOptionLink('=terms.object', 'terms')
#[1] "\\\\link[=terms.object]{terms}"
}
