# $FreeBSD$

PORTNAME=	wayvnc
PORTVERSION=	s20200118
CATEGORIES=	net

MAINTAINER=	jbeich@FreeBSD.org
COMMENT=	VNC server for wlroots-based compositors

LICENSE=	ISCL
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	evdev-proto>0:devel/evdev-proto
LIB_DEPENDS=	libuv.so:devel/libuv \
		libwayland-client.so:graphics/wayland \
		libneatvnc.so:net/neatvnc \
		libxkbcommon.so:x11/libxkbcommon

USES=		compiler:c11 meson pkgconfig xorg
USE_GITHUB=	yes
USE_XORG=	pixman
USE_GL=		egl glesv2
USE_LDCONFIG=	yes
GH_ACCOUNT=	any1
GH_TAGNAME=	20cd772
PLIST_FILES=	bin/${PORTNAME}

.include <bsd.port.mk>
