ggdrew_reshist <- function(model) {
  residuals(model) %>%
    as.data.frame() |>
    ggplot(aes(x = .)) +
    geom_histogram(bins = 30, fill = "#333131") +
    labs(title = 'Histogram of Residuals',
         x = 'Frequency',
         y = 'Residuals') +
    theme(plot.title = element_text(hjust = 0.5))
}
