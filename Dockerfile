FROM SURTURBOT/Thanosbot:latest

#clonning repo 
RUN git clone https://github.com/SURTURBOT/Thanos-UserBot.git /root/thanosbot

#working directory 
WORKDIR /root/Thanosbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","Thanosbot"]
