Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id CF49024C6DD
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 22:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597956699;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O+M4n/ZeekCarvKtywsPkXnrUTfTutUg14j/Kb+1ZSU=;
	b=EZpeBxWW2kp+Oyy+ZKoswnDd8WN1F1TyQ5NfgsyVbGQKky2DxqnbUUTstE7oQSO4UlXrcn
	GN45aJCKfxfbjxw+t15KESUwxzqszawraIaxTeEhWMRSSIbPLqTnV1kcs7Jl+mz5tITCrs
	QTtxbN9FqeFgsvTBm/0i60ZEkIXVImY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-IMMbkLQRPIWSa3vioXwQKQ-1; Thu, 20 Aug 2020 16:51:37 -0400
X-MC-Unique: IMMbkLQRPIWSa3vioXwQKQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C28698030C8;
	Thu, 20 Aug 2020 20:51:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 51C6910013D9;
	Thu, 20 Aug 2020 20:51:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5BD4C183D020;
	Thu, 20 Aug 2020 20:51:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KKpQib018334 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 16:51:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BFBD52166BDB; Thu, 20 Aug 2020 20:51:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BADCA2166BA3
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 20:51:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2BB748EDF00
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 20:51:24 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-467-X8HIya_RN3qxAndH-uom3w-1;
	Thu, 20 Aug 2020 16:51:20 -0400
X-MC-Unique: X8HIya_RN3qxAndH-uom3w-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id A2319118E
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 16:51:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Thu, 20 Aug 2020 16:51:19 -0400
X-ME-Sender: <xms:R-I-X7fz8epVAMFaalB8uEpLWlGRa72LCEJIoVgTej2LOFb7CInKjw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedruddutddgkeejucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhffgggtgesthdtre
	dttdervdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepfeduvdduvdevffefve
	egjeffgffgieeigfdtuefghefgjeehtdeilefhueelleffnecukfhppedutdegrddujedv
	rdefrdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
	hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:R-I-XxNLpRDxu9HPfG0ha8_171EHANSDNYcUoWgK9aKiDIxv6cx54g>
	<xmx:R-I-X0hhuD4UuQ1klPSmbHemcNA7b_b3X-vYlB4YXzypcjxCCqTfHA>
	<xmx:R-I-X8-HK7-B-Uzfvbs7sE_2NpXbB1_sk-49MzRdtZTCCi5NY2bmVQ>
	<xmx:R-I-X4OACnVpb8f5tX6YVNIR5Au5ke28EhH1UQR9gG8KiJsvogi11A>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id B89EC328005D
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 16:51:18 -0400 (EDT)
Date: Thu, 20 Aug 2020 13:51:12 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
Message-ID: <alpine.DEB.2.23.453.2008201331030.998121@chime>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I would love to know more about sbl, but I am in Debian. I've been useing 
Speakup since 2003, I like their screen-review, which is similar to N V D 
A in windows. But certainly years ago I got quite familliar with 
Vocal-Eyes, where an alt  toggles in-and-out of review. Would SBL work 
with a DecTalk? Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

