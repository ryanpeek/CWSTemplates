#' Output formats for UCD CWS documents
#' Following Rob Hyndman's Monash template package
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce documents in UCD CWS style.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Ryan Peek
#'
#' @export
letter <- function(...) {
  template <- system.file("rmarkdown/templates/Letter/resources/cwsletter.tex",
                          package="CWSTemplates")
   bookdown::pdf_document2(...,
     template = template
   )
}

#' @rdname letter
#' @export
exam <- function(...) {
  template <- system.file("rmarkdown/templates/Exam/resources/examtemplate.tex",
                          package="CWSTemplates")
  bookdown::pdf_document2(...,
                          template = template
  )
}

#' @rdname letter
#' @export
workingpaper <- function(...) {
  template <- system.file("rmarkdown/templates/WorkingPaper/resources/monashwp.tex",
                          package="CWSTemplates")
  bookdown::pdf_document2(...,
                          template = template
  )
}


#' @rdname letter
#' @export
report <- function(...) {
  template <- system.file("rmarkdown/templates/Report/resources/cwsreport.tex",
                          package="CWSTemplates")
  bookdown::pdf_document2(...,
                          template = template
  )
}

#' @rdname letter
#' @export
memo <- function(...) {
  template <- system.file("rmarkdown/templates/Memo/resources/monashmemo.tex",
                          package="CWSTemplates")
  bookdown::pdf_document2(...,
                          citation_package = 'biblatex',
                          template = template
  )
}

#' @rdname letter
#' @export
slides <- function(...) {
  binb::monash(...)
}

