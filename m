Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7A44B0174
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 00:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644450956;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YFVPHNs9hD0Yc6ZhfA9CV16TFYEekQGNU8M+rdcK3FM=;
	b=cp7b92PBL3BCvSG117Rq4LGnwoQpFsselyDc1TP9j6yFH6geefqMZUnvQgZHSwURYEauD/
	Oh5bNGeYqPMe0IZdkJBH4besWUVvWT3KIlzHW5LUXEtJ0IGrE+GqDg3IlXREeBmTmyVK9G
	dfA8eUaG9rvOsGQhAdYmagkXlbRcrNk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-452-bjf8Ln1MN8-6cKR9PkNMtg-1; Wed, 09 Feb 2022 18:55:52 -0500
X-MC-Unique: bjf8Ln1MN8-6cKR9PkNMtg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 733468143E5;
	Wed,  9 Feb 2022 23:55:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2D905DBAF;
	Wed,  9 Feb 2022 23:55:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C55B1809CB8;
	Wed,  9 Feb 2022 23:55:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219Npscj027212 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 18:51:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6E86776EE; Wed,  9 Feb 2022 23:51:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A2DB7774
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 23:51:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3CB991097B00
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 23:51:50 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-13-RnUDSmqTM5qo0boJcAj7uw-1; Wed, 09 Feb 2022 18:51:48 -0500
X-MC-Unique: RnUDSmqTM5qo0boJcAj7uw-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 18A6C5C00D2
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 18:51:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute4.internal (MEProxy); Wed, 09 Feb 2022 18:51:48 -0500
X-ME-Sender: <xms:k1MEYgZbMDBneYpsnUfRpMUXgstJ5KJkUA95cXcPCb45bg58rRE_iQ>
	<xme:k1MEYrZB3FueG7VGI5n_RJ7DUiEIiaB7cPHhQ6wwuZOpWPz9NGu7MBfX9ZDPmJD1s
	Vrg5CmuCH-kQamjHfI>
X-ME-Received: <xmr:k1MEYq_W-V7VwL7N2qgZy7ZVbzbRYdv-Ox5jcea7GjjCz8MfmuHWzVPbnrJLtB1Z1IPW9JzOyGWLw6TiVYlRbjXzrjA0TTTZcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddriedtgddufecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:k1MEYqoOede0QP1rZ5v_mzqoTr4TfhQzo6lThzJmYKqVuNpBBQpVrw>
	<xmx:k1MEYrq-s66nbFY2RUFL4YKXu70Lyq9KXygBbv51X-wkT5RsYMso3A>
	<xmx:k1MEYoTtQYCI7B2x04Eee2RLxyQWd5Gptq_B185DcMWhqR8RV_HujA>
	<xmx:lFMEYlG1Rp2iMrCeduMEZFoN-fCu0d9BrEuExHJG6U9TVDvzRFHmaA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Wed, 9 Feb 2022 18:51:47 -0500 (EST)
Date: Wed, 9 Feb 2022 15:51:46 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is Youtube-viewer Broken?
In-Reply-To: <b767e62d-8e12-46e2-b412-fc376ae8b073@slint.fr>
Message-ID: <d4c2176a-4263-ea61-a73-c2aa8232c2@hubert-humphrey.com>
References: <bd935680-f9c0-3efe-8a8-3d3bf0fee08d@hubert-humphrey.com>
	<b767e62d-8e12-46e2-b412-fc376ae8b073@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Didier-and-thanks for your suggestions. I supposedly had pipe-viewer 
installed, but I get similar errors to ones I sent along earlier. Yes, am 
useing yt-dlp instead of youtube-dl to grab, but I  like youtube-viewer as it 
will display 50 results-and-after my suggestions has a favorites list for 
channels. At least 1 of Trizen's other projects displayed 2 consecutive groups 
of duplicate results. Youtube-viewer does the trick, but I certainly wish I 
could go far past 50 results. Thank you
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

