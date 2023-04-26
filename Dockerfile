FROM dustynv/jetson-inference:r35.3.1
RUN pip install Flask

RUN mkdir data
ADD data data

RUN mkdir detection

COPY jetson_detection.py detection

WORKDIR detection
# RUN python3 setup.py

EXPOSE 8080
CMD ["python3","jetson_detection.py"]

