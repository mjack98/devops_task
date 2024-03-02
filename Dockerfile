# start by pulling the python image
FROM python:3.9-slim
# Set the working directory in the container
# WORKDIR /app
# copy every content from the local file to the image
COPY . .
# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

EXPOSE 5000
ENV MONGO_URI="mongodb://mongo:27017/users"
# configure the container to run in an executed manner
CMD ["python", "app.py"]
