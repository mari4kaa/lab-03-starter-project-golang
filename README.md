# Simple golang app

## How to run?

1. Ensure you have Docker installed
2. Run those commands in the folder where you want a project to be located:

```bash
git clone https://github.com/mari4kaa/lab-03-starter-project-golang.git
```

```bash
docker build -t fizzbuzz/lab3golang:latest .
```

```bash
docker run -p 5000:8080 fizzbuzz/lab3golang:latest
```

## Usage

After doing all previous steps simply go to localhost:5000 in your browser.