Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id B27AD1CFF7E
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 22:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589315979;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=psuw48nOV9oEZ9QmvaZ0WaKs+/8mxSdiIyVGYhHvrG0=;
	b=Tb8P+j+uFYpad96axO3qSgPDV3oE/tXVObqqQe+nC2Pp+PFrVEJiaTCn34QldtKVYQSM4U
	5eOvMTjWssFBXUSc4K7EBq0O6nvyB2GehVwpXIJY70XjkhUO8orwVT/vdCT6+1rtXWTVL3
	+kDR4QQVg5A0NsSLhIPACygH8WFdBLM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-CRb8k1nNNjeHkNeZSFb1vA-1; Tue, 12 May 2020 16:39:37 -0400
X-MC-Unique: CRb8k1nNNjeHkNeZSFb1vA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B2055473;
	Tue, 12 May 2020 20:39:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E5591001DC2;
	Tue, 12 May 2020 20:39:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8366A4CAA0;
	Tue, 12 May 2020 20:39:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CKdBdx018778 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 16:39:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5129D10F9AB; Tue, 12 May 2020 20:39:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D2E0110E8F
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:39:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA8B2916101
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:39:05 +0000 (UTC)
Received: from gmmr1.centrum.cz (gmmr1.centrum.cz [46.255.225.252]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-452-f2T9bLB1MEWI7NpSpzmHmg-1; Tue, 12 May 2020 16:39:03 -0400
X-MC-Unique: f2T9bLB1MEWI7NpSpzmHmg-1
Received: from gmmr-2.centrum.cz (unknown [10.255.254.35])
	by gmmr1.centrum.cz (Postfix) with ESMTP id 0216780443E2
	for <blinux-list@redhat.com>; Tue, 12 May 2020 22:39:02 +0200 (CEST)
Received: from out2.virusfree.cz (out2.virusfree.cz [79.133.37.42])
	by gmmr-2.centrum.cz (Postfix) with QMQP id EFCFA5620
	for <blinux-list@redhat.com>; Tue, 12 May 2020 22:39:01 +0200 (CEST)
Received: from out2.virusfree.cz by out2.virusfree.cz
	(VF-Scanner: Clear:RC:0(2a00:da80:1:502::7):SC:0(0.9/5.0):CC:0:;
	processed in 0.2 s); 12 May 2020 20:39:01 +0000
X-VF-Scanner-ID: 20200512203901.732116.23954.out2.virusfree.cz.0
Received: from gmmr-2.centrum.cz (2a00:da80:1:502::7)
	by out2.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384);
	12 May 2020 22:39:01 +0200
Received: from gm-smtp5.centrum.cz (unknown [10.255.254.13])
	by gmmr-2.centrum.cz (Postfix) with ESMTP id 9CE7D20055F4E
	for <blinux-list@redhat.com>; Tue, 12 May 2020 22:39:01 +0200 (CEST)
Received: from DESKTOPN6LG1HQ (unknown [85.70.144.247])
	by gm-smtp5.centrum.cz (Postfix) with ESMTPA id 795AD84000C8
	for <blinux-list@redhat.com>; Tue, 12 May 2020 22:39:01 +0200 (CEST)
To: <blinux-list@redhat.com>
References: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ><alpine.NEB.2.21.2005121409260.2382@panix1.panix.com><BD4BD103221A42D49AA3F208399FA7E2@DESKTOPN6LG1HQ><1349745D5A404694A8325D748EA8DFAE@DESKTOPN6LG1HQ><alpine.NEB.2.21.2005121632200.23890@panix1.panix.com>
	<alpine.NEB.2.21.2005121634420.23890@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.21.2005121634420.23890@panix1.panix.com>
Subject: RE: please help Me to build Shortwave radio player
Date: Tue, 12 May 2020 22:39:00 +0200
Message-ID: <B64D42E712534BCDA6C1C6169FA40421@DESKTOPN6LG1HQ>
MIME-Version: 1.0
Thread-Index: AdYonQyTDd1/Zp7nS72oHSmq22H25wAAChrA
X-MimeOLE: Produced By Microsoft MimeOLE
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

aaThe problem is, that script need Libhandy to be installed. And if I
install it by typing pacman -S libhandy, it try to fetch some update from
Github.
If I could run Gnome-builder. But it can be used only on standard Linux
systems.
And it is sad. Flatpack also refuses to run without system bus.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

