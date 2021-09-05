#install python latest for python based application
FROM python:latest
#copy all the file of flask based source code
COPY . /
#install pip to add dependencys of flask based application
RUN pip install Flask
RUN pip install flask_restful
RUN python3 -m venv venv
RUN export Flask_app=app.py
EXPOSE 5001
ENTRYPOINT [ "python" ]
CMD ["app.py" ]
