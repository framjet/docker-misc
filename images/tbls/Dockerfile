ARG UPTRACK_SOURCE=k1low/tbls:latest
FROM ${UPTRACK_SOURCE} AS tbls

# use a distroless base image with glibc
FROM gcr.io/distroless/base-debian11:debug-nonroot

LABEL org.opencontainers.image.authors="Aurimas Niekis <aurimas@niekis.lt>"

COPY --from=tbls --chown=root /usr/bin/tbls /usr/local/bin/
COPY --chown=root ./docker-entrypoint.sh /docker-entrypoint.sh

# run as non-privileged user
USER nonroot

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["init"]
