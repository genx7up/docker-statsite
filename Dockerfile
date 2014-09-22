FROM nclans/centos:latest

MAINTAINER No Reply <noreply@nclans.org>

# Install Prereqs
RUN yum -y install git gcc scons rpm-build

RUN mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
RUN echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros

# Define default run command.
ADD run.sh /run.sh
CMD ["bash", "/run.sh"]



