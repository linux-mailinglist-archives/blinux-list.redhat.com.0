Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2A37D3D50D0
	for <lists+blinux-list@lfdr.de>; Mon, 26 Jul 2021 02:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627261185;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hUXVq8iaiOmsCR2ZEr+WJg2VMMOAXPTx5hHm3ZyMKx0=;
	b=IuAAzZpdLzo4F6DTJWUASgssir8QxiDX7a7vYu9PRsyd40SnmYP4NxQQADvGFlX8G5DzPh
	e/xiynG1A0MKVwpGHiZKc7YE/SgmWhjhYPAQ29pIf/sK/pFddQqRAHu0JkWwWWcerGygOj
	QrMGhSDkbKGUcPy4J9begf/3FKeyOgg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-521-sF32JRgUP46sX4dj-MiISA-1; Sun, 25 Jul 2021 20:59:43 -0400
X-MC-Unique: sF32JRgUP46sX4dj-MiISA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E083E92500;
	Mon, 26 Jul 2021 00:59:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACD5F5C1A3;
	Mon, 26 Jul 2021 00:59:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 466A54BB7C;
	Mon, 26 Jul 2021 00:59:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16Q0xPBR008522 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Jul 2021 20:59:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AE7F2200BCF0; Mon, 26 Jul 2021 00:59:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA23D2023A16
	for <blinux-list@redhat.com>; Mon, 26 Jul 2021 00:59:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42DE7801005
	for <blinux-list@redhat.com>; Mon, 26 Jul 2021 00:59:23 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-421-y16DcUDINECQ52C9rKxhxg-1; Sun, 25 Jul 2021 20:59:21 -0400
X-MC-Unique: y16DcUDINECQ52C9rKxhxg-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id DE93E5C00D7
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 20:59:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute4.internal (MEProxy); Sun, 25 Jul 2021 20:59:20 -0400
X-ME-Sender: <xms:6Aj-YParcN82XUh8egr-dJL_Hdv6ezyeAUfbHXGwrPu9f0kdZq7oOw>
	<xme:6Aj-YOZXNoAUT4JENOSQfuIan005_gaqJ_hHONQpdAL5wLOCeBBbUfO8KUiU1Mwix
	c1_pLsj-IjYsoMSFjc>
X-ME-Received: <xmr:6Aj-YB9phN2E32428C6W2fj0a5tBIh4oeafFf2DzwY0Hp0LhttRHloK0p8sNMMFFZyHl1niB2qSgRTZVRbnkmgMDQu7SfIjWqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrgeeggdefjecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:6Aj-YFoISlduWCPMblBBFXN6IelZz_EO-aIbjtvuYr4tH-JSsEIGyA>
	<xmx:6Aj-YKouQqnvsmWsUyc6YiLEJJLaZMPG_cMR6JOhSzl7gvOf9br7aQ>
	<xmx:6Aj-YLQ2uXjW5k4EGOtr394mB72blgH0EaGjjlYV3b0mGlATtgeg_Q>
	<xmx:6Aj-YIFhm0VBrv-9U6B85tQqNy4zDPWcTdTswQ64Nobz1jPyQltdXg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 25 Jul 2021 20:59:20 -0400 (EDT)
Date: Sun, 25 Jul 2021 17:59:18 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Google Drive Client?
In-Reply-To: <CAO2sX33Q5FJiK1n+VH9A4anFxyRwbZ0oAyQoSVskfavGbZWzQA@mail.gmail.com>
Message-ID: <57a1ccc0-5215-6dcd-edc9-604f18ea3e2@hubert-humphrey.com>
References: <CAO2sX33Q5FJiK1n+VH9A4anFxyRwbZ0oAyQoSVskfavGbZWzQA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, I wonder if lftp would let you grab content, since its essentially a 
browser.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

