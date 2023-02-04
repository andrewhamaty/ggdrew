ggdrew_resfitted <- function(model) {
  ggplot(model, aes(x = .fitted, y = .resid)) +
    geom_point() +
    geom_smooth(formula = y ~ x, method = lm) +
    labs(title = 'Residuals vs. Fitted Values',
         x = 'Fitted Values',
         y = 'Residuals') +
    theme(plot.title = element_text(hjust = 0.5))
}
