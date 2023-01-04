# $FreeBSD$

PORTNAME=	iconik_storage_gateway
PORTVERSION=	3.5.3
CATEGORIES=	net
MASTER_SITES=	http://cdn1.tn.ixsystems.com/pkg.cdn.trueos.org/iconik/
DISTNAME=	iconik_storage_gateway-3.5.3-FreeBSD-12.2-RELEASE
EXTRACT_SUFX=	.txz

MAINTAINER=	waqar@ixsystems.com
COMMENT=	The iconik Storage Gateway

RUN_DEPENDS=	ca_root_nss>0:security/ca_root_nss \
	ImageMagick7>=0:graphics/ImageMagick7 \
	ffmpeg>=0:multimedia/ffmpeg \
	iconik_ui>=0:net/iconik_ui

NO_BUILD=	yes
USE_RC_SUBR=	iconik_storage_gateway

USER=	cantemo

SUB_FILES+=	pkg-install
SUB_LIST=	USER=${USER} GROUP="wheel"

USERS=	${USER}
GROUPS=	${USER}

EXTRACT_AFTER_ARGS=	-C ${STAGEDIR}

pre-extract:
	${MKDIR} ${STAGEDIR}

do-install:
	(cd ${STAGEDIR}${PREFIX}; ${FIND} cantemo bin etc \( -type f -o -type l \) \
		| ${SED} -e 's,^\./,,g' \
		| ${AWK} '{print length, $$0}' | ${SORT} -rn \
		| ${AWK} '{print $$2 }' >> ${TMPPLIST})

.include <bsd.port.mk>
