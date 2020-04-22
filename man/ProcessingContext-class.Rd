\name{ProcessingContext-class}
\docType{class}
\alias{ProcessingContext-class}
\alias{ProcessingContext}
\title{Processing Context}
\description{
Environment class ProcessingContext. Defines and eases processing context
management.
}
\usage{
ProcessingContext(extraneous_l = list(), postProcessing_l = list())
}
\arguments{
\item{extraneous_l}{An unconstrained named \emph{\code{list}}. Each entry will be turned into
a \R documentation section. }
\item{postProcessing_l}{An unconstrained named \emph{\code{list}}. Each entry will trigger a
post processing for the related \R documentation section. }
}
\value{
An \emph{\code{object}} instance of class \code{ProcessingContext}.
}
\details{
If a post processing function returns \emph{\code{NULL}}, related section will be
removed from generated content. See examples below.

Post processing aims to put in action simple transformations, as changing
letter cases, or applying simple beautifying technics. See \emph{\bold{\code{\link{beautify}}}}.
}
\section{Information}{
\subsection{Environment fields}{
\tabular{ll}{
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{extraneous_l}} \tab list\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{postProcessing_l}} \tab list\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{self}} \tab environment \cr
}
}
\subsection{Environment methods}{\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{verifyExtraneous(extraneous_l)}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{verifyPostProcessing(postProcessing_l)}}\cr
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
Class \emph{\bold{\code{\link{InputContext}}}} class \emph{\bold{\code{\link{GenerationContext}}}} class
and class \emph{\bold{\code{\link{ManualPageBuilder}}}}.
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
pc <- ProcessingContext(
  extraneous_l = list(
    'my section' = "a special dedicace to neonira",
    keyword = 'documentation',
    concept = 'documentation generation'
  ),
  postProcessing_l = list(
    'my section' = function(content_s) {
       gsub('neonira', 'NEONIRA', content_s, fixed = TRUE)
    },
    author = function(content_s) { NULL } # destroy section
  )
)
}
