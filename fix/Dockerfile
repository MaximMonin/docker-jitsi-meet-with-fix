# jitsi/jibri DockerPatch for recoding
FROM jitsi/jibri

RUN mv /usr/bin/google-chrome /usr/bin/google-chrome-orig
COPY google-chrome /usr/bin/
RUN chmod +x /usr/bin/google-chrome
