Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F37E23D1A51
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 01:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626909278;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r1Ac8e1e7ADxAX6Cz/qIuQ8gJwoBH/xfmx/4Wd8ZNZY=;
	b=C6WhYCo7TmqAcS/9mSdiGjlZt9sIOj2xw2LMkg0MnEejm+9+6z82EO+rJm9+7dHJI6m8+m
	ovFloUIgO2Z2GAusG1uTywgX3rSmEVUsJmox4TxWjkUK/MB8cv6K7D48X7FaCLFpDTgQy4
	6cr9VNegdi/oxJSSJ7aSLeFzRBnl1zM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-443-81kBiicAPPiNognk6FYrQQ-1; Wed, 21 Jul 2021 19:14:37 -0400
X-MC-Unique: 81kBiicAPPiNognk6FYrQQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 746A5800D62;
	Wed, 21 Jul 2021 23:14:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2585A5C1A3;
	Wed, 21 Jul 2021 23:14:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A70301801028;
	Wed, 21 Jul 2021 23:14:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LNEFmf031547 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 19:14:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AB48E1033C6A; Wed, 21 Jul 2021 23:14:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A69D71033C73
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 23:14:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C11F9185A7A4
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 23:14:12 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-439-HYhzL-7HMo-Y9IGsStvWAQ-1; Wed, 21 Jul 2021 19:14:10 -0400
X-MC-Unique: HYhzL-7HMo-Y9IGsStvWAQ-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 5EAB35C014F
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 19:14:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute5.internal (MEProxy); Wed, 21 Jul 2021 19:14:10 -0400
X-ME-Sender: <xms:Qqr4YIQFO2DMAR1MZ5mal4iQZ00oa54GO4lZQPuMcrdf5zVAmF2CaA>
	<xme:Qqr4YFwNvNWAJMk5JFecn93xxp75XeHdUT9hf2AutE0B2OAwDeDPNlYzW-Vz8NpFy
	zdSm7nkPnl_AMK0AHs>
X-ME-Received: <xmr:Qqr4YF2wQgWRi-pS_229SwzwnEWxiW59U5n3G8XOAohA6qMkDLhnxmS3Wcrml0px8hz7vyCcJOeDSnuIRGGO3N4OodXNNQKzdw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeehgddulecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:Qqr4YMAReKiwOHVq3-rlxftNeVy-_PrOQtFpCOdVz-Y0XCARKcecoA>
	<xmx:Qqr4YBjTVbQe9Q_q-WzlaGJzWrcnNfKHrDjeQB6_nSDuWcVkfZIEFg>
	<xmx:Qqr4YIoNOc_AOoqCBVK2gI6Z79Uy1em8kDIQTdbajQ-IXztqVSeclA>
	<xmx:Qqr4YLcPmtvJeplgobWG5c3g9lridZeY4u4GLomrmxlKxtRXAbbGyQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Wed, 21 Jul 2021 19:14:09 -0400 (EDT)
Date: Wed, 21 Jul 2021 16:14:07 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: audio cutting and exporting
In-Reply-To: <20210721161239.171ebc50@bigbox.attlocal.net>
Message-ID: <70dafdd4-e6d2-51d-617e-1fa0dfa41a2@hubert-humphrey.com>
References: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
	<20210721161239.171ebc50@bigbox.attlocal.net>
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

Hi Tim-and-All: Please also consider mp3wrap which will combine files, but I 
usually must ajust the name it adds on an end.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

