Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 255281CFD3B
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 20:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589308100;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZR99lm1W/ENq2eW7m9GxkPbczSASDNGciKhItYC2HLs=;
	b=BacnDU98bxG60cfLoku3CsuUq22wX9kgfujv4cdTnxFljOHE1Yb3Z4Skhhjrrq7n+TxWA+
	0gCN9pbJW5+ddFAMUsxyUwTvsueVNRVnDySn3SOUtsZmg+7rL2mWiU58SFFd6jnccEoXlE
	DxQMH0VOIwqz9jkA7ZDA6zbRcZVKuQE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-370-nO2FVF3SPcC12HcLTAyGTA-1; Tue, 12 May 2020 14:28:17 -0400
X-MC-Unique: nO2FVF3SPcC12HcLTAyGTA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B15798005B7;
	Tue, 12 May 2020 18:27:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E3835D9DD;
	Tue, 12 May 2020 18:27:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6259A4CAA0;
	Tue, 12 May 2020 18:27:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CIRUO4008393 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 14:27:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F06F42156A4C; Tue, 12 May 2020 18:27:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBED72156A49
	for <blinux-list@redhat.com>; Tue, 12 May 2020 18:27:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 31641811E77
	for <blinux-list@redhat.com>; Tue, 12 May 2020 18:27:27 +0000 (UTC)
Received: from gmmr1.centrum.cz (gmmr1.centrum.cz [46.255.225.252]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-475-KdTiKTlpMmKf1uKkxsSqng-1; Tue, 12 May 2020 14:27:23 -0400
X-MC-Unique: KdTiKTlpMmKf1uKkxsSqng-1
Received: from gmmr-2.centrum.cz (unknown [10.255.254.32])
	by gmmr1.centrum.cz (Postfix) with ESMTP id 638AD8044113
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:27:22 +0200 (CEST)
Received: from out2.virusfree.cz (out2.virusfree.cz [79.133.37.42])
	by gmmr-2.centrum.cz (Postfix) with QMQP id 5DA21561B
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:27:22 +0200 (CEST)
Received: from out2.virusfree.cz by out2.virusfree.cz
	(VF-Scanner: Clear:RC:0(2a00:da80:1:502::7):SC:0(1.0/5.0):CC:0:;
	processed in 0.3 s); 12 May 2020 18:27:22 +0000
X-VF-Scanner-ID: 20200512182722.071081.31272.out2.virusfree.cz.0
Received: from gmmr-2.centrum.cz (2a00:da80:1:502::7)
	by out2.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384);
	12 May 2020 20:27:22 +0200
Received: from gm-smtp5.centrum.cz (unknown [10.255.254.11])
	by gmmr-2.centrum.cz (Postfix) with ESMTP id E6E6820055F4E
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:27:21 +0200 (CEST)
Received: from DESKTOPN6LG1HQ (unknown [85.70.144.247])
	by gm-smtp5.centrum.cz (Postfix) with ESMTPA id C372484000CA
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:27:21 +0200 (CEST)
To: <blinux-list@redhat.com>
References: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ>
	<alpine.NEB.2.21.2005121409260.2382@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.21.2005121409260.2382@panix1.panix.com>
Subject: RE: please help Me to build Shortwave radio player
Date: Tue, 12 May 2020 20:27:21 +0200
Message-ID: <BD4BD103221A42D49AA3F208399FA7E2@DESKTOPN6LG1HQ>
MIME-Version: 1.0
Thread-Index: AdYoiL8Nky6gsAYrSgiWgFq0XI9sFgAAX63Q
X-MimeOLE: Produced By Microsoft MimeOLE
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Unfortunately, Shortwave do not contain this directory. The build process
work similarly like Gradle work if somebody wan to build Android app which
depend on library, which is on Github.
All other libraries can be even compiled without errors, there is more than
260 libraries. Mr Haecker have used revolutionar approach to prevent messing
with various library version. He has simply collected all libraries source
codes from Github and his build script download those various source code
versions. Unfortunately, Rust building from Github is very memory hungry
task. So it allocates more than 1 GB of RAM. FOrtunately Android do not
allow app to allocate too much RAm so more than 800 MB from 4 GB of RAm is
available.

Sure, compilation is much more slower than while using regular Linux which
uses system resources exclusively. But it work without error messages. Only
phone board produces some warm and battery is also having higher
temperature. But because other build in services, Android kernel
configuration is preconfigured from The phone manufacturers, there is no
danger of explosion. Or phone board over burning. Because various modules
can slow down CPu if temperature would be too high.
I Am using Dummi video driver, since I do not see at all. I Am using VNC
protocol, X11vnc and other packages, special xorg.conf prepared to work with
dummi video driver. Since Tigervnc failed to work with mate-session.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

