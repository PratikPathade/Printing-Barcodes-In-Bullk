# Load necessary library
library(dplyr)



############# For Printing barcodes ############################################


df=read.csv("IGIB/Barcodes_FIles/Day_3_IICB_Raw.csv")

  
  


##################### Codes ####################################################
new_df <- data.frame()

# Function to generate the sequence of IDs
generate_ids <- function(lab_id, test_id) {
  c(
    lab_id,
    paste0(test_id, "A"), 
    paste0(test_id, "A"), 
    paste0(test_id, "A"), 
    paste0(lab_id),
    paste0(test_id, "A"), 
    paste0(test_id, "A"), 
    paste0(test_id, "A"), 
    paste0(test_id, "A"), 
    paste0(test_id, "B"), 
    paste0(test_id, "C"),
    paste0(test_id, "D"), 
    paste0(test_id, "E"), 
    paste0(test_id, "F"), 
    paste0(test_id, "G"), 
    paste0(test_id, "H"), 
    paste0(test_id, "I"), 
    paste0(test_id, "J"), 
    paste0(test_id, "K"), 
    paste0(test_id, "L"), 
    paste0(test_id, "M"), 
    paste0(test_id, "N"), 
    paste0(lab_id),
    paste0(test_id, "A"),
    paste0(test_id, "A"), 
    paste0(test_id, "B"), 
    paste0(test_id, "C"), 
    paste0(test_id, "D"), 
    paste0(test_id, "E"), 
    paste0(test_id, "F"), 
    paste0(test_id, "G"), 
    paste0(test_id, "H"), 
    paste0(test_id, "I"), 
    paste0(test_id, "J"), 
    paste0(test_id, "K"), 
    paste0(test_id, "L"), 
    paste0(test_id, "M"), 
    paste0(test_id, "N"), 
    paste0(lab_id),
    paste0(test_id, "A")
  )
}

# Loop to generate the new rows
for (i in 1:nrow(df)) {
  lab_id <- df$Lab_ID[i]
  test_id <- df$Test_ids[i]
  
  # Generate the additional rows
  additional_rows <- data.frame(
    Lab_ID = lab_id,
    IDs = generate_ids(lab_id, test_id)
  )
  
  # Append the new rows to new_df
  new_df <- rbind(new_df, additional_rows)
}

# Print the new data frame
# print(new_df)
# View(new_df)
new_df$Lab_ID=NULL
write.csv(new_df,"IGIB/Barcodes_FIles/Day_3_IICB_Multiple.csv",row.names = F)



