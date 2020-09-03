# docker-r-myproject

Reproducible research add Rmarkdown to Docker
 
## Procedure
 
### Build the image
 
'docker login' - to autenticate
 
'docker build -t <Docker_Image_Name> .' - to build image

### run container

docker run -it --rm -v <local output folder path> :/output <Docker_Image_Name>

###

