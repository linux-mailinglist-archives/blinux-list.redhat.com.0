Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 186C24AA4FE
	for <lists+blinux-list@lfdr.de>; Sat,  5 Feb 2022 01:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644020503;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bj/AIWnt2fb9H4kO8eaXUtHBSnV8uQPjAiW8ir1Jbkg=;
	b=XBkOu7RIRGnk+yNf92z9b/YETsDo/UQAbRmrAB+vY2od/NTadKxkJLq+yiFI3ErXodC6ZC
	Ht0irEcksq01yJS1fDJvtVPUQ0BYxh5XWknljLOSiuVETuvjhisOMLmFICNhG5uRGbnyZx
	aSBUjomDLn8Yld6Zl1MiuEP+ucbQ84s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-BGuUn5EIP3-WosVflst36Q-1; Fri, 04 Feb 2022 19:21:39 -0500
X-MC-Unique: BGuUn5EIP3-WosVflst36Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 57FA51091DA2;
	Sat,  5 Feb 2022 00:21:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 905A762D51;
	Sat,  5 Feb 2022 00:21:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2392B4BB7B;
	Sat,  5 Feb 2022 00:21:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2150HZpe027971 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Feb 2022 19:17:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E6DD42024CB8; Sat,  5 Feb 2022 00:17:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF2EC2026D2F
	for <blinux-list@redhat.com>; Sat,  5 Feb 2022 00:17:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B56113C00130
	for <blinux-list@redhat.com>; Sat,  5 Feb 2022 00:17:31 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-22-Wdg33WZsMhab5-AHO1Muog-1; Fri, 04 Feb 2022 19:17:29 -0500
X-MC-Unique: Wdg33WZsMhab5-AHO1Muog-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id D61BB3201FB9
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 19:17:28 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute4.internal (MEProxy); Fri, 04 Feb 2022 19:17:28 -0500
X-ME-Sender: <xms:GML9YXFXV-96k8Gs345-z5RNZTuAIujyY6iGFohDW9lwRkz7Xo-saQ>
	<xme:GML9YUXd4UIiclTthcpovFPTBLzhy06jVB3PGTTUlXSCSdtzMKNfMDqCOfyZgC7HE
	RBFPHNbh8YTELrICmU>
X-ME-Received: <xmr:GML9YZKM8y_dm3SzmqcelfyRxueCm6G2i6_y4fUlRlGnoKxOMzKRv8H6ibC4MR6q_tMkX0M2egiOBH3loLJOVhpQSv3W1hclDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrhedtgddvtdcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:GML9YVFyebK-buxr921YN6Tedm-UHh-yXAP3KHoQ7oDDVqqtGdQkzQ>
	<xmx:GML9YdU2WvfmACjO-VVBn2SdRIs2Xe8lvoVAHGTkxulx4XVIueF7-A>
	<xmx:GML9YQNT7yGPRH2H2KcRgIfVXbTYhpHyxKFVxL3lUI6_YQZMUMMJNQ>
	<xmx:GML9YcCTSC0MbUILTruCj9Ap8icyQuZ8Nqic4c3MQI7NrcucUOUYUw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Fri, 4 Feb 2022 19:17:27 -0500 (EST)
Date: Fri, 4 Feb 2022 16:17:26 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help with YT-DLP
In-Reply-To: <cb0030ca-3242-f314-2ded-fb385c9fb5d5@icloud.com>
Message-ID: <df4c8f1-5264-8de0-6eac-d3a11a45062@hubert-humphrey.com>
References: <d3189fce-4aee-cb12-9498-2e19f7692ae0@icloud.com>
	<87F1D5DF-B674-4C23-8D16-FA6F8E345415@linux-a11y.org>
	<b6b3ae87-95f6-9e92-0d91-51da13c97572@icloud.com>
	<20220204.224600.337.7@[192.168.1.100]>
	<cb0030ca-3242-f314-2ded-fb385c9fb5d5@icloud.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Actually I use youtube-viewer to find items-and-have yt-dlp grab them. However, 
I probably have `thousands of news videos with seemingly randem 
numbers-and-letters after an actual title, just before an extention. Would love 
to cleanup all of that. Sure I realize if I were to convert all of these to 
straight audio, I would save alot of space. I suppose if youtube items had tags 
similar to mp3s, this would be much easier. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

