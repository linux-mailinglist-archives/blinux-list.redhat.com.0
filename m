Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8009B453C88
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 00:06:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637104008;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8jzrneEPPDKONUutAamZ9rcECNsbileyTB+VwtIiJQw=;
	b=EfewmnTRceOIecz2cSMXRZEMhexIIjYmAV1zQDTYQFRcGdbAn0cwD5r7EyHS0kJZpEf5Pk
	32OA3TtOG1yvgyRIPcl78Sj9XKpHtKZXKZOYEJe5D9xnozA/VjpA2RNHV+YZq9YF7w/dZ2
	xJuhjK3eT9z7KyRXkmRfFCNMpxWd9eo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-602-kSA9cbuSPxWsHSaJcaDJKQ-1; Tue, 16 Nov 2021 18:06:44 -0500
X-MC-Unique: kSA9cbuSPxWsHSaJcaDJKQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 994B480B724;
	Tue, 16 Nov 2021 23:06:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0888125333;
	Tue, 16 Nov 2021 23:06:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 314FD4A704;
	Tue, 16 Nov 2021 23:06:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGN6MMU020456 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 18:06:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 43A722166B41; Tue, 16 Nov 2021 23:06:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CD212166B3F
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:06:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A6ED1066559
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:06:16 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-557-Iv40vFcEMJmC7s6DqGKNoQ-1; Tue, 16 Nov 2021 18:06:14 -0500
X-MC-Unique: Iv40vFcEMJmC7s6DqGKNoQ-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 364D25C0223
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 18:06:14 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute3.internal (MEProxy); Tue, 16 Nov 2021 18:06:14 -0500
X-ME-Sender: <xms:ZjmUYeXYoQHCzbEUlBURjNlQ7BcQvMsXGH_foLiKxWLCkDRnw-mVoQ>
	<xme:ZjmUYakz2evfzLk3o_AEt4Ml4c2ch5luUsSMNR--3fgUhsJqQ6aB_Z4GYLsfQI40q
	PknZPWW2tD6LDVFXX0>
X-ME-Received: <xmr:ZjmUYSYtEbWXzcb-Rud5FHW7FWAeH7PHmnZgqXOgRBnZnRF5aQffE8OXwzMe7vfl5pD6oH0n8EJbVHV2KOSC8KMOAymYwjrUYw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrfeefgddtiecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:ZjmUYVXJy16Y7FtTtjmu6v5kAu_bvxvufg5e2v0_HahHdx9z_Ryozw>
	<xmx:ZjmUYYnbRgC1iBxNyQGIvjr9KR_VRyjNujDxJP41zFi0rqtxqkZEEA>
	<xmx:ZjmUYacrm3iw0Sb1axOxA64d9GwBghW53T1rjNjWx5TvXadXjsOHNA>
	<xmx:ZjmUYaTSRizOqPhW6QGg0wh5x1IU4dTHu4XIlwpBjvcvd1LOp31evA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Tue, 16 Nov 2021 18:06:13 -0500 (EST)
Date: Tue, 16 Nov 2021 15:06:12 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Correcting an sd-card?
In-Reply-To: <a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
Message-ID: <8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you Didier-and-Kyle. I will certainly run your command, but do I need to 
un mount anything? I would also figure I would be sitting outside of that mdeia 
directory? O-and-yes, Didier, it is vfat.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

