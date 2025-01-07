# Codes for the optimisation paper, making comprisons of number of objectives
# We have to be careful about the names of Models. Model 1 in 2-way is always the same
# Model 2 in 3-way or 4-way can change, depending on the metric being used to make the plot


# Spider PLot for NRMSE
# Load required package
if (!require(fmsb))
  install.packages("fmsb")
library(fmsb)

# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("2 Way", "3 Way", "4 Way"),
  NRMSE = c(0.04986434, 0.048777706, 0.048805045),
  Decomp_RSSD = c(0.264141379, 0.433198679, 0.582760524),
  # KL_Div_Base = c(0.013,0.043,0.019,NA), # Missing values as NA
  KL_Div_Target = c(0.006, 0.004, 0.004),
  MAPE = c(5.1, 4.9, 5) / 100
)

# Normalize the data
max_vals <- c(1, 1, 1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,
  # Type of axes
  seg = 5,
  # Number of axis segments
  pcol = colors,
  # Colors for lines
  plwd = 2,
  # Line widths
  plty = 1.2,
  # Line types
  cglcol = "grey",
  # Grid color
  cglty = 1,
  # Grid line type
  axislabcol = "black",
  # Axis label color
  vlcex = 0.8,
  # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),
  # Custom axis labels
  title = "Spider Chart: NRMSE ordering"
)

# Add legend
# legend(
#   "topright",
#   legend = rownames(data),
#   col = colors,
#   lwd = 2,
#   bty = "n"
# )
data_nrmse <- data

#Now, we order based on Decomp.RSSD
# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("2 Way", "3 Way", "4 Way"),
  NRMSE = c(0.051630632, 0.048933884, 0.052),
  Decomp_RSSD = c(0.20932316, 0.22, 0.239),
  # KL_Div_Base = c(0.013,0.043,0.019,NA), # Missing values as NA
  KL_Div_Target = c(0.010, 0.005, 0.004),
  MAPE = c(5.4, 5.6, 5.6) / 100
)

# Normalize the data
max_vals <- c(1, 1, 1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,
  # Type of axes
  seg = 5,
  # Number of axis segments
  pcol = colors,
  # Colors for lines
  plwd = 2,
  # Line widths
  plty = 1,
  # Line types
  cglcol = "grey",
  # Grid color
  cglty = 1,
  # Grid line type
  axislabcol = "black",
  # Axis label color
  vlcex = 0.8,
  # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),
  # Custom axis labels
  title = "Spider Chart: Decomp ordering"
)

# # Add legend
# legend(
#   "topright",
#   legend = rownames(data),
#   col = colors,
#   lwd = 2,
#   bty = "n"
# )
data_decomp <- data


#Now, we order based on MAPE
# Data Preparation: Include missing values as NA for KL Divergence (Observed as Base)
data <- data.frame(
  row.names = c("2 Way", "3 Way", "4 Way"),
  NRMSE = c(0.049374546, 0.049392159, 0.049020943),
  Decomp_RSSD = c(0.315256669 , 0.449288193 , 0.619),
  # KL_Div_Base = c(0.013,0.043,0.019,NA), # Missing values as NA
  KL_Div_Target = c(0.011, 0.003, 0.003),
  MAPE = c(0.05, 0.048033288, 0.048006463)
)

# Normalize the data
max_vals <- c(1, 1, 1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,
  # Type of axes
  seg = 5,
  # Number of axis segments
  pcol = colors,
  # Colors for lines
  plwd = 2,
  # Line widths
  plty = 1,
  # Line types
  cglcol = "grey",
  # Grid color
  cglty = 1,
  # Grid line type
  axislabcol = "black",
  # Axis label color
  vlcex = 0.8,
  # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),
  # Custom axis labels
  title = "Spider Chart: MAPE ordering"
)

# # Add legend
# legend(
#   "topright",
#   legend = rownames(data),
#   col = colors,
#   lwd = 2,
#   bty = "n"
# )
data_mape <- data



# Now for KL Divergence
data <- data.frame(
  row.names = c("2 Way", "3 Way", "4 Way"),
  NRMSE = c(0.05, 0.049392159, 0.03),
  Decomp_RSSD = c(0.23 , 0.449288193 , 0.56),
  # KL_Div_Base = c(0.013,0.043,0.019,NA), # Missing values as NA
  KL_Div_Target = c(0.005, 0.003, 0.003),
  MAPE = c(0.05, 0.048033288, 0.036)
)

# Normalize the data
max_vals <- c(1, 1, 1)  # Set realistic max values for scaling
min_vals <- c(0, 0, 0)            # Set minimum values for all metrics

# Combine max, min, and actual data
normalized_data <- rbind(max_vals, min_vals, data)

# Spider Chart
colors <- c("red", "blue", "green", "orange")  # Colors for each model
radarchart(
  normalized_data,
  axistype = 1,
  # Type of axes
  seg = 5,
  # Number of axis segments
  pcol = colors,
  # Colors for lines
  plwd = 2,
  # Line widths
  plty = 1,
  # Line types
  cglcol = "grey",
  # Grid color
  cglty = 1,
  # Grid line type
  axislabcol = "black",
  # Axis label color
  vlcex = 0.8,
  # Label text size
  caxislabels = c("0", "0.20", "0.40", "0.60", "0.80", "1.00"),
  # Custom axis labels
  title = "Spider Chart: KL Divergence ordering"
)

# Add legend
# legend(
#   "topright",
#   legend = rownames(data),
#   col = colors,
#   lwd = 2,
#   bty = "n"
# )
data_kl_div <- data