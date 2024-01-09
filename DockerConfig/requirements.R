# try adding your required or favourite packages here
options(warn = 2)

install.packages("devtools", dependencies = TRUE)
devtools::install_github("cran/rgdal")
devtools::install_version("maptools", version = "1.1-8", repos = "http://cran.us.r-project.org")
#devtools::install_github('oswaldosantos/ggsn')
devtools::install_version("ggsn", version = "0.5.0", repos = "http://cran.us.r-project.org")
devtools::install_version("rgdal", version = "1.5-30", repos = "http://cran.us.r-project.org")
install.packages("bmstdr")
install.packages("ggplot2")
install.packages("tidyr")
install.packages("RColorBrewer")   
install.packages("akima")   
install.packages("broom")     
install.packages("doBy")   
install.packages("directlabels") 
install.packages("usmap")


#install.packages("renv", dependencies = TRUE)
#library(renv)
#renv::init(bare = TRUE)
#renv::install(packages = c('bmstdr@0.1.4', 'ggplot2@3.3.6', 'ggsn@0.5.0', 'tidyr@1.2.0', 'RColorBrewer@1.1-2', 'akima@0.6-3.3', 'rgdal@1.5-30', 'broom@0.8.0', 'doBy@4.6.13', 'directlabels@2021.1.13', 'usmap@0.6.0'))
#renv::snapshot()


#message("Installing renv...")

# Load renv and initialize
#library(renv)
#message("Initializing renv")
#tryCatch({
#  renv::init()
#  message("Successfully initialized renv")
#}, error = function(e) {
#  message(paste("Error in renv initialization:", e$message))
#})
#
# Install additional packages
#packages_to_install <- c('bmstdr@0.1.4', 'ggplot2@3.3.6', 'ggsn@0.5.0', 'tidyr@1.2.0', 'RColorBrewer@1.1-2', 'akima@0.6-3.3', 'rgdal@1.5-30', 'broom@0.8.0', 'doBy@4.6.13', 'directlabels@2021.1.13', 'usmap@0.6.0')
#for (pkg in packages_to_install) {
#  message(paste("Installing package:", pkg))
#  tryCatch({
#    renv::install(pkg)
#   message(paste("Successfully installed package:", pkg))
#  }, error = function(e) {
#    message(paste("Error installing package:", pkg, ":", e$message))
#  })
#}

# Take a snapshot of the environment
#message("Taking snapshot of the environment...")
#tryCatch({
#  renv::snapshot()
#  message("Successfully took snapshot of the environment")
#}, error = function(e) {
#  message(paste("Error taking snapshot of the environment:", e$message))
#})
