\name{produceAllManualPagesFromObject}
\alias{produceAllManualPagesFromObject}
\title{Produce All Manual Pages From Object}
\description{Produce object and methods manual pages from an object. }
\usage{
produceAllManualPagesFromObject(object_o_1,
                                processingContext_o_1 = ProcessingContext(),
                                generationContext_o_1 = GenerationContext(),
                                packageName_s_1 = NA_character_)
}
\arguments{
\item{object_o_1}{The single \emph{\code{object}} you want to generate manual pages from.}
\item{processingContext_o_1}{The processing context \emph{\code{object}} to consider for generation.
See \emph{\bold{\\code{\link{ProcessingContext}}}}.}
\item{generationContext_o_1}{The generation context \emph{\code{object}} to consider for generation.
See \emph{\bold{\code{\link{GenerationContext}}}}.}
\item{packageName_s_1}{a single \emph{\code{string}} that is the target package
name to consider for generation. Allows to generate automatically the
\emph{\code{author}} section content. }
}
\author{
\packageAuthor{wyz.code.rdoc}

Maintainer: \packageMaintainer{wyz.code.rdoc}
}
\note{
This is an \bold{EXPERIMENTAL} function. Prefer usage of function
\emph{\bold{\code{\link{produceManualPage}}}} instead.

It generates reliable individual manual pages
that taken all together are not fully compatible with \R way to express documentation.

In particular, expect duplicated aliases to appear, and some name weirdness also.
}
\keyword{documentation}
\concept{documentation generation}
\encoding{UTF-8}
