# $FreeBSD$

PORTNAME=	dsoperator
PORTVERSION=	14.2.0.4
CATEGORIES=	sysutils
MASTER_SITES=	https://cdn1.tn.ixsystems.com/asigra/14.2/20220217/
DISTNAME=	DS-Operator_14_2_0_4
EXTRACT_SUFX=	.zip

MAINTAINER=	wg@FreeBSD.org
COMMENT=	Award cloud backup and restore server application

ONLY_FOR_ARCHS=	amd64

NO_WRKSUBDIR=	yes

NO_BUILD=	yes
USES=		zip

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/www/asigra
	(cd ${WRKSRC} && ${COPYTREE_BIN} . ${STAGEDIR}${PREFIX}/www/asigra)
	${CP} ${FILESDIR}/DSOP.jnlp.template ${STAGEDIR}${PREFIX}/www/asigra/DSOP.jnlp.template

.include <bsd.port.mk>
