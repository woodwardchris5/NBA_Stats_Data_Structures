#' Leading Scorer in a Given Season
#'
#' This function outputs the leading scorer in the NBA in a given year and his corresponding point total.
#' @param year Which NBA season
#' @keywords NBA leading scorer
#' @export
#' @examples
#' most_points()

most_points <- function(year) {
  output <- NBAStats %>%
    dplyr::filter(Year == year) %>%
    dplyr::filter(PTS == max(PTS)) %>%
    dplyr::select(Player, PTS)
  output
}
