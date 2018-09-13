FROM python:2

RUN echo $BROWSERSTACK_USERNAME
COPY . /runner
WORKDIR /runner
RUN ls -al
RUN pip install -r requirements.txt
CMD python test.py
