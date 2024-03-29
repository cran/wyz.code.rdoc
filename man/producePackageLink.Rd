\name{producePackageLink}
\alias{producePackageLink}
\title{Produce Package Link}
\description{Generation package cross reference in \R documentation}
\usage{
producePackageLink(packageName_s_1, topicName_s_1)
}
\arguments{
\item{packageName_s_1}{A single \emph{\code{string}} value that represents generally a package name considered
as source for the topic}
\item{topicName_s_1}{A single \emph{\code{string}} value that is generally a documentation topic to link to}
}
\value{
A single \emph{\code{string}}, containing the generated package link.
See references and examples below.
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
\seealso{See option link creation using function \code{\link{generateOptionLink}}.}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
producePackageLink('tools', 'checkRd')
#[1] "\\\\link{tools:checkRd}{tools:checkRd}"
}