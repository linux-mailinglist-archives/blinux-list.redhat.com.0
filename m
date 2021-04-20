Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8E35A365E2D
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 19:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618938367;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7MNKEWnmRBrKRazBN/nMDKqxKZhuPZ6juJclS6WGouE=;
	b=b8KuGB0IKCu73Rx9T1eNQc9TeVEbOlavODH7kOfeyy0KiyVISUaT+Oz3w4C6OrGiSaQGuZ
	G5Sp4t7hm69PosQOpLOQPG+84XXkQqpHm1kgiLYZGqz7amrriIJpoMpbY8hPtjc7AtfdQI
	LhVlHwZaBRaqJXpWHeZUbYYlWbGv31c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-FLal73FbOIKX6BmtpO4mzQ-1; Tue, 20 Apr 2021 13:06:02 -0400
X-MC-Unique: FLal73FbOIKX6BmtpO4mzQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 172FF107ACF2;
	Tue, 20 Apr 2021 17:05:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4EB2819D80;
	Tue, 20 Apr 2021 17:05:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8602B1806D16;
	Tue, 20 Apr 2021 17:05:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13KH5pad021787 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Apr 2021 13:05:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 42C8421CAC71; Tue, 20 Apr 2021 17:05:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D7DA21CAC70
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 17:05:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B08B880231D
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 17:05:48 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-555-b3YPOLoxM8GPdqSrTLZyWw-1;
	Tue, 20 Apr 2021 13:05:46 -0400
X-MC-Unique: b3YPOLoxM8GPdqSrTLZyWw-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 08C0A44DC
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 13:05:44 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute5.internal (MEProxy); Tue, 20 Apr 2021 13:05:45 -0400
X-ME-Sender: <xms:6Al_YLuYWccXX3sXC_o417F4kk-0G_DUvSMXxbXV6qryjAVWBIlZHQ>
	<xme:6Al_YEFlnMqWX68J_6-eG9DMHYh-nBbTjifuvej43iAdF_9OPPVG32j1NBwFJjamg
	7blGnb23zsh8A5Yn34>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvddtiedgudduudcutefuodetggdotefrod
	ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
	necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtre
	dttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuie
	ehvdefffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedv
	rdefrdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
	hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:6Al_YMZ95AsPLGo9VHvulJqdGjA8Zmq1M-U7foysIoT9qMViV-ciiQ>
	<xmx:6Al_YEUvXpM7BuKQYOi2B1YK4omKdcMzSI5HhSSNdY20UdrYpQhXOg>
	<xmx:6Al_YCk8FzyE08wVFZ__xyifOBERwP53kkzQBkaOWyrAlvW1Qqgk7g>
	<xmx:6Al_YC16HWnFVzUkqXd10kAFw4JSY89F-oQnaYcW-0Hfnaa-jz-3-w>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 1E158108005C
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 13:05:44 -0400 (EDT)
Date: Tue, 20 Apr 2021 10:05:42 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Using Sox to volume Level
In-Reply-To: <20210420.165240.599.3@[0.0.0.0]>
Message-ID: <378897c1-ec7e-5d0-5ce5-2532168567e@hubert-humphrey.com>
References: <20210420.165240.599.3@[0.0.0.0]>
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

Well, an only solution I can suggest is a package called "mp3gain" which has a 
normalize option, but be sure and select an option to make the changes 
permanent, otherwise after a reboot, your songs will reset.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

