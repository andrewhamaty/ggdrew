ggdrew_density <- function(data, var) {
  ggplot(data, aes(x = !!rlang::ensym(var))) +
    geom_density(fill = "lightpink", color = "red") +
    labs(title = "Density Plot", x = deparse(substitute(var)), y = "Density") +
    theme(plot.title = element_text(hjust = 0.5))
}
