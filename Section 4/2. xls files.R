# xlsxinstall.packages("xlsx")library(xlsx)df_excel <- read.xlsx("df5.xlsx", sheetIndex = 1)df_excel_second_sheet <- read.xlsx("df5.xlsx", sheetName = "Sheet2")

# export a file to xlsx formatwrite.xlsx(iris, "iris.xlsx")

# in case of problemslibrary(openxlsx)df_excel2 <- read.xlsx("~/df5.xlsx", sheet = 1)library(rio)df_excel3 <- import("~/df5.xlsx")export(df_excel3, "~/df_new.xlsx")