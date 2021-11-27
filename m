Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCD0460262
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 00:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638055781;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N8+M0wSIZBg5TTvdyhF+Ew2sZgMvLkcsIDu3bAL7Kpo=;
	b=TsV5P5wj8pCQCTecuqFxT7+cS+kTJRAfc+RHHZlAwssJ+vNwr2m1sHA/BypQ5duOhIewUJ
	y2jY77UUewDGQN3TcKAloGizwcNPmRU4dAvjt03cDTRcbdktOeKI/zigzR0h3RuMp7zbPK
	2EnQX5cTDRbQtZJ/FymusA6Iq7Utcq4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-572-F5M2TkHjP8-LiF3hvPRIog-1; Sat, 27 Nov 2021 18:29:39 -0500
X-MC-Unique: F5M2TkHjP8-LiF3hvPRIog-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A44310066F3;
	Sat, 27 Nov 2021 23:29:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 027ED68D7D;
	Sat, 27 Nov 2021 23:29:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EABBD4BB7B;
	Sat, 27 Nov 2021 23:29:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ARNTNEe002193 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 18:29:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B9DE5141DECA; Sat, 27 Nov 2021 23:29:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5AB71410DD8
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 23:29:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3222F8007B1
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 23:29:23 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-279-tVeLj-jLMaulCLE8-9Uc0w-1; Sat, 27 Nov 2021 18:29:21 -0500
X-MC-Unique: tVeLj-jLMaulCLE8-9Uc0w-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id BE34B3200973
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 18:29:19 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Sat, 27 Nov 2021 18:29:19 -0500
X-ME-Sender: <xms:Tr-iYXn9a3-noWhbo35-mLNm19UyvoFptB-F9lr-Ngj6K5UWmatk1Q>
	<xme:Tr-iYa2-NyiPAltlZdbMyALikJaQ2Cuk5rinCU6FqcKISpVtiEG3RDhoqj6-hhilw
	hwlEGWuMYN3UjR5ikY>
X-ME-Received: <xmr:Tr-iYdr15_kaEdgiQ863pnoKPdCZBNms5uFA3iK9a-fY12gCnWm2i2czeiunG6HWWjONzWGyxEOu8dQeHNeh995380GufTdF4w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrheehgddutdcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:T7-iYfn1gMRGGBtenAcWxPc8O6ghB0R_FziDFsOdC5Wz1G5x8uBe4g>
	<xmx:T7-iYV01tnPIyStvZuW7s4rtJOu21QUhhP867qDrujChz0LYmIBmWQ>
	<xmx:T7-iYeviKFFravCtlYkhAm1C4JbuVdXRsGkXtkSfUdLJOuJiJZKPBw>
	<xmx:T7-iYSg6YkBJxc0zYJv83c0p7djJ-rYMEt7BEZXC3DLmdsJSU5jlAg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sat, 27 Nov 2021 18:29:18 -0500 (EST)
Date: Sat, 27 Nov 2021 15:29:16 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: looking for two gui accessible applications
In-Reply-To: <77236cdb-7bff-28be-19db-523e15e3a5ea@gmail.com>
Message-ID: <188e6c5d-8c4c-5521-5d51-556423c3294c@hubert-humphrey.com>
References: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
	<8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
	<20211127173705.fcq6hh2qbozygm42@alex-pc>
	<77236cdb-7bff-28be-19db-523e15e3a5ea@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well Ibraham, tab-complete will only work with files on your hard-drive or in 
another remote shell. So you can use tab to complete a directory name or file, 
but if there are more than 1, it will read you all choices-and-you can fill in 
more letters to tab-complete to an exact name you want. But no, in most cases 
tab-complete will not work in web-sites or youtube cases.
Also, please consider many files in Linux have capitalization, so that will 
affect your first letter in a tab-complete.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

