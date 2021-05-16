Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 740F2381C3D
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 05:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621136039;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CKsmFI4vMifLhRa3GzZvIOlRno2gBBWLcdnB7YZZnQY=;
	b=cYO1pyUzV6dVtH+yBB2AC9I3I5+88J1cnV54oQEO3V90XOBGPYMIuQxtx8Vvh+kiW8CVMd
	w/opBVKhDkby0HxLke7sk1fHblWjlpXh5X2TW4kE3EcQrac136TXMdbIPsm2VqYzVMAZsg
	9hoNLIM+Bmm2SlIuQwyz4IiS8EVATt0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-md9CgCwsP4ieQhx4SrDe6g-1; Sat, 15 May 2021 23:33:57 -0400
X-MC-Unique: md9CgCwsP4ieQhx4SrDe6g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2FA38015F5;
	Sun, 16 May 2021 03:33:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B3115D9F0;
	Sun, 16 May 2021 03:33:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2BAA155347;
	Sun, 16 May 2021 03:33:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G3XkEu024397 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 23:33:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 694182034256; Sun, 16 May 2021 03:33:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 649A7203424D
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:33:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D08B833942
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:33:44 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-276-23XTSS3SN5aXIvbc5MvNag-1; Sat, 15 May 2021 23:33:42 -0400
X-MC-Unique: 23XTSS3SN5aXIvbc5MvNag-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id AA8515C016D
	for <blinux-list@redhat.com>; Sat, 15 May 2021 23:33:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute4.internal (MEProxy); Sat, 15 May 2021 23:33:41 -0400
X-ME-Sender: <xms:lZKgYAgV6YHIaE_xzrqpu-D2Yg83fjPRbRVifaaBDS7z-KefcxITsA>
	<xme:lZKgYJBAeVQZ2MlKAn6wq2k3k8FzqXiTYv1G-u8K3dEIKjK16myBkLCJrR39zp1LG
	yA52p_S3heTGTfqj5o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdeiuddgjeduucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:lZKgYIE1wkP4DPmDH1kRcmou9_PN2tLjxtR8FK7hvTEPFwpfK8PMiQ>
	<xmx:lZKgYBQakssjDk2QY8N4kYzVvxk6qtNiUuAXHODY_eTE4YDXeYOSBg>
	<xmx:lZKgYNzWVo_NNNzkN2nylXHzM_we0FjlzFhb8MYq58MiysQNzIalnA>
	<xmx:lZKgYM8YlBE0RIy1PbM3p6pmmizyGABqIagbmla8uzsGLCMDl3ZkZw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA
	for <blinux-list@redhat.com>; Sat, 15 May 2021 23:33:41 -0400 (EDT)
Date: Sat, 15 May 2021 20:33:39 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
In-Reply-To: <alpine.NEB.2.23.451.2105152322030.25128@panix1.panix.com>
Message-ID: <cf833585-fdb9-27a4-ec89-819db229e889@hubert-humphrey.com>
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
	<Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
	<Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
	<ae4b711d-2c14-1bb3-f751-4ca4171277e@hubert-humphrey.com>
	<alpine.NEB.2.23.451.2105152322030.25128@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, last time I replied to all, it also included blind talk which I am not 
subscribed to. I just tried an apt in Debian for pipe-viewer, but no luck. Is 
pipe-viewer also from Trizen? Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

