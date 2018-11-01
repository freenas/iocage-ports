# Created by: miwi@ixsystems.com

PORTNAME=	cloudstack
PORTVERSION=	4.11.1
PORTREVISION=	2
CATEGORIES=	devel

MAINTAINER=	miwi@ixsystems.com
COMMENT=	Cloudstack Server

RUN_DEPENDS=	${LOCALBASE}/share/java/maven3/bin/mvn:devel/maven3 \
		bash:shells/bash \
		mkisofs:sysutils/cdrtools \
		wget:ftp/wget \
		e2fsprogs>0:sysutils/e2fsprogs \
		iftop>0:net-mgmt/iftop \
		unzip:archivers/unzip \
		ipmitool:sysutils/ipmitool \
		dnsmasq:dns/dnsmasq \
		${LOCALBASE}/bin/sudo:security/sudo

USES=		python:2.7
NO_BUILD=	yes
USE_JAVA=	yes
JAVA_VERSION=	1.8+
USE_GITHUB=	yes
GH_ACCOUNT=	miwi-fbsd
GH_TAGNAME=	2cb2dac
NO_BUILD= yes

CLS_HOME?= ${PREFIX}/www/${PORTNAME}

do-patch:
	cp files/shebang.sh ${WRKSRC}
	(cd ${WRKSRC} && ${SH} shebang.sh && ${RM} shebang.sh )

do-install:
	${MKDIR} ${STAGEDIR}${CLS_HOME}
	cd ${WRKSRC} && ${CP} -r * ${STAGEDIR}/${CLS_HOME}

.include <bsd.port.mk>
