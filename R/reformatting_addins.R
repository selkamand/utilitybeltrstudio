

#' Wide to long
#'
#' CONVERT: \cr \cr \code{c("bob", "billy", "jeff")} \cr \cr TO: \code{\cr \cr c(\cr"bob",\cr"billy",\cr"jeff"\cr)}
#'
#' @return NULL
#' @export
#'
wide_to_long = function(){
  doc_context=rstudioapi::getActiveDocumentContext()
  text=doc_context$selection[[1]]$text
  text=wide_to_long_base(text)
  rstudioapi::insertText(text)
  return(NULL)
}

wide_to_long_base <- function(text){
  text = gsub(x=text, pattern = ", +", replacement = ',\n')
  text = sub(x=text, pattern = "(", replacement = '(\n', fixed = TRUE)
  text = sub(x=text, pattern = ")", replacement = '\n)', fixed = TRUE)
  return(text)
}

# test c('bob', 'billy', 'arnold')
