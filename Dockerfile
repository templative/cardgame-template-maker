FROM python:3.8.2
ADD templative templative
COPY templative/lib/gameManager/template /
ADD requirements.txt /
ADD docker-source.py /
RUN pip3 install -r requirements.txt
RUN pip3 freeze
RUN python3 -V
CMD [ "python3", "./docker-source.py" ]