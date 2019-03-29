#condition of walls (36a, 37a, d1, d3, d12)
#Anayeli Ochoa

# Select the 1996 .csv file, save it:
my.file <- file.choose()
# Read in data only (no headers -- skip the first two rows):
nych1996 <- read.csv(my.file, skip = 2, header = FALSE, stringsAsFactors = FALSE)
# Read in data (with both rows of headers), temporary data frame:
tmp <- read.csv(my.file, header = TRUE, stringsAsFactors = FALSE)
# Use headers from tmp for nych17:
names(nych1996) <- names(tmp)
# Remove the temporary data frame:
rm(tmp)
#print data nych1996
nych1996

#condition of walls (36a, 37a, d1, d3, d12)

nych1996$X_36a <- replace(nych1996$X_36a, nych1996$X_36a==0, 2)
nych1996$X_36a <- replace(nych1996$X_36a, nych1996$X_36a==1, 0)
nych1996$X_36a <- replace(nych1996$X_36a, nych1996$X_36a==8, 0)
nych1996$X_36a

nych1996$X_37a <- replace(nych1996$X_37a, nych1996$X_37a==0, 0)
nych1996$X_37a <- replace(nych1996$X_37a, nych1996$X_37a==1, 2)
nych1996$X_37a <- replace(nych1996$X_37a, nych1996$X_37a==8, 0)

nych1996$X_d1 <- replace(nych1996$X_d1, nych1996$X_d1 == 1,  2)
nych1996$X_d1 <- replace(nych1996$X_d1, nych1996$X_d1 == 8,  0)
nych1996$X_d1 <- replace(nych1996$X_d1, nych1996$X_d1 == 9,  0)
nych1996$X_d1

nych1996$X_d3 <- replace(nych1996$X_d3, nych1996$X_d3 == 1,  2)
nych1996$X_d3 <- replace(nych1996$X_d3, nych1996$X_d3 == 8,  0)
nych1996$X_d3 <- replace(nych1996$X_d3, nych1996$X_d3 == 9,  0)
nych1996$X_d3

nych1996 <- mutate(.data = nych1996, X_d12 = 0)

# condition wal data all togather
                                                        
condition_wall <- nych1996[c("X_36a","X_37a", "X_d1", "X_d3", "X_d12")]
rowSums(condition_wall)
#-----------------------------------------------------------------------
#Condition of floors (g1, g2, g3, g4, g5)
nych1996$X_g1 <- replace(nych1996$X_g1, nych1996$X_g1==1, 2)
nych1996$X_g1 <- replace(nych1996$X_g1, nych1996$X_g1==8, 0)
nych1996$X_g1 <- replace(nych1996$X_g1, nych1996$X_g1==9, 0)
nych1996$X_g1

nych1996$X_g2 <- replace(nych1996$X_g2, nych1996$X_g2==1, 2)
nych1996$X_g2 <- replace(nych1996$X_g2, nych1996$X_g2==8, 0)
nych1996$X_g2 <- replace(nych1996$X_g2, nych1996$X_g2==9, 0)
nych1996$X_g2

nych1996$X_g3 <- replace(nych1996$X_g3, nych1996$X_g3==1, 2)
nych1996$X_g3 <- replace(nych1996$X_g3, nych1996$X_g3==8, 0)
nych1996$X_g3 <- replace(nych1996$X_g3, nych1996$X_g3==9, 0)
nych1996$X_g3

nych1996$X_g4 <- replace(nych1996$X_g4, nych1996$X_g4==1, 2)
nych1996$X_g4 <- replace(nych1996$X_g4, nych1996$X_g4==8, 0)
nych1996$X_g4 <- replace(nych1996$X_g4, nych1996$X_g4==9, 0)
nych1996$X_g4

nych1996$X_g5 <- replace(nych1996$X_g5, nych1996$X_g5==1, 2)
nych1996$X_g5 <- replace(nych1996$X_g5, nych1996$X_g5==8, 0)
nych1996$X_g5 <- replace(nych1996$X_g5, nych1996$X_g5==9, 0)
nych1996$X_g5

condition_floors <- nych1996[c("X_g1","X_g2", "X_g3", "X_g4", "X_g5")]
rowSums(condition_floors)

#--------------------------------------------------------------
#Condition of Windows (e1, e2, e3, e4)

nych1996$X_e1 <- replace(nych1996$X_e1, nych1996$X_e1==1, 2)
nych1996$X_e1 <- replace(nych1996$X_e1, nych1996$X_e1==8, 0)
nych1996$X_e1 <- replace(nych1996$X_e1, nych1996$X_e1==9, 0)
nych1996$X_e1

nych1996$X_e2 <- replace(nych1996$X_e2, nych1996$X_e2==1, 2)
nych1996$X_e2 <- replace(nych1996$X_e2, nych1996$X_e2==8, 0)
nych1996$X_e2 <- replace(nych1996$X_e2, nych1996$X_e2==9, 0)
nych1996$X_e2

nych1996$X_e3 <- replace(nych1996$X_e3, nych1996$X_e3==1, 2)
nych1996$X_e3 <- replace(nych1996$X_e3, nych1996$X_e3==8, 0)
nych1996$X_e3 <- replace(nych1996$X_e3, nych1996$X_e3==9, 0)
nych1996$X_e3

nych1996$X_e4 <- replace(nych1996$X_e4, nych1996$X_e4==1, 2)
nych1996$X_e4 <- replace(nych1996$X_e4, nych1996$X_e4==8, 0)
nych1996$X_e4 <- replace(nych1996$X_e4, nych1996$X_e4==9, 0)
nych1996$X_e4