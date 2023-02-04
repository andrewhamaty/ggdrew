ggdrew_reslev <- function(model) {
  cbind(rstandard(model), hatvalues(model)) |>
    as.data.frame() |>
    ggplot(aes(x = V2, y = V1)) +
    geom_point() +
    geom_smooth(formula = y ~ x, method = "loess", se = FALSE, color = "red") +
    labs(title = 'Residual vs. Leverage',
         x = 'Leverage',
         y = 'Residuals') +
    theme(plot.title = element_text(hjust = 0.5))
}
