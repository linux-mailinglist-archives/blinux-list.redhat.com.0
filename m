Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BA14B159E
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 19:56:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644519363;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kpTQb5C93+qaqZFWOftR+MbMQ1QTCte5ljN29STDZRg=;
	b=Rxe/IkgHXN1cp47ThcC6NwZviFsoNoRLAlQGuMPaxoBxNNJA/GsNBJC7mK6GAflFuauTlM
	bykUq0dnLn/FSlDuC8FVdvHPzOAjdstvjMvrxS5xOZwYdxNAIHUvksx/M0r01wSNZOk6D+
	fAbzFsvdTrNwMthPLYE+2J5DZ67L9ds=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-668--pjViHnlOpeZPub70fnZ_g-1; Thu, 10 Feb 2022 13:55:59 -0500
X-MC-Unique: -pjViHnlOpeZPub70fnZ_g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DDB82874981;
	Thu, 10 Feb 2022 18:55:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AAC206FB0B;
	Thu, 10 Feb 2022 18:55:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6DAEF4BB7C;
	Thu, 10 Feb 2022 18:55:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AItm7l029790 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 13:55:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EE5CD40885B8; Thu, 10 Feb 2022 18:55:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E884340885B5
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 18:55:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CC38B2A2AD57
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 18:55:47 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-501-inKYlxewO6iAOWD4TTmCDQ-1; Thu, 10 Feb 2022 13:55:45 -0500
X-MC-Unique: inKYlxewO6iAOWD4TTmCDQ-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 85F5B3201E5F
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 13:55:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Thu, 10 Feb 2022 13:55:44 -0500
X-ME-Sender: <xms:r18FYicn8LsCdxhKvuZYUnOvDwsohbbHoeOClEzLFZAvarhnO-AIlQ>
	<xme:r18FYsPRV_opNpgykqKI28pGIOBv31T5I2u59TMxOQ17zkwhWDHpj9KTmAnNaQH8V
	oyB_JTvBgyfbghK3D0>
X-ME-Received: <xmr:r18FYjja_e4PPZy4C9oNsXDzCNXmQj1TERsK75LYQWqZ1xsAFDkiM5E_bH_vpyLl7Ae7Rlnd9bgmtg7wdKgi6gJ3nVp1BK5MYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddriedugdduudeiucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:r18FYv-lp9Qn8q_WwzbqLTLW_Svc4iXchYiT1tsqrxlA-3Foc9A6uA>
	<xmx:r18FYuuL3I9NR1bYRLVaWN9EA9MWWXlvy522Hz9tisFf1Aeff5os3Q>
	<xmx:r18FYmFRJ67RiIAcoTkTuU2wkw8gVzMs0XqJNaZrSEXzDkl9zyPgug>
	<xmx:sF8FYv5Zja7HDP5G8WGGtlIQDaDg22NohhDKD-nJuC3tQ4oKJoxt1A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 10 Feb 2022 13:55:43 -0500 (EST)
Date: Thu, 10 Feb 2022 10:55:42 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Coqui TTS has blew my mind!
In-Reply-To: <313791f3-8549-681d-52d3-a3eea4621ba2@gmail.com>
Message-ID: <fdbc7a3f-ffca-ee26-869c-987185604122@hubert-humphrey.com>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<313791f3-8549-681d-52d3-a3eea4621ba2@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

Well, Kyle, interesting reading, however, I for one think if "fall back" were a 
requirement, it would solve many of our text only browser access. As far as 
xvfb, I think some1 with graphical access must setup buttons you would need to 
click to play a particular item. As an example, I wish I could run xvfb to Zoom 
meetings. But considering its interactive, including a possible password, well. 
Years ago I had another similar application like xvfb but I cannot find it? I 
think it began with a double+a?
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

