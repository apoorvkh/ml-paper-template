# Run the pdf to jpg. Can't do full pdf since it'll overlap

# 0. Risk it all : Copy everything from the 
cp -f CVPR-2024-main/cvpr.sty ml-paper-template/_packages.tex
# 1. Render the pdf from the original and the latex template
cd CVPR-2024-main; latexmk -pdf main.tex
cd ../ml-paper-template; latexmk -pdf main.tex
cd ..

# 2. Convert the pdf to the ppm
# CVPR Main template
pdftoppm -jpeg -r 300 CVPR-2024-main/main.pdf output
# Latex Template
pdftoppm -jpeg -r 300 ml-paper-template/main.pdf output_temp

# Compare
for i in `seq 1 5`; do ./magick compare output-$i.jpg output_temp-$i.jpg diff_$i.jpg; done

# # Remove the image from the pdf, leaving only the diff
# rm -f output*