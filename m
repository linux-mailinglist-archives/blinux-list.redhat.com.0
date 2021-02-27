Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 610F2326F2D
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 23:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614465069;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rDhLeUHq0XzxOfS6Lgo0CCknjRMiR08Da5WeYFclW10=;
	b=DD/9EWKbKjale5wQiGn57C4VzBtx0c4E9436Ds/tz6jPbQx0nARjtJNBSN2DYAzECiA1S2
	oSUmAPQgeSvJDcfFlqDs2sW+n0HPSFQiXFYZnMUwacqc+NJ2MHwu9rltQKJ4C7YrcMxPvE
	dPd/n90UD2liyZ7epkCN+Q6fh3VFfJU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-599-hMa2xrFGMuezhOJIeALVEw-1; Sat, 27 Feb 2021 17:31:07 -0500
X-MC-Unique: hMa2xrFGMuezhOJIeALVEw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 893CF107ACC7;
	Sat, 27 Feb 2021 22:31:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17E2C5B4BC;
	Sat, 27 Feb 2021 22:31:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5FC557DFA;
	Sat, 27 Feb 2021 22:30:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RMUrYe017983 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 17:30:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C55C82166B2D; Sat, 27 Feb 2021 22:30:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF8672166B27
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:30:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 803EC858F15
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:30:49 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-133-X-2-AIOnNuSHjX1hziVogQ-1;
	Sat, 27 Feb 2021 17:30:46 -0500
X-MC-Unique: X-2-AIOnNuSHjX1hziVogQ-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 5619467F
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 17:30:45 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sat, 27 Feb 2021 17:30:45 -0500
X-ME-Sender: <xms:FMg6YKznsgXpafwriqZEJhaJJwUgP7Cb-b989x-aiD_XSXAbrT2-tQ>
	<xme:FMg6YGRI1yt0T_Hh6se3ry_X2bFibVcALn_HeYkfXP6oU3EsQjaROJLNdpDcJqP3K
	K7rmAEVm8rqpRz3e1Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleefgdduieegucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:FMg6YMUCRIErXCziiMyxktnhDF_HiFNug6TwrRWPFHlEXyBW4oNbVw>
	<xmx:FMg6YAiY8cxUgSGSt-ZopFRDI5Sl4jU8XkA1ucpRVBGdmnKU1hfY_A>
	<xmx:FMg6YMCvGKVb2CRdUrbS4Ayr8sVGUoWdy2sP3PuFy5xmJZQhKInIjA>
	<xmx:FMg6YPMbILZ3RR6GEvuIcZnN--t5faF_Zg7-z1RAYWFUCaMxdsaaoA>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 140EF1080054
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 17:30:43 -0500 (EST)
Date: Sat, 27 Feb 2021 14:30:42 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
Message-ID: <88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you Kyle-and-Didier: After installing some portaudio items, if I runs any 
combination of
scons install
or options in the help file, it says:
scons: *** No SConstruct file found.
File "/usr/lib/python3/dist-packages/SCons/Script/Main.py", line 947, in _main
Back again live, that line 947 says
raise SCons.Errors.UserError("No SConstruct file found.")
Thanks so much in advance-and-this is certainly an enjoyable experience.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

