FROM alpine:latest

LABEL	maintainer="Stefano Ghignone, IPSP-CNR, Turin, Italy, stefano.ghignone[at]ipsp.cnr.it"
LABEL	version="1.7.7"

RUN	apk update && apk upgrade \
	&& apk add --no-cache sudo build-base curl wget \
	perl \
	perl-doc \
	perl-utils \
	perl-dev \
	perl-dbd-pg \
	perl-db_file \
	expat \
	expat-dev \
	libxml2-dev \
	libxslt-dev
	
RUN	curl -L http://cpanmin.us | perl - --sudo App::cpanminus
RUN	cpanm --quiet --notest Bundle::BioPerl Parallel::ForkManager Tree BioPerl
