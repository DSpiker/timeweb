setup:
	python -m venv venv && source venv/bin/activate && pip install -r requirements.txt

clean:
	rm -rf venv __pycache__

test:
	pytest

run:
	python app.py

