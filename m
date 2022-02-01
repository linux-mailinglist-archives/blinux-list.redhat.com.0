Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B3A4A61EB
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 18:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643735276;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qDway9DJX6vNNvJ1D7H++Ige+zLOEKyzYOu1bxJi0pc=;
	b=NO6H1xSKOMhSeuapWOBOATqZwxBqOpap9CfHUWIETM4FwqE8xDvjMlz8fhW1CQVCe23tIp
	kHDFHwZl8TrQUsDXJF/C3ECaxcODetGUzaROY2k9rCEqQD8EKys9qHi2f+fJuD0hUjFKw3
	n+vSYSCqETU77ja6Isk6n1QPAmqnqGs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-113-_B866tRUM3ubib8F-kic9g-1; Tue, 01 Feb 2022 12:07:49 -0500
X-MC-Unique: _B866tRUM3ubib8F-kic9g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5739514756;
	Tue,  1 Feb 2022 17:07:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1F9C78AB9;
	Tue,  1 Feb 2022 17:07:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F423D4BB7B;
	Tue,  1 Feb 2022 17:07:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211H5m8B027743 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 12:05:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3350C112132C; Tue,  1 Feb 2022 17:05:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F4D11121321
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 17:05:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0401738041C5
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 17:05:45 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-257-fXjLMKb8PVC8_wzwMajwlw-1; Tue, 01 Feb 2022 12:05:42 -0500
X-MC-Unique: fXjLMKb8PVC8_wzwMajwlw-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 0326432020A8
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 12:05:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Tue, 01 Feb 2022 12:05:41 -0500
X-ME-Sender: <xms:ZGj5YdAAcQgjrbpj4i9sCnypj_mndnElJ-gYyjoYfVbGHWoxkryubw>
	<xme:ZGj5YbhUjoZ3inSj6R2oYCes-NN9p12SSlepchcCj4USIuf2hE57AT_XBSdkeICIt
	baUDc_6jPmJMHYa96o>
X-ME-Received: <xmr:ZGj5YYm6t8t4dyl0-4f1bF8XA5Y8tM3KwRZF9EOd83H4Yje966AtNnM6S_5GhlnTIUyLJBMuOjxjDYourxYD37ZxA_-XY2IeGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrgeefgdelhecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:ZGj5YXzuANh4i-qy6moDAzU_Y-tM2D7SBQo3INzE9hIEt0Kp7qXE7A>
	<xmx:ZGj5YSS3PG0MpbWXJA3dxYt7yAw6YMJV2MlrAbClDts5pTJYp4EI7g>
	<xmx:ZGj5Yabuep0JaFH6Ll3T-Cn4Xt1hvMPVTYILQ3UfEUTffTxfgCejAw>
	<xmx:ZGj5YZNmU7USlsSog0UVguXiO-2heb2dlr_kpNyYuJE8cfRGN7PZ_w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Tue, 1 Feb 2022 12:05:39 -0500 (EST)
Date: Tue, 1 Feb 2022 09:05:38 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SSH server authentication (was Re: Remaining DecTalk Issues in
	Speakup?)
In-Reply-To: <alpine.DEB.2.11.2202011838480.1960@debian.work>
Message-ID: <676174e9-5e3b-f5e8-9993-e8ff1810fa0@hubert-humphrey.com>
References: <bfd3d4b4-13fe-acc4-406a-87cfae17403d@hubert-humphrey.com>
	<alpine.DEB.2.11.2202011838480.1960@debian.work>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Jeff: Yes its Unstable. Usually any1 here needs a dot pem file to get in. 
For some reason, even though openssh is installed, it doesn't tab-complete, so 
I cannot give you a version number. Not only that but man -k doesn't find 
anything. Also, even when the server was on, no1 could login with root, but 
thanks for your suggestions.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

