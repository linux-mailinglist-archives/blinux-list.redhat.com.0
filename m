Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E0943F38A
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 01:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635464302;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g4eN6gjzPqRuPQ1FXeufGq81I2T73lDA3lKesSdtf0o=;
	b=b0Hl5VcwLLtnPmznZZE4KJKreoY85YXzBEuwDiQnWrqpytnkrwhNCTDmW/OmruLjI1k4Gw
	z6xmO9WE2h9lN5ZroPMvi+/R/2/xj+qXGFhiHkKxTtvlljrf0vm+e81bOWMNejRgQMikeu
	dZxYeQ+th729mRwRAgZFxZvmhiJHW/M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-325-bubzK3lNONCCYk-j0tXeaQ-1; Thu, 28 Oct 2021 19:38:18 -0400
X-MC-Unique: bubzK3lNONCCYk-j0tXeaQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B10331808318;
	Thu, 28 Oct 2021 23:38:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD542604CC;
	Thu, 28 Oct 2021 23:38:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DFD474A703;
	Thu, 28 Oct 2021 23:38:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19SNYchq005846 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 28 Oct 2021 19:34:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8662551DD; Thu, 28 Oct 2021 23:34:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8124451DC
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 23:34:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75C2380015A
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 23:34:35 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-156-vtOncRrJP46IPp1yM6tWqg-1; Thu, 28 Oct 2021 19:34:33 -0400
X-MC-Unique: vtOncRrJP46IPp1yM6tWqg-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id C12A75C0185
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 19:34:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Thu, 28 Oct 2021 19:34:32 -0400
X-ME-Sender: <xms:iDN7Yfvc3d2qXzwwmM6NpN6ZxzOyywIlx7smrSPKqepEUhPhwjMFnQ>
	<xme:iDN7YQe1WnVwK33XvXLwOTBJ3oqOefdZMVkDbP84KcCSLpRQNGDuoW4ByHGtulkTG
	bP4_gB93HWhq2YkedA>
X-ME-Received: <xmr:iDN7YSy2F2Kv-WGoT8VKhElS1-Gd0kLDdq3nxN1Dxg3ahwGfPhxGZMtSN9PEqFQh1LSI8aIfI1gdoQWVwRdp6IAsXv1yGo_8mQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdeggedgvdduucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:iDN7YeOEN29azp8skQR0PGvPy8ETlRDlKslvmG_d2AbpxFZ2jpUKEg>
	<xmx:iDN7Yf9Kj9MbznDzXgYWbJu5jDjJLA2x6LD-85p9zgaLmvkuUzZWVA>
	<xmx:iDN7YeWkXpeXzsI2eL8J0cr3azIs7a8QFQJQUQi6zJ1AwSrJaxIVYw>
	<xmx:iDN7YcLh52mv1ExD8YxYBvJxsxEeP6WuottL6A1lLTl6DzmJyYbx0g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 28 Oct 2021 19:34:32 -0400 (EDT)
Date: Thu, 28 Oct 2021 16:34:31 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I run an accessible version of linux under windows?
In-Reply-To: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
Message-ID: <23ab7b29-ac4-63ed-cdb3-257bb4417e9b@hubert-humphrey.com>
References: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
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

Well, Ibrahim while others may have better suggestions, I think running GRML as 
a live CD would have enough options-and-packages for you to experience. 
Certainly if you liked it, you could install to another section of your 
hard-drive, so you could boot either GRML or windows. Best of luck
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

