Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0F870326FFC
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 02:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614476666;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q8YXRjQv8O2omro359dZh2Nn8yPmI3EQ5hRWr4q/Qd0=;
	b=V3bMuQ5xVw6VggYKCJTVtZEjNUIOVaGiay7ZJyV57HUFO0XVXgb6EMi81zLTcrdUzAP9Fo
	C29xgPKqGYiSjNKQsyTNsr7mDTTgH/OL5QBH/HAKtmK+rjkM9lPinu3KGoMXonuZCtPFoN
	oKoPtKfTRxw1vu+o6tjjqqQyvYOfN/M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-jrvaYxEZMF-Zpu5J0Ef6nw-1; Sat, 27 Feb 2021 20:44:23 -0500
X-MC-Unique: jrvaYxEZMF-Zpu5J0Ef6nw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1442186840C;
	Sun, 28 Feb 2021 01:44:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 751F326189;
	Sun, 28 Feb 2021 01:44:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F3484E58D;
	Sun, 28 Feb 2021 01:44:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11S1iAwA005638 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 20:44:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5E5A22166B2D; Sun, 28 Feb 2021 01:44:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 586C02166B27
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 01:44:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F99B100AFE0
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 01:44:08 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-17-6pYerCCmNRyX3mkpFlgDjg-1;
	Sat, 27 Feb 2021 20:44:05 -0500
X-MC-Unique: 6pYerCCmNRyX3mkpFlgDjg-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id C5B567A2
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 20:44:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sat, 27 Feb 2021 20:44:03 -0500
X-ME-Sender: <xms:Y_U6YNGfFqvdVup9-mtStOrUQ9SUQy4Kch1fABUyZ88FpK2Qn4ilAg>
	<xme:Y_U6YCXu2QYywMpKjPccWRVHqD93JSbvuZD2Wotv84S30duzL9mRYkaxbeFVkpOQB
	7nNmazLawgPbNvnc7o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleeggdefjecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvddtueeiieegieeujeejke
	eljedtgffgtdehgeevtdduteekteefveefjeffvdelnecuffhomhgrihhnpehrvgguughi
	thdrtghomhenucfkphepuddtgedrudejvddrfedrieefnecuvehluhhsthgvrhfuihiivg
	eptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhm
	phhhrhgvhidrtghomh
X-ME-Proxy: <xmx:Y_U6YPL7O07gb9MA_MLQgiXgy5vdXJbEi1Rk8HqP80JpVkwN7LIrlg>
	<xmx:Y_U6YDEe4ZeAoqPvngmgwHcIutp0S9bGvhB_GpsMi1XHxSDSvCHcTg>
	<xmx:Y_U6YDWlaXteRMj6zhFMA_2BAC7XlAkXY6B7OZYnUYBIPWDi5oK_PQ>
	<xmx:Y_U6YLjTso8Q5tsw-o6cKezrSrtaTsj1ZAwC5mCl4B-aUixy0V-TNw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id E1C361080054
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 20:44:02 -0500 (EST)
Date: Sat, 27 Feb 2021 17:44:00 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <161447494525.8.17811239841066658738.4272534@slmail.me>
Message-ID: <8849b80-1187-cbdf-47ec-54effb182d45@hubert-humphrey.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<161446814123.8.7902586507444098707.4271150@simplelogin.co>
	<161447494525.8.17811239841066658738.4272534@slmail.me>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, SL, the file I began sending Karen was 1.5GB. After realizing that, I 
killed alpine. Anyway, in looking in the read me, I found a link to 
files-and-comments
https://www.reddit.com/r/tasker/comments/dnspl3/tts_ivona_tts_engine_collection_all_voices/
So these are Android which you can convert or rename as suggested earlier this 
week. Best of luck.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

