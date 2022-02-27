Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7284C5EDB
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 21:55:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645995308;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cJV/WMhKnQpGnkWnTC4d+oGXpytL3xlXMjOSLcwioQ0=;
	b=i7OaDmDFdX4tSe/SCeBZbOD19VVfj/k8/FHrVUQH7jTADMW6Cb1b+lL0R7o2uF8SyZWtLc
	YaYdWWW7X5Q35eSkeQAgsK95Mbe9y6oJVbWRXmYjT8XwvdJtev9ms0AbezHJpGXAJvBrIi
	4CzfCCWjB4ykv06go/ON5mwKMDfiXSY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-589-bzYmmolINniExayOrxLzhg-1; Sun, 27 Feb 2022 15:55:05 -0500
X-MC-Unique: bzYmmolINniExayOrxLzhg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 909C280733B;
	Sun, 27 Feb 2022 20:55:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CAF0ADEE;
	Sun, 27 Feb 2022 20:54:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3F5F34A701;
	Sun, 27 Feb 2022 20:54:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RKsqmX008219 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 15:54:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4CCE7435331; Sun, 27 Feb 2022 20:54:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 484AC4538DA
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 20:54:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2FB69801E95
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 20:54:52 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-635-XuQZNAYfO0CMAjiZ2qWPTg-1; Sun, 27 Feb 2022 15:54:50 -0500
X-MC-Unique: XuQZNAYfO0CMAjiZ2qWPTg-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id D8BA15C0195
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 15:54:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sun, 27 Feb 2022 15:54:49 -0500
X-ME-Sender: <xms:GeUbYtpDWysdNwOODt9Lvc_IumoVpZrQpwUSLZiCOHJIB0s8oM369Q>
	<xme:GeUbYvrbv1VFK9FktmLIV1oUfifGq_o5Y0sb7okfD1u2KE4TCHf0QE93i-Afd8HaP
	mtYLgiueTP2mbnc81c>
X-ME-Received: <xmr:GeUbYqOdK3A-wi1hoWJ5U6zV5D59lGYxYXNGOJtSqTnKDbNPY1tBHjOyluNPMeTWcrIwvq56lIr7TBmRbWz2v8pWbwomzPvwRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrleekgddugedtucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:GeUbYo78WeMD8x9jdykMAgCiOVG6h1QnENJa6sQDLu5-veWhZ-JMhQ>
	<xmx:GeUbYs7gY9k5T3UWp3qsPcfwzrB_QZ_QepWRLYvH3aaA35r9p1RuRg>
	<xmx:GeUbYghoTq78t6QAu7BHFNLyVtenVz58E7XB-JxhiAUCLWXDddO7dQ>
	<xmx:GeUbYhXUQbiM9Z_ni8hhx1Fnt_j5BiUqQrg1aYpO5ZGj6HRgjyEkyA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 27 Feb 2022 15:54:49 -0500 (EST)
Date: Sun, 27 Feb 2022 12:54:47 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Voting: Which game would you like to have on Linux?
In-Reply-To: <CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
Message-ID: <3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

O, I can't resist. What about some of the older DOS World Series Baseball 
games? In addition-and-since I am not a programmer, but as an Aquarian, 
sometimes a dreamer, I wished I could have created a Boxing game, however, with 
the flare of when Boxing was on Radio. Certainly you would certainly use your 
left-and-right arrows to punch. Also, the late Jim Kitchen suggested, you would 
decide before a round began which type of fight? a for agressive, maybe an r 
for rope a dope. I suppose unless you were to get an announcer with experience 
to record samples for a game such as that, I `really wouldn't think any speech 
synthisizer can adequately do play-by-play or in this case blow-by-blow. I am 
sure I've had this dream since the 90s, not2mention probably no1 under 60 would 
hardly remember Boxing on Radio.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

