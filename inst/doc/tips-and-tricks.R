## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = ""
)
source('vignette-common.R')

## ----context, eval = TRUE, echo = FALSE---------------------------------------
library("data.table")
library("wyz.code.offensiveProgramming")
library("wyz.code.rdoc", warn.conflicts = FALSE)

## ----parameter_naming_pluralize, echo=TRUE, eval=TRUE-------------------------
wyz.code.rdoc:::getTypeLabel(FunctionParameterName('countryFlag_b_3')) # wrong

wyz.code.rdoc:::getTypeLabel(FunctionParameterName('countryFlags_b_3')) # right

## ----parameter_naming_singular, echo=TRUE, eval=TRUE--------------------------
wyz.code.rdoc:::getTypeLabel(FunctionParameterName('countryFlags_b_1')) # wrong

wyz.code.rdoc:::getTypeLabel(FunctionParameterName('countryFlag_b_1')) # right

## ----parameter_naming, echo=TRUE, eval=TRUE-----------------------------------
wyz.code.rdoc:::getTypeLabel(FunctionParameterName('countryFlag_b')) # wrong

wyz.code.rdoc:::getTypeLabel(FunctionParameterName('countryFlags_b')) # right

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
pc <- ProcessingContext(
  extraneous_l = list(
    details = 'It is worth to know bla bla bla',
    concept = paste0('concept-', 1:3)
  )
)

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
pc <- ProcessingContext(
  postProcessing_l = list( 
    title =  function(content_s) { 
      paste(content_s, sentensize('some complimentary content'))
    }
  )
)

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
pc <- ProcessingContext(
  postProcessing_l = list(
    details = function(content_s) NULL
  )
)

## ----content_escape, echo=TRUE, eval=TRUE-------------------------------------
content <- 'function(x) { x + 1 }'

# To be use in a code section content
generateMarkup(content)

# To be used in a text section content
paste('Some R code:', generateMarkup(content, escapeBraces_b_1 = TRUE))

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
# The function to test
divide <- function(x_n, y_n) x_n / y_n

# The examples to consider
examples <- list(
  function() { divide(1:3, 1:3 + 13L) },
  function() { divide(0L, c(Inf, -Inf)) },
  function() { divide(c(Inf, -Inf), 0L) },
  function() { divide(0L, 0L) }
)

# your documentation complementary parts to consider 
# and manual page generation context setup
ic <- InputContext(NULL, 'divide')
pc <- ProcessingContext(
  extraneous_l = list(
    examples = convertExamples(examples, captureOutput_b_1n = TRUE)
  )
)
gc <- GenerationContext(tempdir(), overwrite = TRUE)

# The generation of the manual page
rv <- produceManualPage(ic, pc, gc)

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
readLines(rv$context$filename)

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
generateEnumeration(paste('case', 1:4))

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
generateEnumeration(paste('case', 1:4), TRUE)

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
dt <- data.table::data.table(x = paste0('XY_', 1:3), y = letters[1:3])

# as-is 
generateTable(dt)

# with row numbering
generateTable(dt, numberRows_b_1 = TRUE)

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
b <- beautify()
names(b)

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
b$bold('lorem ipsum')

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
b$file('/tmp/result.txt')

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
b$acronym('CRAN')

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
co <- '{ x %% y }'
b$code(co) # very probably wrong 

e <- beautify(TRUE)
e$code(co) # much more probably right

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
# link to another package
b$code(producePackageLink('ggplot2', 'aes_string'))

# link to same package
b$codeLink('generateTable')

# link to same package with enhanced presentation
b$enhanceCodeLink('generateTable')

