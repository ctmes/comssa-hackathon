FROM python:3.6-slim
#Build args
ARG VCS_REF
ARG BUILD_DATE
# Setting resource quota
ARG MIN_MEM=2G
ARG MAX_MEM=2G

COPY ./app /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
#Execution
CMD python ./app.py ./py.test