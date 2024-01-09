# Base image https://hub.docker.com/u/rocker/
FROM rocker/rstudio

# Install system dependencies for GDAL
# Install system dependencies for GDAL and other R packages
RUN apt-get update && apt-get install -y \
    libgdal-dev \
    libproj-dev \
    libcurl4-gnutls-dev \
    libssl-dev \
    libxml2-dev \
    libfontconfig1-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    libgit2-dev \
    libudunits2-dev \
    cmake \
    && rm -rf /var/lib/apt/lists/*

## Install extra R packages using requirements.R
## Specify requirements as R install commands e.g.
## 
## install.packages("<myfavouritepacakge>") or
## devtools::install("SymbolixAU/googleway")

## Copy requirements.R to container directory /tmp
COPY ./DockerConfig/requirements.R /tmp/requirements.R 
## install required libs on container
RUN Rscript /tmp/requirements.R

# create an R user
ENV USER rstudio

## Copy your working files over
## The $USER defaults to `rstudio` but you can change this at runtime
COPY ./figures /home/$USER/figures
COPY ./datafiles /home/$USER/datafiles
COPY ./mapfiles /home/$USER/mapfiles  
COPY ./bmstdr_docker.Rproj /home/$USER/bmstdr_docker.Rproj
COPY ./.git /home/$USER/.git
COPY .Rprofile .Rprofile
