Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B163451522
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 21:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637007824;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JxLmNFMdnpfpJPxtl9rlhQ0bLSmdC4EsNZrgjdBAL0E=;
	b=YPyQoXb5XuJB0kfkXtpanNJJpaw+8e7XBi84CqPXnHQlxY5YVaMrlvXrz0m2Qr1RykwXGY
	0jZiNcM7DrzIMYi5poSaz7Js3ApT0hrjYzdz2WAGguOAFOmRmyg9E6UqoWqcUB8kXx+neA
	DJrtcsjEHMl9yU2U6pyC3nKqCxrvSMA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-559-j2rs2f6-Ot2-FcBVI0T_-Q-1; Mon, 15 Nov 2021 15:23:40 -0500
X-MC-Unique: j2rs2f6-Ot2-FcBVI0T_-Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B5C31DDE0;
	Mon, 15 Nov 2021 20:23:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0EC260BE5;
	Mon, 15 Nov 2021 20:23:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 56C664A702;
	Mon, 15 Nov 2021 20:23:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFKM0KT015131 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 15:22:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D49F0404727A; Mon, 15 Nov 2021 20:22:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D09424047272
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 20:22:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB719811E96
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 20:21:55 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-330-geDUD26jMGKWjhb8foqFqg-1; Mon, 15 Nov 2021 15:21:53 -0500
X-MC-Unique: geDUD26jMGKWjhb8foqFqg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HtLFY1zx8z2v72
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:21:53 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HtLFY1Fvtzcbc; Mon, 15 Nov 2021 15:21:53 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HtLFY0wCvzcbW
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:21:53 -0500 (EST)
Date: Mon, 15 Nov 2021 15:21:53 -0500
To: blinux-list@redhat.com
Subject: re: telegram-cli
Message-ID: <alpine.NEB.2.23.451.2111151517560.11715@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

once all versions of telegram-cli got deleted I ran slapt-get -i
telegram-cli.  The slint package installed correctly.  The version
reported by telegram-cli when starting is 1.4.1 no mention of beta inside
the app.
Unfortunately, the beta version also cannot export_card either and I
haven't checked out import_card yet either.  The beta version was
mentioned as slapt-get -i telegram-cli did its work though.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

