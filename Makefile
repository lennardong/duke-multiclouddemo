conda_setup: 
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh -b
	rm Miniconda3-latest-Linux-x86_64.sh
	conda create --name duke python==3.10
	conda activate duke 

install:
	conda install --file requirements.txt || pip install -r requirements.txt
	# pip install --upgrade pip &&\
	# 	pip install -r requirements.txt

install-gcp:
	conda install --file requirements-gcp.txt || pip install -r requirements-gcp.txt

install-aws:
	conda install --file requirements-aws.txt || pip install -r requirements-aws.txt

lint:
	pylint --disable=R,C hello.py

format:
	black *.py

test:
	pytest -vv --cov=hello test_hello.py
