FROM erlang:24

RUN set -xe \
	&& runtimeDeps='curl \
            shelltestrunner \
            git' \
	&& apt-get update \
	&& apt-get install -y $runtimeDeps \
    && rm -rf /var/lib/apt/lists/*

ADD . app/

ENTRYPOINT ["./app/run_tests.sh"]
