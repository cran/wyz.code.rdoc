library(data.table)
library(wyz.code.offensiveProgramming)
library(wyz.code.rdoc)

target_folder <- tempdir()
source_package <- 'wyz.code.offensiveProgramming'

package_name <- 'wyz.code.rdoc'

refs <- list(
  list(url = 'https://cran.r-project.org/doc/manuals/R-exts.html',
       label = 'Writing R extensions',
       comment = 'to know more about R documentation requirements'),
  list(url = 'https://www.burns-stat.com/pages/Tutor/R_inferno.pdf',
       label = 'The R Inferno',
       comment = 'to discover some well-known R weirdness')
)

extra_method <- list(
  keyword = c('classes', 'environment', 'utilities', 'misc'),
  concept = c('evaluation mode', 'standard evaluation',
              'function return type evaluation', 'parameter check evaluation'),
  references = c(sentensize(paste('see',
                                  generateContent('wyz.code.offensiveProgramming', 'code'),
                                  'package documentation')),
                 '',
                 sentensize(paste('You may read',
                                  generateContent('https://neonira.github.io/offensiveProgrammingBook/',
                                                  'href', 'Offensive Programming Book'),
                                  'to get introduction and expert advices on offensive programming')),
                 '',
                 generateReference(refs[[1]])
  ),
  seealso = c(sentensize(paste('see',
                               generateContent(generateSpecialLink('wyz.code.offensiveProgramming',
                                                                   'runTransientFunction'),
                                               'code'),
                               'to call interactively an offensive programming function, whether instrumented or not.')),
              '',
              sentensize(paste('see',
                               generateContent(generateSpecialLink('wyz.code.offensiveProgramming',
                                                                   'runTestCase'),
                                               'code'),
                               'to reuse on-demand instrumented offensive programming function tests'))
  )
)

# explicit invocation for method

sumValues <- function(x_i, y_i) sum(x_i, y_i, na.rm = TRUE)

em <- generateDocumentationContent(target_folder, 'method', 'sumValues',
                                   NULL, package_name,
                                   extra_method, overwrite_b_1 = TRUE)

