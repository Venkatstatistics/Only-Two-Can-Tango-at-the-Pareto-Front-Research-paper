# Dummy code for preparation





# # Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
# data <- data.frame(
#   row.names = c("Model 1", "Model 2", "Model 3", "Model 4"),
#   NRMSE = rep(0.05,4),
#   Decomp_RSSD = c(0.32,0.23,0.21,0.26),
#   KL_Div_Base = c(0.013,0.043,0.019,NA), # Missing values as NA
#   KL_Div_Target = c(0.011, 0.005, 0.010, 0.006),
#   MAPE = c(5,5.2,5.4,5.1)/100
# )
# 
# # Normalize the data
# max_vals <- c(1,1,1,1,1)  # Set realistic max values for scaling
# min_vals <- c(0, 0, 0, 0, 0)            # Set minimum values for all metrics
# 
# # Combine max, min, and actual data
# normalized_data <- rbind(max_vals, min_vals, data)
# 
# # Spider Chart
# colors <- c("red", "blue", "green", "orange")  # Colors for each model
# radarchart(
#   normalized_data,
#   axistype = 1,          # Type of axes
#   seg = 5,               # Number of axis segments
#   pcol = colors,         # Colors for lines
#   plwd = 2,              # Line widths
#   plty = 1,              # Line types
#   cglcol = "grey",       # Grid color
#   cglty = 1,             # Grid line type
#   axislabcol = "black",  # Axis label color
#   vlcex = 0.8,           # Label text size
#   caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),  # Custom axis labels
#   title = "Spider Chart: NRMSE, Decomp.RSSD, KL Divergence, MAPE"
# )
# 
# # Add legend
# legend("topright", legend = rownames(data), col = colors, lwd = 2, bty = "n")


# Table 1
# Load required package
if(!require(fmsb)) install.packages("fmsb")
library(fmsb)

# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("Model 1", "Model 2", "Model 3", "Model 4"),
  NRMSE = rep(0.05,4),
  Decomp_RSSD = c(0.32,0.23,0.21,0.26),
  KL_Div_Base = c(0.013,0.043,0.019,NA), # Missing values as NA
  KL_Div_Target = c(0.011, 0.005, 0.010, 0.006),
  MAPE = c(5,5.2,5.4,5.1)/100
)

# Normalize the data
max_vals <- c(1,1,1,1,1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,          # Type of axes
  seg = 5,               # Number of axis segments
  pcol = colors,         # Colors for lines
  plwd = 2,              # Line widths
  plty = 1,              # Line types
  cglcol = "grey",       # Grid color
  cglty = 1,             # Grid line type
  axislabcol = "black",  # Axis label color
  vlcex = 0.8,           # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),  # Custom axis labels
  title = "Spider Chart: NRMSE, Decomp.RSSD, KL Divergence, MAPE"
)

# Add legend
legend("topright", legend = rownames(data), col = colors, lwd = 2, bty = "n")

# Table 2 now
# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("Model 1", "Model 2", "Model 3", "Model 4"),
  NRMSE = c(0.05, 0.05, 0.05, 0.05),
  Decomp_RSSD = c(0.41,0.43,0.39,0.36),
  KL_Div_Base = c(NA,NA,NA,NA), # Missing values as NA
  KL_Div_Target = c(0.003, 0.004, 0.004, 0.005),
  MAPE = c(5.6, 5.5, 5.3, 5.3)/100
)

# Normalize the data
max_vals <- c(1,1,1,1,1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,          # Type of axes
  seg = 5,               # Number of axis segments
  pcol = colors,         # Colors for lines
  plwd = 2,              # Line widths
  plty = 1,              # Line types
  cglcol = "grey",       # Grid color
  cglty = 1,             # Grid line type
  axislabcol = "black",  # Axis label color
  vlcex = 0.8,           # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),  # Custom axis labels
  title = "Spider Chart: NRMSE, Decomp.RSSD, KL Divergence, MAPE"
)

# Add legend
legend("topright", legend = rownames(data), col = colors, lwd = 2, bty = "n")
# 
# Tablw 3 now

# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("Model 1", "Model 2", "Model 3", "Model 4"),
  NRMSE = c(0.05, 0.05, 0.05, 0.05),
  Decomp_RSSD = c(0.22,0.23,0.24,0.24),
  KL_Div_Base = c(NA,0.001,0.028,0.008), # Missing values as NA
  KL_Div_Target = c(0.008, 0.008, 0.005, 0.006),
  MAPE = c(5.6, 5.5, 5.3, 5.3)/100
)

# Normalize the data
max_vals <- c(1,1,1,1,1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,          # Type of axes
  seg = 5,               # Number of axis segments
  pcol = colors,         # Colors for lines
  plwd = 2,              # Line widths
  plty = 1,              # Line types
  cglcol = "grey",       # Grid color
  cglty = 1,             # Grid line type
  axislabcol = "black",  # Axis label color
  vlcex = 0.8,           # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),  # Custom axis labels
  title = "Spider Chart: NRMSE, Decomp.RSSD, KL Divergence, MAPE"
)

# Add legend
legend("topright", legend = rownames(data), col = colors, lwd = 2, bty = "n")


