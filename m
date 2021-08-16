Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3C64D3ED924
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 16:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629125219;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4J9QUcIJ/6zeHsfdDwA0l3fbQx3dCzU2ZgA6uoQ3Aqo=;
	b=icCgvX1wUn5xDhsOzZ4N5PamdXXwb8gFgG0eftU8BlnGcGFGgIRfTIIyFM9OAbYg7vFKTl
	aIvAQE2ujaVAvuEmyI+ExlDr01Fhmcx9c50VcX9EN9ZkhvKSyll6QFuL/ILZHBSeLMO8rK
	ZZaG9CggnlkSSxjtnv2dZen2U8+s7m8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-uzShZ5OFMKKl22LMTrZbag-1; Mon, 16 Aug 2021 10:46:57 -0400
X-MC-Unique: uzShZ5OFMKKl22LMTrZbag-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 40EA7801B3D;
	Mon, 16 Aug 2021 14:46:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D96D2CD33;
	Mon, 16 Aug 2021 14:46:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AD74A181A0F9;
	Mon, 16 Aug 2021 14:46:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17GEkcPd017764 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 10:46:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 77C3D20239F6; Mon, 16 Aug 2021 14:46:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73F8E200BA97
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 14:46:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1DE918A01A0
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 14:46:35 +0000 (UTC)
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
	[185.70.40.136]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-490-6yohustxM4-s_kdvWz-Z7A-1; Mon, 16 Aug 2021 10:46:33 -0400
X-MC-Unique: 6yohustxM4-s_kdvWz-Z7A-1
Date: Mon, 16 Aug 2021 14:46:25 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Anyone else experiencing Firefox 91 crashes?
Message-ID: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17GEkcPd017764
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello list,

I don't remember when did I update my software the last time, but I have
Firefox 91 64-bit installed and in the few recent days, it's crashing
quite intensively.


Like, I launch it, type something into the search field... Crash!

I launch it again, type google url to the search field, enter my search
term on the page and while typing... Crash!

I want to install an addon and even if I somehow manage to enter my
query and get the search results, when I actually click on one... Crash!


It's really annoying, the browser is almost unusable. My cache and
cookies are cleared automatically after every run, so this shouldn't be
the source of the issues.

I've tried the troubleshooting mode and it behaves in the same way, so
extensions also don't seem to be guilty.

I have even downloaded a portable version of the browser from the
Mozilla website and it crashes as well.


The only thing that comes on my mind that it's a bug in the browser, but
I didn't find anything about it when searching.


Does anyone have similar experiences?


Firefox 91.0 64-bit, Ubuntu mate 20.04 64-bit.


Best regards


Rastislav




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

