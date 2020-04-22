\name{completeManualPage}
\alias{completeManualPage}
\title{Complete Manual Page}
\description{Complete a manual page}
\usage{
completeManualPage(filename_s_1, processingContext_o,
                   add_b_1 = TRUE, verbosity_b_1 = FALSE)
}
\arguments{
\item{filename_s_1}{A single \emph{\code{string}} value that is a file name}
\item{processingContext_o}{ a single processing \emph{\code{object}}.
See \emph{\bold{code{\link{ProcessingContext}}}}. Only
\code{postProcessing_l} parameter is considered by this function.}
\item{add_b_1}{a \emph{\code{boolean}} flag. When \emph{\code{TRUE}} add content
to existing content. Otherwise patch content. }
\item{verbosity_b_1}{a single \emph{\code{boolean}} flag, to set or unset verbosity}
}
\value{
This function adds or patches on-demand sections of a manual page file.

You may consider twice prior using this function. It is a convenience that aims
to sustain your productivity. You may get very quick results using it, but at the
probable cost of non reproducibility in comparison with manual pages produced using
function \code{\link{ManualPageBuilder}}.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
f <- function() {}
ic <- InputContext(NULL, 'f')
p <- produceManualPage(ic)
# WARNING: File /tmp/Rtmpvk4BG5/f.Rd
# checkRd: (5) /tmp/Rtmpvk4BG5/f.Rd:0-9: Must have a \\description


completeManualPage(p$context$filename,
   ProcessingContext(postProcessing_l = list(
      details = function(content_s) 'some more details',
      concept = function(content_s) 'yet another concept'
   )), verbosity = TRUE
)
# adding details
# adding concept
# [1] TRUE
}
