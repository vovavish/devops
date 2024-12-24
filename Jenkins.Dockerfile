FROM jenkins/jenkins:lts
USER root

RUN apt-get update && apt-get install -y docker.io sudo

RUN echo 'jenkins:jenkins' | chpasswd

RUN usermod -aG docker jenkins

RUN echo "jenkins ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/jenkins

USER jenkins
