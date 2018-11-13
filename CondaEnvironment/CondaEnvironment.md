
# Python Installation Instructions


Install [Python 3.7](https://www.python.org/) and [anaconda](https://www.anaconda.com/download/#macos).


To install the *conda* environment run the following command on the terminal (after moving to the project's path):

```bash
conda env create -f dataViz.yml -n dataViz
```

To run the environment:

```bash
source activate dataViz
```

To close the environment:

```bash
source deactivate
```

## For easy use within Atom text editor

To install ipykernel in hydrogen (to run notebooks in "Jupyter" style from atom):

```bash
python -m pip install ipykernel
python -m ipykernel install --user
```

Adding the environment to Hydrogen (in atom):

```bash
source activate dataViz
python -m ipykernel install --user --name dataViz
```

To export environment to *YML* (after activating):

```bash
conda env export > dataViz.yml
```

## Other useful Atom packages

* [hydrogen](https://atom.io/packages/Hydrogen): Run jupyter and R kernels from atom
* [platformio-ide-terminal](https://atom.io/packages/platformio-ide-terminal)
