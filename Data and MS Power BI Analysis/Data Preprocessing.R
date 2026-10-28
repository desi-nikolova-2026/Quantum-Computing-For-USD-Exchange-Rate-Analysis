#install.packages("pak")
#pak::pak("tidyverse/readxl")

# Setting the local directory on the local machine:
setwd("~/GitHub/Quantum Computing for Credit Risk Analysis/Data")

# 2. Read the file and skip the header inserted by The World Bank (first 3 rows):
library(readxl)
xls_data_USD_exchange_rate_global <- read_excel("API_PA.NUS.FCRF_DS2_en_excel_v2_2539.xls", 
                                 sheet='Data',
                                 skip = 3)
xls_data_USD_exchange_rate_global

noquote(colnames(xls_data_USD_exchange_rate_global))# <- c("New_Name1", "New_Name2", "New_Name3")
column_names <- noquote(colnames(xls_data_USD_exchange_rate_global))
colnames(xls_data_USD_exchange_rate_global) <- column_names
# 3. TODO!!! - Add column names when exporting the excel file:

### the column names have a warning when opened in Excel 
### perhaps this can help : https://www.biostars.org/p/469010/


# 4. Save the Excel file that should be used in MS PowerBI:
library(writexl)
write_xlsx(xls_data_USD_exchange_rate_global, 'USD_exchange_rate_global.xlsx', col_names = TRUE)
file.exists('USD_exchange_rate_global.xlsx')
