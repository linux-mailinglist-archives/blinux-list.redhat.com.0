Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B6C5E3D2F72
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 23:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626991167;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=92SdHKIa5vUyqO0A/ZAjimBFmTgw9IPw6k85+yrNbfU=;
	b=UjzZLlgoevmOOL8Daexaq8FtYc1W++aacihXjbRnfTHv7HZZGEZ5S7qoIKmFS0PTAkvu4g
	0iOkT+Me3JPBf7TTsC2AJtBJQ2cIV8uwnKMEimGO83jnyq06yVCmADa7L+vMo6Vy6ubtmF
	oPgKzzwXu8lYJdZ46xYzktF/bqPxdhY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-viNSr4qjOU2IvPhk-6IxUg-1; Thu, 22 Jul 2021 17:59:26 -0400
X-MC-Unique: viNSr4qjOU2IvPhk-6IxUg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1A0E6409B;
	Thu, 22 Jul 2021 21:59:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C052310016F2;
	Thu, 22 Jul 2021 21:59:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 992384BB7C;
	Thu, 22 Jul 2021 21:59:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MLxGvh024348 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 17:59:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1A50B20A8C0B; Thu, 22 Jul 2021 21:59:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15F8020A8C0A
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 21:59:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35D57801E80
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 21:59:13 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-442-fmIiE0xrPqiryO6LOpCsDg-1;
	Thu, 22 Jul 2021 17:59:10 -0400
X-MC-Unique: fmIiE0xrPqiryO6LOpCsDg-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id BB9B2320096C
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 17:59:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute4.internal (MEProxy); Thu, 22 Jul 2021 17:59:09 -0400
X-ME-Sender: <xms:Ler5YOj0NpUe7RQV1H-oxGkfQuGYR0HSb_kfllugHU2KsslBmVcWxA>
	<xme:Ler5YPDSRCYpNBx_CrHsmj49tcQKrxxEUR6sN07ZXkHeqXgjdq80Vy5NWXnFO2Fpo
	Sw1atJM2oUIMVCjpHw>
X-ME-Received: <xmr:Ler5YGHIca25zi7AJLYqiS-N0-AKLu3MKNvCINy5gWmlV4AXZvSQIB0ivxu29_tNDDUbqH8_A2JuaL8afZeCMKtKWBKweks3SA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeejgddtudcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:Ler5YHTjyC_oxDLgqXxcA0RQoBMAk7VgelPYjG11Op5QEeQY_t8kZQ>
	<xmx:Ler5YLzUFliEU44cuSsu4EWWNnkbc6HjTsoaO-oJwyufeLO8rrqIBg>
	<xmx:Ler5YF4YEKvJcSY2JwUFlc5MTiyMTIC0L-K843-WUNr95W9DRAcLqg>
	<xmx:Ler5YMtzVqraOwKTw3C91dHOxW7fva3hWtjll-YqxVngTjPXYCnHOA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 22 Jul 2021 17:59:08 -0400 (EDT)
Date: Thu, 22 Jul 2021 14:59:05 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question on speakup
In-Reply-To: <Pine.LNX.4.64.2107221742510.1329936@server2.shellworld.net>
Message-ID: <49ea5f48-fe89-524a-bf1-aac87e2bb6d9@hubert-humphrey.com>
References: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
	<5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
	<Pine.LNX.4.64.2107221343071.1324567@server2.shellworld.net>
	<87270eeb-d2f2-dd94-37e5-2114e937c554@slint.fr>
	<Pine.LNX.4.64.2107221742510.1329936@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Many years ago Phonix sold a DecTalk software which was around $50. At that 
time I used it with an Oralux Live CD, but while I don't have that software 
around, there are DecTalk discussion lists where they keep track of every 
conceivable version of DecTalk.I think the list is hosted on freelists.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

