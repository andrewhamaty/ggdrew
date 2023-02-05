ggdrew_reshist <- function(model, bins = NULL) {
  if (is.null(bins)) {
    return (residuals(model) %>%
              as.data.frame() |>
              ggplot(aes(x = .)) +
                geom_histogram(bins = 30, color = "#595757", fill = "#333131") +
                labs(title = 'Histogram of Residuals', x = 'Residuals', y = 'Frequency') +
                theme(plot.title = element_text(hjust = 0.5)))
  }
  else {
    return (residuals(model) %>%
              as.data.frame() |>
              ggplot(aes(x = .)) +
                geom_histogram(bins = bins, color = "#595757", fill = "#333131") +
                labs(title = 'Histogram of Residuals', x = 'Residuals', y = 'Frequency') +
                theme(plot.title = element_text(hjust = 0.5)))
  }
}
