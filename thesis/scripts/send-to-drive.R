# uncomment run the line below if googledrive package is not installed
# install.packages("googledrive")

#---- render your chapter as a Word document
rmarkdown::render(
  "01-chapter1.Rmd",
  output_format = "word_document")

#---- run this next part only once
file <- googledrive::drive_upload(
  "01-chapter1.docx", 
  type = "document")

# get the file id (copy this to your clipboard)
file$id

#----

# paste file id, run this next part every time you want to push a new version to Google Drive
id <- "pasted File Id"
googledrive::drive_update(
  googledrive::as_id(id), 
  "01-chapter1.docx")