generatePublicFieldParagraph <- function(object_o_1, fields_s) {
  dt <- data.table::data.table(
    ' ' = documentationSymbols()$black_diamond,
    field = beautify()$bold(fields_s),
    type = sapply(fields_s, function(e) typeof(object_o_1[[e]])))
  generateTable(dt, showHeader_b_1 = FALSE)
}