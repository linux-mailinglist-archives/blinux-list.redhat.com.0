Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4A45124C347
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 18:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597940588;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QLXyV9suzemZgA29IyIXFUdI8+Yqk93LMMDSnIlCBVM=;
	b=AUxD8Ihuo7+fMp4YsO7Xh+wFpPPcRexZsyr7I+HRTyjDAadwYoAfKh78j0vHDsTFCFCrvN
	tZOO9rVAgLpnQIvh363SKa6v7dGZSdyzEoWdqkV/6/QF5VkNL4tl7KFXrQIdXjphZENIzM
	b4jHggD9M+cZGUqTXjrbc1vHAL9pnHw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-WtFHf9m1NB2fF1LaXTdQRg-1; Thu, 20 Aug 2020 12:23:06 -0400
X-MC-Unique: WtFHf9m1NB2fF1LaXTdQRg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E4DF10066FE;
	Thu, 20 Aug 2020 16:23:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B88B010027AB;
	Thu, 20 Aug 2020 16:23:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 78F09662B0;
	Thu, 20 Aug 2020 16:22:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KGMrCv020152 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 12:22:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6F5E72028DCC; Thu, 20 Aug 2020 16:22:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B430201E6AC
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 16:22:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B7BE89CD48
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 16:22:51 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-319-7ATf5iHtMN24E_rRuwUpHw-1;
	Thu, 20 Aug 2020 12:22:48 -0400
X-MC-Unique: 7ATf5iHtMN24E_rRuwUpHw-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id F0E1C391
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 12:22:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Thu, 20 Aug 2020 12:22:47 -0400
X-ME-Sender: <xms:VqM-X4pSDaSTymSmf2NrKrG-vFA6Oq4IMF5ZZLuNUddYA7pxuQLWew>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedruddutddgjedvucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhffgggtgesthdtre
	dttdervdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepfeduvdduvdevffefve
	egjeffgffgieeigfdtuefghefgjeehtdeilefhueelleffnecukfhppedutdegrddujedv
	rdefrdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
	hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:VqM-X-o8At0dtM0zvUJLEeBz1rlCd4-wnv_-L0_tW4YOkLpasRsD5g>
	<xmx:VqM-X9ODxieCuXE1IhVgYsMU6R8M2GNzTkjbtTQaBkaYplMfv8EA-Q>
	<xmx:VqM-X_4eXQ_s6CJElhb-SIXUyA-HUyMFWmc63c1xBvPHKN92o4WyUw>
	<xmx:VqM-X6L7gwRfc3xrW5NNpkd8XZKlkGzz1QaN8TYdgL7rFioDdEzVLg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 05A5430600A3
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 12:22:45 -0400 (EDT)
Date: Thu, 20 Aug 2020 09:22:45 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <MFBaDor--3-2@tutanota.com>
Message-ID: <alpine.DEB.2.23.453.2008200913220.549771@chime>
References: <MFBaDor--3-2@tutanota.com>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Well "SL" I was going to suggest GRML, which is a live cd which you can 
also install to a hard-drive. However, I don't remember if it has 
graphical support. We tried Devuan but have had better luck in regular 
Debian, as I am useing a DecTalk. We did notice Slackware seems to have 
built in support for DecTalk.
In looking over my addressbook, I notice Co-Linux as well as Oralux. Hope 
some or all of these help, although I am not running graphical.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

