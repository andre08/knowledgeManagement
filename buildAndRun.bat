@echo off
call mvn clean package
call docker build -t br.com.lsDataOps/knowledgeManagement .
call docker rm -f knowledgeManagement
call docker run -d -p 9080:9080 -p 9443:9443 --name knowledgeManagement br.com.lsDataOps/knowledgeManagement