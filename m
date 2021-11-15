Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE72451739
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 23:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637014282;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HAPMnXzo7NoyTCSW62kaBGb43x7k6PoNWxkflqtov/w=;
	b=LXfjtnrN6CAqHnD4yuZb1vmRRROi6Z4U3jC3sA7Ebf5tQEK0pZnA/ToN0G25WDGG/LKRqf
	4wJ62ze4N+b4+8f98d8vIu20i/hA/jhAOvZzWHwoQT3FrhbN7pkLTyiJKnP3fAJYn3GN0o
	jD7CPB8qweb51S3dYwZy4Mgivx2wYhg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-yv0du1WTPoyfVwvszGgk7w-1; Mon, 15 Nov 2021 17:11:18 -0500
X-MC-Unique: yv0du1WTPoyfVwvszGgk7w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92E69A40C3;
	Mon, 15 Nov 2021 22:11:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78E0179446;
	Mon, 15 Nov 2021 22:11:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 73BAF1819AC1;
	Mon, 15 Nov 2021 22:11:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFMBBd8025794 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 17:11:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 652C9112131E; Mon, 15 Nov 2021 22:11:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 578721121315
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 22:11:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79F5B800C00
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 22:11:06 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-566-VaoK4izoOnGUDzv7UxI7gQ-1; Mon, 15 Nov 2021 17:11:04 -0500
X-MC-Unique: VaoK4izoOnGUDzv7UxI7gQ-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 6794E5C0235
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 17:11:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Mon, 15 Nov 2021 17:11:04 -0500
X-ME-Sender: <xms:-NqSYbOKknu2SyoTdGuc1aXdwQtfU2DWoefxo7eqqDui6IQ5gP_pYw>
	<xme:-NqSYV_8-6QEZGrVEdxXeFHaCOTIaLWep3oNJqSfVynmHILaVONmggMPf8ikM2o_s
	KwMc39KEvr-v3A9jU4>
X-ME-Received: <xmr:-NqSYaQm_KS07H44xSM74ggrrbc5FfG8a6_dzXFkmFNO0GSwh0VRQEMW0SdKtUj3ebQzAKZ3kWZTDQa2bfW6ikSNQqMb9hL3_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrfedtgddufeduucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:-NqSYfs3J-ZhKT0BCHmtS96_nlhLmabr4YrSflyJRz8LgXpM2S_MiQ>
	<xmx:-NqSYTccprxcRS0_Q4BbKfeyy_uVNHGJbXuWfanBv_FcUEkBNlT-Cw>
	<xmx:-NqSYb0JrsVr0MolHWNd5E_lsjgRuYDvRcN77b9NKD2M54w-vs-dIA>
	<xmx:-NqSYRq8ubBQMTkdNr_FnNBRulIglLAGvBQemWG1Uth_cmFsPj8r2Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Mon, 15 Nov 2021 17:11:03 -0500 (EST)
Date: Mon, 15 Nov 2021 14:11:02 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Gui vs. cli software
In-Reply-To: <66025fed-5adb-a007-f70f-34c710e7e07b@gmail.com>
Message-ID: <c47476b7-2ed-6af8-cb96-74bdec59bf28@hubert-humphrey.com>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
	<6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
	<66025fed-5adb-a007-f70f-34c710e7e07b@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, Kyle, while I agree NANO is missing certain flexabilities, you can start 
nano with a minus k so your cursor is synced up. You can use a shift+6 to mark 
word or lines, then cut. I wish NANO had a way of searching for blank lines as 
WP6.0 did in DOS. Many years ago another member of this list gave me a great 
starting point for a script useing "sed" to nuke blanks. Another thing I cannot 
do in a commandline is login to a hotel wireless, that is unless they exempt a 
mac address of my laptop.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

