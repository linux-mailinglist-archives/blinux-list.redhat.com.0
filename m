Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5FD381C33
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 05:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621134727;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=khrCJzniREpy8FWhbdPVc3xDZJ2AfZISzIUZpjblHzA=;
	b=Dg5XwLO/7YVER2VeQ13Xhh91ZUP/gU3Y97TsFlOfgzZzKNag+Vlk6poDXag//okugKFu14
	V0tToY/Ifh8dp4fRTSz+k2EhbSCfex4+PfoEUZcGqtDKd67k8RB9P0mVeSpkmXShsviqzf
	7RNm1dI4FULKQ+LE0ll0jcspGESCRRQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-07Fu7ijdNyiGt0QMTNe3cA-1; Sat, 15 May 2021 23:12:05 -0400
X-MC-Unique: 07Fu7ijdNyiGt0QMTNe3cA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 31FFA8015DB;
	Sun, 16 May 2021 03:12:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B812D5D6D3;
	Sun, 16 May 2021 03:12:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 746581801028;
	Sun, 16 May 2021 03:12:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G3BqFu023532 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 23:11:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9392B4C80D; Sun, 16 May 2021 03:11:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E5E547CE3
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:11:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A4B6857D08
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:11:50 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-18-PBfb3g0sOX6neykWF0Pb5g-1; Sat, 15 May 2021 23:11:47 -0400
X-MC-Unique: PBfb3g0sOX6neykWF0Pb5g-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 96F9E5C0101;
	Sat, 15 May 2021 23:11:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute3.internal (MEProxy); Sat, 15 May 2021 23:11:47 -0400
X-ME-Sender: <xms:c42gYNC76MqoizJZKnHeMvB_UepfcK8px3GmM3PwT2qpwrr8M2bUew>
	<xme:c42gYLjziknd8iTmhBq8aGPcngkbSFN0TsRz4YJt7bXNplwYB0_676fl8_DwL10k-
	OPPfSgDQX7g7eOflSw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdeiuddgieejucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:c42gYIltIVxQWNjEbGu3rxGjqVBCrhLun2tjwjSih3kI081Dxl6lWw>
	<xmx:c42gYHwl1E9ki7KuLe67_CbSRuZIIXMK-iMFbeeDLAqtyjLY8YZNLg>
	<xmx:c42gYCQilentU6_u5s0Y5UID3iQ3kgcTkbz_-1-P4uPrZE63CJKrvg>
	<xmx:c42gYJPlpLmqdksjDhMHQ1oBvADaRSrNJRp8hpMWJXaQZaGn47qQPQ>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA;
	Sat, 15 May 2021 23:11:46 -0400 (EDT)
Date: Sat, 15 May 2021 20:11:45 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
In-Reply-To: <Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
Message-ID: <ae4b711d-2c14-1bb3-f751-4ca4171277e@hubert-humphrey.com>
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
	<Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
	<Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
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
Cc: blindtlk@nfbnet.org
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, youtube-viewer works well to play, search, or download items from 
youtube, also, youtube-dl which is updated rather frequently.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

