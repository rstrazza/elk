FROM elasticsearch:latest

RUN cd /usr/share/elasticsearch && \
    plugin install mobz/elasticsearch-head && \
    plugin install license && \
    plugin install marvel-agent
