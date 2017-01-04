FROM ubuntu:16.04
# Default to UTF-8 file.encoding
#
# For CA_CERTIFICATES_JAVA_VERSION, see https://bugs.debian.org/775775
# and https://github.com/docker-library/java/issues/19#issuecomment-70546872
ENV LANG=C.UTF-8 \
    CA_CERTIFICATES_JAVA_VERSION=20140324

RUN apt-get update \
    && apt-get install --no-install-recommends -y --force-yes \
        ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" \
        openjdk-8-jdk \
        openjfx \
        unzip \
    && /var/lib/dpkg/info/ca-certificates-java.postinst configure \
    && apt-get clean \
    && rm -f /var/lib/apt/lists/*_dists_*
