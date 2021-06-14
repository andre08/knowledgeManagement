#!/bin/sh
mvn clean package && docker build -t br.com.lsDataOps/knowledgeManagement .
docker rm -f knowledgeManagement || true && docker run -d -p 9080:9080 -p 9443:9443 --name knowledgeManagement br.com.lsDataOps/knowledgeManagement