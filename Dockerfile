FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN mkdir /opt/app
WORKDIR /opt/app
COPY . /opt/app

EXPOSE 5000

RUN pip install -r requirements.txt
# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]
CMD ["streamlit" ,"run" ,"Streamlit_App.py"]