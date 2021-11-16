Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A949453CFF
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 00:58:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637107104;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/QzDnUUJnpX2uHHOLc53BwMAKL5ZkpeobC5T+dPwiB4=;
	b=SASrpH3gynajn1Qf5H4+84rPP5AtmF2Bmp4Bx3cXGyIvTMG8DXrKmKUwg4DeAkXPYfAqnv
	2Se879wXZJjvdDlB4L6YynIThJ1K/RWB6z7tCHqHoFGSEhWILwjzxmLUP2aI2/u6+bGzcS
	TAayosVNn/xgdf70vrxI1ZDge6TCqFI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-526-fCUkEDfHOs2reOyPzAjDXQ-1; Tue, 16 Nov 2021 18:58:21 -0500
X-MC-Unique: fCUkEDfHOs2reOyPzAjDXQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4A95180830E;
	Tue, 16 Nov 2021 23:58:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA01F60BF1;
	Tue, 16 Nov 2021 23:58:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4E7C91819AC1;
	Tue, 16 Nov 2021 23:58:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGNw9F2024698 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 18:58:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A9A734010FE9; Tue, 16 Nov 2021 23:58:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A40C4400DFBC
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:58:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 894F5811E76
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:58:09 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-255-7piFZs8PPVSov-JWqQAngw-1; Tue, 16 Nov 2021 18:58:08 -0500
X-MC-Unique: 7piFZs8PPVSov-JWqQAngw-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id E99895C024B
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 18:58:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute3.internal (MEProxy); Tue, 16 Nov 2021 18:58:07 -0500
X-ME-Sender: <xms:j0WUYQG3gzbMsf3JB4TOUCcJg7fQicGmXJ4MPV9mcoSME8vYLKt9kg>
	<xme:j0WUYZXtYWd7oXHERbgNgLeS7Ht_zz2EcMThlrmusAeu_M4ZO1YmrIzWgsidLUn4N
	PvGFN7Q3VFtHU5YWS8>
X-ME-Received: <xmr:j0WUYaJe4jJnDKa0xFDhv_M3-ENvxGLj0jyodQwJBDTamS4o8rFYvJi32HSrCVQ-AxCVGOMF_OqOwKO7GXeohKVECkzkMu2MQg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrfeefgdduhecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:j0WUYSFDowmfGQiJnerAcivCiyU-OjWb3_ZTylewxNi8F6Uy2IURdA>
	<xmx:j0WUYWX_goUw4_yRlTQZ37JCZkEKvmIj6cfNQag-0Owx34m8TGwXmg>
	<xmx:j0WUYVMYPhJi2fcg7XDHlxeb2N96-LZ5fxAS9xo9t07tpld4L2nbMQ>
	<xmx:j0WUYRBefHeReYW4wIe3cL1XXBcXxx4t1Bu7f5l3DDJYZE-NxfnEzw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Tue, 16 Nov 2021 18:58:07 -0500 (EST)
Date: Tue, 16 Nov 2021 15:58:06 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Correcting an sd-card?
In-Reply-To: <c55df57b-6f86-8613-88a8-d55afc83f15c@slint.fr>
Message-ID: <78629d54-ef4a-8028-4969-3f1523555254@hubert-humphrey.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<c55df57b-6f86-8613-88a8-d55afc83f15c@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

Just tried the card in the BookPort. Maybe only 11 of the 19 items actually 
play. Any cattagories which I recorded on are now either not playing or not 
even showing up. I put the card back in this Linux machine, sure looks more 
promising than the BP.
Items seem fine here in Linux.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

