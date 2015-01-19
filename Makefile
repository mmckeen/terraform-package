NAME=terraform
VERSION=0.3.6
ITERATION=1
ARCH=x86_64

all:
	fpm --name ${NAME} --version ${VERSION} --iteration ${ITERATION} -a ${ARCH} -t rpm -s dir ./usr/local/terraform
	fpm --name ${NAME} --version ${VERSION} --iteration ${ITERATION} -a ${ARCH} -t deb -s dir ./usr/local/terraform
rpm:
	fpm --name ${NAME} --version ${VERSION} --iteration ${ITERATION} -a ${ARCH} -t rpm -s dir ./usr/local/terraform
deb:
	fpm --name ${NAME} --version ${VERSION} --iteration ${ITERATION} -a ${ARCH} -t deb -s dir ./usr/local/terraform
test:
	fpm --name ${NAME} --version ${VERSION} --iteration ${ITERATION} -a ${ARCH} -t deb -s dir ./usr/local/terraform
	# TravisCI is a debian server
