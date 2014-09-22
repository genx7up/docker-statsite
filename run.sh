#!/bin/bash

# Build RPM
cd /opt && git clone https://github.com/armon/statsite.git
cd /opt/statsite/
tar cvf statsite.tar.gz *
mv statsite.tar.gz ~/rpmbuild/SOURCES/
rpmbuild -bb rpm/statsite.spec

cp -r ~/rpmbuild/RPMS /data
