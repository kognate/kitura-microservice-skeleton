FROM ibmcom/kitura-ubuntu:latest
RUN mkdir /var/run/app
ADD Package.swift /var/run/app
ADD Sources /var/run/app
RUN cd /var/run/app && swift build
EXPOSE 8080
CMD [ "/var/run/app/.build/debug/YourBinaryName" ]
