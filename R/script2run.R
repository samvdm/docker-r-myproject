# R script intended to be run when container starts

#render document from R markdown

rmarkdown::render("/markdown/report.Rmd", output_dir = "/output")