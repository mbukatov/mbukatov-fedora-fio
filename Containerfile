FROM registry.fedoraproject.org/fedora:36
LABEL description="This is a fedora 36 container image with fio 3.29"
MAINTAINER Martin Bukatovic <mbukatov@redhat.com>
RUN dnf install -y fio strace ltrace less lsof rsync tar \
    && dnf clean all \
    && rm -rf /var/cache/dnf
