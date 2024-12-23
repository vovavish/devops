FROM docker:20.10
RUN apk add --no-cache bash
CMD ["dockerd-entrypoint.sh"]
