Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8469D45E3AE
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 01:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637886694;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2Adu4YCWGRyrYHy8tLjkSEtCgZYTJUEPDA3/7tVOrr0=;
	b=U601JbX9uMfZSqZ7NXzq1pkaC/jWhmxF+djkoxgUTYG3YgTVElLGVaRit2RY6ZSI4nfqbM
	wOpr8LDMphf7a/xOVlnQde2Wy7xsJpZ6k2sBy1NKY0wM88uC8qKcG/ukJmoAyW0NT32WYy
	/JTfxx4JTUGGkOqZ63X7nU6BVxVFunI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-504-pPdOL7zUNg-39wv3j5WKDA-1; Thu, 25 Nov 2021 19:31:30 -0500
X-MC-Unique: pPdOL7zUNg-39wv3j5WKDA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E2741006AA0;
	Fri, 26 Nov 2021 00:31:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 998A860C17;
	Fri, 26 Nov 2021 00:31:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 518884BB7C;
	Fri, 26 Nov 2021 00:31:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQ0OkbI019913 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 19:24:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5D67D51DD; Fri, 26 Nov 2021 00:24:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5777451E3
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 00:24:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 57F11811E76
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 00:24:43 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-130-2Cn0WqRaNDC8-5YxB2738A-1; Thu, 25 Nov 2021 19:24:41 -0500
X-MC-Unique: 2Cn0WqRaNDC8-5YxB2738A-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 45FBC5C01BC
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:24:41 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute4.internal (MEProxy); Thu, 25 Nov 2021 19:24:41 -0500
X-ME-Sender: <xms:SSmgYf6W_gkSDj8F1wulXS91pQayUatgznQ8H-DveS7BR3tQqOXRUA>
	<xme:SSmgYU6aLLvaxQ4ARAhuZ9haXf7OVQ5OtzrwQiL9ulLkojBjejVQMaq4IMnnnZ92A
	_e-Xy08RRpt-SSCB8w>
X-ME-Received: <xmr:SSmgYWcf6J9CnvPjK4G01nP-2apK4niBhrfhqLyv2iLU7BojdeK8tDCkJpRiB-M6vwDi8Y-4hIeBEIwCTk-O68fzeRCpeu30eQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrhedugddvfecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:SSmgYQJV4ytxFVBKAghcc35P8Mig4nA2SAzDuNx3SEHMD6TxEkqu0Q>
	<xmx:SSmgYTLCRkQPMalvlzqw51mhWaFEg-mDjOb7-cqIVJctTGDQN9GxEQ>
	<xmx:SSmgYZw3mIf6aEVNciG3H704TfvmTZ_V5Xhy7uVbLDEcbUdb-A7Kcw>
	<xmx:SSmgYemIoAMRwMg0mUa9qDrJa2kEQDODeg-jg-aNe9DSNrJhdu5anA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 25 Nov 2021 19:24:40 -0500 (EST)
Date: Thu, 25 Nov 2021 16:24:39 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: looking for two gui accessible applications
In-Reply-To: <47a91597-fac1-e156-ffa1-514f174ffe36@slint.fr>
Message-ID: <f2fec5b7-aa87-d23b-e4d-9d6ea5aeb644@hubert-humphrey.com>
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<47a91597-fac1-e156-ffa1-514f174ffe36@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Didier-and-All: Its interesting if I download the same youtube file with 
both youtube-dl and yt-dlp, the size-and-length it takes to grab it are quite 
different. I don't know whether I could point youtube-viewer to grab with 
yt-dlp? Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

