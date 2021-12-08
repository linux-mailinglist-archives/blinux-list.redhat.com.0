Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4742D46DA56
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 18:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638985644;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V21HVBgWgWFsM34RCQktJxjV2A3w+qk1fkcj+Y9Qzlw=;
	b=gpkbNm2tUyo4oLT/BKHBbQtK7u3PnTrhdSv80pjviXD5RE8xjpRa8EzoWp6AKnOgUjePSJ
	Ibrl/8kB1Ggsk+oVFMIo/+/q3EoRtSVTSSWijFu7V9JAj/31M9QsJSCPoe9qTNGU7L3ig4
	wLVawD5NvNugc5AmzRXXNFV4MrpZqGY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-506-JMp4WIXCPKmei05R9lDfBA-1; Wed, 08 Dec 2021 12:47:20 -0500
X-MC-Unique: JMp4WIXCPKmei05R9lDfBA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B00881CCB8;
	Wed,  8 Dec 2021 17:47:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B39E5BE05;
	Wed,  8 Dec 2021 17:47:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0DEBF1809CB8;
	Wed,  8 Dec 2021 17:47:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8Hl1VQ012903 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 12:47:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E55CE1121315; Wed,  8 Dec 2021 17:47:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E170F1121314
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 17:46:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C12F52BD19F5
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 17:46:57 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-433-edMNu8nRNFWZBKg3psqBvQ-1; Wed, 08 Dec 2021 12:46:55 -0500
X-MC-Unique: edMNu8nRNFWZBKg3psqBvQ-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 5C4695C02BA
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 12:46:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute6.internal (MEProxy); Wed, 08 Dec 2021 12:46:55 -0500
X-ME-Sender: <xms:j--wYWKc-pRr2vR7iuEt4CAJYHuNUe2c5ZmkuM5IfgWkP1jnI2mXdg>
	<xme:j--wYeK9ggVCy4UNCtmy6X97oBW_b7djQ68FOmkcs6hNNSSQLFYBqsgvEYm6kQDg1
	2yfslUJdGUa0rQQuiY>
X-ME-Received: <xmr:j--wYWs9_M4k7oXU_ILGlJ92YrK9sSoxTyzARuFaSIZGzNW8udMkBu3bIJNK961GBDXfNqqG0ytO8HwUyl8KCIXF35dBCh2ztg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrjeekgddutdefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepfffhvffukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
	rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
	grthhtvghrnhepjeffffdujeelueffieevtdeiteettdekgffgkedvueejteektdehfefh
	hfdvteeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:j--wYba0G24RyCcXnlVXWpTqmRd9MQ9U1QuZFKMsq7ak3tB6dzIg9w>
	<xmx:j--wYdY5M25CvfNl1H29kSg3AzFiJSevvOO9boUb_UAZB_CBv1TXSQ>
	<xmx:j--wYXCA9Ff3_EUP61rkMjKOj3aob7xNV1vXXCdAO7t7Gdi6vAIjBg>
	<xmx:j--wYf0KOCnDu6pqXZIkd-TVDwyDCB7JtV5TDM7F3EK0g1P99Uq8JA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Wed, 8 Dec 2021 12:46:54 -0500 (EST)
Date: Wed, 8 Dec 2021 09:46:53 -0800 (PST)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Interrupting Speech in New Embedded Voices?
Message-ID: <c96e5e94-bde5-53ec-c16b-6ae4c4e0f2d@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, I asked this in the Speakup list with no responses. Essentially, now in 
either Slint with Samantha, or Debian with Allison, voices sound great, 
however, I cannot interrupt speech. In looking on my desktop machine, there is 
a file in /etc/speakup/i18n called "no_interrupt" which is set to 0. But not 
only are no such files on my Debian laptop, but not even a speakup directory in 
/etc. I've done lots of locates for specific named files with speakup settings, 
but they all have slint related refferences, meanwhile I am booted in Debian 
kernel 5.15 in SID. When running the regular Voxin IBM voice, I had no 
interrupt issues, but would really like to enjoy an experience of Allison much 
better with a responsive keyboard. Thanks so much in advance for any 
suggestions.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

