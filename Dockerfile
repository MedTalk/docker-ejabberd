FROM rroemhild/ejabberd:16.03
MAINTAINER Kha Nguyen <nlhkha@gmail.com>

COPY ext_auth_script.py /opt/ejabberd/scripts/ext_auth_script.py

ENV ERLANG_NODE ejabberd
ENV EJABBERD_AUTH_METHOD external
ENV EJABBERD_EXTAUTH_PROGRAM /opt/ejabberd/scripts/ext_auth_script.py
ENV EJABBERD_EXTAUTH_INSTANCES 3
ENV EJABBERD_EXTAUTH_CACHE 600
