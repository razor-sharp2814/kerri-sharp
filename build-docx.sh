#!/bin/sh
# Build kerri-sharp-cv.docx from index.html with pandoc, for job sites that read Word files
# more reliably than PDFs. The page's download links (class="downloads") are left out.
cd "$(dirname "$0")" || exit 1
sed '/class="downloads"/d' index.html |
  pandoc --from html --to docx --lua-filter docx.lua --output kerri-sharp-cv.docx
