ggdrew_cooklev <- function(model, scale = NULL) {
  if (is.null(scale)) {
    return (
      ggplot(model, aes(.hat, .cooksd)) +
        geom_vline(xintercept = 0, color = NA) +
        geom_abline(slope = seq(0, 3, by = 0.5), colour = "gray") +
        geom_smooth(color = "red",
                    se = FALSE,
                    formula = "y ~ x",
                    method = "loess") +
        geom_point() +
        labs(title = "Cook's Distance vs. Leverage",
             x = 'Leverage',
             y = "Cook's Distance") +
        theme(plot.title = element_text(hjust = 0.5))
    )
  }
  else {
    return (
      ggplot(model, aes(.hat, .cooksd)) +
        geom_vline(xintercept = 0, color = NA) +
        geom_abline(slope = seq(0, 3, by = 0.5), colour = "gray") +
        geom_smooth(color = "red",
                    se = FALSE,
                    formula = "y ~ x",
                    method = "loess") +
        geom_point(aes(size = .cooksd)) +
        labs(title = "Cook's Distance vs. Leverage",
             x = 'Leverage',
             y = "Cook's Distance") +
        theme(plot.title = element_text(hjust = 0.5))
    )
  }
}
