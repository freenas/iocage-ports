# Created by: Lawrence Stewart <lstewart@FreeBSD.org>
# $FreeBSD$

PORTNAME=	plone.app.ldap
PORTVERSION=	1.3.2
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	LDAP control panel for Plone

DEPRECATED=	Outdated version of plone 4.3 (legacy), uses EOLed python27
EXPIRATION_DATE=	2020-02-03

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Products.CMFCore>=2.1.0:devel/py-Products.CMFCore@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}Products.PloneLDAP>=1.0:www/py-Products.PloneLDAP@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}plone.memoize>0:www/py-plone.memoize@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}Products.GenericSetup>0:devel/py-Products.GenericSetup@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}ldap>0:net/py-ldap@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}zope.component>0:devel/py-zope.component@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}zope.i18nmessageid>0:textproc/py-zope.i18nmessageid@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}zope.interface>0:devel/py-zope.interface@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}zope.lifecycleevent>0:devel/py-zope.lifecycleevent@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}zope.schema>0:devel/py-zope.schema@${PY_FLAVOR}

NO_ARCH=	yes
USES=		python:2.7 zip
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
