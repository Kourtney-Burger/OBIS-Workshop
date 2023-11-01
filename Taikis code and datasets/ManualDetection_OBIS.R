#Script for formatting manual detections/validations for OBIS
# This includes blues (Triton logs, hourly occurrence), fins, humpbacks 
# (Raven selection tables), grays (Raven selection tables, hourly presence), 
# and minkes (pamguard selections, individual calls)

#Packages


# Event sheet
# Event sheets can be reused from Taiki's script and PG detections

# Occurrence sheets
# Grey and humpback

  #read in 1 file
GHoccur <- read.table("ADRIFT_005.Table1.selections.txt", header = TRUE, sep = "\t", fill = TRUE)

  #read in list of files
GHfiles <- list.files("~/GitHub/OBIS-Workshop/Taikis code and datasets/Detection Logs")
GHoccur <- lapply(GHfiles, read.delim, colnames = TRUE, sep = '\t')
