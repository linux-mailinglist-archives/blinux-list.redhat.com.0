Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 15839364A0D
	for <lists+blinux-list@lfdr.de>; Mon, 19 Apr 2021 20:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618858039;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Gcc26XSG+wB6PJuY6jVD545In4PYoMUdI4I1QB2kuS4=;
	b=hLEOX3VMkl2AAfhsTLgGmV179L+nmVrsroWlZrcwst2uNzzgtumVOosWPFXdAetIED2W3O
	xY//rAzkHNpPOooBB+hNGVYAJPD2ihg5sovuL9MGwd1kLbUbiwMgFa6v6RFsA+tA04vS8n
	/WC4lfzLnuvy+1Ru7ijfclFRFX2tFe8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-142-OUe0FoEtNLmyDerK25WV_w-1; Mon, 19 Apr 2021 14:47:16 -0400
X-MC-Unique: OUe0FoEtNLmyDerK25WV_w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BAED21008060;
	Mon, 19 Apr 2021 18:47:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 51EA960636;
	Mon, 19 Apr 2021 18:47:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A0F621806D17;
	Mon, 19 Apr 2021 18:47:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13JIl6xa030399 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 19 Apr 2021 14:47:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6396F112C275; Mon, 19 Apr 2021 18:47:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E841112D19A
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 18:47:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2688801E8D
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 18:47:03 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-33-uBgAGlEvO2u3Yj6MY8rEEg-1;
	Mon, 19 Apr 2021 14:47:01 -0400
X-MC-Unique: uBgAGlEvO2u3Yj6MY8rEEg-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 076B91A93
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 14:46:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute4.internal (MEProxy); Mon, 19 Apr 2021 14:47:00 -0400
X-ME-Sender: <xms:I9B9YAWgGOOc37gw75sTK-WH-hdAtQVoeyg-VomEIyQ8Z0W1XWv2Tw>
	<xme:I9B9YFLGzfvc1Ep3-CYiV1FU-qWAV6P11-WCTCBigtml6PHS3smoog456VTyvikJY
	rAJoSC4c936H_ZER4c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvddtgedgudefudcutefuodetggdotefrod
	ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
	necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtre
	dttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuie
	ehvdefffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedv
	rdefrdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
	hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:I9B9YNRLBV9_9wQXuJW7JDg_GWE9K_r5WuOsP2zzBiHoCO7L9yqR0g>
	<xmx:I9B9YJgNHB8Y02IKVYfsRnEsf8mKDWHDk6DkJXnh2fyDmIeBYajhCg>
	<xmx:I9B9YPv0pF4B3OESOlfD-YbeWI6fRSiHx-KekhNUxd-LPnCpBIQzQg>
	<xmx:I9B9YJB9UciVvG4vfVWVSuBrAwE38pnHnubI8aMRVKWzMex2TpttVw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id F24E41080063
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 14:46:58 -0400 (EDT)
Date: Mon, 19 Apr 2021 11:46:57 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speech-dispatcher and espeak
In-Reply-To: <FE0D78A0-1A64-476D-ADEB-B54DED7B74BB@yahoo.com>
Message-ID: <a140ad1-3ebe-3bbb-bd31-7ae4c42389a9@hubert-humphrey.com>
References: <FE0D78A0-1A64-476D-ADEB-B54DED7B74BB.ref@yahoo.com>
	<FE0D78A0-1A64-476D-ADEB-B54DED7B74BB@yahoo.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It seems if you would want to install Voxin, you need both, so Voxin can remove 
espeak. At least thats our experience
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

