\name{InputContext-class}
\docType{class}
\alias{InputContext-class}
\alias{InputContext}
\title{Input Context}
\description{
Environment class InputContext. Defines and eases input context management.
}
\usage{
InputContext(object_o_1,
             methodName_s_1 = NA_character_,
             packageName_s_1 = NA_character_,
             dataFilename_s_1 = NA_character_
)
}
\arguments{
\item{object_o_1}{a single \emph{\code{object}} or \emph{\code{NULL}}}
\item{methodName_s_1}{a single \emph{\code{string}} value that is the method name to consider}
\item{packageName_s_1}{a single \emph{\code{string}} that is the target package name to use}
\item{dataFilename_s_1}{a single \emph{\code{string}} that is the data file name}
}
\value{
An \emph{\code{object}} instance.
}
\section{Information}{
\subsection{Environment fields}{
\tabular{ll}{
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{beautifier}} \tab list\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{class_kind}} \tab character\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{class_name}} \tab character\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{data_name}} \tab NULL\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{dataFilename_s_1}} \tab character\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{file_name}} \tab character\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{hack_description}} \tab logical\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{instrumentationLevel}} \tab list\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{kind}} \tab double\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{kinds}} \tab character\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{methodName_s_1}} \tab character\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{number_replacements}} \tab integer\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{object_o_1}} \tab list\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{packageName_s_1}} \tab character\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{self}} \tab environment\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{typeFactory_o_1}} \tab environment\cr
\ifelse{latex}{\out{$\\mapsto$}}{\ifelse{html}{\out{&#x25C6;}}{\\u25c6}} \emph{\code{use_markers}} \tab logical
}
}
\subsection{Environment methods}{\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{buildMethodName()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{generateConditionalMarker(force_b_1 = FALSE)}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{generateConditionalMarker(Generatorforce_b_1 = FALSE)}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{getFilename()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{getKind()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{getName()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{markerGenerator()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceAlias()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceArguments()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceAuthor()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceConcept()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceCustom_section()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceDescription()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceDetails()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceDocType()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceEncoding()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceExamples()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceFormat()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceKeyword()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceName()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceNote()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceRdOpts()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceRdversion()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceReferences()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceSeealso()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceSexpr()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceSource()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceSynopsis()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceTitle()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceUsage()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{produceValue()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{retrieveStrategy()}}\cr
\ifelse{latex}{\out{$\\rightarrow$}}{\ifelse{html}{\out{&#x25A0;}}{\\u25a0}} \emph{\code{setUseMarkers(value_b_1)}}
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
Class \emph{\bold{\code{\link{GenerationContext}}}} class \emph{\bold{\code{\link{ProcessingContext}}}} class
and class \emph{\bold{\code{\link{ManualPageBuilder}}}}.
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
\examples{
ic1 <- InputContext(NULL)

ic2 <- InputContext(NULL, 'append', package = 'my.package.name')
}
