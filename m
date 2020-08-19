Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5C2A324A7E4
	for <lists+blinux-list@lfdr.de>; Wed, 19 Aug 2020 22:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597870107;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cJAScq4/KJu4i86fgK0+s9Xgomoe3D4C6Gn0MuNUJ54=;
	b=gBe77nQdaqJhdE50y6eYLlQyvbmCbAM47pUgZLxTOrt0CzaD1D/qG5IoeCw12q4XSxT4K6
	/JhnLLBWAte0ZsJJIGqe4aoz6GLn2CVMOUt/RO5ZodASuiTLlrxEBsED7pFYLXwfjR77we
	Pul+TwupHIKqlYev5KuzvQiCiGSZOM8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-Q5DqBHGTOVS82DXyx6BS4w-1; Wed, 19 Aug 2020 16:48:25 -0400
X-MC-Unique: Q5DqBHGTOVS82DXyx6BS4w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4F571DDF7;
	Wed, 19 Aug 2020 20:48:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A65F100238C;
	Wed, 19 Aug 2020 20:48:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 442C61832FC2;
	Wed, 19 Aug 2020 20:48:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07JKlvlt009811 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Aug 2020 16:47:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DABA12017F02; Wed, 19 Aug 2020 20:47:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6ACA2022797
	for <blinux-list@redhat.com>; Wed, 19 Aug 2020 20:47:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA811800BED
	for <blinux-list@redhat.com>; Wed, 19 Aug 2020 20:47:54 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-273-QWiFbT3eObqKKbFT5nHr8A-1; Wed, 19 Aug 2020 16:47:51 -0400
X-MC-Unique: QWiFbT3eObqKKbFT5nHr8A-1
Received: from spot.local (spot.local [IPv6:fe80::108f:61b6:e9ea:e7ae])
	by cfcl.com (Postfix) with ESMTP id B24C81355368
	for <blinux-list@redhat.com>; Wed, 19 Aug 2020 13:47:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Making postmarketOS blind-accessible
Date: Wed, 19 Aug 2020 13:47:44 -0700
References: <C23AB95B-05DB-4CEB-A7B4-DA94620BAFFF@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <C23AB95B-05DB-4CEB-A7B4-DA94620BAFFF@cfcl.com>
Message-Id: <53219C05-82FA-4F84-AC63-5798A47B6CF4@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07JKlvlt009811
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.502
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

After some informal research and reflection, I've decided that postmarketOS is the most promising basis for a blind-accessible, Linux-based cell phone operating system.  Developers are working on getting it to support a large number of devices (https://wiki.postmarketos.org/wiki/Devices), many of which are available for very little money.

PostmarketOS is based on Alpine Linux (https://en.wikipedia.org/wiki/Alpine_Linux), a popular, but very minimalistic Linux variant.  For example, it uses BusyBox to replace the functions of more than 300 common commands.  So, postmarketOS should run pretty well, even on fairly old cell phones and tablets.

In an effort to get things moving, I've started an Accessibility page in the postmarketOS wiki.  The "Packages" section contains entries for plausible software packages (e.g., BRLTTY, Fenrir, Lynx, Orca, w3m), including short descriptions and porting status.  The "Resources" section contains links to other, related pages.

To be clear, I don't expect that the base postmarketOS releases will ever contain these packages.  However, there should be a way to create a blind-accessible variant or upgrade path.  If you find this notion interesting, please check out the (WIP) Accessibility page  (https://wiki.postmarketos.org/wiki/Accessibility).  If the page is missing a favorite package, please add it yourself or email me so I can add it.  More generally, feel free to contact me off-list with comments, suggestions, etc.

- Rich Morin (rdm@cfcl.com)


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

