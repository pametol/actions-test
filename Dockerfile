FROM python:3.9-slim

# Install requirements
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Copy source code
COPY ./app /app

# Set up environment;
ENV APP_HOME /app
ENV FLASK_APP hello
WORKDIR $APP_HOME

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]