FROM cyphermaster/jenkins-slave:latest
MAINTAINER Bernard Brandl <github@nanard.org>
# install latest CFEngine, passive node only
RUN wget "http://s3.amazonaws.com/cfengine.package-repos/community_binaries/cfengine-community_3.6.4-1_amd64.deb" -O/tmp/cf.deb
RUN /usr/bin/dpkg -i /tmp/cf.deb
RUN /var/cfengine/bin/cf-key
# don't bother cfengine with network stuff.
RUN echo 'eth.*' > /var/cfengine/inputs/ignore_interfaces.rx
#ADD run.sh /root/

# boostrap on docker bridge, ignore if server isn't present
#RUN /var/cfengine/bin/cf-agent -B 172.17.42.1 ; exit 0
#ENTRYPOINT ["/var/cfengine/bin/cf-execd","-F"]
RUN echo "root:toor" | chpasswd

# Test Managed by jenkins for now
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
