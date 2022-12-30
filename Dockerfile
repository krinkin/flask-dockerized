FROM python:latest

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app

# Flask debug server
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

