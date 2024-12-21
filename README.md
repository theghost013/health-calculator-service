# health-calculator-service

A simple Flask application that calculates BMI and BMR.

## Domain

This application is accessible at `https://health-app-cddfbebjheergufc.francecentral-01.azurewebsites.net/`.

## Getting Started

### Prerequisites

- Python 3.11
- Docker

### Installation

1. Clone the repository:

```bash
git clone https://github.com/L1-Dev/health-calculator-service.git
```

2. Environment variables:

Copy the `.env.example` file to `.env` and update the values with your own.

```bash
cp .env.example .env
```

3. Change environment variables in makefile with your own.

### Running the application locally

1. Install dependencies:

```bash
make init
```

2. Test the application:

```bash
make test
```

3. Run the application:

```bash
make run
```

4. Test the API:

```bash
make test-api
```

### Running the application in a container

1. Build the docker image:

```bash
make build
```

2. Run the container:

```bash
make run-container
```
