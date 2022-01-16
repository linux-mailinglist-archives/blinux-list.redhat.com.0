Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B90C48FE86
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 19:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642359364;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MKl+bAwx/rMNm6Mzeo4s1SXYvXL/dPIARfC0B7/BYSg=;
	b=V7JxagCGphI6b5/wleUlMZLWKFM9nU2YBd1SRPtAzJnna88pUC4DZbcfTsFLSFP2Bkq7lX
	DfKr14t0YlrrFUgZ5PuDZnAlmtjNKd0MApHySzTqpQ8sFp5yAjNSQGqNZ+mYV8dCBhupOC
	mNcXBCNWFv1A4r4j0JtHUfTgFifnW0Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-26-5ZTv5gTVNIacz0feGExeXQ-1; Sun, 16 Jan 2022 13:56:00 -0500
X-MC-Unique: 5ZTv5gTVNIacz0feGExeXQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0C56801B0C;
	Sun, 16 Jan 2022 18:55:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D04310A394D;
	Sun, 16 Jan 2022 18:55:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E830C1809CB8;
	Sun, 16 Jan 2022 18:55:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GItpAx008515 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 13:55:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8B94F76CC; Sun, 16 Jan 2022 18:55:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85D5A76C2
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 18:55:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8802328F3828
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 18:55:48 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-624-5KJYbyWUM6i3dZlcqxBcyg-1; Sun, 16 Jan 2022 13:55:46 -0500
X-MC-Unique: 5KJYbyWUM6i3dZlcqxBcyg-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id B371A3200F76
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 13:55:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Sun, 16 Jan 2022 13:55:45 -0500
X-ME-Sender: <xms:MGrkYaFDKsYZqqUJtA-iJjkBd4EgV4UKRiO8Te_uUOcWrbQ_caIwvQ>
	<xme:MGrkYbWNI5dks3-Q397Cab4gSY7DXrqi19ldf5AYljDPUh1nxT6PQeuNWGtFQ2HQx
	PueKS6iolX1AibH_bQ>
X-ME-Received: <xmr:MGrkYUJMsNsyoQaLpBc-CyZgAi6Ohr0h-P_g56DkbXyffkQ2aACnyS2YOHXG9xo4by5PigvcZXtEbSN9H15D2nqiPahGqJiIKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrtdelgdduudekucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:MGrkYUEwT7zUFz8v4KvgDisGL13SIwPU1Fc2RMymIkQUg5rteT2CSA>
	<xmx:MGrkYQW2QWlLRMpQcnVhIc4fXog11PUYnduZApyNuU9E4MhqhHNCKw>
	<xmx:MGrkYXOaBX6VdGi0aRCGVvUQ2_EgLdy7t-q6IgvuntzUfpIsYZzlLA>
	<xmx:MGrkYTDiheYxoyCRTrvsRSJMrDfJeYDYmrmLLO5iwR0TUy6U_zVExg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 16 Jan 2022 13:55:44 -0500 (EST)
Date: Sun, 16 Jan 2022 10:55:43 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Getting Started with linux
In-Reply-To: <CAGJxbF704pY9u69Xpk3qmENGU2=Juj0y_DOZ3SMv1f8goN3qdQ@mail.gmail.com>
Message-ID: <b648a94c-a751-eaae-bfa3-a78edff8a81@hubert-humphrey.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
	<8b1b8fcb-2513-2ac8-77db-4aa49e3c225a@gmail.com>
	<e5ad6707-835a-7827-7988-a19c05973fda@gmail.com>
	<b46cb80c-7549-f332-9baa-a42afa678a96@slint.fr>
	<CAM+Q2c5qyi-CERRqxE-YuG+hSojrbVW6Q+8tGC9N3ohzx9b8hA@mail.gmail.com>
	<CAGJxbF704pY9u69Xpk3qmENGU2=Juj0y_DOZ3SMv1f8goN3qdQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well Devin, for a long time, even in Debian with Voxin, but not espeak, I had 
that double voices you mentioned. An only times I cannot interrup speech are 
when running the newer embedded voices in Debian or Slint. Take care
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

