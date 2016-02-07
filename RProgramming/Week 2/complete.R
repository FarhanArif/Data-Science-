complete <- function (directory, id = 1:332)
{
  
  filelist <- list.files("specdata", full.names = TRUE)
  result <- data.frame(id = integer(), nobs = integer(), stringsAsFactors=FALSE)
  
  for ( i in id )
  {
    filedata <- read.csv(filelist[i])
    cleanvalues <- filedata[!is.na(filedata$sulfate) & !is.na(filedata$nitrate) & !is.na(filedata$Date),]
    subresult <- c(i,dim.data.frame(cleanvalues)[1])
    result <- rbind( result, subresult)
  }
  
  colnames(result)[1] <- "id"
  colnames(result)[2] <- "nobs"
  
  result
}
