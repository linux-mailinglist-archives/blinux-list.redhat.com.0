Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BCB4A33FB
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 05:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643517295;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=excaY45OpZAayD0XchcQx5HDCMGwFFnL1p8pJwmNzD4=;
	b=XfWVzNpxZDSicGkWB70vhSxQB89to+wu7ntd+1Bph072tFVrRT80Q4LG+AjnO83pVCqsNE
	/0ZjDNUX6ofj6wjf8cSwxzU01E5pOf2UPA1DhCuKQertf3hdyt6Nr/9RFLgA6TFdv5XfH+
	DuBnyalVP04obUv4tikfvCUGsxAq+wY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-551-Wip_Ti7nOwWey5O7UMdAjQ-1; Sat, 29 Jan 2022 23:34:52 -0500
X-MC-Unique: Wip_Ti7nOwWey5O7UMdAjQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BA7B814245;
	Sun, 30 Jan 2022 04:34:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 714FC4697B;
	Sun, 30 Jan 2022 04:34:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E8E154BB7C;
	Sun, 30 Jan 2022 04:34:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20U4YjJ0003005 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 23:34:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 46DB7112131B; Sun, 30 Jan 2022 04:34:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41DF01121315
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:34:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 531D1800B24
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:34:42 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-645-Yp9R_9RKM_6W0uar2AVVpA-1; Sat, 29 Jan 2022 23:34:40 -0500
X-MC-Unique: Yp9R_9RKM_6W0uar2AVVpA-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 8228B3200A3E
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 23:34:38 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Sat, 29 Jan 2022 23:34:38 -0500
X-ME-Sender: <xms:XRX2YS0R6ZqYKFCiBkdOwdTYkPbm6DJQvXOKBK1-IM6F6kfA3Rh4uw>
	<xme:XRX2YVHaHH7fGk0WCS2vxWRZt9SrxScLu2maIe0c6AI-4wM-Zer7LgSVxeTIzMqDb
	vIPNoL-GDi2ZoQIjyo>
X-ME-Received: <xmr:XRX2Ya4SehaEbigTHLmxXQjN3PvoORyr1Q4v8K4Q7htPN6K9V9V5f0vHxcuSCP8US8AhBXVQnC3Hk2DhUCj8s6RpEssFAwMHAw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfeekgdehfecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:XRX2YT20DaD8KpHe7mfUNJh6zHAPvoSW9mX1eEEyIGQaa7RRn5arog>
	<xmx:XRX2YVFQRMCAKcqwrXe1_O8Yq9YvAw8cH6Vb3vPwoL5GscEq07QXag>
	<xmx:XRX2Yc-U0QbO05HPenqOKD-MzlFxy9CDGA2Elf4v9Gq-Wyauk8UGog>
	<xmx:XhX2YUymyXnc709I1Ei9MaUcgNwBTB9H5pgd-BswjywxYaGuj6ge2A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sat, 29 Jan 2022 23:34:37 -0500 (EST)
Date: Sat, 29 Jan 2022 20:34:36 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <1e6ffd2d-eda6-efcf-18ae-547932ed126e@gmail.com>
Message-ID: <d6a28113-caad-5ce3-1c29-b6668f8aeac@hubert-humphrey.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<3e8211d3-4699-6948-93d9-559a36927ed7@googlemail.com>
	<20220128.190302.486.6@[192.168.1.100]>
	<1c8b1a72-b4c1-f8bb-714d-68d0c7bbfe79@googlemail.com>
	<6c9e57a3-4ad4-b296-58b7-4053bd528eed@seznam.cz>
	<1e6ffd2d-eda6-efcf-18ae-547932ed126e@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, back at the beginning of this thread, I can finally report on some 
progress. 1 of my Linux experts suggested we use an enviremnet called miniconda 
to run gtts-cli. So I followed his instructions, including for some reason I 
had to run from bash instead of my regular tcsh. Anyway I tried converting a 
book to an mp3. It created a 3hour6minute file, then gave an error 429, 
something about 2many requests to the api. Sure wouldn't mind hearing those 
Google  voices while reading in Speakup. If any1 wants a 3mb file reading 
instructions to set this up, please write off list. Thanks
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

