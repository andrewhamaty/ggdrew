ggdrew_cormatrix <- function(data) {
  data |>
    select_if(is.numeric) |>
    cor() |>
    ggcorrplot()
}
