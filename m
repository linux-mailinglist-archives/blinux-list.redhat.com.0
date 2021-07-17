Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9CC033CC017
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 02:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626481737;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IVEOb21UhHqxJ2zBK/wdw21ZV2Co3jKoto8AvXLbWZY=;
	b=WsojLyMqd2XZ48cXPEKgyoIR6uXpGYBnE+PAdI4nEdWzXLTHVO+V8makqhU/C25axem4aw
	LIpb8mQ4+Ldi0doFneF+mNdPmfMq/FH02vO1A6E5eoIicL1fpCfYj83Svve1rzV3WMiuXR
	+6QTqazen/zt5aIOMbfeU59T1Pcxnh8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-553-EwpQJsIMMIaTzLP-TIonnw-1; Fri, 16 Jul 2021 20:28:56 -0400
X-MC-Unique: EwpQJsIMMIaTzLP-TIonnw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6AAB7362FA;
	Sat, 17 Jul 2021 00:28:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1C285D9DE;
	Sat, 17 Jul 2021 00:28:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F1A5B1809CAC;
	Sat, 17 Jul 2021 00:28:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16H0QE9I012335 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 20:26:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 03FE411D2B0; Sat, 17 Jul 2021 00:26:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F33F011901D
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 00:26:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85709185A794
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 00:26:11 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-201-wQpVt7dvMayqJ3mkjtugKA-1;
	Fri, 16 Jul 2021 20:25:57 -0400
X-MC-Unique: wQpVt7dvMayqJ3mkjtugKA-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id D942D320090D
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 20:18:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Fri, 16 Jul 2021 20:18:03 -0400
X-ME-Sender: <xms:uyHyYIs-USOuO52LL8QejpdcBQGLi541x1WsOmQGuqduhHCEelc4nA>
	<xme:uyHyYFef4oFkHr87xJ8kUGtM9fDXgM3k5YIHa22ZjYvYO11qf8i7NQdKUZCfef1Wb
	DR66akRMwYnePgTpfU>
X-ME-Received: <xmr:uyHyYDxaOjaUhdkFOh-ZEUSsG1XiaWqBIIulvXQWX7SOXBWdEhD4dv5MvwgNxyae0bmAnodnTbwtuDfRUg2loRDwSgVB1fz2Zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdeggddulecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:uyHyYLO_HQAITrQCFdcY7sufyGikMeQ200mOZSEKP3ftfXBr6QqovQ>
	<xmx:uyHyYI81LfYDLLVbJYnTPIcmG0-hJUEjPnASipL5pkup2qXDWjlEPw>
	<xmx:uyHyYDXkGFIZ5HiNYllR24-zC4Cr7uzYYuq4a7D3fVbqidEeql2U-g>
	<xmx:uyHyYBLGhP_lzoh3nL0NjgXBEkcxY84VSCwDjf3XnqVUvwdbBTCaLQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Fri, 16 Jul 2021 20:18:03 -0400 (EDT)
Date: Fri, 16 Jul 2021 17:18:01 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora pros and cons
In-Reply-To: <16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
Message-ID: <71fec14a-4782-77b2-7e6c-354065ebf6d1@hubert-humphrey.com>
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
	<CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
	<alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
	<6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
	<16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, as far as double voices, at times on a laptop, Voxin will do that. If I 
hit down-arrow either in review or a regular arrow, I hear a short snippit of 
the preview line mixing with the current line. I have mentioned this to Gilles.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

