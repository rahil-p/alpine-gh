ARG git_version="2.32.0"
ARG gh_version="2.4.0"

FROM alpine/git:v${git_version}

ARG gh_version

RUN wget https://github.com/cli/cli/releases/download/v${gh_version}/gh_${gh_version}_linux_386.tar.gz -O ghcli.tar.gz && \
    tar --strip-components=1 -xf ghcli.tar.gz && \
    mv bin/gh /bin/gh && \
    rm -rf ./*

ENTRYPOINT ["gh"]
