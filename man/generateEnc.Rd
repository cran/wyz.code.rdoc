\name{generateEnc}
\alias{generateEnc}
\title{Generate Enc}
\description{
Generate special markup for encoding text in \R documentation
}
\usage{
generateEnc(entries_l)
}
\arguments{
\item{entries_l}{An unconstrained named \emph{\code{list}} of \emph{\code{list}}with \bold{\code{text}} and
\bold{\code{ascii}} names, holding respectively international text and \acronym{ASCII} equivalent.}
}
\value{A \emph{\code{list}} of \emph{\code{strings}}}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
generateEnc(list(list(text = 'Français', ascii = 'Francais')))
# [[1]]
# [1] "\\enc{Français}{Francais}"

generateEnc(list(list(text = 'é', ascii = 'e'), list(text = 'è', ascii = 'e')))
# [[1]]
# [1] "\\enc{é}{e}"

# [[2]]
# [1] "\\enc{è}{e}"
}
