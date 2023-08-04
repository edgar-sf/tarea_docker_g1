FROM python:3
WORKDIR /usr/src/app
COPY train_wine_model.py .
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN wget https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv
CMD [ "python", "./train_wine_model.py" ]
