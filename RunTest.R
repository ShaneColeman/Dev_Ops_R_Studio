install.packages("RUnit")

library("RUnit")

source("Calculator.R")

test.suite <- defineTestSuite("UnitTests", dirs = file.path("Tests"),
                              testFileRegexp = "\\.R")

test.result <- runTestSuite(test.suite)

printTextProtocol(test.result)
