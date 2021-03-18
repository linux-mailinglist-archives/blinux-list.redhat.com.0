Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4C4AA3410B1
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 00:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616109290;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YNLB1gtJizvki4KLY4KwqVNS54+boPD5hDanPU7u1+c=;
	b=N/HUFvaSMZK7VOYsV2O6iQricjldlKb+y9QibqqjD17w5Ea+M9+ukkMYJ32JGcnOT17Xtc
	S9Aw/6JOqB6Hq2kLeSZKd/ff3QxYKyfSEjbS5zEi5AZqX4Z8ExMTkL2Vt6lzrK7tUlgOdd
	UjM10jg6BjTxRTlCauFRARKvcttQ4ZY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-524-iErKjPYFMv2lwrDInBX6cA-1; Thu, 18 Mar 2021 19:14:47 -0400
X-MC-Unique: iErKjPYFMv2lwrDInBX6cA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EAE4680D686;
	Thu, 18 Mar 2021 23:14:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0462C5D9CA;
	Thu, 18 Mar 2021 23:14:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BD4D84BB7C;
	Thu, 18 Mar 2021 23:14:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12INEZZr023179 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 19:14:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EC4FD2026D64; Thu, 18 Mar 2021 23:14:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E645F200B681
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:14:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9BA2885A5AA
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:14:32 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-443-hr-QIyydNoOSZLWnC3g3cw-1;
	Thu, 18 Mar 2021 19:14:30 -0400
X-MC-Unique: hr-QIyydNoOSZLWnC3g3cw-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 1FEB7F8B
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 19:14:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Thu, 18 Mar 2021 19:14:29 -0400
X-ME-Sender: <xms:1N5TYFt2qw4m6XofFKAbrTnHMo6iFucAy9MtFT5iRafAzNdLbjWfGQ>
	<xme:1N5TYOdCMZmAYFUvvYnPzeysn4x_2PQ1AtEwPrfPqKUGwTyH0d3dW9leh0Z6mIPt9
	MyxL9e6RIRPdXv8_Gk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgtdejucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
	rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
	grthhtvghrnhepjeffffdujeelueffieevtdeiteettdekgffgkedvueejteektdehfefh
	hfdvteeknecukfhppedutdegrddujedvrdefrdeifeenucevlhhushhtvghrufhiiigvpe
	dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhp
	hhhrvgihrdgtohhm
X-ME-Proxy: <xmx:1N5TYIxeaXJtKIHAKS_FX777jYOuR_tmG6u1D9ZFWJvp_NplXwXF4w>
	<xmx:1N5TYMN1wjf-eG4XC2jD-Or1nGfY3OQxBplWVsCjKCR47L6vc0U3LA>
	<xmx:1N5TYF8aoVkFp6aajQi7MveWlzq0VxRstvqlhyZqXz00avJb43tiTw>
	<xmx:1N5TYIIxFI9onR8YSh_nDxFfhX73H0r9nNnaN6giyjazFJcxv8229A>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 2D44A240068
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 19:14:28 -0400 (EDT)
Date: Thu, 18 Mar 2021 16:14:26 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Are Their Any Other Graphical Screen-Readers in Linux, Other than
	ORCA?
Message-ID: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, 1 of my sighted Linux friends thinks the reason I am not comfortable in 
ORCA has more to do with as he calls it, "tyling" He thinks another desktop 
might be the trick? Some background, when I was practicly dragged 
`kicking-and-screaming in to windows in late 1997, I did manage to get a feel 
for a win95/98 desktop, where everything was up-and-down. But once they 
switched to windows explorer, they basicly lost me. So an obvious 2 questions? 
Are their any other alternatives to ORCA? And if that were an only choice, are 
their simpler desktops which would have more of  a feel I am more used to? An 
only other choice, which won't compile now is LSR from around 2007.
I am certainly rather contented with a straight console, but for many sites, 
graphical may be an alternative, which a Chromebook with Chromevox has not 
really offered. Thanks so much in advance for your analysis. Also, I trust 
there are many more hier quality voices in graphical?
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

