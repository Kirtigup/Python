FROM python:latest
ADD main.py /
RUN pip install Flask
RUN pip install flask_restful
RUN python3 -m venv venv
RUN export Flask_app=main.py
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]
