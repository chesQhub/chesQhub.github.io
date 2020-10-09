iamz_exercise <- function() {
  # Vectors for the dataframe
  height <- rnorm(n = 100,   # Create a n values of a normal distribution
                  mean = 7,  # Mean of the normal distribution
                  sd = 1)    # Standard deviation
  weight <- rnorm(n = 100,
                  mean = 10,
                  sd = 3)
  moisture <- rnorm(n = 100,
                    mean = 0.2,
                    sd = 0.01)
  dry_weight <- weight * (1 - moisture)
  
  # Create a vector with 50 repetitions of Chesco, and 50 repetition of Miriam
  owner <- c(rep("Chesco", 50),
             rep("Miriam", 50))
  
  # New vector with 50 values of each normal distribution
  # First 50 values are rounded with round
  yield <- c(round(rnorm(50, 10, 4.5)),
             round(rnorm(50, 6, 1), 2)
             )
  
  rows <- ifelse(yield > 10, 2, 6)
  
  # Replace all values equal to 6 with string "wrong"
  yield[yield == 10] <- "wrong"
  
  # New dataset with vectors as columns
  datatest <- data.frame(height,
                         weight,
                         dry_weight,
                         owner,
                         yield,
                         rows)
  colnames(datatest) <- c("hEiiiGghT", "wWWEeiGhT", "dRyWeiigGHT",
                          "oWNEErr", "YiiEELldD", "RrrOOwwS")
  
  # Assign name at the dataset and save it in the environment
  assign(paste("exercise"),
         datatest,
         envir = .GlobalEnv)
}
