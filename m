Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 14B403CC06E
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 03:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626483955;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=X55D5HjMu1dKKRg++3IL7u7z/a6veCv1YXlOuE4pM1g=;
	b=iWOEp1w4cjkZkPz5P7dV9xDgHa+s4F8aPOWCkg3Q8Q1Zqydly3ClNHPLuKGSonvTQ7bjGP
	wagTA8qDW1UyqpVxauXMpgLo630Bj68RuBTo4u9iduQawKYk3/mzFC3C7uZKMjx6s2W+MD
	SshlEbK3gSDzOHj5H4jRFtNl8B/iYLE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-_mg_hLFROu2DFvROPGXupg-1; Fri, 16 Jul 2021 21:05:54 -0400
X-MC-Unique: _mg_hLFROu2DFvROPGXupg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41502800C78;
	Sat, 17 Jul 2021 01:05:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AAC2060871;
	Sat, 17 Jul 2021 01:05:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 57EC24EA2A;
	Sat, 17 Jul 2021 01:05:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16H15fTf014738 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 21:05:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CBBFA10F99B; Sat, 17 Jul 2021 01:05:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C66001108C4
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 01:05:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B6CA800FFB
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 01:05:39 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-190-PVWiZdwlPJirMLfSUfcZZQ-1;
	Fri, 16 Jul 2021 21:05:36 -0400
X-MC-Unique: PVWiZdwlPJirMLfSUfcZZQ-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id A3E433200928
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 21:05:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Fri, 16 Jul 2021 21:05:35 -0400
X-ME-Sender: <xms:3yzyYJ-UTRz62zdJoWcglGkwj3RfjHVwZ5v-awhFWqWeMqHybQc3_Q>
	<xme:3yzyYNs9Ge3mkD9p_WT2V3qRnOoDdQoDWn62I1mLoXsHmGN-E0eHlDTw1EzA67olt
	L1JhzL2JgD4Tr_gEJY>
X-ME-Received: <xmr:3yzyYHBwlogh-E9xUEDHaH3XwJt8s5DvFLHRMCFRK6I42dLSgkkZzO54YotiXbvx_ZOb_LYhfSCuRR_CAUvHYYe5sizAcKDCdw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdeggddvgecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:3yzyYNfrNV1y21f2lClZjIRgYzO-vgmzQDeGUuwiZJtIvd6UCDx6ug>
	<xmx:3yzyYONYUDrtP5F1P6VtpH49U8Z-rnKi6-idizIRyAM49nxaAZaZRQ>
	<xmx:3yzyYPlmPFApbkUiaKMBLNcdrMhvSUgZYLhLRHZpYfroFHE1kSlIDQ>
	<xmx:3yzyYBYxF6P_lVseEThIdFnNYtoUTV1BUMxErM3m2v8IGtL09ZB7-Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Fri, 16 Jul 2021 21:05:34 -0400 (EDT)
Date: Fri, 16 Jul 2021 18:05:33 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora pros and cons
In-Reply-To: <D464B3F2-1585-4785-83D4-73E995D97527@gmail.com>
Message-ID: <538acdb6-a9d-76a-ebf3-34b16773294e@hubert-humphrey.com>
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
	<CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
	<alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
	<6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
	<16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
	<71fec14a-4782-77b2-7e6c-354065ebf6d1@hubert-humphrey.com>
	<D464B3F2-1585-4785-83D4-73E995D97527@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

No Devin, the double voice is with Speakup, as I am not in graphical.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

