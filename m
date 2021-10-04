Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1AAC04212E5
	for <lists+blinux-list@lfdr.de>; Mon,  4 Oct 2021 17:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633362116;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=81FM77iVdziB2GdRY5l6Wl9D5jwZivKBFWziEUcfXH0=;
	b=O1oh4yyz+GJ3KlUvN9Vg2W9Kq6NIl6yoj+rGrWSWOWMZNOcbM/2EHfFOPjTePy/deMZ9W9
	uJBBrKEgybOrR+ms1j9NnRM33YjLikv5qgwVnMbGpCQOclySQzbhEC1TWtwFhotlImZMvC
	zqIFLbUk4pGs3tRjISPlzp1drhipBN8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-590-9D_YgZ5CN_ySPiiSmxOXfQ-1; Mon, 04 Oct 2021 11:41:54 -0400
X-MC-Unique: 9D_YgZ5CN_ySPiiSmxOXfQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F14D41922961;
	Mon,  4 Oct 2021 15:41:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CB7B5D740;
	Mon,  4 Oct 2021 15:41:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 227A84E58F;
	Mon,  4 Oct 2021 15:41:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 194Ff4dL021498 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 4 Oct 2021 11:41:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8430AC2124; Mon,  4 Oct 2021 15:41:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 796EBC54D3
	for <blinux-list@redhat.com>; Mon,  4 Oct 2021 15:40:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25D47899EE3
	for <blinux-list@redhat.com>; Mon,  4 Oct 2021 15:40:54 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-126-tkdlNZQiMkO_polnwUsnEw-1; Mon, 04 Oct 2021 11:40:52 -0400
X-MC-Unique: tkdlNZQiMkO_polnwUsnEw-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id E82925C01C5
	for <blinux-list@redhat.com>; Mon,  4 Oct 2021 11:33:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute6.internal (MEProxy); Mon, 04 Oct 2021 11:33:58 -0400
X-ME-Sender: <xms:5h5bYS9JKONgzPz_tb-er5Y7G5E12zT2lcnVM2o5jJHrw3WsuiWq-Q>
	<xme:5h5bYSt_MWsAOh4ffV_kQsQ2arc-zVM1DDZZOMGMGQh0-cB36yGJaDndiZXIZphJ5
	hhENkqi98MqGJ2vGJg>
X-ME-Received: <xmr:5h5bYYAfWJndRxPkRn_TEaKr_5tCxPDguLnhrbcFjHuMhnZ0HK4B4Qvhwqarv85xGmbyOifl7tL9em9oelmixdPqfWqFXCP5Ww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudelvddgkeejucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
	rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
	grthhtvghrnhepjeffffdujeelueffieevtdeiteettdekgffgkedvueejteektdehfefh
	hfdvteeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:5h5bYafVtcWMbykBddNyP0G0B49-zRPnoekvGuivAKfng1ZpnAMZWw>
	<xmx:5h5bYXPGl5BxnfmgEh99EiO2Ewpm_ofX2fP5vn0yQC5rp3QX5jV3Pw>
	<xmx:5h5bYUlt1Rkt2xHKM4-ucyM7N2ap-FBDVtTDITQFQ8OWkqVYtRTKAQ>
	<xmx:5h5bYWZMWBWh9E266XTFHMQBTyJq3AhN3rvYdiJBbxuQjNyxxQdM0Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Mon, 4 Oct 2021 11:33:58 -0400 (EDT)
Date: Mon, 4 Oct 2021 08:33:57 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Can mpv Remember Where I Left Off?
Message-ID: <3be9ece9-e0bb-9440-dc6f-db8ce454e6b3@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: I thought I saw some mentions of a way of having mpv remember where I 
left off, as an example in a large audio book? I prefer combining all 
individual files to cut down on clutter. But certainly many books are more than 
13hours, so can some1 please inform if there are startup commands in mpv to 
remember my place? Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

