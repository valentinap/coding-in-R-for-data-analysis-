# xlsxinstall.packages("xlsx")library(xlsx)df_excel <- read.xlsx("df5.xlsx", sheetIndex = 1)df_excel_second_sheet <- read.xlsx("df5.xlsx", sheetName = "Sheet2")

# export a file to xlsx formatwrite.xlsx(iris, "iris.xlsx")

