FROM alpine:3.11

RUN apk add --no-cache ansible
ADD /nsenter.py /usr/share/ansible/plugins/connection/nsenter.py

RUN mkdir /etc/ansible \
 && printf '%s\n' '[all]' 'node ansible_connection=nsenter ansible_host=1' \
      > /etc/ansible/hosts
