clean:
	rm -rf account-data/*
	rm -rf web/account-data/*

docker-image:
	docker build -t agilesyndrome/cloudmapper .

setup:
	pip install pipenv
	pipenv install --dev --skip-lock
test:
	pipenv run -- bash tests/scripts/unit_tests.sh
