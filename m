Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 3051E24E449
	for <lists+blinux-list@lfdr.de>; Sat, 22 Aug 2020 02:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598057454;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wGjXgNUYqA2KTMl7Kb3c665wsAQn14/43hznCsWZrAs=;
	b=Hz0X9QzMWccCOdmwa6eg6iLyITGBTDgTVW+PpAirTduGNPre40Y/9AKhnKg+3thnFGBy3U
	sweTvjr5SyWuJN9cYk3b1hnA9duGipAvM9Oa9FlRPvmc24NTZLqbb+0fkxdOA4yhuCPi/O
	+XxU9THv0ic2YmeyVN3gf++wror/l/o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-116-oO_TTbM0OiSoYPd6SOP5Vw-1; Fri, 21 Aug 2020 20:50:52 -0400
X-MC-Unique: oO_TTbM0OiSoYPd6SOP5Vw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0EE8981F02D;
	Sat, 22 Aug 2020 00:50:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 958765C1D7;
	Sat, 22 Aug 2020 00:50:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 155D31832FC2;
	Sat, 22 Aug 2020 00:50:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07M0ofgC017080 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 20:50:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E86631006EB6; Sat, 22 Aug 2020 00:50:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E46CD1006E0E
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 00:50:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB2E9811E90
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 00:50:37 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-136-1RVQGzMNPACqwKnBho1EuQ-1;
	Fri, 21 Aug 2020 20:50:33 -0400
X-MC-Unique: 1RVQGzMNPACqwKnBho1EuQ-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 75E429F4
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 20:50:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Fri, 21 Aug 2020 20:50:31 -0400
X-ME-Sender: <xms:1mtAX55nErDbADeajRFOer8rEC0kIIdfPAq4Q87uuM6OFinW0qEC4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedruddufedgfeefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhffgggtgesthdtre
	dttdervdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepfeduvdduvdevffefve
	egjeffgffgieeigfdtuefghefgjeehtdeilefhueelleffnecukfhppedutdegrddujedv
	rdefrdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
	hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:12tAX24ujFLoUmCRCq74puTLPtqTbPcdbfOT5EXgtE7PSQDHfVaCPw>
	<xmx:12tAXwfxLkDSOZ9fYUgElcaoEdfKNZPY3TDZAIbVU-cnJo2f6aGrRw>
	<xmx:12tAXyJW4AmnzEpuN9WTxYJDexSsF8s3191HtzYQVx1HM-Gb7HTSqA>
	<xmx:12tAXwYB4Y6otHdFqnb-cPiXkzCDx-pd5Qw1dMmiUujTLiGWJgbKNg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id A6B7F30600A9
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 20:50:30 -0400 (EDT)
Date: Fri, 21 Aug 2020 17:50:29 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <alpine.NEB.2.23.451.2008212019210.29494@panix1.panix.com>
Message-ID: <alpine.DEB.2.23.453.2008211746280.3363536@chime>
References: <MFBaDor--3-2@tutanota.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
	<20200821.140441.108.39@[192.168.1.130]>
	<alpine.NEB.2.23.451.2008211141270.8148@panix1.panix.com>
	<alpine.DEB.2.11.2008212337110.12135@debian.work>
	<alpine.NEB.2.23.451.2008211841370.29494@panix1.panix.com>
	<alpine.NEB.2.23.451.2008212019210.29494@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I suppose we could make an SBL discussion as a separate thread, but I am 
always curious about not only comparisons with Speakup, but wheather SBL 
has an exception dictionary as Vocal-Eyes, Jupiter, or most windows 
screen-readers? Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

