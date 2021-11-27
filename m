Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36207460057
	for <lists+blinux-list@lfdr.de>; Sat, 27 Nov 2021 17:52:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638031925;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xMKP092Ju41i+Xy703PvUN6dEyPZaxHqbzODxlELYqk=;
	b=OKQ+CpTWaior7ctPMJsbb9lwx4vxcP4+t3xahfapZyhHrtsc8aiK4rY7X50SzVG5o3DsD4
	lIForxiPSRN4gTrO5yk1X1MjU3hhqBl3ZxGzTnHqRoa3x3Ww1tNdnKiIOTLAm4o+FCG2i1
	9YhTdlnGqWiVbS6XsUzyjM7Hqwj8wm0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-134-VVFzQ-k8M7CBGK3hJCANrA-1; Sat, 27 Nov 2021 11:52:01 -0500
X-MC-Unique: VVFzQ-k8M7CBGK3hJCANrA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C4161853028;
	Sat, 27 Nov 2021 16:51:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A1B472FA2;
	Sat, 27 Nov 2021 16:51:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5F1FA1809C89;
	Sat, 27 Nov 2021 16:51:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ARGpg1x008597 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 11:51:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CA9172026D69; Sat, 27 Nov 2021 16:51:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5D972026D65
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 16:51:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD4AB85A5B5
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 16:51:39 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-346-r4EUOxeOMiyDQ0PqIS4v6A-1; Sat, 27 Nov 2021 11:51:37 -0500
X-MC-Unique: r4EUOxeOMiyDQ0PqIS4v6A-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 12DC83201FB7
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 11:51:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute6.internal (MEProxy); Sat, 27 Nov 2021 11:51:36 -0500
X-ME-Sender: <xms:F2KiYQDay5CQSl89XzoUhOjn_kgXhuSNxKsoslLv4kB99vDrOJ8SjA>
	<xme:F2KiYSjunQwG1uJmV1WDE2B-LwwUaiPTJaRzaqv09sSxCI4cd5YU29MgAieLV4Bzg
	XkiofiCHaEftYDeFiw>
X-ME-Received: <xmr:F2KiYTmvdndnbZPM8mp1bS4zRe0ldn4hvsQO1057_dngVWqPW9KQFtMpy1N6e53OoZqInhmkIHDk6zQfzVodxlV8Ayl2q9rk9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrheeggdeikecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:F2KiYWw9ZbpRih-vlA3aekG6OgsTZ0590fh6xgELLHc29RV49vj8-w>
	<xmx:F2KiYVTzHdZBTzjHlt1EVpZpxE1lW_uspf70VPamux1MhlWIzksB9A>
	<xmx:F2KiYRavtL0zpqT2AJNeViX2MvP8weoJ0AKIvjR6J3w-jtyuXpvhtg>
	<xmx:F2KiYQO-0mooBdT1P5OzQ2IdNiV_6p7AQQgsyCgrsJG4r_5VAn-NlA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sat, 27 Nov 2021 11:51:34 -0500 (EST)
Date: Sat, 27 Nov 2021 08:51:33 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: looking for two gui accessible applications
In-Reply-To: <1f1b54c7-4964-7d62-c086-913ce94928f3@gmail.com>
Message-ID: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<47a91597-fac1-e156-ffa1-514f174ffe36@slint.fr>
	<52d9d2ac-c3ad-cb3a-d24d-2ffcd3a19e39@gmail.com>
	<ef72ac37-238b-4d38-8e50-c0fb97ae2b35@slint.fr>
	<1f1b54c7-4964-7d62-c086-913ce94928f3@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Ibraham: Lacking any alterations in your config, I would just cd over to 
where you want to save those files, before running yt-dlp. And if your files 
come from links, such as an rss feed, then from L Y N X  you can hit a capitol 
c to change directories.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

