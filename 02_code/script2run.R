# R script intended to be run when container starts

#render document from R markdown

rmarkdown::render("/01_data/gapminder_example.Rmd", output_dir = "/03_output")