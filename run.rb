require 'pdftoimage'
images = PDFToImage.open('test.pdf')
images.each do |img|
  img.save("output/page-#{img.page}.jpg")
end
