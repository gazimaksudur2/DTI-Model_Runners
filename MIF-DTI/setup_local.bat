@echo off
REM One-time local setup for MIF-DTI (Windows, RTX 4060 Ti)
REM Run in Anaconda Prompt from this folder:  setup_local.bat

conda env create -f environment.yml
if errorlevel 1 (
    echo Env may already exist — updating dti_research ...
    conda env update -f environment.yml --prune
)

call conda activate dti_research
python -m ipykernel install --user --name dti_research --display-name "Python (dti_research)"

echo.
echo Done. In Jupyter/VS Code select kernel: Python (dti_research)
echo Open mif-dti.ipynb, run LOCAL Step A and Step B, then continue.
pause
