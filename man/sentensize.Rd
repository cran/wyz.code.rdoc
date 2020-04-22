\name{sentensize}
\alias{sentensize}
\title{Create sentence}
\description{Create a sentence from given content}
\usage{
sentensize(x_s, ..., punctuationCharacter_s_1 = ".")
}
\arguments{
\item{x_s}{An unconstrained \emph{\code{vector}} of string values}
\item{...}{additional arguments (should be convertible to \emph{\code{character}} type).}
\item{punctuationCharacter_s_1}{the punctuation \emph{\code{character}} to use to end the sentence.}
}
\details{
Collate all provided arguments, then normalize spaces.

Finally, ensure capitalization of first letter and final colon.
}
\value{A single \emph{\code{string}}.}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\note{
There is no way to ask for a different final punctuation mark. If you need to
do so, either create your own helper function or simply \emph{\bold{\code{\link{sub}}}}
provided result.
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
sentensize('a quick brown FOX jumps\\tover', 'the     lazy      dog')
#  "A quick brown FOX jumps over the lazy dog."

sentensize('a simple', '  question\t', punctuationCharacter_s_1 = '?')
#  "A simple question?"
}
