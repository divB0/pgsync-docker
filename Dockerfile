FROM python:3.10
ARG WORKDIR=/app
RUN mkdir $WORKDIR

WORKDIR $WORKDIR

RUN pip install git+https://github.com/toluaina/pgsync.git@2.5.0

CMD pgsync --config schema.json
