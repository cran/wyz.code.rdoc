\name{auditDocumentationFiles}
\alias{auditDocumentationFiles}
\title{Audit Documentation Files}
\description{Audit documentation files from a set of folders}
\usage{
auditDocumentationFiles(folder_s_1m)
}
\arguments{
\item{folder_s_1m}{An length-1 or more \emph{\code{vector}} of existing folder names}
}
\value{
Provides a named \emph{\code{list}} with two entries named \bold{\code{correct}} and
\bold{\code{incorrect}}. All entries are file names.

Incorrect entries are the ones that has length issues as detected by function
\emph{\bold{\code{\link{computeDocumentationStatistics}}}}.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\seealso{
Function \code{\link{verifyDocumentationFile}} allows to check documentation content
using standard \R function \code{\link[tools:checkRd]{tools:checkRd}}.
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
auditDocumentationFiles('man')
}

