Bootstrap: docker
From: alpine:latest


%labels
	author Stefano Ghignone
	maintainer sghignone

%post
	apk update && apk upgrade \
	&& apk add --no-cache sudo build-base curl wget \
	perl \
	perl-utils \
	perl-dev \
	perl-dbd-pg \
	perl-db_file \
	# Expat and expat-dev are for XML::DOM.
	expat \
	expat-dev \
	libxml2-dev \
	libxslt-dev
