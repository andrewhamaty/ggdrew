ggdrew_qq <- function(data, var) {
  ggplot(data, aes(sample = data[[var]])) +
    stat_qq_band(alpha = 0.3) +
    stat_qq_point(color = "black", size = 2, shape = 16) +
    stat_qq_line(color = "red", linewidth = 0.7) +
    labs(title = paste("Quantile-Quantile Plot of", var),
         x ="Theoretical Quantiles",
         y = "Sample Quantiles") +
    theme(plot.title = element_text(hjust = 0.5))
}
