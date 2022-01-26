Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2632B49D583
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 23:36:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643236563;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jGpgsC4koJI95utUN6UJPmW6jwAtiLhL3WPdD2C4DwY=;
	b=Xv4ulIbN3AiDK5M9fo+Nb8xswpDZQfxGbb7heECdaAil2nA/jasSAkerv8mZCG36GAy1RK
	Szs93WkycNE5YV/T42LGhL5byrmQAhhe0u8vMPE+znX9gVisoByp6iimI4+tiaRi9LpO4Y
	KiBGYBUkvdpSyafT3jSA5bgRFYwK0uw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-73-UX8mbaTsP6mRXhK6ORXYyw-1; Wed, 26 Jan 2022 17:35:59 -0500
X-MC-Unique: UX8mbaTsP6mRXhK6ORXYyw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E5B731937FC1;
	Wed, 26 Jan 2022 22:35:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CDCFE12E2A;
	Wed, 26 Jan 2022 22:35:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A994A4BB7C;
	Wed, 26 Jan 2022 22:35:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QMZrMB032445 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 17:35:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BDE9BC23DCE; Wed, 26 Jan 2022 22:35:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9F20C23DCD
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:35:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B4D23C11A28
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:35:53 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-16-CPpyDd5NNuKzS9tzXX6V7Q-1; Wed, 26 Jan 2022 17:35:52 -0500
X-MC-Unique: CPpyDd5NNuKzS9tzXX6V7Q-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id C5BAD5C0189
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 17:35:51 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Wed, 26 Jan 2022 17:35:51 -0500
X-ME-Sender: <xms:x8zxYf3mU01A4bcUjrWG7QFBpGGh6wrRGyLuFgrhfy8soUM66ATOzA>
	<xme:x8zxYeHDcu1PiRFf4iugBe1aHWKM3h-dUl385CC-3V3eUeK48doJipM6eispVtjyR
	55VnNKwsvN3J5Ijm3I>
X-ME-Received: <xmr:x8zxYf7kpd5aF4y5wWrprRgtOWWm86FcFtdc7LVb4jGcWd8YG1yhfqqVH_clGBNimb-ad8uy2rJ1vOOtLysaFL7pE2H-bYh3OA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfedugdduieduucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:x8zxYU0ganvUoO8kQlEcxZJPFGJ3Xmb3QA6soXJ2zi5YR16ALtS75g>
	<xmx:x8zxYSGzdK6pSfzgsUO19TkEtVJmA_9AN_sEVG-iKES7ag4TpOufdg>
	<xmx:x8zxYV-H8mGM9NEBOYZo-2AJDeMLUAqTIr5CLNzTRKw9183vQbsANw>
	<xmx:x8zxYdwxvWFcIlN5fqTWvj5Sb1ZD7Mkhr0nP9Ngo0ttlD9UK7e-EXw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Wed, 26 Jan 2022 17:35:51 -0500 (EST)
Date: Wed, 26 Jan 2022 14:35:50 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
Message-ID: <1965ab38-c72f-9e43-1c14-4c4dcdb0ef23@hubert-humphrey.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

Well Karen-and-All, I guess we can say our DecTalks are speech 
synthesizers-and-software such as Vocal-Eyes, Speakup, Jaws, and NVDA are 
screen-readers. At least those are the ways I understand it. By the way, I 
closely examined the man-page even cut-and-pasted an example, still receive the 
same errors.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

