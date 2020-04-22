\name{interpretResults}
\alias{interpretResults}
\title{Interpret Results}
\description{Interpret results of \emph{\code{function}}
\emph{\bold{\code{\link{ManualPageBuilder}}}}}
\usage{
interpretResults(manualPageGenerationResults_l)
}
\arguments{
\item{manualPageGenerationResults_l}{A \emph{\code{list}} resulting from
\emph{\bold{\code{\link{ManualPageBuilder}}}} function.}
}
\details{
This function checks for presence of content that should be present in a well
formated and documented function manual page. It provides hints. You could follow
those hints to produce great documentation.
}
\value{
Provides output that allows to know which sections has been generated and which
sections are missing or probably missing.
}
\section{Good practice}{
When producing a manual page using \emph{\bold{\code{\link{ManualPageBuilder}}}},
keeping the result in a \R variable allows you to interpret this
 result at any time in the future. This is helpful when working incrementally
 to produce a fully automated generation scheme for a given manual page.
 See examples below.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
ic <- InputContext(NULL, 'append', packageName_s_1 = 'wyz.code.rdoc')

res <- produceManualPage(ic)
# WARNING: File /tmp/RtmpYIampA/append.Rd
# checkRd: (5) /tmp/RtmpYIampA/append.Rd:0-19: Must have a \\description

interpretResults(res)
# filename is /tmp/RtmpYIampA/append.Rd [OVERWRITTEN]
# generated 8 sections: name, alias, title, usage, arguments, author, keyword, encoding
# missing 3 sections: description, value, examples
# probably missing 1 section: details
}