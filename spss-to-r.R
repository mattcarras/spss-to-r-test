## Author: Matthew Carras
## Quick example script that loads in SPSS .SAV data using library(foreign), allowing the data to be plotted, manipulated,
## and transformed using R.
## Date Created: 06-05-2018

library(foreign)

## Let the user pick the file to load.
filename = file.choose()

if ( is.null(filename) || nchar(filename) < 1 ) { 
  stop("A valid SPSS .SAV file is required.")
}

## Read into a R data frame.
message( paste("Loading ", filename ) )
dataset = read.spss(filename, to.data.frame=TRUE)

## Check validity.
if ( !is.data.frame(dataset) || nrow(dataset) < 1 ) { 
  stop( paste("Loading ", filename, " resulted in an invalid or empty data frame. Is this a valid SPSS .SAV file?") )
} else {
  ## Print dataset.
  dataset
}
