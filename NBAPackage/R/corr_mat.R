#' Correlation Matrix of Numeric NBA Stats in a Given Year
#' 
#' This function outputs the correlation matrix of numeric NBA stats for a given year
#' @param year Which NBA season
#' @keywords NBA numeric stats correlation matrix
#' @export
#' @examples 
#' corr_mat()

corr_mat <- function(year) { 
  num_d <- NBAStats %>% 
    dplyr::filter(Year == year) %>% 
    purrr::keep(is.numeric)
  output <- stats::cor(num_d, use = "pairwise.complete.obs")
  output
}  