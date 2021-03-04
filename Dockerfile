FROM python:latest
COPY . /
RUN pip install Flask
RUN pip install flask_restful
RUN python3 -m venv venv
RUN export Flask_app=main.py
EXPOSE 5001
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]
