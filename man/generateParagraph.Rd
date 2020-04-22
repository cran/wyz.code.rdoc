\name{generateParagraph}
\alias{generateParagraph}
\title{Generate Paragraph}
\description{
Generate paragraph, collating provided contents with given string.
}
\usage{
generateParagraph(..., collapse_s_1 = "\n", addFinalSeparator_b_1 = FALSE)
}
\arguments{
\item{...}{additional arguments, content to be collated.}
\item{collapse_s_1}{The \emph{\code{string}} to be used to collate content }
\item{addFinalSeparator_b_1}{A single \emph{\code{boolean}} value. When \emph{\code{TRUE}}, a final
separator will be added to generated content.}
}
\value{A single \emph{\code{string}}, with possibly many new line character embedded.}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\seealso{Functions \emph{\bold{\code{\link{generateParagraph2NL}}}} and
\emph{\bold{\code{\link{generateParagraphCR}}}}.}
\keyword{function}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
generateParagraph(LETTERS[1:3])
# "A\nB\nC"

generateParagraph(LETTERS[1:3], addFinalSeparator_b_1 = TRUE)
# "A\nB\nC\n"
}
