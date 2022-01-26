Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 296E649D426
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 22:11:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643231484;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jzbIOMvZbRaK4FiFtj446Bs84RbpqWlUthp7GdMj9nM=;
	b=B9SQ3OUQ6mmWx7Q5uheMbff/tGQjsjDDaUnOGJmqk3/eaFLUbfyUDabgdPIeweAbIiSSnq
	7L8Ek2D89w7iy9lMGsElObk4wMTncWXWRdMVaolerx2tEU5dfYrfqn0JPKnRiLWUYmmmXj
	YIkvntcN18jCNjZevOIZsrCEAeBgWmg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-439-j-5MJ88HPaCzPnkSqi5vmA-1; Wed, 26 Jan 2022 16:11:20 -0500
X-MC-Unique: j-5MJ88HPaCzPnkSqi5vmA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B92361006AA0;
	Wed, 26 Jan 2022 21:11:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAFF46AB88;
	Wed, 26 Jan 2022 21:11:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 456144BB7B;
	Wed, 26 Jan 2022 21:11:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QLAwNY025904 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 16:10:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 604784328D4; Wed, 26 Jan 2022 21:10:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C8D3401E91
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:10:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 429D7811E76
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:10:58 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-333-FFXAcdjLPM2Px00wuzS6GQ-1; Wed, 26 Jan 2022 16:10:56 -0500
X-MC-Unique: FFXAcdjLPM2Px00wuzS6GQ-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id BAE975C014E
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 16:04:37 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Wed, 26 Jan 2022 16:04:37 -0500
X-ME-Sender: <xms:ZLfxYVEQG1En1sT8MO9C8Dn-Q4Xhkbw7Y_YtYyW0dawxf7xaB0hXKw>
	<xme:ZLfxYaXU0Gm59OMERYjMwOhuAIcUFRbLZ2Z2pfdqG6-MB7Yqnb18LyHbTl2I1Z-YK
	9wz8n6Cmng7FtRTZZI>
X-ME-Received: <xmr:ZLfxYXIgc8LLkRSj4_8Ho-W3CoVnwbqtdgJjCHC73-H_Myt2ye7Dv12Der8-VAlQ11hAhtVFhX8nnmy_42IPoUFtaUudGvoPBQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfedugddugeefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvvddvffegvddtiefhfe
	etieekieekveefvddvjedvhedvfffgveffiefhhfegkeenucffohhmrghinhepghhoohhg
	lhgvrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
	homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:ZLfxYbGoJkS8ueujL2qmQ0vKusMgbWh8eaN7HKOFzR1st9aq-ZhrDw>
	<xmx:ZLfxYbWddP35McoTPdMQKPIs4aufNG102i2m6mF85rZwxajt3qqGyw>
	<xmx:ZLfxYWNgGooH3vKi6nhp06gUn7iqOH-Teu5kmEqTxYfDoYsobFH2hQ>
	<xmx:ZbfxYSAXm_7MjYSVxPwEZUd_U1mMFrvuL33BVYuELvEWNrdK4dXoNA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Wed, 26 Jan 2022 16:04:36 -0500 (EST)
Date: Wed, 26 Jan 2022 13:04:34 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
Message-ID: <cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

Well, thank you. I first ran an apt eventually ran an aptitude, it mentioned 2 
python packages with gtts in their name. But here's what happens when I tried 
converting a text item originally from BookShare.
gtts-cli -o making-of-the-president-1968.txt google.mp3
gtts.tts - WARNING - Unable to get language list: 'NoneType' object is not 
subscriptable
Usage: gtts-cli [OPTIONS] <text>

Error: Unable to find token seed! Did https://translate.google.com change?
Back again live. I hope I had the sequence correct? Also, what about those 
errors? Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

