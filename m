Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 369394B87A4
	for <lists+blinux-list@lfdr.de>; Wed, 16 Feb 2022 13:29:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645014587;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A/kEgjoC2BooAENRmJREWh4IdzZJMF3M8SbsHGsyJ3M=;
	b=KoAX13RYY9FdPyEI+VM7Q2SEU+wpzVwpho43DGjCitmQIEKAFOLehOp5RxUBhUNKheT713
	bxU1ACVD9QBwMWbqUq2m6tzIcc60GNp2r/1EwZVSU4+TOIhnBfIgfyjfRvQbwYnXwB8MK1
	HGGNMe1RJOj3aTdLXiU1rofKu6+2MoA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-577-Acx_foLaPPyxCw7TV9OCGw-1; Wed, 16 Feb 2022 07:29:43 -0500
X-MC-Unique: Acx_foLaPPyxCw7TV9OCGw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A5A6814246;
	Wed, 16 Feb 2022 12:29:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 473222AA96;
	Wed, 16 Feb 2022 12:29:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1810C4BB7B;
	Wed, 16 Feb 2022 12:29:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21GCOpV4022895 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Feb 2022 07:24:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 71BED1466C4B; Wed, 16 Feb 2022 12:24:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DFB21466C47
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 12:24:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3DDC128EE16D
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 12:24:51 +0000 (UTC)
Received: from michel.telenet-ops.be (michel.telenet-ops.be
	[195.130.137.88]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-655-bJpFC0H-PyqHbUKp0X-LOA-1; Wed, 16 Feb 2022 07:24:49 -0500
X-MC-Unique: bJpFC0H-PyqHbUKp0X-LOA-1
Received: from linuxcomputers ([IPv6:2a02:1811:b61c:2900:6413:a942:89ec:f67b])
	by michel.telenet-ops.be with bizsmtp
	id voQn2600R0oMXft06oQnC1; Wed, 16 Feb 2022 13:24:48 +0100
Received: from aldo by linuxcomputers with local (Exim 4.93)
	(envelope-from <yellowpenguin@telenet.be>) id 1nKJMV-00026x-IK
	for blinux-list@redhat.com; Wed, 16 Feb 2022 13:24:47 +0100
Date: Wed, 16 Feb 2022 13:24:47 +0100
To: Blinux List <blinux-list@redhat.com>
Subject: "Screen on" then nothing at login
Message-ID: <20220216122447.GA8036@linuxcomputers>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

each time I boot now my Ubuntu 20.04.3 LTS with Gnome as graphical desktop,
I no longer hear Espeak talking, and the one and only message I can read is
"Scherm aan" what means "Screen on" in English.

How can I trace the source of the problem ? Here is my .xsession-errors, but
are there other useful files to check ? 

Cf. .xsession-errors: 

### 

dbus-update-activation-environment: setting DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
dbus-update-activation-environment: setting DISPLAY=:0
dbus-update-activation-environment: setting XAUTHORITY=/home/aldo/.Xauthority
dbus-update-activation-environment: setting GTK_MODULES=gail:atk-bridge
dbus-update-activation-environment: setting QT_ACCESSIBILITY=1
dbus-update-activation-environment: setting SHELL=/bin/bash
dbus-update-activation-environment: setting QT_ACCESSIBILITY=1
dbus-update-activation-environment: setting XDG_CONFIG_DIRS=/etc/xdg/xdg-unity:/etc/xdg
dbus-update-activation-environment: setting XDG_SESSION_PATH=/org/freedesktop/DisplayManager/Session0
dbus-update-activation-environment: setting GTK_IM_MODULE=ibus
dbus-update-activation-environment: setting GTK2_MODULES=overlay-scrollbar
dbus-update-activation-environment: setting LANGUAGE=nl_BE:nl
dbus-update-activation-environment: setting QT4_IM_MODULE=ibus
dbus-update-activation-environment: setting MANDATORY_PATH=/usr/share/gconf/unity.mandatory.path
dbus-update-activation-environment: setting XMODIFIERS=@im=ibus
dbus-update-activation-environment: setting DESKTOP_SESSION=unity
dbus-update-activation-environment: setting GTK_MODULES=gail:atk-bridge
dbus-update-activation-environment: setting PWD=/home/aldo
dbus-update-activation-environment: setting XDG_SESSION_DESKTOP=unity
dbus-update-activation-environment: setting LOGNAME=aldo
dbus-update-activation-environment: setting QT_QPA_PLATFORMTHEME=appmenu-qt5
dbus-update-activation-environment: setting XDG_SESSION_TYPE=x11
dbus-update-activation-environment: setting GPG_AGENT_INFO=/run/user/1000/gnupg/S.gpg-agent:0:1
dbus-update-activation-environment: setting XAUTHORITY=/home/aldo/.Xauthority
dbus-update-activation-environment: setting XDG_GREETER_DATA_DIR=/var/lib/lightdm-data/aldo
dbus-update-activation-environment: setting LD_PRELOAD=libgtk3-nocsd.so.0
dbus-update-activation-environment: setting GDM_LANG=nl
dbus-update-activation-environment: setting HOME=/home/aldo
dbus-update-activation-environment: setting IM_CONFIG_PHASE=1
dbus-update-activation-environment: setting LANG=nl_BE.UTF-8
dbus-update-activation-environment: setting XDG_CURRENT_DESKTOP=Unity:Unity7:ubuntu
dbus-update-activation-environment: setting XDG_SEAT_PATH=/org/freedesktop/DisplayManager/Seat0
dbus-update-activation-environment: setting GTK_CSD=0
dbus-update-activation-environment: setting CLUTTER_IM_MODULE=ibus
dbus-update-activation-environment: setting XDG_SESSION_CLASS=user
dbus-update-activation-environment: setting DEFAULTS_PATH=/usr/share/gconf/unity.default.path
dbus-update-activation-environment: setting USER=aldo
dbus-update-activation-environment: setting DISPLAY=:0
dbus-update-activation-environment: setting SHLVL=1
dbus-update-activation-environment: setting QT_IM_MODULE=ibus
dbus-update-activation-environment: setting XDG_RUNTIME_DIR=/run/user/1000
dbus-update-activation-environment: setting XDG_DATA_DIRS=/usr/share/unity:/usr/local/share:/usr/share:/var/lib/snapd/desktop:/var/lib/snapd/desktop
dbus-update-activation-environment: setting PATH=/home/aldo/.local/bin:/home/aldo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
dbus-update-activation-environment: setting GDMSESSION=unity
dbus-update-activation-environment: setting DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
dbus-update-activation-environment: setting _=/usr/bin/dbus-update-activation-environment
Failed to get properties: Unit name gnome-session-manager@.service is neither a valid invocation ID nor unit name.

###

Thanx,

Aldo.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

