PATH=/path/to/new/virtual/environment

# tạo mới một venv
python -m venv $PATH

# active env
source $PATH/bin/activate

# install module
pip install requests

# export requirements.txt
pip freeze > requirements.txt

# https://docs.python.org/3/library/venv.html