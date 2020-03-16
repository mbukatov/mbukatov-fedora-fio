FROM registry.fedoraproject.org/fedora:32
LABEL description="This is a fedora 32 container image with fio 3.18"
MAINTAINER Martin Bukatovic <mbukatov@redhat.com>
RUN dnf install -y fio \
    && dnf clean all \
    && rm -rf /var/cache/dnf
