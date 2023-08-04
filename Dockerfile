FROM python:3
WORKDIR /usr/src/app
RUN /bin/echo -ne 'pandas\nscikit-learn\n' > requirements.txt
RUN pip install -r requirements.txt
RUN wget https://gist.githubusercontent.com/goncan/c6ebfbecf3bb5eeff432d4aa4b906d6c/raw/e8a0c2259ffadf8b868398e7086190e187fa941c/train_wine_model.py
RUN wget https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv
CMD [ "python", "./train_wine_model.py" ]
