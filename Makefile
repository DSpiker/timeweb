setup:
	python3 -m venv venv && . venv/bin/activate && pip install -r requirements.txt

clean:
	rm -rf venv __pycache__

test:
	. venv/bin/activate && pytest

run:
	. venv/bin/activate && gunicorn -b 0.0.0.0:8044 app:app


