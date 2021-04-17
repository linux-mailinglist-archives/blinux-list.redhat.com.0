Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CD345362C83
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 03:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618621240;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l/cywwPb1uN2tfHp1fKaWpMkj9bpAfdPfw/TL3RCxAk=;
	b=iZ2wRbHOTO/8K3+Pgq83RvKLyV1mVNtLTssh6YPojnKPECptbBCFBiosxBjGp+ZwEsWiMQ
	hq0tnCd8cX6tm/YDAOvjeA3zgQnNwRtrOVnZSfBPCxSJimxVy4+m+gNoEgRXuTHGM0X0Cd
	RPHa7NKXYUohCEStKer80HsQ1Pu55uY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-cfjNXiOxPfuGteNQYQKv2Q-1; Fri, 16 Apr 2021 21:00:38 -0400
X-MC-Unique: cfjNXiOxPfuGteNQYQKv2Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B1058030A0;
	Sat, 17 Apr 2021 01:00:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 466975C73F;
	Sat, 17 Apr 2021 01:00:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A59A044A5B;
	Sat, 17 Apr 2021 01:00:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H10S3o024600 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 21:00:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 40A32FDCC7; Sat, 17 Apr 2021 01:00:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A609FED5E
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 01:00:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFF2980080F
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 01:00:24 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-501-LKsVJzGCM8u1tm194uQziQ-1;
	Fri, 16 Apr 2021 21:00:22 -0400
X-MC-Unique: LKsVJzGCM8u1tm194uQziQ-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 32B51128A
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 21:00:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Fri, 16 Apr 2021 21:00:21 -0400
X-ME-Sender: <xms:JDN6YFECCi4McKw99nO5hz9FMUe908zLAjXzoHRXpJrDPiUNoPx-yQ>
	<xme:JDN6YKXe-UAfjfdWNYf9WHHslz1UKF51czpq7Z3ONABVm8s8Af3BtcnMTK7n5qiOR
	Gd8tPdNIf3m-aONils>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudeliedggeduucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:JDN6YHJi6HWlG6bfUF9ISrt-evTvbxfwbwZe4i2Pku5V79F3gVdLqw>
	<xmx:JDN6YLHCX955o7pZqLvhSS2LLxJH5GePR7P-C0nhTPzLKCedtBEJcQ>
	<xmx:JDN6YLWvIO2QagrGdzO6kTSq_JaHDyH60-8T3tY6TFz4c5CCQwNSag>
	<xmx:JDN6YDgGwFcB-U3cASv2MNoafkyBocuDd16Fq1v09nQICanA98YFAg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 4222524005E
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 21:00:20 -0400 (EDT)
Date: Fri, 16 Apr 2021 18:00:19 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
In-Reply-To: <Pine.LNX.4.64.2104162050360.2352872@server2.shellworld.net>
Message-ID: <1271a629-722-90e7-f65-5994c8fcf0d6@hubert-humphrey.com>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<Pine.LNX.4.64.2104162050360.2352872@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Karen: I think SL only runs in graphical, so he is most likely running much 
different tools than we are.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

