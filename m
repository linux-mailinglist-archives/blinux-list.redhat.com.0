Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 572861CFC17
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 19:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589304269;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cQdYwx20wKlXMouu5IKYY6wVPbKD0L76ahxGKpGAn/s=;
	b=NXDpDAI7G0tCyiOaO78xQ0joGSu39UYW1fyvqduSgZU1JqyxufI39Y/VRgbkCmyS95wmO+
	57RfzuH6jHD7GCXR5QbGIKln8EmqyhZraS1YK07mypu/SDX4maRmIPVb51ykdN5b7oGlAQ
	Vs6HG2owSRrqEeWa6GfkTyJ1q8kx6uk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-gP3bFfdqNdKo176Ty3YDKA-1; Tue, 12 May 2020 13:24:27 -0400
X-MC-Unique: gP3bFfdqNdKo176Ty3YDKA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A8A818CA270;
	Tue, 12 May 2020 17:24:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 492104233;
	Tue, 12 May 2020 17:24:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AF7D01809543;
	Tue, 12 May 2020 17:24:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CHOH8U003186 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 13:24:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1E2C2200A798; Tue, 12 May 2020 17:24:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A187202683E
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:24:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4ADA9916106
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:24:14 +0000 (UTC)
Received: from gmmr2.centrum.cz (gmmr2.centrum.cz [46.255.227.252]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-377-Ea1y0AhVNvClW1jDKIZXpA-1; Tue, 12 May 2020 13:24:11 -0400
X-MC-Unique: Ea1y0AhVNvClW1jDKIZXpA-1
Received: from gmmr-2.centrum.cz (unknown [10.255.254.35])
	by gmmr2.centrum.cz (Postfix) with ESMTP id C671160002C8
	for <Blinux-list@redhat.com>; Tue, 12 May 2020 19:24:09 +0200 (CEST)
Received: from out2.virusfree.cz (out2.virusfree.cz [79.133.37.42])
	by gmmr-2.centrum.cz (Postfix) with QMQP id C05A4561A
	for <Blinux-list@redhat.com>; Tue, 12 May 2020 19:24:09 +0200 (CEST)
Received: from out2.virusfree.cz by out2.virusfree.cz
	(VF-Scanner: Clear:RC:0(46.255.227.203):SC:0(3.0/5.0):CC:0:;
	processed in 0.8 s); 12 May 2020 17:24:09 +0000
X-VF-Scanner-ID: 20200512172408.912272.24313.out2.virusfree.cz.0
Received: from gmmr-2.centrum.cz (46.255.227.203)
	by out2.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384);
	12 May 2020 19:24:08 +0200
Received: from gm-smtp6.centrum.cz (unknown [10.255.254.20])
	by gmmr-2.centrum.cz (Postfix) with ESMTP id B41D320055F50
	for <Blinux-list@redhat.com>; Tue, 12 May 2020 19:24:08 +0200 (CEST)
Received: from DESKTOPN6LG1HQ (unknown [85.70.144.247])
	by gm-smtp6.centrum.cz (Postfix) with ESMTPA id 833779C000D1
	for <Blinux-list@redhat.com>; Tue, 12 May 2020 19:24:08 +0200 (CEST)
To: <Blinux-list@redhat.com>
Subject: please help Me to build Shortwave radio player
Date: Tue, 12 May 2020 19:24:08 +0200
Message-ID: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ>
MIME-Version: 1.0
Thread-Index: AdYogiR/SmjwzoC1RUa5Nmj2u4Hoxg==
X-MimeOLE: Produced By Microsoft MimeOLE
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear users and developers here,
Who of us would have A good will and would help Me to build Shortwave radio
player?
I Am building it on Arch Linux ARM64 BIt edition by using Android device,
Termux, Proot package and special Bash shell script which have been created
by MR Rausty.

The only one issue which I AM facing now is The following Libhandy available
on Github.


https://gitlab.gnome.org/World/Rust/libhandy-rs"
Meson can not build The project, because this library can not be updated
from Github. I will try to remove The line

features = ["v0_0_6"]
But I Am afraid that it will not make sense.
Removing whole dependency line also do not make sense. Since compiler
require this library from many lines of Shortwave source code.

Users who use normal Linux distribution can simply use Gnome-builder, but
because GNome-builder communicate with System bus, which can not be operated
from Android device, I Am helpless to use it.
I also do not know where to run ARM64 Bit ArchLinux. Because some
virtualisation engines do not support ARM64 on X86 or X64 platforms.

https://gitlab.gnome.org/haarek/Shortwave

I have also found out functioning way how to run Orca Espeak,
Speech-dispatcher and even The most of Mate desktop environment. So if
somebody would have An interest to experiment with Linux distros on Android
devices, I Am ready to give you some step by step instructions.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

