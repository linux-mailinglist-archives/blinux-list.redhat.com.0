Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4815249E35C
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 14:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643289928;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yObq+WDU7LIkh9INBKoMftiddNpka0KV6iYz1XzWLWk=;
	b=WgUOQ7FOqVoBzM9A4igdmdXPHp9I6wnavAKkdd6lFCeGugiKGQCAJpkEDiJK2TMqC3I/C9
	QfEH4FfehK/c8StooSQC4+R4KMS++0crtAjorvExv3LQnknmvH3xLkhU9/r7r0x0gjkp7N
	3irZeewdA8FQayDApEQVtfT/+cmjPG8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-FKdG4vSTPkm7a4QVNE-IPg-1; Thu, 27 Jan 2022 08:25:25 -0500
X-MC-Unique: FKdG4vSTPkm7a4QVNE-IPg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFF241006AAB;
	Thu, 27 Jan 2022 13:25:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3039F7B01E;
	Thu, 27 Jan 2022 13:25:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2FBC14BB7C;
	Thu, 27 Jan 2022 13:25:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20RDOTYj002126 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 08:24:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E64DD2026609; Thu, 27 Jan 2022 13:24:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1185202717B
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 13:24:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CCB080029D
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 13:24:25 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-115-HC-Q55YHPO6mDa7fskpTXg-1; Thu, 27 Jan 2022 08:24:23 -0500
X-MC-Unique: HC-Q55YHPO6mDa7fskpTXg-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 8B144320253F
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 08:24:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Thu, 27 Jan 2022 08:24:22 -0500
X-ME-Sender: <xms:BZ3yYXdPVw_y1NsbtejL1aekuDnAr7GiXLMiALHD-0sa8ng-_bIpJQ>
	<xme:BZ3yYdPbO7WqxeGCa5D0nM8tiAY96ZN287fdFoD9QfxDliAGe4S8P_o1jmo26U1MF
	9bvxBeQUVqsnlXrw94>
X-ME-Received: <xmr:BZ3yYQiD4ImufmemnuQ834pTh4sxUBXQG21DLORFplK02L3qETKHv36aR5c_F2lbY4Ox3uVomVBNKEzMsgsBOwFyFtjD0a2tAw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfeefgdehfecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:Bp3yYY9mlGqCxCrN4OuVJV_zYIp578Pf5GEikBS-I5PL8jT8sB6xgQ>
	<xmx:Bp3yYTvpa3_uhndGNUeXHgWAwV_W9Nfv5HZuC-FHGaf5KJQFFccCow>
	<xmx:Bp3yYXHsx-E77ZlLoKDbogM8bkfyj0mw53UXJ6DRTRmDIxN9c3LCPg>
	<xmx:Bp3yYQ6WgszU18bb0XwznRRp2gcCrHyzEov3oJCwYMYOqPToLGYxow>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 27 Jan 2022 08:24:21 -0500 (EST)
Date: Thu, 27 Jan 2022 05:24:19 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
In-Reply-To: <CAPo=n-9UfJA2kW-Lc32Uy6X3Q+vU6TMHkz3GH+R2Y8bfmBFSeQ@mail.gmail.com>
Message-ID: <5837cc1-6818-5533-c933-33ac47650e4@hubert-humphrey.com>
References: <571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
	<YfIP1c5bihD/wxmY@panix.com>
	<CABKqQvF2jRBAb=Rw9MzgCq-U_0r7rGNA1uqTodcrxKuTGYorrQ@mail.gmail.com>
	<CAPo=n-9UfJA2kW-Lc32Uy6X3Q+vU6TMHkz3GH+R2Y8bfmBFSeQ@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Rynhardt: Please inform what font you are running-and-how many lines is it 
providing you? Here in Debian I have
setfont /usr/share/consolefonts/Lat15-VGA8.psf.gz
which has 180by240 columns, but running the same on my laptop, I only have 
112lines. I know in Slint there is a font which increases nicely, but this 
second I cannot find my notes. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

