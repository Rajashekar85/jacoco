FROM tomcat
RUN apt update
RUN apt install maven -y
RUN mkdir /app
