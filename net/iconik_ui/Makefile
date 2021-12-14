# $FreeBSD$

PORTNAME=	iconik_ui
PORTVERSION=	1
PORTREVISION=	1
CATEGORIES=	net

MAINTAINER=	waqar@ixsystems.com
COMMENT=	Web Interface for iconik

USES=	python:3.9+
NO_BUILD=	yes

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Jinja2>=2.10:devel/py-Jinja2@${PY_FLAVOR} \
	${PYTHON_PKGNAMEPREFIX}werkzeug>=0.10:www/py-werkzeug@${PY_FLAVOR}

USE_GITHUB=	yes
GH_ACCOUNT=	freenas
GH_PROJECT=	iocage-plugin-iconik-storage-gateway
GH_TAGNAME=	8210acac8177ef88008f92082fea1ce4fbd0c444

USE_RC_SUBR=	${PORTNAME}

SUB_LIST=	PYTHON_CMD=${PYTHON_CMD}

do-install:
	${CP} -a ${WRKSRC}/overlay/usr/local/www/${PORTNAME} ${STAGEDIR}${PREFIX}/www/
	(cd ${STAGEDIR}${PREFIX}; ${FIND} www/ \( -type f -o -type l \) \
		| ${SED} -e 's,^\./,,g' \
		| ${AWK} '{print length, $$0}' | ${SORT} -rn \
		| ${AWK} '{print $$2 }' >> ${TMPPLIST})

.include <bsd.port.mk>
