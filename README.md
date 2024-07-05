# LaTex Pipeline Conversion

## Initial Report 

Comparison : Running the `latexmk -pdf main.tex` from both ml-paper-template and CVPR-2024-main, then compare the difference between both. For the initial try, the result goes as follow
1. The number of line is wrong : Instead of starting on the first line in the abstract like the main CVPR, the 
template starts from the first line, or the title. 
2. The space is different
3. There is no indent before the start of the paragraph
4. Different font in the link

## Usage:

## Development:
1. For each new conference, create the new branch representing that conference (may make the better approach when mass creating them later)
2. With that conference, create two following files under the folder .github/workflows
   - verification.yml : Writing the workflow that triggers the verify workflow from the main verify branch
   - info.yaml (should it be yml instead) : Writing the info about the location of the template folder (either in tar or zip format), and the name of the folder after deserialize. Check the conf/cvpr2024 for the example
3. Push the information to the Github
