Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DE8E03CC07E
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 03:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626485060;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yOpuYPXakVMc4bbxCWrhonTR8Nfkzf7ARLmXh/YTV7c=;
	b=UzpSiApeHiRuFBQ261iN8fEuzbBAcnpjqy1L5dehzsVRp1bFni+FhkrlQurtImOoxo329h
	gonFmwkrXowrGsvj344llgGJd0XpuwYrjmPqxjVTSY7h01jgSgnDnlKf0xJk6K5UlI40/4
	87xH76krf9n0hMiu6RPmTrJsWrVWyUw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-520-zQzRaDGXPsWrQxzot5qd8w-1; Fri, 16 Jul 2021 21:24:18 -0400
X-MC-Unique: zQzRaDGXPsWrQxzot5qd8w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6831D1835AC4;
	Sat, 17 Jul 2021 01:24:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94BC1604CC;
	Sat, 17 Jul 2021 01:24:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE2E24EA29;
	Sat, 17 Jul 2021 01:24:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16H1O7VG016211 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 21:24:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2E03C2039D9F; Sat, 17 Jul 2021 01:24:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29500209D03B
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 01:24:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B6E580270C
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 01:24:03 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-575-gEDhpteiPxuYRoY3_Y22JQ-1;
	Fri, 16 Jul 2021 21:24:01 -0400
X-MC-Unique: gEDhpteiPxuYRoY3_Y22JQ-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id B5A9A320091F
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 21:23:59 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute4.internal (MEProxy); Fri, 16 Jul 2021 21:23:59 -0400
X-ME-Sender: <xms:LzHyYD5ywXokaeWWbVKCB8xpTei6kjfJq8SWelP6ca3OUoYn-zN_iQ>
	<xme:LzHyYI50H25LHJOLwOz36jwGrb9TnInnQJicq5W8sKda7cyXGaJMy8jf3y-8wJEZ9
	nrXr3wWVXa8M-45hpQ>
X-ME-Received: <xmr:LzHyYKeMZLQ513jo32A_vlueMPUmYk5_5UKdXnWqGLry-qfF-r_bwp_-_GXDb8jSr_DB2NOZWP-ywmXSBMgLMfLeg0K6ECnHlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdeggddviecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:LzHyYEJZBeZ460HJrINsK5r_RoS49ZzcmrBpo2In4FtHOap55hcACw>
	<xmx:LzHyYHIRlH8yq-olO03ymNBpjyeYfit5D_giZw9UFJ-n4R55_hT6gw>
	<xmx:LzHyYNx1tssXOpCP1KHRef2_ONrRMPdho5AQEeLPkxe_QomlKT4ccQ>
	<xmx:LzHyYClrvDXbhsPBV388jiQR_VsI7nqPuiqY1dMKdZVz-do5eF5PJA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Fri, 16 Jul 2021 21:23:58 -0400 (EDT)
Date: Fri, 16 Jul 2021 18:23:57 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora pros and cons
In-Reply-To: <eefa3664-8c37-e99b-203b-92119f466772@gmail.com>
Message-ID: <17988e75-2d9a-f7ff-328e-8b7db7eaa40@hubert-humphrey.com>
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
	<CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
	<alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
	<6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
	<16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
	<71fec14a-4782-77b2-7e6c-354065ebf6d1@hubert-humphrey.com>
	<D464B3F2-1585-4785-83D4-73E995D97527@gmail.com>
	<538acdb6-a9d-76a-ebf3-34b16773294e@hubert-humphrey.com>
	<eefa3664-8c37-e99b-203b-92119f466772@gmail.com>
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

Kyle, thats quite informative, however, if the current line just has a single 
punctuation, I still hear a snippit of previous line. Obviously if its a blank 
line, the word blank mixes. Are their any settings in alsamixer to fix this? 
Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

