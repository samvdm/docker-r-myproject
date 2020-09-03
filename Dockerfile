# building docker image to use R-Studio in a browser

FROM docker-r-studio

LABEL maintainer='vladimir.zhbanko@gmail.com'

## create directories
RUN mkdir -p /data
RUN mkdir -p /R
RUN mkdir -p /markdown
RUN mkdir -p /output

## add specific files
COPY /markdown/report.Rmd /markdown/report.Rmd
COPY /data/combined.csv /data/combined.csv
COPY R/install_packages.R /R/install_packages.R

## copy working script
COPY /R/script2run.R /R/script2run.R

## run the script on running container
RUN Rscript /R/install_packages.R
#CMB bash #use this command to check if the files ar copied
CMD Rscript /R/script2run.R

## command to run this container
#docker run -it --rm -v /c/Users/samantha.vandermerwe/Documents/GitHub/docker-r-myproject/output:/output docker-r-myproject