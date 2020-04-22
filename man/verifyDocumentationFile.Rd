\name{verifyDocumentationFile}
\alias{verifyDocumentationFile}
\title{Verify Documentation File}
\description{Verify documentation file compliance to \R documentation scheme.}
\usage{
verifyDocumentationFile(filename_s_1)
}
\arguments{
\item{filename_s_1}{A single \emph{\code{string}} value that is the filename
holding \R documentation to check}
}
\value{
Echoes on \emph{\code{stdout}} status of documentation verification, as done by
\emph{\bold{\code{\link[tools:checkRd]{tools:checkRd}}}}.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
# verifyDocumentationFile("myfile.Rd")
}
