library(data.table)
library(wyz.code.offensiveProgramming)
library(wyz.code.rdoc)

target_folder <- tempdir()
source_package <- 'wyz.code.offensiveProgramming'

source_files <- c(
  'code-samples/full-instrumentation/AdditionTCFIG1.R',
  'code-samples/no-instrumentation/Addition.R',
  'code-samples/fun-defs/good/partial/AdditionFIPartial.R',
  'code-samples/tc-defs/good/partial/AdditionTCPartial.R'
)

sapply(source_files, function(e) {
  source(system.file(e, package = source_package))
})

object <- AdditionTCFIG1()
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
generateDocumentationContent(target_folder, 'method', 'addMultiDouble',
                             object, package_name,
                             extra_method, overwrite_b_1 = TRUE)

# explicit invocation for class
extra_class <- extra_method
extra_class$references <- extra_method$references[[5]]
extra_class$seealso <- NULL
generateDocumentationContent(target_folder, 'class', 'AdditionTCFIG1',
                             object, package_name,
                             extra_class, overwrite_b_1 = TRUE)


# generic invocation for method
generateDocumentationContent(target_folder, 'method', NA,
                             Addition(), package_name,
                             extra_method, overwrite_b_1 = TRUE)


# generic invocation for method
generateDocumentationContent(target_folder, 'method', NA,
                             AdditionTCPartial(), package_name,
                             extra_method, overwrite_b_1 = TRUE)


# generic invocation for method
generateDocumentationContent(target_folder, 'method', NA,
                             AdditionFIPartial(), package_name,
                             extra_method, overwrite_b_1 = TRUE)

# generic invocation for method
generateDocumentationContent(target_folder, 'method', NA,
                             object, package_name,
                             extra_method, overwrite_b_1 = TRUE)

# generic invocation for package
extra_package <- extra_method
extra_package$seealso <- NULL
extra_package$content <- c('AdditionTCFIG1', 'AdditionTCFIP', 'Addition')
z <- generateDocumentationContent(target_folder, 'package', package_name,
                                  object, package_name, extra_package, overwrite_b_1 = TRUE)

