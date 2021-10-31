Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0114E440FB6
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 18:15:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635700556;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JZu2DWebhBCYD0uObAUDZ81KvZjL8LYLP7vh9jXRMTY=;
	b=LjueQrhJx60f8SWe7jAxf5xf4f9VKyZQ3iP/Fp0M1aVlp+Idv9vidATJ5G0oaFAi8alI3e
	fSytXgvVhl+bt5Mmia2O9pPOlXVa7PSdFguzMqYgNtTwB2NtjvEvM1RViREZS5rbFchWHV
	nh55ju4rjwG5OzgMvOlIdDTVJDN0JWs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-ycQYgwo9Mky6CM4ZjwsPGg-1; Sun, 31 Oct 2021 13:15:52 -0400
X-MC-Unique: ycQYgwo9Mky6CM4ZjwsPGg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 676598018AC;
	Sun, 31 Oct 2021 17:15:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0648E1045EA5;
	Sun, 31 Oct 2021 17:15:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55F251809C84;
	Sun, 31 Oct 2021 17:15:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VHFYm8014852 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 13:15:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D95C351DD; Sun, 31 Oct 2021 17:15:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D37D451DC
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 17:15:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14015811E76
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 17:15:32 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-440--cZleh_EPBO7-GkggeZkLA-1;
	Sun, 31 Oct 2021 13:15:29 -0400
X-MC-Unique: -cZleh_EPBO7-GkggeZkLA-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 2DBB232009CC
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 13:15:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute4.internal (MEProxy); Sun, 31 Oct 2021 13:15:28 -0400
X-ME-Sender: <xms:Lc9-YVqJZmuWGLxtnzkOvpCxxOtyCkUlJk6WfcdDQEi2JUQU7vdFPA>
	<xme:Lc9-YXpz_cx6dY7yTVihvhszZOUNGhR-DkTRRPtSKE9a6MIr_bPjAVBNldfqzvOgU
	E4n5OCLGaMIIMuOJiQ>
X-ME-Received: <xmr:Lc9-YSMfgjWcBpQ9BthLciqxO5BqLZopa_zCgoOzagR_hhr97PjWNsZIzO5AgrpgA0PlZzdhyKvhAvezqvH2R0kidQfoxK6avg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdehtddgleehucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:Lc9-YQ4giAOMlgFHdDBEVECQqnrR12pY94JJiiZs_UUR-GMJgx966g>
	<xmx:Lc9-YU7-7boXxdUFAgmNqQpi8ioDB0nAUwlnpQaowcSuox99Bd7DWw>
	<xmx:Lc9-YYj3nf6tROfbVE2C1iVJvGaodGnqObZSXSVDBkI5SU8ZwvgDZw>
	<xmx:Ls9-YZXbyr1dONV28BoIm8BwcMYZxh0Ys1Rxzkt6wGHbn96gnJV2-Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 31 Oct 2021 13:15:22 -0400 (EDT)
Date: Sun, 31 Oct 2021 10:15:08 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Beginner's Guide To The Linux Terminal
In-Reply-To: <Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
Message-ID: <595ba88d-5366-2157-fcdf-c647ab1f4ea1@hubert-humphrey.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I listened to quite a bit of his video-and-yes I thought it was so well-done, 
even just the audio was good enough. But yes I agree, browsing youtube is much 
more of a challenge. Sure with youtube-viewer you can run searches involving 
youtube users or keywords.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

