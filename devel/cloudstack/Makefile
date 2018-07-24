# Created by: miwi@ixsystems.com

PORTNAME=	cloudstack
PORTVERSION=	4.11.1
CATEGORIES=	devel

MAINTAINER=	miwi@ixsystems.com
COMMENT=	Cloudstack Server

BUILD_DEPENDS=  ${LOCALBASE}/share/java/maven3/bin/mvn:devel/maven3
RUN_DEPENDS=	bash:shells/bash

NO_BUILD=	yes
USE_JAVA=	yes
JAVA_VERSION=	1.8+
USE_GITHUB=	yes
GH_ACCOUNT=	miwi-fbsd
GH_TAGNAME=	2cb2dac

NO_BUILD= yes

CLS_HOME?= ${PREFIX}/www/${PORTNAME}

do-install:
	${MKDIR} ${STAGEDIR}${CLS_HOME}
	cd ${WRKSRC} && ${CP} -r * ${STAGEDIR}/${CLS_HOME}

.include <bsd.port.mk>
