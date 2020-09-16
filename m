Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 918B526C35A
	for <lists+blinux-list@lfdr.de>; Wed, 16 Sep 2020 15:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600263979;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WeVW6ks9NOu1w1xWltVDE3J2ZCyl6DJCV1SEandi/P8=;
	b=ZzM0lzD1ENvBQp0ArhliyT/75Q/Bxi+2FdYO7tOqAwryOAGwKdmW2D5xvCTR0lrT6GbRa/
	ecwuVOgy/8Ri3BChLWnwmKijcUE0WJoYGEEkytVEj0XWeA6cLGiL2bmBawkd5YanfUvtj8
	HB4BTtTj/V8RNDZPRedRiqdsAK7Ge+Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-yjaQeIndMiKLH-H3aCeqew-1; Wed, 16 Sep 2020 09:46:17 -0400
X-MC-Unique: yjaQeIndMiKLH-H3aCeqew-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6DB9E801AF6;
	Wed, 16 Sep 2020 13:46:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBF555DE51;
	Wed, 16 Sep 2020 13:46:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DEE1D183D02F;
	Wed, 16 Sep 2020 13:46:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08GDk8bF010297 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Sep 2020 09:46:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 35C7E2157F24; Wed, 16 Sep 2020 13:46:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 315C12166B27
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 13:46:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 191D080121F
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 13:46:06 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-92-9Zpzt0ebN8uZo7v6F1OzOg-1; Wed, 16 Sep 2020 09:46:03 -0400
X-MC-Unique: 9Zpzt0ebN8uZo7v6F1OzOg-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 2DAFA5C0484
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 09:46:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Wed, 16 Sep 2020 09:46:02 -0400
X-ME-Sender: <xms:GRdiXwwqY2LJAXJtgZhkxlMR2jOHF3mzbvOOBpbb6wBVm_h3xZxMZg>
	<xme:GRdiX0TLBW-HSKysEb427vUFCT4Etk0GiiK7pbzOk_D-0Y2IHP0ZhHe24n8NnNn2v
	ONWJQh2hTxX_LBFqb8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrtddvgdeikecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhgfgggtsehttdertd
	dtredvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeefuddvuddvvefffeevge
	ejfffggfeiiefgtdeugfehgfejhedtieelhfeuleelffenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:GRdiXyX8Jsz0Vyy4VayGIm2dudB0SeURmUr_d7HHqOfn7nWI9iu25g>
	<xmx:GRdiX-gFIsA1IzMzqleG7U-2dMb08ELeEpMKyGBsIS6LwmNcPJLzHQ>
	<xmx:GRdiXyC47j1U_eHMZAglW2eqyGlHRI3_QdRWWJz-bG7cU_7P_u4kQg>
	<xmx:GhdiX1NK8ln2IKxSyHTkBY72d7REMYNrl7pgMoteXkGpK3GTV0CusQ>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 89EE93064687
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 09:46:01 -0400 (EDT)
Date: Wed, 16 Sep 2020 06:46:00 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Question; was Strange Happenings in mpv?
In-Reply-To: <alpine.OSX.2.23.453.2009160932160.4379@dans-mac-mini.home>
Message-ID: <alpine.DEB.2.23.453.2009160639560.4042251@chime>
References: <alpine.OSX.2.23.453.2009160932160.4379@dans-mac-mini.home>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Well,  in this case I wish I knew of such a mailing list. 1 time I wrote a 
contact from a man-page, asking if they could add editing support? They 
snapped back that it was just a player.
Now, as if my issue isn't strange enough, if I am sitting in Lynx and an 
url of an mp3 is present, I hit enter-and-it plays. Sure, I know thats 
either in .mailcap or in lynx.cfg, but while its calling mpv, I can then 
arrow.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

