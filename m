Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D8CD234117F
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 01:35:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616114111;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rSsUW8tZhnTF6y0OB1g6pLt1ywz94Auz2N5J6NtxC4o=;
	b=ZByDnFTP8PQ4bUp/J5T5FqcU55PJeZhu5E0TslZlTOfZlA4GSOQdkYZPaKnoAwqxPNg5LJ
	UZ6oVqPbc95hxqmPWQzOgWAt/hcDfvCl+r/cKW6WBnEvQIlIserzSNxTgxy9ZXY7C/6/NU
	hgVtX5QJa0W8ecfifpBh1U+mXkejmEM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-UmkQ3yPSNYa8kRxMlM_rXw-1; Thu, 18 Mar 2021 20:35:08 -0400
X-MC-Unique: UmkQ3yPSNYa8kRxMlM_rXw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 61CDD6D242;
	Fri, 19 Mar 2021 00:35:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F3755944D;
	Fri, 19 Mar 2021 00:35:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44EC04BB7C;
	Fri, 19 Mar 2021 00:35:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12J0Ypur000550 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 20:34:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 95BA62A64; Fri, 19 Mar 2021 00:34:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9009FF97FC
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 00:34:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70ED585A5AA
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 00:34:48 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-549-W66g1tBzOkOGHNnQBV0Gfw-1; Thu, 18 Mar 2021 20:34:46 -0400
X-MC-Unique: W66g1tBzOkOGHNnQBV0Gfw-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id D0B1E5C01A0
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 20:34:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Thu, 18 Mar 2021 20:34:45 -0400
X-ME-Sender: <xms:pfFTYPOfgPwsvEyVZZpcdJOaNnvEsuAwe9e9OkVqoN_HSyUdCb2dkA>
	<xme:pfFTYN9cD4MSjU-2ry1klkgK-TdTjlbt1wgvWk6ub3PHABMZaiSr_2_FxwgrV37Es
	Xs9cMSE2Pxn8olrAGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgvdefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:pfFTYO4ZP24BDOtcBYo0NUgSUzgCVNXbu7gV2vPEpIP0pPDqldXeLw>
	<xmx:pfFTYDkslYL0PlqUBxOR34XfkwZEYiuFpcHu2eZHf_T8fMS4Sm30KQ>
	<xmx:pfFTYBGoBozFGC6C1ra7qpxu5Rn4uKhUvdA9I7ldSZSRI6UZqoJzpw>
	<xmx:pfFTYI2DSvI77a19KdZJwO9NudMMBCrITUhJDbNZk3EDLQ2Wf2fnkw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 68917108005F
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 20:34:45 -0400 (EDT)
Date: Thu, 18 Mar 2021 17:34:44 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Are Their Any Other Graphical Screen-Readers in Linux, Other
	than ORCA?
In-Reply-To: <Pine.LNX.4.64.2103181943340.1840295@server2.shellworld.net>
Message-ID: <8bb58e3d-eb8f-1140-22a0-f8d18b7ec47@hubert-humphrey.com>
References: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
	<7fad9a07-f428-f096-1a4e-2ef5589a1388@protonmail.com>
	<Pine.LNX.4.64.2103181943340.1840295@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Wow, Karen, I absolutely loved your challenging inquiree. I would probably just 
stay in the console if all web-sites were simple-and-text friendly, as they 
were in 1997, before javascript ruined so much of our experiences. Next, I 
would be thrilled to enjoy the best of both worlds of Vocal-Eyes and Speakup. 
Vocal-Eyes was powerful with several dictionaries to customize how things were 
spoken when read or typed. While I was rather happy in DOS for many years, 
Linux provides me lots of sound options, I have 4 sound-cards with a 
switch-box. I have 24 active consoles. Certainly, I would like to enjoy more 
voices in a console in Linux, as there are in windows SAPI4. Also, OCR was so 
simple when I had Openbook, but while there are certainly tools in Linux, you 
must assemble your own scripts along the way. So, Karen-and-others, do those 
answer your exciting questions? Thanks so much in advance.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

