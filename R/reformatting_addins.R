

#' Wide to long
#'
#' CONVERT: \cr \cr \code{c("bob", "billy", "jeff")} \cr \cr TO: \code{\cr \cr c(\cr"bob",\cr"billy",\cr"jeff"\cr)}
#'
#' @return NULL
#' @export
#'
wide_to_long = function(){
  doc_context=rstudioapi::getActiveDocumentContext()
  text=answer$selection[[1]]$text
  text = gsub(x=text, pattern = ",", replacement = ',\n', fixed = TRUE)
  text = sub(x=text, pattern = "(", replacement = '(\n', fixed = TRUE)
  text = sub(x=text, pattern = ")", replacement = '\n)', fixed = TRUE)
  rstudioapi::insertText(text)
  return(NULL)
}
