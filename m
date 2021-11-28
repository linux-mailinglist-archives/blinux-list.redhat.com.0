Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7654D4609BB
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 21:48:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638132518;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IPc+FnPBZyGor2sTbWkpzT1vAtVHtO5rptP/Eypq7Qs=;
	b=c0DQsMoP+mamPPCmHsC+tnukM2uR9Q9XNdW+fHibMPx14EJQMn5p0tmBCpx17NZMHGVLig
	R0vcAU35DBDczzNtBsaV65MJheI+WOvYeT886iSBcqA5+GWx4dyvjMEhETuJ8LnaNnypZM
	Fln3fbwgspBHjwzvt+NRek8GKMSZ5qM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-295-ME0tqWYlNLqsIW3adEKiMw-1; Sun, 28 Nov 2021 15:48:35 -0500
X-MC-Unique: ME0tqWYlNLqsIW3adEKiMw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09A752F20;
	Sun, 28 Nov 2021 20:48:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADB6019729;
	Sun, 28 Nov 2021 20:48:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 111961809C89;
	Sun, 28 Nov 2021 20:48:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASKmOPZ021168 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 15:48:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E99BC492C3B; Sun, 28 Nov 2021 20:48:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4334492C38
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:48:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6D86801212
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:48:23 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-517-6bGd7IAsMYinH2UfVXwMnw-1; Sun, 28 Nov 2021 15:48:21 -0500
X-MC-Unique: 6bGd7IAsMYinH2UfVXwMnw-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 890333200C10
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 15:48:20 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Sun, 28 Nov 2021 15:48:20 -0500
X-ME-Sender: <xms:E-ujYbZWN1ovVdEIGBxU1X_Y2aYDIJkr472ldtabZ_eBBsoJrxyLRA>
	<xme:E-ujYaaLNS2UA1-0eXs9JeMkym2F__QpBekDzLVIO46vHmKcFf-usuEimiz2rlY1j
	joZRpTeLrC8XhO9vJU>
X-ME-Received: <xmr:E-ujYd_xqwNjUIPvcb1qld3XaEH6CHqCGM9c1OTz9r8qdaneE7WgLHvPjDeolnXF-qhP5VRNwEbPE4xB2SJ5pZ9naA2X5hh8EA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrheeigddugeefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:E-ujYRrC-6vxKvQQehr_pZuGf-knW5RDbPpOlgl6MwYQ5KdJKcLO2w>
	<xmx:E-ujYWrF0CKWezO66VAVddqaTIqYkM4Kwnz137OiK4nZstd-r4UjwA>
	<xmx:E-ujYXTm385VuwXCd0LJVn_kc3mwnXAL04f7V5zKi_Z5n33wCOFW3g>
	<xmx:FOujYUFNZc4-Ze07aqdiGNjLogXZHUpVKqpNN9jl7UA62itStAELeA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 28 Nov 2021 15:48:19 -0500 (EST)
Date: Sun, 28 Nov 2021 12:48:18 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
In-Reply-To: <c692751c-9531-b44d-4f30-324fed10f80b@slint.fr>
Message-ID: <737da28-b5d7-1c27-d3de-540a62369ab@hubert-humphrey.com>
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
	<ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
	<91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
	<c692751c-9531-b44d-4f30-324fed10f80b@slint.fr>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, Didier, I manage fairly well, but I am not a programmer, although if I 
carefully look at aliases, I can make additonal items. When I was in DOS, I 
understood more about batch files than I do the structure in Linux. Otherwise I 
am quite comfortable in a commandline. Thanks
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

