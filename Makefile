setup:
	python3 -m venv venv && . venv/bin/activate && pip install -r requirements.txt

clean:
	rm -rf venv __pycache__

test:
	. venv/bin/activate && pytest

