Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 33CDA3EE439
	for <lists+blinux-list@lfdr.de>; Tue, 17 Aug 2021 04:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629166754;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lHj0XxmbllV3eG/25a0KxZDxaCy0uuBvw2o8yhDhJRk=;
	b=Xdz8a2L1noL00zOFz44d6wUhzjlINWM9eVcwh3cI4XIEX+WRqBfum5+hXJ2yNQceMq2f7D
	2t5XTZB8jjIECUm2Lezi7PlBe6/j3bMCXEYGy+bhHsI+bc9mAcw341Ao/OaHwTs/ZY3Pbx
	5sJ/pk/vnGmj6tVWcYU/8Ns5/5/WBDA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-9v1-XjwpPh-sw8WDfQK2fQ-1; Mon, 16 Aug 2021 22:19:11 -0400
X-MC-Unique: 9v1-XjwpPh-sw8WDfQK2fQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CCC4802929;
	Tue, 17 Aug 2021 02:19:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3AC405C1D5;
	Tue, 17 Aug 2021 02:19:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 46843181A0F8;
	Tue, 17 Aug 2021 02:19:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17H2IshE030516 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 22:18:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 91B491111A5A; Tue, 17 Aug 2021 02:18:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D81F1111A59
	for <blinux-list@redhat.com>; Tue, 17 Aug 2021 02:18:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BAD65185A7A4
	for <blinux-list@redhat.com>; Tue, 17 Aug 2021 02:18:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-162-j7ssu4vlOty79Wme8Hw2tw-1; Mon, 16 Aug 2021 22:18:48 -0400
X-MC-Unique: j7ssu4vlOty79Wme8Hw2tw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GpZTN0B9nz3xRT
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 22:18:48 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GpZTM6hjKzcbc; Mon, 16 Aug 2021 22:18:47 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GpZTM6K4SzcbW
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 22:18:47 -0400 (EDT)
Date: Mon, 16 Aug 2021 22:18:47 -0400
To: blinux-list@redhat.com
Subject: elementary-os oden stable
Message-ID: <alpine.NEB.2.23.451.2108162215550.21184@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

Has anyone managed to download and test this version of the elementary-os
distro yet?  Even using chromium and firefox there was too much javascript
in my way so I never got to the download.  I will not fund any distro
until after I've proved it has sufficient accessibility for me to install
and run and I recommend nobody else funds unproven distros as well given
the demographics of the accessibility user community.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

