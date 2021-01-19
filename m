Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 79B3C2FAF33
	for <lists+blinux-list@lfdr.de>; Tue, 19 Jan 2021 04:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611027981;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yzgvA1pO1mw+v5N5XgtMmohu2+3hgRwTaBXERXzd0Zw=;
	b=WUdNgZhZPDPudXHDoP3CEZB1UtWPjuh1FMFAdnBUwPla4lDXPuRFAY6VlTdVRl6BkC+ouU
	2fpUISlT20KOGSyvkuqXbYM6xm/vJV2EXJJe+SO6ufHk4e5OHS18DyM/rwrC8yfJywxecC
	dWsxE/0YLAN38po9MhNkgPRqzRnxxkE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-1yNHY_r_OOqylypzNR54ww-1; Mon, 18 Jan 2021 22:46:19 -0500
X-MC-Unique: 1yNHY_r_OOqylypzNR54ww-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C95B81005513;
	Tue, 19 Jan 2021 03:46:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AEF875D9CD;
	Tue, 19 Jan 2021 03:46:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D76F2180954D;
	Tue, 19 Jan 2021 03:46:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10J3k8SV011589 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 18 Jan 2021 22:46:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 787092166B2B; Tue, 19 Jan 2021 03:46:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73C222166B29
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 03:46:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 609D9858EEC
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 03:46:06 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-77-lemDoNyfPTGI7d5J2GEIDw-1; Mon, 18 Jan 2021 22:46:04 -0500
X-MC-Unique: lemDoNyfPTGI7d5J2GEIDw-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 729525C01D3
	for <blinux-list@redhat.com>; Mon, 18 Jan 2021 22:36:59 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Mon, 18 Jan 2021 22:36:59 -0500
X-ME-Sender: <xms:2lMGYG8gav3hpN9Q3pXRT77GmLZxFBj-Q6OEum3txqrKxr9Y3UwpqA>
	<xme:2lMGYGulna8J4esOJFTuxBjGs_bdOQKr4uWbJ9WIpbL6VY2uQXglzMqZye403UCvT
	Vjq6wh9lM1vC9ItoeA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtdelgdehlecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedvrdef
	rdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
	gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:2lMGYMDowaj2E2jduHPINXmzYkcEs0FsDJ37ZoZCA_ONiritxuhXig>
	<xmx:2lMGYOcFkGdqBS8s4-J5AyuiyoGB07zxIY41nvjxVXXS5SvgwEL1eA>
	<xmx:2lMGYLPR13yLJy9Qi9Wp8FmIfqgD_ZieLMP0N919fC_aOybWHz5CFQ>
	<xmx:21MGYBaKLsIjJ7awom29yG1UsIIceH78IEhzTLKeax6NlZEt9lFWsA>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9E48B108005F
	for <blinux-list@redhat.com>; Mon, 18 Jan 2021 22:36:58 -0500 (EST)
Date: Mon, 18 Jan 2021 19:36:57 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Have you experienced Voxin completely freezing the speech?
In-Reply-To: <161102486156.7.5980584801147920523.3154268@slmail.me>
Message-ID: <dc438c54-5fcc-4630-a7e8-fddaefc291c3@hubert-humphrey.com>
References: <161102486156.7.5980584801147920523.3154268@slmail.me>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well HSL, many years ago when folks were useing IBM TTS either in Linux or 
windows, there were lists of words in English-and-German which would crash 
the synth. I am only running Voxin in the console with Debian Sid-and-I am 
not noticing anything consistant like that. Sometimes if `alot of 
scrolling info displays, the speech will stop until seemingly a buffer 
clears
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

