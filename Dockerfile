FROM teampass/teampass

RUN echo "session.gc_maxlifetime = 57600 " >> /usr/local/etc/php/conf.d/docker-vars.ini && \
chmod 0755 /teampass-docker-start.sh

CMD ["/bin/sh"]
ENTRYPOINT ["/teampass-docker-start.sh"]
