Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D26E9326E96
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 19:16:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614449794;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FnYW55UASa7m3Yk8RT8DZHt0a3vulSCFvWf+fmLV/ng=;
	b=R9QwJRwHVM+WtaOmGxz1xmGXAOHW/LtNisAAxY3MTGDhQBfP+H3L60DOke+rafmRbbWtE7
	QiPvUm3a7oF0G096jKb4NLeVavw49pYduUqBZkluLjPM4qKAoF3C0ZeYXkblZbciySTa5D
	aEIV32G/6mPCpFXuGtKbJKm5ERtj5Kk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-121-C2ySqdo3OBWHCTlvadMO8A-1; Sat, 27 Feb 2021 13:16:32 -0500
X-MC-Unique: C2ySqdo3OBWHCTlvadMO8A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC87F100A8E8;
	Sat, 27 Feb 2021 18:16:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0319F1F474;
	Sat, 27 Feb 2021 18:16:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DCBE18095CB;
	Sat, 27 Feb 2021 18:16:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RIGJL4021102 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 13:16:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5E60F2166B2D; Sat, 27 Feb 2021 18:16:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5969E2166B27
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 18:16:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 161AC9988F0
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 18:16:17 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-272-AI28HoILMmqQXHHxbHHrdw-1;
	Sat, 27 Feb 2021 13:16:14 -0500
X-MC-Unique: AI28HoILMmqQXHHxbHHrdw-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id B966B72F
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 13:10:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sat, 27 Feb 2021 13:10:01 -0500
X-ME-Sender: <xms:-Yo6YJ4wf3THaU9vlUG3jnpZP5lT6XzRcVQ60XDcjY3kzKgJ749pvA>
	<xme:-Yo6YG7Dc_1qL1WS8o5CrY2aLWHRzmqJQtZRF6ntnnbTMu6BItpvih3WesmpYS3SY
	phRXRdkG207oDkGZ2U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleefgdduudduucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:-Yo6YAdip3DiMCN2NfkV9LMgRqtxu7G4aV3HBY0MwjWeYAhzyCQaqQ>
	<xmx:-Yo6YCJzrg44mODxCfZM8Me6ZMFj-jAfQ3DkGDapUlHm33X3iTWklg>
	<xmx:-Yo6YNJVU9dOAPmwHxFtzSJN97h2fFFbixpAOUbqQAW3Y8gwRcu31A>
	<xmx:-Yo6YCXRvbi19XLpBxS0WN_fIS64ycjlaVIjl2tsHwSdfFgD7eGY4A>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id C27AE1080054
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 13:10:00 -0500 (EST)
Date: Sat, 27 Feb 2021 10:09:58 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <161444854854.8.6967526014575932372.4265918@slmail.me>
Message-ID: <4e29b9fb-4c11-ec71-c18e-6763097b2c1@hubert-humphrey.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well SL, no additional progress, but for an individual in an earlier post who 
suggested I rename-and-unzip an .apk file. So I have files ending with dot so. 
As far as running from an anbox setup, sorry I guess we are both curious. If 
you wanted, I could send you an ivonaspeak3.0 maybe you will have creative 
ideas. The gentlmean who sells Voxin thinks Ivona will work with speech 
dispatcher. Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

