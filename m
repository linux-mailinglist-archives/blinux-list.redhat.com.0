Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id A4CD11F060D
	for <lists+blinux-list@lfdr.de>; Sat,  6 Jun 2020 12:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591438473;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bROoFUN49R5TxC8HDNqs+7elIXeeytFxaDUyy5IVfjA=;
	b=BkcEcxS0/hxYKSI2U0yU2LzvHz86KqIjdFjvaeHFBZ2ZZovscc9wQbAu87SpzQWcwZdhrf
	PIVVoEbmjStqb7rxhqVsZWOOS4X7LcJLqCLfnzuh0WAhIJH6V8NkjZsNHrpoBDSQVOOsoL
	sBvD7iFWK9WprimCKt5FcUiK6ciYYQc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-gXnDamPfOJ6glsdkC5gGOw-1; Sat, 06 Jun 2020 06:14:31 -0400
X-MC-Unique: gXnDamPfOJ6glsdkC5gGOw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98E6B107ACCA;
	Sat,  6 Jun 2020 10:14:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D25F19C58;
	Sat,  6 Jun 2020 10:14:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C206514CD7;
	Sat,  6 Jun 2020 10:14:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 056AEAbn012101 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Jun 2020 06:14:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8B4EE10EE944; Sat,  6 Jun 2020 10:14:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8742510EE945
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 10:14:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A48441859160
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 10:14:07 +0000 (UTC)
Received: from gmmr3.centrum.cz (gmmr3.centrum.cz [46.255.225.251]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-18-3I5JGByNNQ6kwIl1GO3kIg-1; Sat, 06 Jun 2020 06:14:02 -0400
X-MC-Unique: 3I5JGByNNQ6kwIl1GO3kIg-1
Received: from gmmr-2.centrum.cz (unknown [10.255.254.33])
	by gmmr3.centrum.cz (Postfix) with ESMTP id C233318008A48
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 12:12:54 +0200 (CEST)
Received: from out2.virusfree.cz (out2.virusfree.cz [79.133.37.42])
	by gmmr-2.centrum.cz (Postfix) with QMQP id BD4AE689D
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 12:12:54 +0200 (CEST)
Received: from out2.virusfree.cz by out2.virusfree.cz
	(VF-Scanner: Clear:RC:0(2a00:da80:1:502::7):SC:0(3.1/5.0):CC:0:;
	processed in 0.3 s); 06 Jun 2020 10:12:54 +0000
X-VF-Scanner-ID: 20200606101254.490585.20770.out2.virusfree.cz.0
Received: from gmmr-2.centrum.cz (2a00:da80:1:502::7)
	by out2.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384);
	6 Jun 2020 12:12:54 +0200
Received: from gm-smtp6.centrum.cz (unknown [10.255.254.26])
	by gmmr-2.centrum.cz (Postfix) with ESMTP id 6185620055F50
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 12:12:54 +0200 (CEST)
Received: from DESKTOPN6LG1HQ (unknown [85.70.144.247])
	by gm-smtp6.centrum.cz (Postfix) with ESMTPA id 475B79C000C7
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 12:12:54 +0200 (CEST)
To: <blinux-list@redhat.com>
References: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com><AD0DEA51-255F-48CB-A427-C861671A73CC@gmail.com><016a01d63b65$ff8d8a10$fea89e30$@GMAIL.COM>
	<71f8bb6d-dbfe-508d-365e-d248e9eacf1e@gmail.com>
In-Reply-To: <71f8bb6d-dbfe-508d-365e-d248e9eacf1e@gmail.com>
Subject: who of us would be so advanced C programmer that would try to
	increase the quality of this Android Shmem library?
Date: Sat, 6 Jun 2020 12:12:53 +0200
Message-ID: <0C1985EFC22E4AB5AB0B184483A8B522@DESKTOPN6LG1HQ>
MIME-Version: 1.0
Thread-Index: AdY7yErkqt5vrlukStKc7Yv6SxWrIgAIaybA
X-MimeOLE: Produced By Microsoft MimeOLE
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 056AEAbn012101
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Dear advanced C and C++ programmers here.
Adroid devices are light veight, portable, consume lov energy when powering
by using AC adapters. Modern 8 core CPUS are very professional and can be
used for many tasks. Thanks to Termux and Proot, it is possible to safely
use more and more Linux distributions.
But some Linux apps have been coded that it can only use shared memory. Mat=
e
desktop have been coded that shared memory is not The needed condition to
run this desktop environment. But some desktops or apps have been really
coded by The way, that shared memory must be used. In other cases it will
never run for you.

Some advanced C programmers have been so professional that they have decide=
d
to write native C libraries, which are working as A shared memory emulators=
.
Sure. Shared memory support, which hhave been incorporated to The standard
Linux kernel, not to The Aneroid kernel can not be fully replaced by .so
library, which try to do its best to emulate shared memory calls on Android
devices while running Linux distro by suing Termux and Proot.
Here is only shared library, which is legally available as opensource.

https://github.com/pelya/android-shmem

It have debugging enabled so when some app will try to use supported shared
memory calls, it will display its work activity result to The terminal.

Attention! This project is really advanced, it is not a toy and if you will
not deeply understand C language to exte=B9nd it or improve it, you can get
unexpectable results.
I hope, that somebody advanced will look at The code.
X11vnc is not supported if run without --noshm option, it uses may be
unsupported shared memory function or it uses too many shared memory
manipulations at A time.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

