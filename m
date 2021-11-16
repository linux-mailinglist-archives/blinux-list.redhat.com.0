Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFC5453C17
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 23:03:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637100182;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5IQqxkcN9tArNPrw5fKGtmecn9PDos8tF4urTVaf+k0=;
	b=fLCLJzL2Z9ysIKkCZw6EPUEr2I7NBMheOvJRf2kAHCu00iOlMXScHr1G89NP07QnW/VMdH
	7lfrnSoQE9/1Zs5iwf+L+v0yi3toRHwADQ9M4CavkEEwlZ0tWv82ji+sPkjSLfoH8BpsbD
	vK1qzYfOT+zzNp24k7BPDQKpmMU0uJA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-37RIGFC1OyikQ4vhDEUNgA-1; Tue, 16 Nov 2021 17:02:58 -0500
X-MC-Unique: 37RIGFC1OyikQ4vhDEUNgA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0994107AD64;
	Tue, 16 Nov 2021 22:02:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BD0E60D30;
	Tue, 16 Nov 2021 22:02:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF6451819AC1;
	Tue, 16 Nov 2021 22:02:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGM2cKA015827 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 17:02:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B8CA6404727A; Tue, 16 Nov 2021 22:02:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4A644047272
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 22:02:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AFA9802C16
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 22:02:38 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-247-nDnmG7o5Ml27fgc3YGtU3Q-1; Tue, 16 Nov 2021 17:02:36 -0500
X-MC-Unique: nDnmG7o5Ml27fgc3YGtU3Q-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id DFD0E5C017E
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 17:02:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Tue, 16 Nov 2021 17:02:35 -0500
X-ME-Sender: <xms:eyqUYYubnedOoehG2FRbZP9ayiDO8LnLt69e8-CuHACPvipe8dlsqQ>
	<xme:eyqUYVc49G1407mqdge-B9kwRNlgRuBJNyQx-_6WeunkK7CSAqvxBNkqh4WSHcrKX
	FMHB__mxq_ndBLZarI>
X-ME-Received: <xmr:eyqUYTx_LpUgmxRXkgNsAGrxVfxYVmjsduheIYjwu_KJ6Dzs0IZzJ48vmXX5F4jf_gZ9rOnqXmkjHg34I9wTNzhIv7bucTjeuw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrfedvgdduheefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
	rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
	grthhtvghrnhepjeffffdujeelueffieevtdeiteettdekgffgkedvueejteektdehfefh
	hfdvteeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:eyqUYbOAT-P-skDROVOVmvwmyhIPHWGaOluwhQGZjrja7CFHMkptMQ>
	<xmx:eyqUYY9iwlEFzZYP20Tpd6qyxXsCw9iN07TJUU0Ge8MBc84OOLaldA>
	<xmx:eyqUYTUNC9OCygVreLJR_BjIQ5PLgsLUb_UspPGett0FEbG8ihj9KQ>
	<xmx:eyqUYRJ_0Hj5SRRsolBJgf0Ykz5H-LxZhOUr-L5aIQ9itM_AfN9pgQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Tue, 16 Nov 2021 17:02:35 -0500 (EST)
Date: Tue, 16 Nov 2021 14:02:33 -0800 (PST)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Correcting an sd-card?
Message-ID: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

Hi All: Some of you may enjoy types of BookPort recorders, which like others 
record on an sd-card. I use mine for recording news-programming from many 
Networks. So on the card, there are around 19 catagories alphabeticly arranged 
by channel. Beginning last week I would hear an error when hitting an item 
which it cannot access, something like minus 2thousand1hundred7. At first items 
would still play in my Linux machine, but now more items are not playing. So, 
most folks on the BookPort list are not familliar with Linux, but say I would 
un-mount the drive-and-run some sort of fix disk. Well, in looking it up, Linux 
supposedly has "fsck" but an only item I can find in aptitude is "fsck-backend" 
So, once again I loaded the card through an adapter, says,
/dev/sdg1                      250G   30G  220G  12% /media/usb0
So, can some1 please inform of the best way I can fix this card? This is Debian 
SID. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

