Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E5A4BD93C
	for <lists+blinux-list@lfdr.de>; Mon, 21 Feb 2022 11:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645440800;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pD5JMYb9735xLgXi5t0fg46QxWubh9hFDi6W9UDtbbE=;
	b=EaWP8Jc+8PMlCzNFCVdqh1iDvoym9A8HWXFUh6Seyo75gnnD6s0tUB1kKXJO4q9DvzziDx
	F9L4KFWHzi21LXUWTxJeDsXv+3Fm3jWblbdymhIAwwPdoNS5H//TV7mQ2lJLYLvSP9463q
	kplObwL4z2ScTyRAun1ufoePWyev234=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-610-u6gCBahnNv2rxfhNngMwng-1; Mon, 21 Feb 2022 05:53:01 -0500
X-MC-Unique: u6gCBahnNv2rxfhNngMwng-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F12818460EB;
	Mon, 21 Feb 2022 10:52:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACDF72AA8D;
	Mon, 21 Feb 2022 10:52:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 915F41809CAB;
	Mon, 21 Feb 2022 10:52:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21LAqAXQ000768 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 21 Feb 2022 05:52:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 763AE145FBA1; Mon, 21 Feb 2022 10:52:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 726C6145FBA0
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 10:52:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5DF5518AE940
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 10:52:10 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-401-7aslN8wKMkKdhrZzsVYI9g-1; Mon, 21 Feb 2022 05:52:08 -0500
X-MC-Unique: 7aslN8wKMkKdhrZzsVYI9g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K2Jyw294Wz153T
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 05:52:08 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K2Jyw1TC7zcbf; Mon, 21 Feb 2022 05:52:08 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K2Jyw0r43zcbP
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 05:52:08 -0500 (EST)
Date: Mon, 21 Feb 2022 05:52:08 -0500
To: blinux-list@redhat.com
Subject: re: mutt or alpine
Message-ID: <edc2d213-6272-de0-503b-5f3082f2ab95@panix.com>
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

There was and maybe still is a website called dotfiles.org.  It had
configuration files on it for various programs people found useful.  If
the website still exists the linux blindness lists might be able to
contribute to it but anyone who does so will help others in our community
by commenting their configuration files appropriately perhaps with a
#braille-friendly or #console-screen-reader-friendly or a
#graphical-screen-reader-friendly tag.  This way we have a chance to build
our capabilities and those that find these configuration files in the
future.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

