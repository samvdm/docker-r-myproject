# building docker image to use R-Studio in a browser

FROM docker-r-studio

LABEL maintainer='vladimir.zhbanko@gmail.com'

## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## add specific files
COPY /01_data/gapminder_example.Rmd /01_data/gapminder_example.Rmd

## copy working script
COPY /02_code/script2run.R /02_code/script2run.R

## run the script on running container
#CMB bash #use this command to check if the files ar copied
CMD Rscript /02_code/script2run.R

## command to run this container
#docker run -it --rm -v /c/Users/samantha.vandermerwe/Documents/GitHub/docker-r-r/03_output:/03_output szambezi/docker-r-r