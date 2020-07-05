FROM python:3.7

RUN apt-get update 
RUN pip install --upgrade pip

COPY ./requirements.txt /
RUN pip install -r requirements.txt

RUN mkdir /nb
RUN cd /nb

CMD ["jupyter", "notebook", "--port=8888", "--ip=0.0.0.0", "--allow-root", "--notebook-dir=/nb"]