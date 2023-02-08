ggdrew_resfitted <- function(model) {
  ggplot(model, aes(x = .fitted, y = .resid)) +
    geom_point() +
    geom_smooth(formula = y ~ x,
                method = loess,
                color = "blue",
                linetype = "solid",
                alpha = 0.35) +
    geom_hline(yintercept = 0,
               color = "red",
               size = 0.7,
               linetype = 5) +
    labs(title = 'Residuals vs. Fitted Values',
         x = 'Fitted Values',
         y = 'Residuals') +
    theme(plot.title = element_text(hjust = 0.5))
}
