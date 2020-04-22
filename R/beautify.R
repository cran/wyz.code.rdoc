beautify <- function(escapeBraces_b_1 = FALSE) {

  generateFunction <- function(keyword_s_1) {
    function(entries_s) {
      sapply(entries_s, generateMarkup, keyword_s_1,
             escapeBraces_b_1 = escapeBraces_b_1, USE.NAMES = FALSE)
    }
  }

  candidates <- sort(c('acronym', 'bold', 'cite', 'dQuote', 'email', 'emph',
                       'enc', 'env',  'figure', 'file', 'format', 'kbd',
                       'link', 'option', 'pkg', 'preformatted', 'samp',
                       'source', 'sQuote', 'strong', 'verb', 'var', 'url',
                       'code'))

  l <- sapply(candidates, generateFunction)
  l$codeLink <- function(entries_s) l$code(l$link(entries_s))
  l$enhanceCodeLink <- function(entries_s) l$emph(l$bold(l$code(l$link(entries_s))))

  l$italicCode <-  function(entries_s) l$emph(l$code(entries_s))
  l$boldCode <-  function(entries_s) l$bold(l$code(entries_s))

  l$R <- function() { generateMarkup(keyword_s_1 = 'R')}
  l$ldots <- function() { generateMarkup(keyword_s_1 = 'ldots')}
  l$dots <- function() { generateMarkup(keyword_s_1 = 'dots')}
  l
}
