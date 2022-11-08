FROM python:3.6 as base

FROM base as copy
COPY . /app
COPY requirements.txt /app
WORKDIR /app
RUN pip install -r requirements.txt

FROM copy as final
ENTRYPOINT ["python"]
CMD ["app.py"]
