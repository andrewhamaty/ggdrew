ggdrew_scatter <- function (data, x, y) {
  x <- as.name(x)
  y <- as.name(y)

  ggplot(data, aes_string(x = x, y = y)) +
    geom_point(shape = 16) +
    theme(plot.title = element_text(hjust = 0.5)) +
    labs(title = paste(deparse(substitute(x)), "vs.", deparse(substitute(y))),
         x = deparse(substitute(x)),
         y = deparse(substitute(y))) +
    geom_smooth(formula = y ~ x, method = lm)
}
