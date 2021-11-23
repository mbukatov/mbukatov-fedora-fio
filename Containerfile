FROM registry.fedoraproject.org/fedora:35
LABEL description="This is a fedora 35 container image with fio 3.27"
MAINTAINER Martin Bukatovic <mbukatov@redhat.com>
RUN dnf install -y fio strace ltrace less lsof rsync tar \
    && dnf clean all \
    && rm -rf /var/cache/dnf
