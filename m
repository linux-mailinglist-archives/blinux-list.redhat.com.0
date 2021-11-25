Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9DA45E10E
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 20:35:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637868949;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uGSwCgDXn+3jzRH5HHgsEjVhHkA+TORgdztpb1PsNnY=;
	b=fRgKwLLRqbF+i/lRx0GfOzftzGKCa4Gjl117go0IQ6S6/W8y3TRMgzTphG9Q5Ztp57lFRc
	F4fYmWFCnq+1LQ6CoptZ87/nQOXpJIZgGzYLJofbCnsmznZVIhQfRljPaIEJvxPmVgvjwQ
	Ffv62bS28p/uOrZ4BfyQuvSurZn++kY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-410-P6EKczlLOwaMpMfizqjUiQ-1; Thu, 25 Nov 2021 14:35:46 -0500
X-MC-Unique: P6EKczlLOwaMpMfizqjUiQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D35AC1018721;
	Thu, 25 Nov 2021 19:35:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D60760BF4;
	Thu, 25 Nov 2021 19:35:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C47761809C89;
	Thu, 25 Nov 2021 19:35:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APJZaLO032061 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 14:35:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5328340149B1; Thu, 25 Nov 2021 19:35:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D3C940149AB
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:35:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8BECF85A5B9
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:35:35 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-454-WFrf7u2CMBi_38_OKdg2OQ-1; Thu, 25 Nov 2021 14:35:33 -0500
X-MC-Unique: WFrf7u2CMBi_38_OKdg2OQ-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 89C163200E79
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:35:32 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute6.internal (MEProxy); Thu, 25 Nov 2021 14:35:32 -0500
X-ME-Sender: <xms:g-WfYSqEAy-yAA7VHanGM8EinNX5Yigr6U2rgtXIMBNBDrIf4-aqzA>
	<xme:g-WfYQoe67f8vxNNcq-1rGLJAJsY_gZMpXq7MwgG3Qr0pRrPpp3KlJwa1IMCfFokQ
	ZQI9I3QiSRr8B-gxZU>
X-ME-Received: <xmr:g-WfYXMeseBtaApmk6ioScrUP5tX03LaZ581GCUUQfwRJz00lr_xFgu0UoPzcKN1ORzvd7mSydUJYxe0pluexkdwG8pJ68cyWg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrhedtgdduvdeiucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:g-WfYR61rN214pH6hHYDZ5R1dT-Cp5uTpXDXfIQwhz0D6MM7GEMCBA>
	<xmx:g-WfYR7WLcUmtmG0CEMhhQrlOxScQ3ZamvKs0Dx14EIXncI1TPqwjA>
	<xmx:g-WfYRi7cQtc7y_wIwYKwNHX3oJdfu9wS0vl0XuInnZNS-rf1vFTUA>
	<xmx:hOWfYSVILboZoaHGBsfCWHhKpuclnAdPLpGvE4hfmcCbc4-unm2_hA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 25 Nov 2021 14:35:31 -0500 (EST)
Date: Thu, 25 Nov 2021 11:35:30 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting epubs to Plain-Text?
In-Reply-To: <CAGJxbF44oOQ1+YM3TnLG+3FRW4BZuf8S2+A4ajvuvcbeaXgvfg@mail.gmail.com>
Message-ID: <21fc9fd7-7fac-14c-26cf-ac99c62e73@hubert-humphrey.com>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
	<e9ca84ae-5e2e-41bb-4299-e947a79ce264@ukr.net>
	<alpine.DEB.2.21.1.2111252108070.3997@willempc.meraka.csir.co.za>
	<c353cae1-3ac4-311-3a4-3edf18be631@hubert-humphrey.com>
	<CAGJxbF44oOQ1+YM3TnLG+3FRW4BZuf8S2+A4ajvuvcbeaXgvfg@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you Devin, successfully grabbed it, will examin after Holiday hot dogs.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

