# $FreeBSD$

PORTNAME=	dssystem
PORTVERSION=	14.2.0.1
CATEGORIES=	sysutils
MASTER_SITES=	https://asigra-f611.kxcdn.com/14.2/20201015/
EXTRACT_SUFX=	.txz

MAINTAINER=	wg@FreeBSD.org
COMMENT=	Award cloud backup and restore server application

ONLY_FOR_ARCHS=	amd64

RUN_DEPENDS=	ca_root_nss>0:security/ca_root_nss \
		icu>0:devel/icu \
		indexinfo>0:print/indexinfo \
		libxml2>0:textproc/libxml2 \
		openldap-sasl-client>2.4.0:net/openldap24-sasl-client \
		nss-pam-ldapd-sasl>0:net/nss-pam-ldapd-sasl

NO_BUILD=	yes
USES=		gettext-runtime perl5

USE_RC_SUBR=	dssystem

EXTRACT_AFTER_ARGS=	-C ${STAGEDIR}

pre-extract:
	${MKDIR} ${STAGEDIR}

do-install:
	${CP} ${FILESDIR}/dssystem_install.ini ${STAGEDIR}
	(cd ${STAGEDIR}${PREFIX}/ds-system; ${FIND} . \( -type f -o -type l \) \
		| ${SED} -e 's,^\./,,g' \
		| ${AWK} '{print length, $$0}' | ${SORT} -rn \
		| ${AWK} '{print "ds-system/"$$2 }' >> ${TMPPLIST})

.include <bsd.port.mk>
