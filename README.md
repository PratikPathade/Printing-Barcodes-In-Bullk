# Generating Barcodes In a Bulk



To Generate Barcodes we use a Python script named “Barcode_Generator.ipynb” and to generate Test IDs we use an R script named “Barcode Codes.R”

## Steps:
First, we have to create a .csv file which should include the Lab_ID and Test_ids which we have to print and the column names should be the same as “ Lab_ID” and “Test_ids”.
After creating .csv file we have to open R script in R-studio and load the .cvs file, change the name of the Input and Output files, the path is already set. After changing the name of files run the script.
Example:-
Input file: Line 9
df=read.csv("/Path/to/file/Day_3_IICB_Raw.csv")
:- Change the file “Day_3_IICB_Raw.csv” to the name of the file which you created.
Output File: line 83
write.csv(new_df,"Path/to/file/Day_3_IICB_Multiple.csv",row.names = F)
:-Change the file “Day_3_IICB_Multiple.csv” to the according to institute name and day.
After creating the Test IDs next step is to print barcodes and for that we have to run the python script. Python scripts we have to change the name of  Input and Output Files.
Example:
Input File: Line 50
generate_barcodes_from_csv('/Path/to/file/Day_3_IICB_Multiple.csv', output_pdf)
:- Change the file “Day_3_IICB_Multiple.csv”. Give the same name which you gave for the output file of R script.


Output File: Line 49
output_pdf = '/Path/to/file/Day_3_IICB.pdf'  
Change the name of the pdf file.
After getting pdf file we have to open it in a Adobe reader and press ctrl+P and set the width and height of the page, go to the properties and and set height 5.2 inch and width 4.73 inch. Press ok and then select page scaling to the  “Fit To Print Margins” and Zoom supposed to be “139%” and print the page.
We will get the prints of all the Test Ids which we gave in the first input .csv file. 


To change the barcode alignment (If required)
To changing the barcode alignment we have to make change in the python script only.
#To move barcode in a right or left direction of the page 
x_start = (page_width - (4 * barcode_width + x_spacing)) / 2 - 0.30*cm     #### Line23
To move the barcode towards the right side reduce the - 0.30*cm, if we use -25*cm it will move to right side and to move towards left side we have to increase the value like -0.35*cm it will move barcode towards the left

#To move barcodes upward and downward of the page 
y_start = 8.6*cm               ### Line 32
To move the barcode towards the upside increase the 8.6*cm, if we use 9*cm it will move to upside and to move down side we have to decrease the value 8*cm it will move barcode towards the downside.












