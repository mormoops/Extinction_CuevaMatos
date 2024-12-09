## Cueva Matos Vertebrate Chronology & Extinction ##
## Script: Angelo Soto-Centeno, AMNH
## Date: 9 Dec 2024

#############################################
## CRWIM Extinction (or Arrival) estimates ##
#############################################

# source: Herrando-Pérez, S., and F. Saltré. 2024. Estimating extinction time using radiocarbon dates. Quaternary Geochronology 79:101489.
# Notes: CRIWM, a method for estimating extinction (and arrival) time from time series of 14C dates while accounting for probability density 
  # functions (PDF) deriving from 14C calibration.
# Needs: data.frame organized by species with radiocarbon dates and error

# get library
library(Rextinct)

# read data
getwd()
setwd("SET/DIRECTORY")

# CRWIM analysis of extinction
# CRIWM extinction time assuming all dates are calibrated radiocarbon (radiocarbon = "all")
# must have at least 5 radiocarbon dates
  
  ## for Monophyllus plethodon 
  ## note: must be in the directory of the data.txt OR use full path

criwm(chrono_data = "mple.txt", calibra = FALSE)

# M plethodon results
########CRIWM-extinction analysis ended / Time =  Fri Jan 26 17:07:49 2024 

# $criwm_arguments
# argument    value
# 1 chrono_data mple.txt
# 2     calibra    FALSE
# 
# $calibration_BP
# cal.age cal.sd        type
# 1:    2460     30 radiocarbon
# 2:    2570     30 radiocarbon
# 3:    3760     30 radiocarbon
# 4:    4470     30 radiocarbon
# 5:    4490     30 radiocarbon
# 
# $criwm
#                     2.5CI median 97.5CI
# Extinction_Time_BCE   -95    155    451
# Extinction_Time_BP   1855   2105   2401
# Extinction_Time_BCY  1929   2179   2475

  
  ## for Phyllonycteris major 
  ## note: must be in the directory of the data.txt OR use full path

criwm(chrono_data = "pmaj.txt", calibra = FALSE)

# P major results
########CRIWM-extinction analysis ended / Time =  Fri Jan 26 17:09:41 2024 

# $criwm_arguments
# argument    value
# 1 chrono_data pmaj.txt
# 2     calibra    FALSE
# 
# $calibration_BP
# cal.age cal.sd        type
# 1:    2460     30 radiocarbon
# 2:    2570     30 radiocarbon
# 3:    3760     30 radiocarbon
# 4:    4150     30 radiocarbon
# 5:    4470     30 radiocarbon
# 
# $criwm
#                     2.5CI median 97.5CI
# Extinction_Time_BCE   -87    158    451
# Extinction_Time_BP   1863   2108   2401
# Extinction_Time_BCY  1937   2182   2475