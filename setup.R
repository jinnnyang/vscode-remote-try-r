# Project dependencies
# Core packages for R Shiny development
packages <- c(
  "shiny",           # Shiny web application framework
  "tidyverse",       # Data science toolkit
  "ggplot2",         # Data visualization
  "dplyr",           # Data manipulation
  "shinydashboard",  # Dashboard components
  "vscDebugger"      # R debugging support
)

# Install packages with Chinese mirror for faster download
options(repos = c(CRAN = "https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))

# Install packages
install.packages(packages, dependencies = TRUE)

# Print installation status
cat("R packages installation completed!\n")
cat("Installed packages:", paste(packages, collapse = ", "), "\n")