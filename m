Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 396D745E0F7
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 20:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637868468;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=52Q2lSKtmZTeKHrLQ+pm8YbcM7aVS/Or2ps1/ao1CM4=;
	b=Q+bd3e8SRJ8VTdfB2kYqyK2JwCwWMLScKufc/t2X3pg2r+SHXQ0QrQ62YT+0YKHlN6v/cn
	9+dphCJR0AVTP08yvnt+7I/WinK5Doz5IVQ1wyUHtOZ0ndjpGGa0nf6fxn3M5UeR7tZpwI
	xaL19j7R+OzYc8Am/mnrw6vJHfSwVDM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-359-tYwxm1hgPfCyCDepENdIpQ-1; Thu, 25 Nov 2021 14:27:45 -0500
X-MC-Unique: tYwxm1hgPfCyCDepENdIpQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AF0D83DD20;
	Thu, 25 Nov 2021 19:27:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BDAEE5D740;
	Thu, 25 Nov 2021 19:27:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2C5581809C89;
	Thu, 25 Nov 2021 19:27:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APJRYiq030768 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 14:27:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EB5D751DD; Thu, 25 Nov 2021 19:27:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5F0F51DC
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:27:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 62D5585A5B9
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:27:28 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-445-GdSUYJcMMmiCWx3ELB_jsQ-1; Thu, 25 Nov 2021 14:27:26 -0500
X-MC-Unique: GdSUYJcMMmiCWx3ELB_jsQ-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 5259C3200C10
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:27:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Thu, 25 Nov 2021 14:27:25 -0500
X-ME-Sender: <xms:nOOfYfe7Z3kqvjlGOq4mp5qoCCcbz6JK3p1neTMlkYuvnlSSKDOIFA>
	<xme:nOOfYVMOtaXH264yl3PrOg7sMRsrAVAbBrdNAwy4TxTRl5L4JGI815cQeR4hadUMV
	NMtmp2f-Cf35j2XoRA>
X-ME-Received: <xmr:nOOfYYgD2l6iAaXq5auCCxbvh6twI6UYt5R0jjEoU3gNE9RmRLFW5Pm2Q32Pedxf9M4QPiRQ8UW9iEGmQCTBfHS90jd2AEpUCw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrhedtgdduvdegucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:nOOfYQ8dQ7gf3VxJO-EQZayEKJ4QPMoJgdACaSZQZ0Z3F5a6pf0i6Q>
	<xmx:nOOfYbudxsg0tBZFJino4Fz7tnTZ5i4cK8P-kp6lDMxjThFYu9EUog>
	<xmx:nOOfYfHGkQHk4uxBLQcNuesb1Q3d96GZKwzS0agoMxmdog5Ij0HbHw>
	<xmx:nOOfYY6Y_96biqiQcqPUU7HfFKccuv_h8ZQ-dikyV8lUHd3yIl_UaA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 25 Nov 2021 14:27:24 -0500 (EST)
Date: Thu, 25 Nov 2021 11:27:21 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting epubs to Plain-Text?
In-Reply-To: <alpine.DEB.2.21.1.2111252108070.3997@willempc.meraka.csir.co.za>
Message-ID: <c353cae1-3ac4-311-3a4-3edf18be631@hubert-humphrey.com>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
	<e9ca84ae-5e2e-41bb-4299-e947a79ce264@ukr.net>
	<alpine.DEB.2.21.1.2111252108070.3997@willempc.meraka.csir.co.za>
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

Thank you Willem, I cannot find epr, but running as an aptitude, there are 140 
packages, but since a limit is 40, it won't show a list. Wish I could eliminate 
those limits.
And  yes, thanks Karen, I do have pandoc, just looked, will try an option 
"plain"
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

