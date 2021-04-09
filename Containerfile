FROM registry.fedoraproject.org/fedora:33
LABEL description="This is a fedora 33 container image with fio 3.21"
MAINTAINER Martin Bukatovic <mbukatov@redhat.com>
RUN dnf install -y fio strace ltrace less \
    && dnf clean all \
    && rm -rf /var/cache/dnf
