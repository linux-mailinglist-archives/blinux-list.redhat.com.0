Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 81E773BE147
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 05:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625627185;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MnJh5alPN39eiBBybL0oDRb62Gs/B9Grfq0tjsLGF6s=;
	b=EIymiyM5WLud56Ae6+NcjEdQT5Hc8oPyHcpx7ZeLsxuFC3ft7j7a3xpJtvTHfDmc+2/G92
	p9o5Bx3cMzPmPksy8zhFibhrOPDcbYx99WxzaEp+IJnL39K3vTF0UszOKge1J5ziMUKFTf
	5k3JPErvQnSj7Er4UO/j/NThSbb0ar0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-iBGnzPjINcmmmdlYvyuIog-1; Tue, 06 Jul 2021 23:06:23 -0400
X-MC-Unique: iBGnzPjINcmmmdlYvyuIog-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EFD5B802C80;
	Wed,  7 Jul 2021 03:06:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F5755C1D5;
	Wed,  7 Jul 2021 03:06:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7863C1809C99;
	Wed,  7 Jul 2021 03:06:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1673692p012012 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Jul 2021 23:06:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6FC3B100610F; Wed,  7 Jul 2021 03:06:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B86510087F6
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 03:06:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D18B7800B36
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 03:06:06 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-532-A3S7VCMnPva_z_XDbJ3Ypg-1; Tue, 06 Jul 2021 23:06:04 -0400
X-MC-Unique: A3S7VCMnPva_z_XDbJ3Ypg-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 9A70D5C0121
	for <blinux-list@redhat.com>; Tue,  6 Jul 2021 22:59:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Tue, 06 Jul 2021 22:59:28 -0400
X-ME-Sender: <xms:kBjlYP5JmZqsr9OLARF8pLZBdIBMp2gwU01OiMUGyn1aSQzHY-k_-Q>
	<xme:kBjlYE7R3E1ADqRhb4YJv-JBhsnmOgHRD366y1nnM6Ps4i82zXm88sdPaS9Eg38tk
	3n2oX3bybWl9e2TTW8>
X-ME-Received: <xmr:kBjlYGeKWRo_ObCynnTcqdHwe3UMn7BWJ8uAhqfhnHZFf3Jg9KKVUFMTU4w1HT3b84p09_r7X_M3SOwgX3IjYKQzjCcpWigWdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtddugdegfecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:kBjlYALkT9jausOL0I0CkQoIVJh7o47nFFj6KCKJAVbuzyCl0AtSLw>
	<xmx:kBjlYDKl-QpSZWLvlCmcz_NXPfMJFQYjiOQ2UfRWm8_xGUFsxcLMqw>
	<xmx:kBjlYJzetB1qad5BBeso4TEFH_Yn2UI428YVkaj3C9n_bNWEiiaiSA>
	<xmx:kBjlYOmfgFGUfg_nFNzS9xSf3rZ1Eh7tOzDCE_b7BELiUAm63hIFFA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Tue, 6 Jul 2021 22:59:28 -0400 (EDT)
Date: Tue, 6 Jul 2021 19:59:26 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Suggestions for Linux laptop
In-Reply-To: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1@yahoo.com>
Message-ID: <c690bab2-3bd7-e7f1-cd3f-ed2acfef85c5@hubert-humphrey.com>
References: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1.ref@yahoo.com>
	<693C3F63-BA95-4155-BFC0-DFD43F0F1CB1@yahoo.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Are these machines already loaded with Linux? I tried a system76 distro, but 
found it was a real challenge getting a back space beep to work in a console in 
TCSH. Also, at that time when we upgraded to kernel 5.11 I lost speakup, but 
now its some months later, so maybe you would have better luck.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

