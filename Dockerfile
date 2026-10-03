FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir jupyterlab gurobipy

RUN mkdir -p /app/notebooks

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--notebook-dir=/app/notebooks"]
