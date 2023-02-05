ggdrew_cormatrix <- function(data, method = NULL) {
  if (!is.null(method) && method == "circle") {
    return (data %>%
              select_if(is.numeric) %>%
              cor() %>%
              ggcorrplot(method = "circle"))
  }
  else {
    return (data %>%
              select_if(is.numeric) %>%
              cor() %>%
              ggcorrplot())
  }
}
