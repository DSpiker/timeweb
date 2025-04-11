import pytest
from app import app

@pytest.fixture
def client():
    app.testing = True

    return app.test_client()

def test_time_format(client):
    response = client.get('/')

    assert response.status_code == 200
    assert 'Current time:' in response.get_data(as_text=True)

