Bootstrap: docker
From: alpine:latest


%labels
	author Stefano Ghignone
	maintainer sghignone
	version 1.7.7
%post
	apk update && apk upgrade \
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
	
	#testing dependencies
	curl -L http://cpanmin.us | perl - --sudo App::cpanminus
	cpanm --quiet --notest Bundle::BioPerl Parallel::ForkManager Tree BioPerl
