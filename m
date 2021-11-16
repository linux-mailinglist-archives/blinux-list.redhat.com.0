Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DD307452899
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 04:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637033615;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V9ajW7xBev+/8kRK475dOW22Bq8qYftOwkgCYXdT5NI=;
	b=HhUA6LIkGyXsNn+6VX74Lf7N44I0aIThWoWoZKv1CWp7m01K5y1tGVJGzuhuj+ajRb6N7U
	u0d9N+tVy+EOt79WFOiRDycsvQRXX08MgzhNFMUeTeXQZG/v0MaHtZxfVchu/IQdxGAe/X
	BEBOaRb4ElL65dGXdraWxi7BxXout0k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-495-P4jgn5P1Mj2Rd5J6J_HgqA-1; Mon, 15 Nov 2021 22:33:31 -0500
X-MC-Unique: P4jgn5P1Mj2Rd5J6J_HgqA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D029B1030BD0;
	Tue, 16 Nov 2021 03:33:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B71617155;
	Tue, 16 Nov 2021 03:33:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 68107181A1D1;
	Tue, 16 Nov 2021 03:33:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AG3XK2M016252 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 22:33:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E1FC31121318; Tue, 16 Nov 2021 03:33:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE05A1121315
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 03:33:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA5D11066558
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 03:33:16 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-300-kiAfFR_wOViL56DAvu-FiQ-1; Mon, 15 Nov 2021 22:33:15 -0500
X-MC-Unique: kiAfFR_wOViL56DAvu-FiQ-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id D594A5C0282
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 22:33:14 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute4.internal (MEProxy); Mon, 15 Nov 2021 22:33:14 -0500
X-ME-Sender: <xms:eiaTYXxUfpLrfm4jP_jO0Iuxs3onaHJR2Vzrsclfgma5AJJP-L1xxA>
	<xme:eiaTYfR895F1oQa2Tdq8StQZQdvpKrHcHS4fGEfsGBVZURVlV5ircEtUDcmNJEOGa
	yONWeiqDMj62KGC67o>
X-ME-Received: <xmr:eiaTYRXE80BBfr1uYTxQoatvlAgL-Nud_NJtcWWmTFS6qEGKmi9bKO4uIyNquTggNPOcpDFQseWkmsrpV8nsuHu7XCRrdfuijA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrfedugdehjecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:eiaTYRjHNOhlKkIhf6IlCmGIaWI_3-MPlcTuplxSOkAyLiSb3rhoiQ>
	<xmx:eiaTYZAZvN_J1skh51K9pj5x6szPTm3GZt3NSQZbVNiNKbAFrYTJ8Q>
	<xmx:eiaTYaLetDMz4mcpZ_HDkVjK8ndxgX8aRySWjjMrALzetnc0JTWghA>
	<xmx:eiaTYU_aipL4JePdBzLjW2ngullhFNLgRKjhT_LLDYvytc5bG1SKAA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Mon, 15 Nov 2021 22:33:14 -0500 (EST)
Date: Mon, 15 Nov 2021 19:33:12 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any good accessible OCR for linux?
In-Reply-To: <CAO2sX32xKHKBjW6vvwOsbHcae7QDkPU-B6e=rDL=07UodjyTaQ@mail.gmail.com>
Message-ID: <b4905194-ca26-275-8b7e-327115f850bf@hubert-humphrey.com>
References: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
	<CAO2sX32xKHKBjW6vvwOsbHcae7QDkPU-B6e=rDL=07UodjyTaQ@mail.gmail.com>
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

Wasn't their also "ocread"? In addition, a commercial item Abby Fine Reader?
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

