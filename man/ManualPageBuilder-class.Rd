\name{ManualPageBuilder-class}
\docType{class}
\alias{ManualPageBuilder-class}
\alias{ManualPageBuilder}
\title{Manual Page Builder}
\description{
Environment class ManualPageBuilder. Creates manual pages according to the
given context.
}
\usage{
ManualPageBuilder(inputContext_o_1,
                  processingContext_o_1 = ProcessingContext(),
                  generationContext_o_1 = GenerationContext())
}
\arguments{
\item{inputContext_o_1}{The input context \emph{\code{object}} to consider for generation.
See \emph{\bold{\code{\link{InputContext}}}}.}
\item{processingContext_o_1}{The processing context \emph{\code{object}} to consider for generation.
See \emph{\bold{\code{\link{ProcessingContext}}}}.}
\item{generationContext_o_1}{The generation context \emph{\code{object}} to consider for generation.
See \emph{\bold{\code{\link{GenerationContext}}}}.}
}
\value{
An object instance of class \code{ManualPageBuilder}.
}
\section{Information}{
\subsection{Environment fields}{
\tabular{ll}{
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{colorizer}} \tab list\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{generationContext_o_1}} \tab environment\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{inputContext_o_1}} \tab environment\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{processingContext_o_1}} \tab environment\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{self}} \tab environment\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{strategy}} \tab list \cr
}
}
\subsection{Environment methods}{\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{assembleManualPage(pieces_l)}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{buildManualPage()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{documentContent()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{getStrategy}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{interpretResults(result_l)}} \cr
}
\subsection{offensive programming - semantic naming}{
Class name compliance is \code{TRUE}.
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
\note{
As an end-user, you may prefer to use function \emph{\bold{\code{\link{produceManualPage}}}}
as its usage is much more straightforward.

As a programmer, this class eases programmation of your own manual page builder. See examples below.
}
\seealso{
Class \code{\link{InputContext}} class \code{\link{ProcessingContext}} and
class  \code{\link{GenerationContext}}.
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
ic <- InputContext(NULL, 'append', package = 'my.package.name')
m <- ManualPageBuilder(ic)
r <- m$buildManualPage()
interpretResults(r)
}
