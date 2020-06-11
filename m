Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8928B1F6106
	for <lists+blinux-list@lfdr.de>; Thu, 11 Jun 2020 06:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591850246;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4p6dY0DLSDjfTJvpR6U7mqMHjdvWzbw4NWo6dMzPvAU=;
	b=Ii68dsnw6dS98TprF7siXpUzJ0A6JEfm651ZpQ2excS7La72WefZBTYxZ3El+HP7jOH14p
	eooQklmKTBni3a4FTn52EYJyGF7Rf1gy50/xwksmClbQ8utdsm0c4UjmiV+WCYyUbZoTne
	g1emKtVu58E63+lpudghfTDaLiLVUoo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-uedWs0IJPeWdWY2bSZ8iew-1; Thu, 11 Jun 2020 00:37:24 -0400
X-MC-Unique: uedWs0IJPeWdWY2bSZ8iew-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3027D800053;
	Thu, 11 Jun 2020 04:37:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBB6519D61;
	Thu, 11 Jun 2020 04:37:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECA65B34B4;
	Thu, 11 Jun 2020 04:37:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05B4awCM026042 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Jun 2020 00:36:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 23091EE37A; Thu, 11 Jun 2020 04:36:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E958422F6
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 04:36:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D98F800052
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 04:36:56 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com
	(wnew2-smtp.messagingengine.com [64.147.123.27]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-147-bg2HDO9QMreXoGhlh14nTg-1;
	Thu, 11 Jun 2020 00:36:53 -0400
X-MC-Unique: bg2HDO9QMreXoGhlh14nTg-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.west.internal (Postfix) with ESMTP id 3E4F96F0
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 00:30:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Thu, 11 Jun 2020 00:30:34 -0400
X-ME-Sender: <xms:abPhXuc5F48wSR6pq1YBh0reEzV4sGnpyhgdrOcKR7H9FMXHfFm2qQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedgkeehucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfgfgggtsehttdertddtredvnecuhfhrohhmpeevhhhimhgvucfj
	rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
	frrghtthgvrhhnpefhvdejgfefhfdvhfdvgedviedvhfetteejvdejhfdtheelfeethfet
	jedtudehhfenucfkphepuddtgedrudejvddrtddrudegfeenucevlhhushhtvghrufhiii
	gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhu
	mhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:abPhXoNN08VxB0cTbHXZs3D4iuXJzhnzexlDsGEiNO2S5GHHNYH_Lg>
	<xmx:abPhXvgKwBjUgnaTnvJBt4ifRK6SH9VQxNT40leOScaFrFbS5O9d2Q>
	<xmx:abPhXr_nIoVDfA5x1KacwvSDbsSi-HeSCGcWvxcnzNDVDJt_qJy10w>
	<xmx:abPhXnPvUXQN5AENeOgW94EUwg3_HyBH5mNYQFV_RRay-pLNvScb7Iet7YY>
Received: from [192.168.0.3] (cpe-104-172-0-143.socal.res.rr.com
	[104.172.0.143])
	by mail.messagingengine.com (Postfix) with ESMTPA id 446503280065
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 00:30:33 -0400 (EDT)
Date: Wed, 10 Jun 2020 21:30:32 -0700 (PDT)
X-X-Sender: chime@chime
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: New Mail Sound in Alpine?
Message-ID: <alpine.DEB.2.22.394.2006102118150.4085102@chime>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi All: This is quite an anoying mystery. 2Weeks ago I switched my domain 
away from Shellworld infavor of FastMail. Things are going fairly well, 
not as much spam. On Shellworld, especially in pine, whenever new mail 
would arrive, my pc-speaker would beep. Here on my Dbian machine, now 
running Alpine, I am not receiving any beeping. Sure at any prompt my 
backSpace provides a beep, which I changed the frequency with a setterm 
command.
So we are useing fetchmail to grab via imap from FastMail. I asked in 
comp.mail.pine and all he says, "its a terminal issue" I looked over the 
beep manual, nothing jumps out at me. Can any1 please inform why I am not 
getting a beep for new mail, or how to fixit? Yes, we have most of the 
settings similar to how they are on Shellworld.
The hazzard in not hearing a beep or bell, while scrolling an index of 
messages, the numbering changes-and-it would be quite easy to accidently 
nuke a wrong message.
I would actually prefer running pine verses alpine, but we cannot build 
2005 software. Thanks so much in advance for any-and-all guidance.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

