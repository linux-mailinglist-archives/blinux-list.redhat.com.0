Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FA94900AB
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 05:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642392173;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VM1iz3WqOhJS8BpVr5iSS97QRPxHbvaGDkcgHKGBwZU=;
	b=FVvXGr4s5nVjkZMtSqdOY9Elyx5ZPreinrTntyhWadueYcbF47I8YenPnOwBHxrq7hJlRp
	PI3X/Z2/39d/qek/wPd45Gw3ugmTIPYWILaIOkdiYUyvBImZJnLDi6dd38L49REKK0eG+6
	tzvmbHvh6gTLWs87elPCl8RXFAeBS5k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588-H9HDpYx9MtWIcd5QpL9-LQ-1; Sun, 16 Jan 2022 23:02:50 -0500
X-MC-Unique: H9HDpYx9MtWIcd5QpL9-LQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC72C807901;
	Mon, 17 Jan 2022 04:02:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63349E72B;
	Mon, 17 Jan 2022 04:02:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E5B0D1809CB8;
	Mon, 17 Jan 2022 04:02:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H42hjg012646 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 23:02:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5AAEF2166B47; Mon, 17 Jan 2022 04:02:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55BAC2166B25
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 04:02:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 227C8101A52D
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 04:02:40 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-265-W9IMuhFXN16acLmBZxMXpg-1; Sun, 16 Jan 2022 23:02:38 -0500
X-MC-Unique: W9IMuhFXN16acLmBZxMXpg-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id EA0CB3200F3B
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 23:02:36 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute5.internal (MEProxy); Sun, 16 Jan 2022 23:02:37 -0500
X-ME-Sender: <xms:XOrkYUchmzkwlEu4cUWRHUj049w7t9YtU1XugFOKMpkYZ3vS1zL3EQ>
	<xme:XOrkYWMRXW7yWfC4I19hWvmD8GmdI0o1aoVrkkd3G10RseT1BOnk2CDBzGJjpoiVE
	A9v9vhij8yKZUHqwY0>
X-ME-Received: <xmr:XOrkYVix43OA6kPn6TRukCF2DOdEvvaf48B_pO50TkzXVS2IJRUUMxNnYlUqbm7cVYEd1_U99787mLrwrOIJoIuuBF_rB4Fs6A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddruddtgdeijecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:XOrkYZ_-SvsebFSa5us5-ZYMVoq8WpT4aHV-b_HjFnFTlnhM8f1zjw>
	<xmx:XOrkYQsIiTjLV_lDPNGFER0ufQEaC-J6l1Kv1nTTArDejRh2ETv8oA>
	<xmx:XOrkYQHrnKQeDt5405FKrK5T5valYZnA_ABtFaYRqvz3pRbW8_Famg>
	<xmx:XOrkYZ7t3nd8NABtSOwVKN-EM8ifRiwf7oB0tHlqv_0Rv4Ezf7kGUw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 16 Jan 2022 23:02:35 -0500 (EST)
Date: Sun, 16 Jan 2022 20:02:33 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: looking for accessible music library app
In-Reply-To: <ae4dc9d1-d6de-0319-e682-ab489f86fd81@gmail.com>
Message-ID: <b82ed2ba-dd41-5346-dc79-86765e15de95@hubert-humphrey.com>
References: <84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
	<84DAA8A1-78CE-47C4-A4B5-F717D2DD25DB@icloud.com>
	<ae4dc9d1-d6de-0319-e682-ab489f86fd81@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, KYLE-and-All, in cases where you would be missing info, couldn't you run 
Music Brains on those files? Or are their other Shazam like apps we can 
install? Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

