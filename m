Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id F1ADB1F6B12
	for <lists+blinux-list@lfdr.de>; Thu, 11 Jun 2020 17:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591889551;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U8VI6YBXpgZ/IPQBuIIMVt6yObpufS6KvQu+TyPPSzQ=;
	b=h+JkXvJfX3AIzVWIZtQjWRjYMsKHaeiNLArRUohNrcKtn0IAnLSOyOkd2ycJGMaMOfW22m
	6d/h5JBAuBsMZhYcM7Qs1sqblIArLEB7HDcTqOz6VkPrzLngLNPvYZ8Yhjez9m6TbA643b
	4OmpNTJEr0TNGl9RUa5Lvw4hphOpxOw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-apv-GiloNEy5J4telbeuyA-1; Thu, 11 Jun 2020 11:32:29 -0400
X-MC-Unique: apv-GiloNEy5J4telbeuyA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 433751883600;
	Thu, 11 Jun 2020 15:32:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 701887C08E;
	Thu, 11 Jun 2020 15:32:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B10AF10480F;
	Thu, 11 Jun 2020 15:32:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05BFVtHq009355 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Jun 2020 11:31:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4B712F1030; Thu, 11 Jun 2020 15:31:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46EA6EE869
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 15:31:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EE6680A0C4
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 15:31:53 +0000 (UTC)
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
	[66.111.4.229]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-463-J6D5EOkjMcCdmgSk4FfCZA-1; Thu, 11 Jun 2020 11:31:50 -0400
X-MC-Unique: J6D5EOkjMcCdmgSk4FfCZA-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.nyi.internal (Postfix) with ESMTP id 253415801C1
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 11:25:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Thu, 11 Jun 2020 11:25:58 -0400
X-ME-Sender: <xms:BU3iXhFAAqj0MZLckSgZ_Hi97KZjetlhK_LydheqiNx6wx3vwiv8_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehledgieefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhffgggtgesthdtre
	dttdervdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepfeduvdduvdevffefve
	egjeffgffgieeigfdtuefghefgjeehtdeilefhueelleffnecukfhppedutdegrddujedv
	rddtrddugeefnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrh
	homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:BU3iXmWpJqR-kx8nec4S9Wxi_YnvU9ah_FJcvKdek9Ga-KCoWgrT_g>
	<xmx:BU3iXjI2I1fEptCppcW6B4zPbxzU7iBPpvrViwWdtkFYQqSui9U3iw>
	<xmx:BU3iXnFrqlMgZ3IrkhuSfpLUJembk3Kqf-olAFwv7LSAnNVXi_cVUw>
	<xmx:BU3iXkW8yNXQQgg5GZikOVW-aj3YsGC1EtbH2yijGziY-Y2kZL6t7w>
Received: from [192.168.0.3] (cpe-104-172-0-143.socal.res.rr.com
	[104.172.0.143])
	by mail.messagingengine.com (Postfix) with ESMTPA id 6919F306218B
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 11:25:57 -0400 (EDT)
Date: Thu, 11 Jun 2020 08:25:56 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: New Mail Sound in Alpine?
In-Reply-To: <alpine.DEB.2.22.394.2006110423100.608764@chime>
Message-ID: <alpine.DEB.2.22.394.2006110823400.1028539@chime>
References: <alpine.DEB.2.22.394.2006102118150.4085102@chime>
	<alpine.DEB.2.11.2006111218080.15039@debian.work>
	<alpine.DEB.2.22.394.2006110423100.608764@chime>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Well, thanks to the 2 fine folks, my bell is now finally working. While 
"suppressing status beeping" had no affect on Shellworld, it sure changes 
it locally. Thanks so much again.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

