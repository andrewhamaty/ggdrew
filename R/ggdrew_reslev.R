ggdrew_reslev <- function(model, cooksd = FALSE) {
  ggplot(model, aes(.hat, .stdresid)) +
    geom_hline(linewidth = 2,
               linetype = "dashed",
               color = "black",
               yintercept = 0,
               alpha = 0.3) +
    geom_smooth(color = "red",
                se = FALSE,
                formula = "y ~ x",
                method = "loess") +
    labs(title = 'Residuals vs. Leverage',
         x = 'Leverage',
         y = 'Residuals') +
    theme(plot.title = element_text(hjust = 0.5)) +
    (if (cooksd) {
      geom_point(aes(size = .cooksd))
    } else {
      geom_point()
    })
}
