Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6614602D9
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 02:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638063453;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v0v/cehKNVQ+nVAnYm8eSQVqqwuq8fayMZHIG9rudD8=;
	b=Pj9mf3eyEPjZWQ8LGdy/nZy0ci3bkwXjfbrENbA+wX+Bbm0sh8VjubriH5VNc9lbJgCBIT
	1fdFzTMU0jdHueufvdXJsYMA4clY9u2CJnY9ALxvb6G1Nf9Ra1zmPh5Jk7KXAPWIs3PdCW
	oluRcIqQ2lmNr82iBykopM592SHFr40=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-357-O6n8-Zr6OB6cllMQFMOgKg-1; Sat, 27 Nov 2021 20:37:30 -0500
X-MC-Unique: O6n8-Zr6OB6cllMQFMOgKg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B6A9801B17;
	Sun, 28 Nov 2021 01:37:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C9645D9C0;
	Sun, 28 Nov 2021 01:37:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A143C4BB7C;
	Sun, 28 Nov 2021 01:37:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AS1YrrA010569 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 20:34:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5694C2026D5D; Sun, 28 Nov 2021 01:34:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50F5A2026D4D
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 01:34:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E74D185A7B2
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 01:34:50 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-177-PsJQJ441PDqdiibXmWRcAQ-1; Sat, 27 Nov 2021 20:34:48 -0500
X-MC-Unique: PsJQJ441PDqdiibXmWRcAQ-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id E73A332009BC
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 20:34:46 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Sat, 27 Nov 2021 20:34:47 -0500
X-ME-Sender: <xms:ttyiYUUvK-QKYOwumwLMRNXq5Fw3FH_PmC-OgDFmPAFWx_4FdOecwQ>
	<xme:ttyiYYk6baRm3TbsFgtkgy4iIo8cBxEkoL-XyhPsuw9MdmL2e11fyGzWOypEa64kB
	Ld90eJTJAYPvJJNR10>
X-ME-Received: <xmr:ttyiYYZaxeDooRNIGCntECYHeGObMgyIr1c1a8JUH1T4wXrfMcy86MJbYJipc2RrzjVAuJ0xDToQPbs0Syn1AJoo5e0s9Q7SkQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrheehgdefjecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:ttyiYTVbx-8J58xrx0oWr6CIIHgqe5LTJjl22-xoe3b856LlkiKlaw>
	<xmx:ttyiYek383oV6ztxPLSBh9p5O2q66MFHFWMhxSeNt1_qjcqWKtZWeg>
	<xmx:ttyiYYfAfPfa-6NsqOg4P-uKI6ZjdTREPlyHRn1Kk9pIsUhHVZqmrw>
	<xmx:ttyiYYTVAAZK0Xy7ZWIyyk2P44WilJF1bertR_d17-Mp_AO5FCSktQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sat, 27 Nov 2021 20:34:45 -0500 (EST)
Date: Sat, 27 Nov 2021 17:34:44 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: looking for two gui accessible applications
In-Reply-To: <CAO2sX30Ep5qhUcuCYvg0X9vuVV9LQaZZEoe=AQ8G2C_ekcCfKw@mail.gmail.com>
Message-ID: <66b7a057-4d47-54a6-e24b-df75ffc9557d@hubert-humphrey.com>
References: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
	<8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
	<20211127173705.fcq6hh2qbozygm42@alex-pc>
	<77236cdb-7bff-28be-19db-523e15e3a5ea@gmail.com>
	<188e6c5d-8c4c-5521-5d51-556423c3294c@hubert-humphrey.com>
	<c48bf756-d98f-0659-c826-76648ec82e64@gmail.com>
	<CAO2sX30Ep5qhUcuCYvg0X9vuVV9LQaZZEoe=AQ8G2C_ekcCfKw@mail.gmail.com>
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

An interesting thing, if as an example, I begin a youtube url with an opening 
quote, I think an ending quote magicly appears? Also, there is a shell called 
"yash" which handles tab-complete a bit differently. Instead of playing a 
beep-and-showing all matching choices, YASH will just show 1 at a time. I think 
each tab will show the next one or maybe arrow down. Since I am in TCSH, I 
usually have fine luck with tab-complete.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

