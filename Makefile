install:
	conda install --file requirements.txt || pip install -r requirements.txt
	# pip install --upgrade pip &&\
	# 	pip install -r requirements.txt

install-gcp:
	conda install --file requirements-gcp.txt || pip install -r requirements-gcp.txt
	# pip install --upgrade pip &&\
	# 	pip install -r requirements-gcp.txt

install-aws:
	conda install --file requirements-aws.txt || pip install -r requirements-aws.txt
	# pip install --upgrade pip &&\
	# 	pip install -r requirements-aws.txt

lint:
	pylint --disable=R,C hello.py

format:
	black *.py

test:
	pytest -vv --cov=hello test_hello.py
