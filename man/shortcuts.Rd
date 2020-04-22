\name{shortcuts}
\alias{shortcuts}
\title{Function shortcuts}
\description{
Use this function to exploit prepared and customized shortcuts.
}
\usage{
shortcuts(arguments_s = character(), doubleEscape_b_1 = TRUE)
}
\arguments{
\item{arguments_s}{A \emph{\code{vector}} of function arguments you would like
to get shortcuts for}
\item{doubleEscape_b_1}{A single \emph{\code{boolean}} asking for double escape.
On by default. }
}
\value{
A \emph{\code{list}} with following names
\tabular{ll}{
\emph{\code{doc}} \tab very common single \R documentation keywords\cr
\emph{\code{constants}} \tab very common \R constants used in \R documentation\cr
\emph{\code{types}} \tab very common \R types used in \R documentation\cr
\emph{\code{args}} \tab function arguments ready to use in \R documentation\cr
}

The names are all turned to lowercase.
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\examples{
shortcuts(formalArgs(GenerationContext))
}
\keyword{function}
\encoding{UTF-8}
