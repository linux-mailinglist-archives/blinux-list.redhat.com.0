Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E08437629
	for <lists+blinux-list@lfdr.de>; Fri, 22 Oct 2021 13:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634903175;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/dSNXl03TqHFF6TgEPlMYpjO7ItihKHIR/THA/p+6+w=;
	b=RC7EvrVeeeefCFwnDhf0X/8nSIhAV3OnI6BBReDtugqwU32glUsQLEUx4BE+xevHg91Eup
	wDOfV1LkBBG/rcj4wl55bxG7gzO6My4V6CjYiFB/kr0gQo1cAj3pEJojedxcl6SE7fRjFh
	Lmeu9+FzZ9VT4j9v3HUfKdD3kxg7mVc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-ra2a_l2yNNqdAg4EVBJlAQ-1; Fri, 22 Oct 2021 07:46:11 -0400
X-MC-Unique: ra2a_l2yNNqdAg4EVBJlAQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6195950753;
	Fri, 22 Oct 2021 11:46:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82C617944C;
	Fri, 22 Oct 2021 11:46:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 91FFF1800B9E;
	Fri, 22 Oct 2021 11:46:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19MBjvg2005997 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Oct 2021 07:45:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BDA7A40D1B9E; Fri, 22 Oct 2021 11:45:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B999340C1257
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 11:45:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1A61185A7A4
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 11:45:57 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-38-VnNJI4gIPMWlQ0Nbnu2dFg-1;
	Fri, 22 Oct 2021 07:45:55 -0400
X-MC-Unique: VnNJI4gIPMWlQ0Nbnu2dFg-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 6393E3200B58
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 07:40:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Fri, 22 Oct 2021 07:40:19 -0400
X-ME-Sender: <xms:IqNyYSRt9jo9nKxKfH8oHs_sYxjiLR8F1NgyPlFgBaqFxwg7wdw_gQ>
	<xme:IqNyYXzsIJ6Ma3Tnlc9sVl-EE_-dwob9dU-EhZz5DG569aTAvPdKDRsIdqjPOcLwI
	nHtNm_T9K9vzKmMUsI>
X-ME-Received: <xmr:IqNyYf1wLGrLGWkqIWLwh7pv8OynNAEnb-dPXTDDIPLDJ-CDfunbc13FcpDb4F0fXhu7aDURTTuWsxw092GdhYZNxb6Hhy8nBQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvddvkedggeduucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:IqNyYeDVjvbkBoAZblGlwG3QncHBKZzG-NPvwuBynS6h2kIoDkxZng>
	<xmx:IqNyYbgUvPWO7bSgqbtPYF0a9_y9pPHWlMQR9zSxYKPXYyaV-fxcvg>
	<xmx:IqNyYaq-OMbRRgFVIF4vEBGDQJFvw6-FVsFXBWbguAcqWUNwG63B-A>
	<xmx:I6NyYdeyz3ZOq2sHr5mtPGxP0rLer3_kqmLEhfUvhiV7vzsq7YNI-w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Fri, 22 Oct 2021 07:40:18 -0400 (EDT)
Date: Fri, 22 Oct 2021 04:40:17 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: youtube-dl: list videos in order
In-Reply-To: <20211022.113332.040.27@[192.168.1.100]>
Message-ID: <174fc529-33dd-5767-37da-98f727ffe63@hubert-humphrey.com>
References: <20211022.113332.040.27@[192.168.1.100]>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

While I've only used youtube-dl for single urls, I would suggest trying 
youtube-viewer  with a -u flag for user name. The videos would begin with most 
recent. Its also interesting, when typing
youtube-dl -U
there hasn't been an update since June 06.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

