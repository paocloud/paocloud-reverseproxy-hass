ARG BUILD_FROM
FROM $BUILD_FROM

ARG NAME=paocloudreverseproxy

ENV LANG C.UTF-8

# install openvpn package
RUN apk add --update --no-cache openvpn

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

COPY run_service.sh /
RUN chmod a+x /run_service.sh

RUN mkdir config
ADD data /config/

CMD [ "/run.sh" ]