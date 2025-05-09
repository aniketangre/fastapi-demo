# FastAPI Demo API

## Overview

The **FastAPI Demo API** is a lightweight and high-performance web API built using the FastAPI framework. This project serves as a demonstration of how to create RESTful APIs with FastAPI, showcasing features like request handling, data validation, and asynchronous processing. It is designed to be beginner-friendly while also providing advanced features for experienced developers.

---

## Features

- **High Performance**: Built on FastAPI, leveraging Python's asynchronous capabilities.
- **Automatic Documentation**: Interactive API documentation generated with Swagger UI and ReDoc.
- **Data Validation**: Ensures input data integrity using Pydantic models.
- **Modular Structure**: Organized codebase for scalability and maintainability.
- **Extensible**: Easily add new endpoints or integrate with databases and external services.

---

## Project Structure

```
fastapi-demo-api/
│
├── app/
│   ├── main.py               # Entry point for the FastAPI application
│   ├── routes/
│   │   ├── example.py        # Example route with API endpoints
│   │   └── __init__.py       # Initializes the routes module
│   ├── models/
│   │   ├── example.py        # Pydantic models for request/response validation
│   │   └── __init__.py       # Initializes the models module
│   ├── utils/
│   │   ├── helpers.py        # Utility functions for the API
│   │   └── __init__.py       # Initializes the utils module
│   └── __init__.py           # Initializes the app module
│
├── tests/
│   ├── test_example.py       # Unit tests for the example route
│   └── __init__.py           # Initializes the tests module
│
├── requirements.txt          # Python dependencies
├── README.md                 # Project documentation
└── .env                      # Environment variables (optional)
```

---

## Requirements

The project requires the following dependencies:

- **Python 3.8+**
- **FastAPI**
- **Uvicorn** (ASGI server)
- **Pydantic**

Install the dependencies using the following command:

```bash
pip install -r requirements.txt
```

---

## How to Run

### Step 1: Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/your-username/fastapi-demo-api.git
cd fastapi-demo-api
```

### Step 2: Install Dependencies

Install the required Python libraries:

```bash
pip install -r requirements.txt
```

### Step 3: Start the Server

Run the FastAPI application using Uvicorn:

```bash
uvicorn app.main:app --reload
```

- The `--reload` flag enables hot-reloading for development.
- By default, the server will run on `http://127.0.0.1:8000`.

### Step 4: Access the API Documentation

- Swagger UI: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)
- ReDoc: [http://127.0.0.1:8000/redoc](http://127.0.0.1:8000/redoc)

---

## Example Usage

### Sample Endpoint

The project includes an example endpoint for demonstration purposes. You can test it using the Swagger UI or any API client like Postman.

#### Example Request

**Endpoint**: `GET /example`

```bash
curl -X GET "http://127.0.0.1:8000/example" -H "accept: application/json"
```

#### Example Response

```json
{
  "message": "This is an example response from the FastAPI Demo API."
}
```

---

## Testing

The project includes unit tests to ensure the API works as expected. To run the tests, use the following command:

```bash
pytest
```

---

## Extending the API

### Adding a New Endpoint

1. Create a new file in the `routes/` directory (e.g., `new_route.py`).
2. Define your API endpoints using FastAPI's `@app.get`, `@app.post`, etc.
3. Import and include the new route in `app/main.py`:

```python
from app.routes.new_route import router as new_route_router
app.include_router(new_route_router)
```

---

## Resources for Further Learning

- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [Pydantic Documentation](https://pydantic-docs.helpmanual.io/)
- [Uvicorn Documentation](https://www.uvicorn.org/)
- [Python Asyncio](https://docs.python.org/3/library/asyncio.html)

---

## Acknowledgments

- [FastAPI](https://fastapi.tiangolo.com/) for its amazing framework.
- [Pydantic](https://pydantic-docs.helpmanual.io/) for data validation.
- [Uvicorn](https://www.uvicorn.org/) for the ASGI server.