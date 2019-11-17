from debian:10.1

workdir /root

run \
      apt-get update \
      && apt-get install -y \
      texlive-full \
      && apt-get clean \
      && rm -fr /var/lib/apt/lists \
      && :

ENTRYPOINT ["latexmk"]
