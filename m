Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 37A8C282E34
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 00:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601852368;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fLw5XfagkOVTXo86BNPXX9bpTYiuL7bXplWGwl3eFMU=;
	b=PssTbV7SXzxjxlcqc+OVbYUVCsypI4ql3HKfTbujvbnsatM+0KiFX9tu7PHEFV0HfWnaOu
	9NWMYFXP0SmwfGFwPbRofxpCkMd6p20XqBQ1eZLp+Dcs5vJrtHh6iaXrl1wGycf6ysXAxl
	8qn6KLRVv9wYQxdHMH2GtwB8VDWmAlU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-162-7BINME9KOXWHpWxsr4nRVA-1; Sun, 04 Oct 2020 18:59:26 -0400
X-MC-Unique: 7BINME9KOXWHpWxsr4nRVA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 878061DDE7;
	Sun,  4 Oct 2020 22:59:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6D1A5C1BD;
	Sun,  4 Oct 2020 22:59:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4F6F181A86E;
	Sun,  4 Oct 2020 22:59:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094MxFt5004681 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 18:59:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8CBC32166B44; Sun,  4 Oct 2020 22:59:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 877C02166B28
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 22:59:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD38A101A53F
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 22:59:11 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-505-jje3c3t7PHiHc4K-RBntdQ-1; Sun, 04 Oct 2020 18:59:09 -0400
X-MC-Unique: jje3c3t7PHiHc4K-RBntdQ-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 64F9F5C00DD
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 18:59:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sun, 04 Oct 2020 18:59:09 -0400
X-ME-Sender: <xms:vVN6X8ouaBnylOnPoBnRHZpNTaJMt1MgUIlXZSIn-Xx4f9llR8AITA>
	<xme:vVN6XyqEkwFkwdHka3isHfktu8QmxNwQBNiS-0Ytz8yjm2u2f4jNpmhCZ143ZdOeF
	m50IG2k9lk4ndvnLPI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrgedugddujecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhgfgggtsehttdertd
	dtredvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeefuddvuddvvefffeevge
	ejfffggfeiiefgtdeugfehgfejhedtieelhfeuleelffenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:vVN6XxNapW5lc3GLpbq8TLGSPAVr1CHQhGs2Pwf4rmH_duEJnMgnog>
	<xmx:vVN6Xz7Yu3PHdSkmYIRQz71vY6FKojKZaEsyrUmmeakaeZtPgi7YGg>
	<xmx:vVN6X76KrmQfbKATarEfeYkEwCtWoJVphdZoHZOJu6XBzNJ5eDOCbw>
	<xmx:vVN6X9Ho_8DGufrzVUUsh6MUeHm75F13jrYKbfd-FWiyopAyg5l-Eg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id B440D3064674
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 18:59:08 -0400 (EDT)
Date: Sun, 4 Oct 2020 15:59:07 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup and links browser
In-Reply-To: <Pine.LNX.4.64.2010041843340.25048@server2.shellworld.net>
Message-ID: <alpine.DEB.2.23.453.2010041557060.1431872@chime>
References: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
	<Pine.LNX.4.64.2010041843340.25048@server2.shellworld.net>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

I think with l i n k s  you hit an escape to receive a menu? As far as e l 
i n k s you must alter a config so you can tab from link2link as you can 
natively in l y n x
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

