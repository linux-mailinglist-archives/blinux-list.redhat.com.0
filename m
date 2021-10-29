Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 543ED43F459
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 03:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635470930;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bewo7172RfHx//c/qBI4f8oZO3djiu4oK5U2LPCuYWE=;
	b=jLtE1iVY6c4i3wv4gOJ4FoPjvqKSAatzC9U+i1320GWTlWy6WZZfrDauJiRbgjot5d7Tz5
	AaiQQOs72Sq+aOCuB2NmxD+TeG1l55FzvCxb1KcNfrd/Mitu4BCnHIJQ58wx6yJrmb7EbT
	cfvlULK2JFqAFedKe97a/AuhLQ0gigw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-nePNfRwkNKm-GJ3i2yJeXg-1; Thu, 28 Oct 2021 21:28:46 -0400
X-MC-Unique: nePNfRwkNKm-GJ3i2yJeXg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EF6BD5074B;
	Fri, 29 Oct 2021 01:28:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 423454180;
	Fri, 29 Oct 2021 01:28:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1D86C4A703;
	Fri, 29 Oct 2021 01:28:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19T1SZCj013877 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 28 Oct 2021 21:28:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1E95C4010E70; Fri, 29 Oct 2021 01:28:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1822140CFD02
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 01:28:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2FFB802A5E
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 01:28:34 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-294-kml2EIH9ONO_A-nDoz-YkA-1;
	Thu, 28 Oct 2021 21:28:32 -0400
X-MC-Unique: kml2EIH9ONO_A-nDoz-YkA-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 879EE320148A
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 21:28:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute4.internal (MEProxy); Thu, 28 Oct 2021 21:28:31 -0400
X-ME-Sender: <xms:Pk57Yf1SWzhzE3T4Hg7PrImIwz95aQvpaXvCM4DQMa6lnawDoNFZNg>
	<xme:Pk57YeG_ozqay57o_KsY0BLY_7z6MrziDV4ziAoB4sLdgYjMuXWsRPDpsMmXdSn8n
	AfEIuQRjuer5uIGRSU>
X-ME-Received: <xmr:Pk57Yf4w6Q7ImYsLMHYyG9iba8hOwwfO70r0qbuMTWBqNFB-weyfWfohRPcJ23G2O7dZRZa58YzmzQfq1G-OI5Ejfn95UAuOlg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdeggedggeefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:Pk57YU18WY6sutX-Srw0973dfLmqp5-pOLq4Z6M90LtXExj_caJgRw>
	<xmx:Pk57YSHfBpv21ohV1qg5FRn4Qu-l0CtMSKK09ZYIXFNUwTXiUNUV5g>
	<xmx:Pk57YV9Dt_-4x6g8KeU37woKukFadsdyLpAZyMNeBJ-iPatK8ZXsCA>
	<xmx:P057YdytkS12jTbcq86RdcAxdYl1cG5fzsDjuzGJeIrv3IDdWJPr3A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 28 Oct 2021 21:28:30 -0400 (EDT)
Date: Thu, 28 Oct 2021 18:28:29 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I run an accessible version of linux under windows?
In-Reply-To: <95d1f9f5-3bd8-a09b-7766-4198741bcd33@gmail.com>
Message-ID: <7e754922-7b86-e1c-138c-4eec9ac132f2@hubert-humphrey.com>
References: <23ab7b29-ac4-63ed-cdb3-257bb4417e9b@hubert-humphrey.com>
	<AD23363F-591E-4B0A-9992-841F3150EC31@gmail.com>
	<5b11f885-d643-30ba-6298-148de7e576c7@hubert-humphrey.com>
	<95d1f9f5-3bd8-a09b-7766-4198741bcd33@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I think you may need some configuring, but its been many years since I ran GRML
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

