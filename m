Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E71A4A62B0
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 18:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643737227;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/d0WUWxz97zmsaE3Iw+DMN3VMz4U4LuCpvkDxvZPsw4=;
	b=djsYacKmNDjG1zWi1jkuUYXPr/iqk7vQuxw3DVpInNPb59EIbjCuV+teEYr90clDA3VU0W
	XozPIixvV+uQQp83QyracR41i3IpW/jxIHvFIB2MPJ0pKNiB/olmJRiab9oISDInyTMbma
	yt1mRG51JGQ51ha9a19nV43DejdFmoM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-533-K8whwS5rP2uoOSqfc8yIeA-1; Tue, 01 Feb 2022 12:40:18 -0500
X-MC-Unique: K8whwS5rP2uoOSqfc8yIeA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F6F1824F83;
	Tue,  1 Feb 2022 17:40:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B3FE838FA;
	Tue,  1 Feb 2022 17:40:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E6EB4BB7C;
	Tue,  1 Feb 2022 17:40:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211He2Wm032305 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 12:40:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6BA2E40885B4; Tue,  1 Feb 2022 17:40:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 679D340885B3
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 17:40:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47E0F85A5A8
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 17:40:02 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-463-kJobXalMPjKoiO6t-U7sRA-1; Tue, 01 Feb 2022 12:40:00 -0500
X-MC-Unique: kJobXalMPjKoiO6t-U7sRA-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 9C25C32020B7
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 12:39:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Tue, 01 Feb 2022 12:39:59 -0500
X-ME-Sender: <xms:bnD5YQP6siKAPRGMoE151QgZymHgWxecAlxeJohxg9giXGFfSEFr1w>
	<xme:bnD5YW9Bje_52fkMXbgwBv-1GniKIp5z81jhSnr-jERpPbkDFNoX5Z-3hXZGBqwc0
	UF1PmndXYt9_eCgmdY>
X-ME-Received: <xmr:bnD5YXTuonNLIYMeqIyQt8KQk7W47RqpiZ5H74STPZZsNJdQtUXyqcPr6zbOP4kz2KL7BJBswXp8L5N9ncBKGolTemT_KqQOWg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrgeefgddutddvucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:b3D5YYsrb067oSR7XBi0fG9ItqpKpPlgKKDy6nu14RhphEgTkOZPWg>
	<xmx:b3D5YYcw3DCjb6OfXadR5huqaRTxw2EjsLLWrkT4_FLk8L4n2u5K4g>
	<xmx:b3D5Yc2PtPBV3KN7o-YNVRmfkrav-qmLkipSvQEsBegTe-6eKkdcPw>
	<xmx:b3D5YSqTqHJJ4OcqA7FhNIma26CGzYP2PLAfOtCtijoJ7Ep8Xg_Ciw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Tue, 1 Feb 2022 12:39:58 -0500 (EST)
Date: Tue, 1 Feb 2022 09:39:57 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Remaining DecTalk Issues?
In-Reply-To: <6ED714DA-818D-45FE-804C-2CDB5CE627F4@linux-a11y.org>
Message-ID: <6015a48-55b2-85e3-3e2e-20dcebfcd2d@hubert-humphrey.com>
References: <3b5986-5885-4b82-437f-e8c2d1cee655@hubert-humphrey.com>
	<6ED714DA-818D-45FE-804C-2CDB5CE627F4@linux-a11y.org>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

Hi Chris: I am in Southern California, Pacific Standard time, where right now 
it is 937AM. I trust Fenrir also supports the new embedded voices in Voxin? I 
think Gilles-and-others have suggested Fenrir. Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

