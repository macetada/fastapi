FROM python:3.10-bullseye

RUN pip install --upgrade pip

RUN groupadd fastapi && useradd -m -g fastapi fastapi
USER fastapi

WORKDIR /home/fastapi
COPY requirements.txt .
COPY main.py .
COPY entrypoint.sh .

ENV PATH="/home/fastapi/.local/bin:${PATH}"
RUN pip install --user --no-cache -r requirements.txt

ENTRYPOINT [ "./entrypoint.sh" ]
