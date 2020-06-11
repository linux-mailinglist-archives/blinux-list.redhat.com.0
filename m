Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 179D21F66A9
	for <lists+blinux-list@lfdr.de>; Thu, 11 Jun 2020 13:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591875062;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CJsiFb/OWluGHGzu0aeNzlfUM6e6xokVK9tMSdnk5jU=;
	b=PITgOxrKlhOrXahQfS5ITBmmB66nzeXzIM7LMFhYyKh2cUWtohHcAPCA2O7T0v6j7z7Fxg
	/Dkgb2K4p2AtGDYmcBKVM4b5p8s5gVjCqzydi3qCwUTaiuS3iuXA2gcgwtHEYjgONt62IR
	J+2CGi/VxUOTxN4HfJfNtH1XPNfSpNU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-412-pSe8d9PjOyuV1CgUJ9vuAw-1; Thu, 11 Jun 2020 07:31:00 -0400
X-MC-Unique: pSe8d9PjOyuV1CgUJ9vuAw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 048971009441;
	Thu, 11 Jun 2020 11:30:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B87F05D9D3;
	Thu, 11 Jun 2020 11:30:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 88D3B10480A;
	Thu, 11 Jun 2020 11:30:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05BBR1MV012019 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Jun 2020 07:27:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BC4582166BA2; Thu, 11 Jun 2020 11:27:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B7CFB2156A2D
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 11:26:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B74C811E7A
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 11:26:59 +0000 (UTC)
Received: from wnew4-smtp.messagingengine.com
	(wnew4-smtp.messagingengine.com [64.147.123.18]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-368-a_N-LB_VPJSvQaljZxbqcw-1;
	Thu, 11 Jun 2020 07:26:56 -0400
X-MC-Unique: a_N-LB_VPJSvQaljZxbqcw-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.west.internal (Postfix) with ESMTP id C1EA5404
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 07:26:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Thu, 11 Jun 2020 07:26:54 -0400
X-ME-Sender: <xms:_hTiXsX1CiWZ9M4zZoYdCLtcWqfhdiYPpcmUAR4EssVfej8V0Ansug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehledgudegucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhffgggtgesthdtre
	dttdervdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepfeduvdduvdevffefve
	egjeffgffgieeigfdtuefghefgjeehtdeilefhueelleffnecukfhppedutdegrddujedv
	rddtrddugeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
	homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:_hTiXgm_C06L2vtmlN9V8dO7pCDB1rTZyCzoMQtsdFxzk8H0SMgJVQ>
	<xmx:_hTiXgbFTqrHgR3AZ-7M0ohYDPm9hM0bAvZQ6prow5zxbXE-oSNfoQ>
	<xmx:_hTiXrWz-GJzitCnz4hpQZKZ0QbJqfzidw4nmmOIoK-ifZ_Nihkpog>
	<xmx:_hTiXsnEfO7-1-vUaX_t1Y9CxBGNE3QUYNpZoLvLfagcQS7Q24HKSbaq-44>
Received: from [192.168.0.3] (cpe-104-172-0-143.socal.res.rr.com
	[104.172.0.143])
	by mail.messagingengine.com (Postfix) with ESMTPA id BCA5D328005E
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 07:26:53 -0400 (EDT)
Date: Thu, 11 Jun 2020 04:26:52 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: New Mail Sound in Alpine?
In-Reply-To: <alpine.DEB.2.11.2006111218080.15039@debian.work>
Message-ID: <alpine.DEB.2.22.394.2006110423100.608764@chime>
References: <alpine.DEB.2.22.394.2006102118150.4085102@chime>
	<alpine.DEB.2.11.2006111218080.15039@debian.work>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi Geoff: From my many years on Shellworld, I found pine to be more 
reliable in telling me about new mail, as well as that beep. An only score 
for Alpine, it seems to read subject-lines of UTF8 messages better.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

