pollutantmean <- function (directory, pollutant, id = 1:332)
{

  filelist <- list.files("specdata", full.names = TRUE)
  meanlist <- c()

  for ( i in id )
  {
    filedata <- read.csv(filelist[i])
    cleanvalues <- filedata[!is.na(filedata[pollutant]),pollutant]
    meanlist <- c(meanlist,cleanvalues)
  }
  
  round(mean(meanlist),3)
  
}