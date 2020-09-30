Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7750B27F253
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 21:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601492791;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ku8N/l7SwnvzGDQjuQND/agTEgrsdzfk9mxeMuq5IJs=;
	b=O/dk51ekcEMK/5sjEdBU9zmL5Zxir3j1Pq008+Wxyze1dvQSaAX5c9xP6NkUZflFaSbanv
	w2vkU8ra4ps8+dtDTNUYZa9zHJ0+1q1XpnFbje98Rs9jTd7WTkoECJfZjMcc2X6GCabp/L
	33AKOZGozqzJ7/hW1jizmLHadqBknvU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-2qoa-LqlMiKDOlNdEn3nrQ-1; Wed, 30 Sep 2020 15:06:29 -0400
X-MC-Unique: 2qoa-LqlMiKDOlNdEn3nrQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73FAA1040C35;
	Wed, 30 Sep 2020 19:06:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5999F5C22A;
	Wed, 30 Sep 2020 19:06:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0A3AB183D024;
	Wed, 30 Sep 2020 19:06:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UIuVxN027709 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 14:56:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9AFE5201828A; Wed, 30 Sep 2020 18:56:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 95A14202450A
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:56:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25974101A53F
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:56:28 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-453-OzN93biHMIi3M9T68vGOjA-1;
	Wed, 30 Sep 2020 14:56:25 -0400
X-MC-Unique: OzN93biHMIi3M9T68vGOjA-1
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
	by mailout.west.internal (Postfix) with ESMTP id DBEDAA1F
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 14:51:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute7.internal (MEProxy); Wed, 30 Sep 2020 14:51:04 -0400
X-ME-Sender: <xms:mNN0X1rtNBwWcc6bzzsfXvcUHgQsGQ7pdzdT8l2vSQNT5_xYQIDi4A>
	<xme:mNN0X3oHtrLyxO1dt2qlEuubS--oCHlX4S0BZ3cv-YRFHkSck9AvXqpDaG3hehOcH
	UN_B5ZtlEKypMD0HHM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrfedvgdduvdeiucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhffgggtgesthdtre
	dttdervdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepfeduvdduvdevffefve
	egjeffgffgieeigfdtuefghefgjeehtdeilefhueelleffnecukfhppedutdegrddujedv
	rdefrdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
	hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:mNN0XyMjEUreENNwwhgaZUsSEVW1nX_JLH4zKWJFyrvIV4a7kC_sQw>
	<xmx:mNN0Xw7UBPIZDIrEX9na5egOmxhd7tH3OBjarWxcHMYInBOIG-pQrQ>
	<xmx:mNN0X06ivj-oCTFhM8zkUOXvt1ILuvs3xys9azrpDGRBKf4PAAFYGA>
	<xmx:mNN0X2Hpj0KHosXRv0NzqV_E-bG1EtIkiHYHzUaeSpEer6GRWesPPQ>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id E37BE3280063
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 14:51:03 -0400 (EDT)
Date: Wed, 30 Sep 2020 11:51:02 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
In-Reply-To: <Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
Message-ID: <alpine.DEB.2.23.453.2009301142230.3902695@chime>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Quite an interesting discussion. Many years ago I discovered Jupiter while 
looking for screen-reader in Linux which had an exception 
dictionary-and-also worked with a DecTalk. Well, in working directly with 
Karl, we found a DecPC worked well, but we could not get my newer DecTalk 
U S B to play nice. Likewise, Mike Gorse from YASR was not able to get me 
DecTalk support, although he was willing to consider a dictionary. Speakup 
has DecTalk driver issues which are frustrating, which I've commented on 
`quite a number of times. Some1 mentioned SBL? What is that? If I were to 
ever switch away from Speakup, I would certainly want a really good review 
option as Vocal-Eyes had. And a side question? In the graphical side, is 
their only ORCA? We tried getting a 2008 LSR running but not so far. 
Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

