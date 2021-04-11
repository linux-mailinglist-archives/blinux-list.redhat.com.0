Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D992335B5AA
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 16:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618150993;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mdCJFxUxApPBZBMLBasVENqpL/9y4beZC7c2b8TinQk=;
	b=C+kDc5wRpGRAfW5LyCuUAn+iB6PyvuUG7192B0dWRJqHEtE0Nwq54U6jp2AWpGrOyySpaJ
	edXELqFX6BAKKJ4aJvijdQtV0B5Yx47odoAidt9lcO+LhdqVhyWCPkMbrqzF+8j2AJa+BD
	75DA+zvTUcF4xNiHEtOb5mQvqPkQY0g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-587-OJ7RZX_GM-u1lwMCkZ3R9Q-1; Sun, 11 Apr 2021 10:23:11 -0400
X-MC-Unique: OJ7RZX_GM-u1lwMCkZ3R9Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45A7818397A3;
	Sun, 11 Apr 2021 14:23:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 390E119C79;
	Sun, 11 Apr 2021 14:23:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 650421806D0F;
	Sun, 11 Apr 2021 14:22:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BEMNHI029912 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 10:22:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 933DC101A7FB; Sun, 11 Apr 2021 14:22:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8EC23103F279
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 14:22:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4027C80231D
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 14:22:20 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-472-_mTy5ej7P8a3E4kOqg1BMw-1; Sun, 11 Apr 2021 10:22:18 -0400
X-MC-Unique: _mTy5ej7P8a3E4kOqg1BMw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FJDbF2Q6WzG7L
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 10:22:17 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FJDbF28Pjzcbc; Sun, 11 Apr 2021 10:22:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FJDbF22nCzcbV
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 10:22:17 -0400 (EDT)
Date: Sun, 11 Apr 2021 10:22:17 -0400
To: blinux-list@redhat.com
Subject: archlinux
Message-ID: <alpine.NEB.2.23.451.2104111019030.6129@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

What replaced grub for efi boot systems?
I ran archinstall and pulled in espeakup and dhcpcd and alsa-utils and 
enabled those  and the system wouldn't boot after that.  The only way grub 
could run was with --block and that by default is disabled in grub since 
it's unreliable.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

