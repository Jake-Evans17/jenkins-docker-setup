FROM jenkins/jenkins
USER root
RUN apt update
RUN apt install -y curl
RUN curl https://get.docker.com | bash
RUN usermod -aG docker jenkins
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
USER jenkins
