FROM python:3
WORKDIR /usr/src/app
RUN /bin/echo -ne 'pandas\nscikit-learn\n' > requirements.txt
RUN pip install -r requirements.txt
COPY train_wine_model.py .
RUN wget https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv
CMD [ "python", "./train_wine_model.py" ]
