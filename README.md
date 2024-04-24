# LaTex Pipeline Conversion

## Initial Report 

Comparison : Running the `latexmk -pdf main.tex` from both ml-paper-template and CVPR-2024-main, then compare the difference between both. For the initial try, the result goes as follow
1. The number of line is wrong : Instead of starting on the first line in the abstract like the main CVPR, the 
template starts from the first line, or the title. 
2. The space is different
3. There is no indent before the start of the paragraph
4. Different font in the link

## Solutions 

## Wed Apr 3
- Current Solution : 
cvpr temp --pdftoppm--> bunch of jpg --> Compare page by page, return for each page
latex temp --pdftoppm--> bunch of jpg /
- Drawbacks :
    - Too Strict? ==> Maybe we could use the aclpubcheck-ish? but we'll kinda need manual work for the future update
    - Make sure that both have the same settings : Paper ID are the same

- Github Actions (Automatic) :
    - Can find the latexmk on the Github Action instead of "load" of the texlive
    - How to make a repo that contains a payload. 