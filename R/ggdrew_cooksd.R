ggdrew_cooksd <- function (model) {
  ggplot(model, aes(seq_along(.cooksd), .cooksd)) +
    geom_col(color = "red", width = 0.1) +
    geom_point(shape = 10, stroke = 1) +
    labs(y = "Cook's Distance", x = "Observation") +
    ggtitle("Cook's Distance Plot") +
    theme(plot.title = element_text(hjust = 0.5))
}
