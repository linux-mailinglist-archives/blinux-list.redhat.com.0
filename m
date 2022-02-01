Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F35394A601D
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 16:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643729328;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=efOHtgcSqd754ZJSo7HwW4icwmLClZdYcgfeuR3SUOg=;
	b=RlcrIHLZdpkX8Ia7aGWhApUzsI8EcHT9s9h4Gx8PEOEdBCyEjdY/PZWtkGghmGbvKpBMcP
	O6FUexIFcZeX32N0vSrFxKxtRkIqfDF0h32jVLAngDpZEmQxRN1TTPfQ/ekZHuKFERA2Iz
	XlVBgHvlGbHtVJFP7L8CAyotOtONSM4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-534-gd6gAf6VNFKbrZhb2yjMLQ-1; Tue, 01 Feb 2022 10:28:45 -0500
X-MC-Unique: gd6gAf6VNFKbrZhb2yjMLQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46317104FC11;
	Tue,  1 Feb 2022 15:28:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6630E70D4A;
	Tue,  1 Feb 2022 15:28:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 01E214BB7C;
	Tue,  1 Feb 2022 15:28:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211FSHsp020138 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 10:28:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2645BC07F5D; Tue,  1 Feb 2022 15:28:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 223F1C159F6
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 15:28:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A0CA885180
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 15:28:17 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-470-AGZ1gihaNb2px8GH3x2ykg-1; Tue, 01 Feb 2022 10:28:15 -0500
X-MC-Unique: AGZ1gihaNb2px8GH3x2ykg-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 0FD153200A5F
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 10:28:13 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute4.internal (MEProxy); Tue, 01 Feb 2022 10:28:14 -0500
X-ME-Sender: <xms:jVH5YRRPz-t3Flq-FCC4AcVLix4haMtT1ctoeMgjSW_EmUj9-bHCoQ>
	<xme:jVH5Yay_ti43hCGQ2yToWVWj4Xqah8w-yJEO9wugDbXFw_4_5M6qZgMw5XsvjKcub
	iu75YHP7c_POt_dYPI>
X-ME-Received: <xmr:jVH5YW189OWmr2RbJpD6BYdwdPhtJuTNS3PD8J7tHOisZuoZfcGaeTyiFEqIZ3j1cpmKs6PCVcclkLTwMsnMSBT0yXC7v9jPZw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrgeefgdejiecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghr
	thcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrg
	htthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheefhffh
	vdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
	gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:jVH5YZBUQhCIS1ujogRd7xxJoXlG3Op2HyPYUiaHxZ9dhp_MF2MxRw>
	<xmx:jVH5YaglO5XP-PZH1mMQkB76_CcJFIJe0J8I-JTz72Ql3ps2vaDO3g>
	<xmx:jVH5YdqUypV9LnRe5DGQAR1-VsckYN6f_MViaxzFvljRKhrvyG969g>
	<xmx:jVH5YQe8On6Q4x2QHl0XWMvu22lYTS52Cj8UqwB6eVLZF-0Z-3zQHA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Tue, 1 Feb 2022 10:28:12 -0500 (EST)
Date: Tue, 1 Feb 2022 07:28:11 -0800 (PST)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Remaining DecTalk Issues in Speakup?
Message-ID: <bfd3d4b4-13fe-acc4-406a-87cfae17403d@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

Hi All: Several days ago I asked something similar in the Speakup list, but I 
guess maybe this may be a great place to inquire? Last Thursday evening I had 
to restart my Debian machine after 130days. Kernel jumped from 5.10 to 5.15 03. 
First thing I noticed was a 4second delay in the DecTalk was back until I 
ajusted flush-time 
to 100. I think back last September I was able to set this at 10, much easier 
to scroll-and-listen to content. Please consider allowing a 10 setting. Next, I 
bet this involves caps-start-and-stop? If I type or read any capital letter, 
the next item will say a "p" on top of what ever that symbol or even a space. 
So as an example, a capital i followed by a space will say "i p space" This is 
`extremely challenging to read charactor-by-charactor. I looked-and- caps-start 
is set at 160-and-stop is 100. Sure pitch rises on capitals but its these extra 
p's which are in my way. Next, now once again insert2-and-3 for pitch are 
broken. And eventually I will create an audio file to send Samuel to 
demonstrate that just out of the blue, while reading/scrolling, volume, rate, 
and pitch drop suddenly. These have been occurring ever since 2003 when the 
DecTalk drivers joined Speakup. Is Speakup an only console screen-reader with 
DecTalk support? While Fenrir has many more options, I have not heard of it 
support DecTalk?
And lastly on another topic, did something change involving ssh, as now if we 
enable openssh server, any1 can login to my system without any authentication. 
Obviously until we find out how to fix this, its turned off, but maybe since 
last September Debian may have changed something. I would very much appreciate 
suggestions on all of these items. Thanks so much in advance.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

