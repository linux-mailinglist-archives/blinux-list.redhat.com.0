Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7341C49D492
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 22:35:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643232913;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dNaFkj0SXIeGMIEj1VqLFi8yQsFfHqWasyw2bBNbX9I=;
	b=DZ7ngpEc5Sb0f2/nk9McI2QtraArouiN7a+ZdM7ykXDvX8SNBJzXe4Rh302Gv4yaHLYd+8
	GODuJ9wEPdxVgzqxnhgS8poQK2j+NTF+uYiAw0IxzH9idMJ2JmjVA271uFZ4GkyHJM4iAf
	aAK/ISuoHyY2c8wLs7AxLuo9TMY05g4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-130-vwbluS5uPM2clg0n75__Tw-1; Wed, 26 Jan 2022 16:35:09 -0500
X-MC-Unique: vwbluS5uPM2clg0n75__Tw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2290463AD5;
	Wed, 26 Jan 2022 21:35:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01376E71F;
	Wed, 26 Jan 2022 21:35:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 653841806D03;
	Wed, 26 Jan 2022 21:35:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QLZ1tk028435 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 16:35:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 86E1F40885A6; Wed, 26 Jan 2022 21:35:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8245740885B2
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:35:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 691A5802A5E
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:35:01 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-148-6AIdhg21MwCKQ_9WOAMWsg-1; Wed, 26 Jan 2022 16:34:59 -0500
X-MC-Unique: 6AIdhg21MwCKQ_9WOAMWsg-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 118C45C0075
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 16:34:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Wed, 26 Jan 2022 16:34:59 -0500
X-ME-Sender: <xms:gr7xYZYnYE4zzOpTjZyEMi4D3EMKi-J709LmeXOAwxwd-1oU8ILrDQ>
	<xme:gr7xYQa7v5whPEYjgBoiNemazHU4Nu9NuJYAvD_ny8gzHX9S4Fn__s2dsypGB9u9b
	RcGa-uEXwoacT3q2Rs>
X-ME-Received: <xmr:gr7xYb9dkpRhghClZfr8QPTeRRs1wC1sBGRijT16lvxeNzVv-Q5z5RDXzInfio_D0K9ihw74CffQKdOB1XqHl6ffEqp9BgJEqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfedugddugeelucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:gr7xYXrwghW42YzRMBcs_bcUCaPB4hGU4wmYEMDiLEELIkn_vX0FWQ>
	<xmx:gr7xYUrEiYXubzzqQ_FLadrPd3_GzZdDgGBLCG-l910vNYw1Q57UUg>
	<xmx:gr7xYdSrIUNKP-g7Bnv78QlRKJ9Foo9LfgowbD2ZJkbn7tA2TTlGVA>
	<xmx:g77xYaEIgnvMUcsltcM-rL8HVOavFCQ5DmHYKffKDSUQ0ZHaZVIe7Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Wed, 26 Jan 2022 16:34:58 -0500 (EST)
Date: Wed, 26 Jan 2022 13:34:57 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
Message-ID: <571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Karen: Actually, yes I already have an mp3 of the same book, but this was an 
experiment so I could judge the sound quality-and-compare with other audio. 
There actually was 1 book which was only available in text, so that does 
happen.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

