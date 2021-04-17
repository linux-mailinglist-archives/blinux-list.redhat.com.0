Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 82549362C67
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 02:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618619014;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ae52zY6QvB3BJyOnQiPaXGFPWwqwJKiNq8E9pKbCWkA=;
	b=ER65daGv/pmj0NJcoyc+wEwZt8nkfCNklX2QoDglD7oY1x4vU1O4MTqQ3o6iUzZOYYVZYb
	0pLPYVT5hxsWH34JNV0s4i6U50X/1hL65Nd2CpW5QX0q2kymKi5YdoTPamWEAL+8Mk2vSQ
	oetKxBdwqdhjCJBwjM6PILyMFnlntF0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-amIeHR5XM9GBk7WTeet7Lw-1; Fri, 16 Apr 2021 20:23:32 -0400
X-MC-Unique: amIeHR5XM9GBk7WTeet7Lw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F72E8030BB;
	Sat, 17 Apr 2021 00:23:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90D2C5D9C0;
	Sat, 17 Apr 2021 00:23:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DE9C1806D0F;
	Sat, 17 Apr 2021 00:23:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H0Kro4020690 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 20:20:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E52AC202147F; Sat, 17 Apr 2021 00:20:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF9C72021470
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 00:20:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1715A185A79C
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 00:20:50 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-144-FtJ09gW9OzOCFiNP6XqFUw-1;
	Fri, 16 Apr 2021 20:20:47 -0400
X-MC-Unique: FtJ09gW9OzOCFiNP6XqFUw-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 722F512E4
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 20:20:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Fri, 16 Apr 2021 20:20:46 -0400
X-ME-Sender: <xms:3Sl6YHDNOU-b4-59Z-wDRRWa1cPtAmsU-IcAQieBVipHG46vuWZnKg>
	<xme:3Sl6YNg0ZXWF4W9aHB2Ae_QfBOCHU8u3eUUDpvJIqODH69km3weh0YyKAEneF8wo-
	LM-FFZhraW0T4tpLWU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudeliedgfeefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:3Sl6YCnoEehLr2Fy8WewWAtwUka_g7X6JgGlAqYJhWZl1gOb6dgLAg>
	<xmx:3Sl6YJwb5L4WBfdmXEEJ_1f2EHtJbE9GrLykUoNGky8XHMpzRU44Tw>
	<xmx:3Sl6YMStATB79lk_0fKUHq9heSEZBVegJUKGUK2VxT8ozDTrajohtA>
	<xmx:3il6YDd2jOqeScEUWGrHPkuq5mDZ2n1dZfRa-AP7wJvI9AQCvqRwPg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 7C216240054
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 20:20:45 -0400 (EDT)
Date: Fri, 16 Apr 2021 17:20:44 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
In-Reply-To: <161861745773.6.10221248550300079442.5937580@slmail.me>
Message-ID: <2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
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

Well, yes SL, I was able to make out all your concepts, but maybe you want to 
try another strategy. Why not just type your comments live, with no pasting? 
You can still most likely sample before sending.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

