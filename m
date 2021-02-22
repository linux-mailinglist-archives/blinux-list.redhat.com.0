Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7165A321F85
	for <lists+blinux-list@lfdr.de>; Mon, 22 Feb 2021 20:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614020499;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KhZC0rpzJZb6BKMPg1N0chTYygUVd5HBuVjdlLxY4S8=;
	b=KtPB+k38ADEQKZxcvoYaznSuqOkNMR8CsrPbCkxQUbJw+me/62vhd31KkfhIsEEbq059LB
	O5yGY2bLKQRY1+H2EXFaofvEQCfVL7Ln8pvdLSDbzId9qviAi2c3EBVBrarSJ4fxuhe3eT
	9fvu/DH7UEUqfuBj/OWhbspIIidxvSY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-7-C5uHWk9eM5Ke6tJZWTmXJQ-1; Mon, 22 Feb 2021 14:01:35 -0500
X-MC-Unique: C5uHWk9eM5Ke6tJZWTmXJQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 625351020C25;
	Mon, 22 Feb 2021 19:01:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A84F5D71D;
	Mon, 22 Feb 2021 19:01:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA0594E58E;
	Mon, 22 Feb 2021 19:01:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11MJ19Dx031279 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Feb 2021 14:01:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8C70085786; Mon, 22 Feb 2021 19:01:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85CE1906B0
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 19:01:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6A94967F40
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 19:01:06 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-8-K1TVQvLkN4KAddG_xyT5xA-1; Mon, 22 Feb 2021 14:01:04 -0500
X-MC-Unique: K1TVQvLkN4KAddG_xyT5xA-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 069BE5C01BD
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 14:01:04 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Mon, 22 Feb 2021 14:01:04 -0500
X-ME-Sender: <xms:b_8zYFopnTEztCdfMyA18vh-ilZC-anDEQvNa1N2huFjF0bwe_wZZg>
	<xme:b_8zYCVQr6At2yb_jcYvsASPZGdgn1HWZHb6UrasSLK_oQgx_3pd64lygpbYTknDr
	plgMx9ZuVeafs-oHeE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeefgdduudelucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
	rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
	grthhtvghrnhepjeffffdujeelueffieevtdeiteettdekgffgkedvueejteektdehfefh
	hfdvteeknecukfhppedutdegrddujedvrdefrdeifeenucevlhhushhtvghrufhiiigvpe
	dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhp
	hhhrvgihrdgtohhm
X-ME-Proxy: <xmx:b_8zYI0QgvG-JuiSn3npoV3LlESHd5XyGoVmcFMY7rU3y-iTj_68mA>
	<xmx:b_8zYL1VZNTkhBvluHuq42gc3OYDMcd_ZJa00DH-G_j8-LNHS_yB2A>
	<xmx:b_8zYPlum87Rexzs-MdbMxPH8Fw0TGvLnMjUfeUtBbs8edSmZlKg3g>
	<xmx:cP8zYEqMH3WU0yWVeF3OVqnFhctpZY1tu9jxm7gB6jv4dp3NBIp4PA>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 42C6A108006B
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 14:01:03 -0500 (EST)
Date: Mon, 22 Feb 2021 11:01:01 -0800 (PST)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Running Android Voices in Linux?
Message-ID: <dfb5b6c7-a3c6-9bc2-3385-5d8bab5e17e@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: I finally have Ivona voices in a directory, but they are dot apk files, 
which are Android compressed. When I looked for any conversion tools, it lead 
me to installing anbox which is an Android emulator. Ultimately I would like to 
run these voices in Linux with Speakup. I would rather not switch to Chromevox 
as that screen-reader is missing some items I use all of the time, such as 
"flat review" So, can folks please inform which of these sequences would be 
best? Converting voices to Linux or running anbox to get these voices, but can 
I still use Speakup? Obviously if I could run an Ivona voice, I might not need 
to listen to this DecTalk. Thanks so much in advance-and-please provide steps 
along the way.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

