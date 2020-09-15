Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 00CA226AEE5
	for <lists+blinux-list@lfdr.de>; Tue, 15 Sep 2020 22:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600203076;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=H5lHaWNUSnbMnbXqVRDAQrTS7PRrGkqZVsV2o+2D4Fo=;
	b=Huz4fEH1JqH8vx6lN93kZNX0FtqnHDeCjFm/wozzsXqfNW3BHOjf/5V44prC08CdC5ETaK
	Dn7AdD6Jl+rujjRkN7YLJSEUOzh/2xiQGB+cqZUz00iOPfbSIHoIM+Mttpe9JiqLcYJ2Uf
	XZjM9ogUvMzk03y9FW6i6EBRHlwAhU8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-423-QoSsi-zfNkWT2ODnhSpv-g-1; Tue, 15 Sep 2020 16:51:13 -0400
X-MC-Unique: QoSsi-zfNkWT2ODnhSpv-g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C05E186DD23;
	Tue, 15 Sep 2020 20:51:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 912EB709BB;
	Tue, 15 Sep 2020 20:51:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22EF3183D023;
	Tue, 15 Sep 2020 20:51:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08FKorwK025133 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Sep 2020 16:50:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 13DDAEE854; Tue, 15 Sep 2020 20:50:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E63EEE853
	for <blinux-list@redhat.com>; Tue, 15 Sep 2020 20:50:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B7F29801224
	for <blinux-list@redhat.com>; Tue, 15 Sep 2020 20:50:50 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-283-I5DpzX17Ny-Y2FQVeTJqUw-1; Tue, 15 Sep 2020 16:50:48 -0400
X-MC-Unique: I5DpzX17Ny-Y2FQVeTJqUw-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 5482B5C0167
	for <blinux-list@redhat.com>; Tue, 15 Sep 2020 16:41:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Tue, 15 Sep 2020 16:41:07 -0400
X-ME-Sender: <xms:4yZhXwFDwPSCSs9udX3txzVxxamOifLe9KYUOzu6yqvZLvEXBuQfWQ>
	<xme:4yZhX5WJ8dwuebxdb6K_iSIRPYKt1eCiMhAVE4Rmn_0Ltdu_bout100Y_hDTey46e
	KnprNCHx8-kTcn6oEM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrtddtgdduvddvucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfgfgggtsehttdertddtredvnecuhfhrohhmpeevhhhimhgvucfj
	rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
	frrghtthgvrhhnpefhvdejgfefhfdvhfdvgedviedvhfetteejvdejhfdtheelfeethfet
	jedtudehhfenucfkphepuddtgedrudejvddrfedrieefnecuvehluhhsthgvrhfuihiivg
	eptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhm
	phhhrhgvhidrtghomh
X-ME-Proxy: <xmx:4yZhX6LKLxejAT3ccMBw4QZo0-iqwVZgB0o8-bq5gSEacUHRwmbrWA>
	<xmx:4yZhXyE_ol005A_0yBiwKVpsA-80mFJyaj6fKOllzbZDCwzzkhG96A>
	<xmx:4yZhX2VLfK_rmGOLGZzS29ao7bvTJA3z-3ndW9GI71FX5Lm5PdMrDg>
	<xmx:4yZhX-is29DNaJXdlGsU9lK-ivI_7NaxUg7bRHZZfFaQN9ObGdNoDg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id C274D3280067
	for <blinux-list@redhat.com>; Tue, 15 Sep 2020 16:41:06 -0400 (EDT)
Date: Tue, 15 Sep 2020 13:41:05 -0700 (PDT)
X-X-Sender: chime@chime
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Strange Happenings in mpv?
Message-ID: <alpine.DEB.2.23.453.2009151328080.2287550@chime>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Well, just for the record, I am running Debian sid, as I certainly love 
getting the latest packages. So, 1 of my Linux experts created an audio 
editor which I can use after ripping streams. Just recently any files, 
especially dot aac, but really anything, now when I play them in mpv, I 
cannot arrow through to sample audio. I can arrow when playing these in m 
player. So, here's an even stranger aspect. If I move any of these files 
or their directory, I can then arrow. At that point, even if I change a 
name of a file, but if I move it back to its orriginal location, again I 
cannot arrow. First we thought there was some library bug in mpv, but the 
fact I can work with these files if they are moved, says its not that. My 
expert is useing a vlc library to enable me to edit. Can any1 please 
inform if you've ever seen this or what I can do to fixit? By the way vlc 
seems to never let me arrow through a file.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

