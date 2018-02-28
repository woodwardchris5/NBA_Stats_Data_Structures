#' Oldest Player in a Given Season
#'
#' This function outputs the oldest player in the NBA in a given year and his corresponding age.
#' @param year Which NBA season
#' @keywords NBA oldest player
#' @export
#' @examples
#' oldest_pl()

oldest_pl <- function(year) {
  output <- NBAStats %>%
    dplyr::filter(Year == year) %>%
    dplyr::filter(Age == max(Age)) %>% 
    dplyr::select(Player, Age)
  output
} 