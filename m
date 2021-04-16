Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7B3603621B8
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 16:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618582131;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=n+T9RYGMgagYacwHgPdFiB6wJqgsS3y3lgIFODPIaP0=;
	b=CjbLpwmGoqWlz5p24h8KM27C13ecviuxiicvxw4AVbzGlcyJ63SZIL+8zLNMKXQPCd6yVc
	EQ5d7+deo1yx3SnXPqKCBjG+9CDS8eKOs98u1I2L6uwv4CiRbPibbtQUwrt6aoY8GKT1qJ
	e8s6QtjjmHenQ7uOHMa70pPN5CGGqRs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-80cU9T1ONw6aH6HWbIr5bA-1; Fri, 16 Apr 2021 10:08:49 -0400
X-MC-Unique: 80cU9T1ONw6aH6HWbIr5bA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAD4A8030A0;
	Fri, 16 Apr 2021 14:08:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 231735D9C6;
	Fri, 16 Apr 2021 14:08:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CA9581806D0F;
	Fri, 16 Apr 2021 14:08:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13GE8bjH032757 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 10:08:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5821620BDB02; Fri, 16 Apr 2021 14:08:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52D5620BDB0B
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 14:08:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 898EA80B90E
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 14:08:34 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-228-4zrl3RSNOo2tFRY10hv7cQ-1; Fri, 16 Apr 2021 10:08:32 -0400
X-MC-Unique: 4zrl3RSNOo2tFRY10hv7cQ-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id A42635C0071
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 10:08:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Fri, 16 Apr 2021 10:08:31 -0400
X-ME-Sender: <xms:X5p5YKKoQe2I7AldbXViRUsDBHlTkIw9iScsbtrRR1Ws2DHuCpxcIg>
	<xme:X5p5YCJ1xDuedffXlZdMtlEyMvxwa1Dxm0ZqpUpsfsDNnxFV66YyyZqH9MZnq1DDC
	WAWuMy4EBh3LIqSVDY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudelhedgjeegucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:X5p5YKvDmmLR40W-vPRbK4xQ0SzteQkNRcISjs4VWiGXXvVfkEaemg>
	<xmx:X5p5YPZdOPj8g2POWXePpS1BQs9nOBlsM-Sc6WRmQmxoQJbywp0O7A>
	<xmx:X5p5YBbKdoNcrjHkr7dDiecMhxJ8akiA9IbCxymjSbsmfsi_FHMHXw>
	<xmx:X5p5YKnF7eY7bvNGg6RG0myg_IK7WzdyRVqkX5aEVmhJKKj0-dTNeg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 1642224005E
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 10:08:30 -0400 (EDT)
Date: Fri, 16 Apr 2021 07:08:29 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: re-sending this: are you interested in natural sounding TTS
	voices for Linux by Readspeaker? demo link included
In-Reply-To: <CAGJxbF4_7JsktUVko8CH4swWMURg2keSz5QJqy-dA4=x35M65A@mail.gmail.com>
Message-ID: <6e3185ad-e0c2-30c1-2a55-d4c6422e65d4@hubert-humphrey.com>
References: <161856255164.6.7776816386753760223.5910318@slmail.me>
	<b3a01a58-d003-cf09-7957-d2db8be288a3@slint.fr>
	<d84a5344-8bcd-c8de-f757-282759fe6aa0@slint.fr>
	<CAGJxbF4_7JsktUVko8CH4swWMURg2keSz5QJqy-dA4=x35M65A@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

Well, thank you so far for an interest in better voices. Among the ReadSpeaker 
voices which I've heard, I like the better inflection of Heather. And yes, 
Didier, I began a similar discussion some years ago, but you know if we don't 
gently-and-occasionally suggest access to these speech engines, we may never 
enjoy comprible voice experiences as Android or the Mac. Meanwhile Gene 
mentions Voxygen. I think some1 from that company actually replied last time 
around, but this person didn't seem  to be aware of Speakup or any console 
speech. I cannot find any Hypra voice samples, but for a youtube video, 
completely in French. Mostly their site talks about a cloud API service.
Meanwhile, I guess so-far there are at least 5 of us who would consider 
ReadSpeaker, but I think semantha suposedly sold by Oralux would be my 
prefference, depending on prices.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

