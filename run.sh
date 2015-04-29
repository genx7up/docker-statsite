#!/bin/bash

# Build RPM
cd /opt && git clone https://github.com/genx7up/statsite.git
cd /opt/statsite/
tar cvf statsite.tar.gz *
mv statsite.tar.gz ~/rpmbuild/SOURCES/
rpmbuild -bb rpm/statsite.spec

cp -r ~/rpmbuild/RPMS /data

#Update minor version as needed
mv /data/RPMS/x86_64/statsite-0.7.0-1.el6.x86_64.rpm /data/RPMS/x86_64/statsite-0.7.1-1.el6.x86_64.rpm
