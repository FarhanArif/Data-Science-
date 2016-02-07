corr <- function (directory, threshold = 0)
{
  filelist <- list.files("specdata", full.names = TRUE)
  
  complete_files <- complete("specdata", 1:332)
  complete_file_ids <- complete_files[1][complete_files[2] > threshold]
  len <- length(complete_file_ids)
  correlation <- rep(is.numeric(0), len)
  index <- 1
  
  for ( i in complete_file_ids )
  {
    filedata <- read.csv(filelist[i])
    correlation[index] <- as.numeric(cor(filedata$sulfate,filedata$nitrate, use="complete.obs"))
    index <- index + 1
  }
  correlation
}