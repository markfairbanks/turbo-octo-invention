#' Test DT
#' 
#' Test lazy_dt stuff.
#' 
#' @importFrom dplyr distinct pull as_tibble summarize
#' @importFrom dtplyr lazy_dt
#' @export
test_dt = function() {

  mtcars_dt = lazy_dt(mtcars)

  mtcars_dt |>
    summarize(cyl = unique(cyl)) |>
    as_tibble() |>
    pull(cyl)


}

.datatable.aware <- TRUE