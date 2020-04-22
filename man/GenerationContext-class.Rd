\name{GenerationContext-class}
\docType{class}
\alias{GenerationContext-class}
\alias{GenerationContext}
\title{Generation Context}
\description{
Define a generation context to produce a manual page
}
\usage{
GenerationContext(targetFolder_s_1 = tempdir(),
                  overwrite_b_1 = FALSE,
                  verbosity_b_1 = FALSE,
                  useMarkers_b_1 = FALSE
)
}
\arguments{
\item{targetFolder_s_1}{a single \emph{\code{string}} that is the target folder to store produced manual pages. Must exist.}
\item{overwrite_b_1}{a single \emph{\code{boolean}} value, allowing to overwrite an existing manual page.}
\item{verbosity_b_1}{a single \emph{\code{boolean}} verbosity flag. Turn on for interactive use. Keep off
for programmatic usage.}
\item{useMarkers_b_1}{A single \emph{\code{boolean}} value, specifying if sections should be
generated with special markers whenever possible. }
}
\value{
An \emph{\code{object}} instance of class \emph{\bold{\code{\link{GenerationContext}}}}  based on
\emph{\code{\link{environment}}}.
}
\section{Information}{
\subsection{Environment fields}{\cr
\tabular{ll}{
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \bold{overwrite_b_1} \tab logical\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \bold{self} \tab environment\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \bold{targetFolder_s_1} \tab character\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \bold{useMarkers_b_1} \tab logical\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \bold{verbosity_b_1} \tab logical\cr
}
}
\subsection{offensive programming - semantic naming}{
Class name compliance is \emph{\code{TRUE}}.
}
\subsection{offensive programming - function return types}{
Class owns no function return type instrumentation.
}
\subsection{offensive programming - test case definitions}{
Class owns no test case definitions.
}
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\seealso{
Class \emph{\bold{\code{\link{InputContext}}}} class \emph{\bold{\code{\link{ProcessingContext}}}} class
and class \emph{\bold{\code{\link{ManualPageBuilder}}}}.
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
GenerationContext()

GenerationContext(overwrite = TRUE, verbosity = TRUE)
}
