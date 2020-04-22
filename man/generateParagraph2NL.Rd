\name{generateParagraph2NL}
\alias{generateParagraph2NL}
\title{Function generateParagraph2NL}
\description{
Generate paragraph, collating provided contents with double new line.
}
\usage{
generateParagraph2NL(..., addFinalSeparator_b_1 = FALSE)
}
\arguments{
\item{...}{additional arguments.}
\item{addFinalSeparator_b_1}{A single \emph{\code{boolean}} value, asking to add
an extraneous new line at the end of the computed string. }
}
\value{A single \emph{\code{string}}, with possibly many new line character embedded.}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\seealso{Functions \emph{\bold{\code{\link{generateParagraph}}}} and
\emph{\bold{\code{\link{generateParagraphCR}}}}.}
\keyword{function}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
generateParagraph2NL(LETTERS[1:3])
# "A\n\nB\n\nC"

generateParagraph2NL(LETTERS[1:3], addFinalSeparator_b_1 = TRUE)
# "A\n\nB\n\nC\n\n"
}
