FROM stackstorm/st2api
RUN mkdir -p /opt/stackstorm/packs
RUN cp -r /opt/stackstorm/src/contrib/core /opt/stackstorm/packs
RUN cp -r /opt/stackstorm/src/contrib/packs /opt/stackstorm/packs
RUN cp -r /opt/stackstorm/src/contrib/linux /opt/stackstorm/packs
CMD ["/usr/local/bin/tiller"]
