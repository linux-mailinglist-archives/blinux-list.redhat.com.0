Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 165673B224E
	for <lists+blinux-list@lfdr.de>; Wed, 23 Jun 2021 23:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624483044;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QnYK5rqHCDkUQRWVTGaovs2LVmedTMv8cNpvyeOlUrk=;
	b=Z6vXW3tb48/Ks81kLh3e9HI/TLR9mDJkb6LCZNcJEoKu6Lj0c3ZYLMmTQy7gUCj42mG0uU
	0HlXst0NmVcFo0ymZoSV8nh3p7IozWGD9Oq3M9STfm3Lh5RhC8ZY1WPAwCvGb+BGKygIYP
	dMrRrLOJ4sqSQv5Ip/HAnS6n7gzHiyg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-251-_KnhxMZkOoSFKDtyCjhEAg-1; Wed, 23 Jun 2021 17:17:22 -0400
X-MC-Unique: _KnhxMZkOoSFKDtyCjhEAg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E94949126B;
	Wed, 23 Jun 2021 21:17:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D9505D703;
	Wed, 23 Jun 2021 21:17:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 53BD21809C99;
	Wed, 23 Jun 2021 21:17:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15NLGoQI031375 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 23 Jun 2021 17:16:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8E500D74B9; Wed, 23 Jun 2021 21:16:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87D87DA67C
	for <blinux-list@redhat.com>; Wed, 23 Jun 2021 21:16:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E608080066D
	for <blinux-list@redhat.com>; Wed, 23 Jun 2021 21:16:46 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-233-UvVFblQfO--SyBfKB3frdQ-1; Wed, 23 Jun 2021 17:16:43 -0400
X-MC-Unique: UvVFblQfO--SyBfKB3frdQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4G9GKg5Q0Dz8w6M
	for <blinux-list@redhat.com>; Wed, 23 Jun 2021 21:16:39 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id Kmwv46VW7Dw9 for <blinux-list@redhat.com>;
	Wed, 23 Jun 2021 21:16:38 +0000 (UTC)
Received: from [192.168.1.100] (184-169-119-73-dynamic.midco.net
	[184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4G9GKf4Cwbz8vdY
	for <blinux-list@redhat.com>; Wed, 23 Jun 2021 21:16:38 +0000 (UTC)
Message-ID: <20210623.211629.673.44@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: install OS via rackmount server text console
Date: Wed, 23 Jun 2021 16:16:29 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 15NLGoQI031375
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So I have a cisco rackmount server here. It only has 2 USB ports and no audio, which would be needed to connect a keyboard and a braille display. Thus leaving no room for a USB OS installation drive.
The server has a console port. It looks like an ethernet jack. Can I use this to install the operating system? I was told the CIMC interface is not very accessible. What about using a text console?
Any links to relevant documentation would be appreciated.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

