Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A43FE326F95
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 00:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614468138;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DE4Myfx8ne2SkAYQwoXDVHs8WSkZ6Z+Ej2IDiLfoV+o=;
	b=QqNcR39vfy44a5Pd1m3ZNoZhV9gcw96+QSySgCnE4LEpvvNHu3/j+iCg1jPk3DmrfFhvdN
	zAw+MMXFrvhuv/TPwh9CnVCfvemJtsY0a/iXaHpBEf6zXQwK8UpEzs6LBQgZ2D7zVaR8jm
	RvXvBawQFxSACXot3aZWdcBSVW2NTaI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-AETefdYlMPKimck6TbvEyg-1; Sat, 27 Feb 2021 18:22:16 -0500
X-MC-Unique: AETefdYlMPKimck6TbvEyg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 464F410082F5;
	Sat, 27 Feb 2021 23:22:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C58BEE15D;
	Sat, 27 Feb 2021 23:22:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B637018095CB;
	Sat, 27 Feb 2021 23:22:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RNM6C1023409 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 18:22:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BC33B202A424; Sat, 27 Feb 2021 23:22:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6B552026D46
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:22:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E9B4A85A59D
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:22:03 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-470-UWHg-CPFMEq_s-77JSx4cg-1;
	Sat, 27 Feb 2021 18:22:01 -0500
X-MC-Unique: UWHg-CPFMEq_s-77JSx4cg-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 2D4B3731
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 18:22:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sat, 27 Feb 2021 18:22:00 -0500
X-ME-Sender: <xms:F9Q6YML0xSRHeWElUTy4BJtwkhH0Nfn4bCEkdfLSqWCAdSUjn1vyhw>
	<xme:F9Q6YMKe_ajNyX5drVRpOmg6baYrg7NjNxCvAe6e3MVFn9BV5C-wlJ97x3V4g-GGc
	ciCthL6-XTaw0HZNkg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleeggddtlecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedvrdef
	rdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
	gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:F9Q6YMs8117aj72Q4D6q_KJSw-JwOzb1BLauQWhuRlkD7vMqpumCpQ>
	<xmx:F9Q6YJawShx4pji9Cy6JVThSeua_6K0_iAUhFOMYi2cYOCKZFFqQ9g>
	<xmx:F9Q6YDa4_0A2FoCuaqeiMUxQFNx_k2YRtR02p6DzKcibfqQ8c2-5wA>
	<xmx:F9Q6YMl14xpoLxIuZX67TPHmW7-8cKD7kDsmE2jnwQcOnj87EjEFZw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 3E6151080063
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 18:21:59 -0500 (EST)
Date: Sat, 27 Feb 2021 15:21:58 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
Message-ID: <92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

Well, SL-and-Others, turns out the compressed file is 1.5GB. I would be happy 
to upload to an ftp or somewhere, as I am most comfortable with an ncftp 
interface. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

