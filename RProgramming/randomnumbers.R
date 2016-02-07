randomnnumbers <- function(x)
{
  out <- rnorm(x)
  print(out)
}

looptest <- function(x)
{
  for (i in seq_along(x))
  {
    if (x[i]>2) {print("Yes")} else {print("No")}
  }
}



func <- function(x) 
{
  g <- function(y) 
  {
    y + z
  }
  z <- 4
  x + g(x)
}


x <- 5
y <- if(x < 3)  {  NA  } else {  10  }