# Table 4
# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("Model 1", "Model 2", "Model 3", "Model 4"),
  NRMSE = c(0.05, 0.05, 0.05, 0.05),
  Decomp_RSSD = c(0.43,0.40,0.45,0.39),
  KL_Div_Base = c(NA,NA,NA,NA), # Missing values as NA
  KL_Div_Target = c(0.005, 0.004, 0.003, 0.014),
  MAPE = c(4.9,4.8,4.8,4.9)/100
)

# Normalize the data
max_vals <- c(1,1,1,1,1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,          # Type of axes
  seg = 5,               # Number of axis segments
  pcol = colors,         # Colors for lines
  plwd = 2,              # Line widths
  plty = 1,              # Line types
  cglcol = "grey",       # Grid color
  cglty = 1,             # Grid line type
  axislabcol = "black",  # Axis label color
  vlcex = 0.8,           # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),  # Custom axis labels
  title = "Spider Chart: NRMSE, Decomp.RSSD, KL Divergence, MAPE"
)

# Add legend
legend("topright", legend = rownames(data), col = colors, lwd = 2, bty = "n")


# Table 5

# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("Model 1", "Model 2", "Model 3", "Model 4"),
  NRMSE = c(0.05, 0.05, 0.05, 0.05),
  Decomp_RSSD = c(0.59,0.48,0.58,0.50),
  KL_Div_Base = c(NA,0.025,NA,NA), # Missing values as NA
  KL_Div_Target = c(0.005, 0.004, 0.004, 0.005),
  MAPE = c(5.1,5.0,5.0,4.9)/100
)

# Normalize the data
max_vals <- c(1,1,1,1,1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,          # Type of axes
  seg = 5,               # Number of axis segments
  pcol = colors,         # Colors for lines
  plwd = 2,              # Line widths
  plty = 1,              # Line types
  cglcol = "grey",       # Grid color
  cglty = 1,             # Grid line type
  axislabcol = "black",  # Axis label color
  vlcex = 0.8,           # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),  # Custom axis labels
  title = "Spider Chart: NRMSE, Decomp.RSSD, KL Divergence, MAPE"
)

# Add legend
legend("topright", legend = rownames(data), col = colors, lwd = 2, bty = "n")

 
# Table 6
# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("Model 1", "Model 2", "Model 3", "Model 4"),
  NRMSE = c(0.05, 0.05, 0.05, 0.05),
  Decomp_RSSD = c(0.27,0.28,0.24,0.27),
  KL_Div_Base = c(0.025,0.001,0.005,NA), # Missing values as NA
  KL_Div_Target = c(0.009, 0.05, 0.006, 0.006),
  MAPE = c(5.6,5.3,5.6,5.4)/100
)

# Normalize the data
max_vals <- c(1,1,1,1,1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,          # Type of axes
  seg = 5,               # Number of axis segments
  pcol = colors,         # Colors for lines
  plwd = 2,              # Line widths
  plty = 1,              # Line types
  cglcol = "grey",       # Grid color
  cglty = 1,             # Grid line type
  axislabcol = "black",  # Axis label color
  vlcex = 0.8,           # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),  # Custom axis labels
  title = "Spider Chart: NRMSE, Decomp.RSSD, KL Divergence, MAPE"
)

# Add legend
legend("topright", legend = rownames(data), col = colors, lwd = 2, bty = "n")

# Table 7

# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("Model 1", "Model 2", "Model 3", "Model 4"),
  NRMSE = c(0.05, 0.05, 0.05, 0.05),
  Decomp_RSSD = c(0.45,0.62,0.62,0.46),
  KL_Div_Base = c(NA,NA,NA,0.021), # Missing values as NA
  KL_Div_Target = c(0.004, 0.005, 0.004, 0.003),
  MAPE = c(4.9,4.9,4.8,4.8)/100
)

# Normalize the data
max_vals <- c(1,1,1,1,1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,          # Type of axes
  seg = 5,               # Number of axis segments
  pcol = colors,         # Colors for lines
  plwd = 2,              # Line widths
  plty = 1,              # Line types
  cglcol = "grey",       # Grid color
  cglty = 1,             # Grid line type
  axislabcol = "black",  # Axis label color
  vlcex = 0.8,           # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),  # Custom axis labels
  title = "Spider Chart: NRMSE, Decomp.RSSD, KL Divergence, MAPE"
)

# Add legend
legend("topright", legend = rownames(data), col = colors, lwd = 2, bty = "n")

# Table 8

# Load required package
if(!require(fmsb)) install.packages("fmsb")
library(fmsb)

# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("Model 1", "Model 2", "Model 3", "Model 4"),
  NRMSE = rep(0.03,4),
  Decomp_RSSD = c(0.59,0.56,0.57,0.51),
  KL_Div_Base = c(NA,NA,NA,0.021), # Missing values as NA
  KL_Div_Target = c(0.004, 0.003, 0.004, 0.003),
  MAPE = c(3.5,3.6,3.6,3.7)/100
)

# Normalize the data
max_vals <- c(1,1,1,1,1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,          # Type of axes
  seg = 5,               # Number of axis segments
  pcol = colors,         # Colors for lines
  plwd = 2,              # Line widths
  plty = 1,              # Line types
  cglcol = "grey",       # Grid color
  cglty = 1,             # Grid line type
  axislabcol = "black",  # Axis label color
  vlcex = 0.8,           # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),  # Custom axis labels
  title = "Spider Chart: NRMSE, Decomp.RSSD, KL Divergence, MAPE"
)

# Add legend
legend("topright", legend = rownames(data), col = colors, lwd = 2, bty = "n")