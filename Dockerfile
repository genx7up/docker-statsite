FROM nclans/centos:latest

MAINTAINER No Reply <noreply@nclans.org>

# Install Prereqs
RUN yum -y install git gcc scons rpm-build

RUN mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
RUN echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros

# Build RPM
RUN cd /opt && git clone https://github.com/armon/statsite.git
WORKDIR /opt/statsite/
RUN tar cvf statsite.tar.gz *
RUN mv statsite.tar.gz /rpmbuild/SOURCES/
RUN rpmbuild -bb rpm/statsite.spec

# Define default run command.
ADD run.sh /run.sh
CMD ["bash", "/run.sh"]



