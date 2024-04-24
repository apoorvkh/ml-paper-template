# Setup the micromamba environment
# "${SHELL}" <(curl -L micro.mamba.pm/install.sh)
# micromamba create -n cvpr-tex
# micromamba activate cvpr-tex

# Load the latexmk (This env is my personal one, please change)
micromamba activate /oscar/home/npermpre/micromamba/envs/latexenv
micromamba install latexmk
module load texlive
