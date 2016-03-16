install.packages("RUnit")

library("RUnit")

source("Calculator.R")

test.suite <- defineTestSuite("Add Test", dirs = file.path("Tests"),
                              testFileRegexp = "^\\d+||.R")

test.result <- runTestSuite(test.suite)

printTextProtocol(test.result)