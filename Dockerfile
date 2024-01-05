FROM python:3.9
WORKDIR /code
COPY ./ /code
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
CMD ["uvicorn", "src.main:app","--proxy-headers","--host", "0.0.0.0", "--port", "80"]