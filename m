Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7F645EF5D
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 14:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637934325;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7zJmkdqR6PYWAshtnztbkFGHmDj5Ky5BZkDcaY0NflQ=;
	b=fb7KjBIHCcU0FUxEDb6cQ6j0cZnlSzPijHSHqCKQHguLtgW1omXy2w2j3DjrHJm/NZDJlU
	o7FOd3il7RUqmVdSSSAx6ixwPF0dYP7poHQDG6KSabNK3UVTp7L17IkZt3fN11fuZ75OHq
	t6szNZ+CqbIXDr1tuIxjvPi8+DFUNho=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-251-vxOsFfYxOkyuIarovPNULg-1; Fri, 26 Nov 2021 08:45:21 -0500
X-MC-Unique: vxOsFfYxOkyuIarovPNULg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBF5E81CCB4;
	Fri, 26 Nov 2021 13:45:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 701BD10016FE;
	Fri, 26 Nov 2021 13:45:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B04624CA93;
	Fri, 26 Nov 2021 13:44:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQDgHo7016041 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 08:42:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 897601121315; Fri, 26 Nov 2021 13:42:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B2CF1121319
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 13:42:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E9F685A5AA
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 13:42:13 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-266-e54mYHtjNDOj6Fo36IYANA-1; Fri, 26 Nov 2021 08:42:11 -0500
X-MC-Unique: e54mYHtjNDOj6Fo36IYANA-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id BFA723200933
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 08:42:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Fri, 26 Nov 2021 08:42:09 -0500
X-ME-Sender: <xms:MeSgYTS5UIg20CU3WXYtwit09BqjUqu-CyYn4ty6xpLOb7A0CBAjUw>
	<xme:MeSgYUyvqaygYBzUC-kERjwnZSnFOsx4vJavOQRrVuPAtYzJ3Mqo3ZX6ClrKT3sQQ
	k5XXnvnb7tVO4kr9TI>
X-ME-Received: <xmr:MeSgYY1DLnHfTcgzuDwiPyASsaqRVY3OP35hNaZTMOIheM7sZrbdgIvTq5avB3tuoCz1PNb28qc8ByDTbLjj57B2I2XJY63c7A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrhedvgdehgecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:MeSgYTDdQpLb11Eq3daNFyI4xFqrU2D859LwZ0nHrBFyLZ2kXbxbGQ>
	<xmx:MeSgYcgRtR3ebOOOkEln4dHYFYgdsk_5h0cg-RuAMLJdebcgG9daJA>
	<xmx:MeSgYXreWKlo7vgZxzNoW3DddSrvO7JZHZ-zM2BxEd_prEtoNY7PPA>
	<xmx:MeSgYaf_f59NuXx5medblHXKOb1fR26sfbmYI8oBMIC4Bvv3_TJmtg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Fri, 26 Nov 2021 08:42:08 -0500 (EST)
Date: Fri, 26 Nov 2021 05:42:07 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting epubs to Plain-Text?
In-Reply-To: <alpine.DEB.2.11.2111261256210.7640@debian.work>
Message-ID: <b79f6e3-c28f-e3ed-56bd-d771e0aca57@hubert-humphrey.com>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<alpine.DEB.2.11.2111261256210.7640@debian.work>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Geoff-and-Willem: Those instructions in ebook-convert seem to imply 
inconsistancies. On 1 hand it says the file name is derived from an input name, 
but then Geoff says I must supply an output name? Well, I experimented with 
another dot  epub, pasting in that name as an output, but replacing an 
extention with a dot txt. It went through a process, seemingly first converting 
to an html, but then a txt. Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

