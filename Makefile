setup:
	python -m venv venv && source venv/bin/activate && pip install -r requirements.txt

clean:
	rm -rf venv __pycache__

test:
	source venv/bin/activate && pytest

run:
	source venv/bin/activate && python app.py
  
