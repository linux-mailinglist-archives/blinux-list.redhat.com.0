Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E211D4377BA
	for <lists+blinux-list@lfdr.de>; Fri, 22 Oct 2021 15:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634908186;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ND+DYmWaGyyIIng27DtlXzNbsEzongQHwdsK5WuREIk=;
	b=WanlNZmxDulAErVQoWHl36+OxoqjckF7tjXGNiVxnbymj9q25tTB4fDsb3GJnQhOcUC2FN
	VFFH9+Pw7VkKFRyWQWPW4PNA1G0HBjYgPUr61yOPc8OI7OZWRNBEBNACUUwlqkL0teGHe4
	+K7cbjbunYqCTXPzjY9/iO6nTA7fcfc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-pzJ8hCTqPHumJOsdP-iBBg-1; Fri, 22 Oct 2021 09:09:43 -0400
X-MC-Unique: pzJ8hCTqPHumJOsdP-iBBg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8C841922025;
	Fri, 22 Oct 2021 13:09:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 263FA6A8E5;
	Fri, 22 Oct 2021 13:09:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9816F4EA2A;
	Fri, 22 Oct 2021 13:09:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19MD5xRO013089 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Oct 2021 09:06:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B47CFD0192; Fri, 22 Oct 2021 13:05:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF302D0B3F
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 13:05:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AADB9800B24
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 13:05:56 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-528-Uhyy9EocPAmwWLHWqxcKVQ-1;
	Fri, 22 Oct 2021 09:05:55 -0400
X-MC-Unique: Uhyy9EocPAmwWLHWqxcKVQ-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 64C5B3200E91
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 09:05:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute4.internal (MEProxy); Fri, 22 Oct 2021 09:05:53 -0400
X-ME-Sender: <xms:MLdyYWEW2ZdVbyPiZSTPWeHz4KsE_ogbS-wLdr_SEqMgBULRNquMfw>
	<xme:MLdyYXXJ67hPhpnZbIDUQXQPpDHFbj5supJ-tIZcvN1mH0ptPVo9oHYGYPZvyRCs3
	5Z-4WXMYYRLaZuPT7E>
X-ME-Received: <xmr:MLdyYQI9oLg4iqZk3F2dNFlHGhljDa_ZxoweIgc-7dip1ZkyzKBZN2Usav__-kxTXUv_IUusfymY849cAWQciSIdfXSn7b3UPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvddvkedgheekucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:MLdyYQEyxdFfvoK3HKn0thlYIOY5lUJVtLA6ndgTAe5YP3t18noKUQ>
	<xmx:MLdyYcX0Eq9K38Uo-2v9tIx6GdPonpUCXqVa2PMo69-w_vVUiA_qcQ>
	<xmx:MLdyYTPSfY-9Fou-ZlpiyQ9-zrjY6sRFq4n5eZ7Rt5qK3Fejz3tTXw>
	<xmx:MbdyYfDVMYFmPefi7upUoewbxgI-o8-kmvfLojDZ5BAMhuVzaZiXEw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Fri, 22 Oct 2021 09:05:52 -0400 (EDT)
Date: Fri, 22 Oct 2021 06:05:48 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: youtube-dl: list videos in order
In-Reply-To: <b56f99ac-3869-fd7f-7abe-681b8db69b75@slint.fr>
Message-ID: <91c5b5c-372e-994-aa65-c774ebb7edb@hubert-humphrey.com>
References: <20211022.113332.040.27@[192.168.1.100]>
	<174fc529-33dd-5767-37da-98f727ffe63@hubert-humphrey.com>
	<b56f99ac-3869-fd7f-7abe-681b8db69b75@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you Didier: I just spent maybe 20minutes trying to figure out github in L 
Y N X, finally found instructions, I cannot find brew in an apt-get, so I used
python3 -m pip install --upgrade yt-dlp
Once I used that with sudo  I didn't receive any path warnings. So now that its 
installed, I cannot find a command to run or examin its man-page. Certainly 
here in Debian SID, in TCSH I did run rehash. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

