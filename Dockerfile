cd /opt
docker image build -t $JOB_NAME:v1.$BUILD_ID .
docker image tag $JOB_NAME:v1.$BUILD_ID aman9596/$JOB_NAME:v1.$BUILD_ID
docker image tag $JOB_NAME:v1.$BUILD_ID aman9596/$JOB_NAME:latest
docker image push aman9596/$JOB_NAME:v1.$BUILD_ID
docker image push aman9596/$JOB_NAME:latest
docker image rmi $JOB_NAME:v1.$BUILD_ID aman9596/$JOB_NAME:v1.$BUILD_ID aman9596/$JOB_NAME:latest
