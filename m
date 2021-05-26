Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4431E391E0E
	for <lists+blinux-list@lfdr.de>; Wed, 26 May 2021 19:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622049860;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2QSDsu6pEkmrlR/2RHZ2wr7KA0isuUBl21MwCNZA89w=;
	b=QkPVdzorcr6nDuljjcIKrYM3liJLMZcJAZwpwM+OG+g258JbkmlJVM4HkbTBve3Pnr/NeX
	b2sq6fVIE8v7P5U/wY2JqhSy9xjyJ7sVamLaJnnplobajKacl+BElV35n4A/4c8FDtxqd8
	TjQEwY1W0bq4dfZM3piUUopH64CCKZs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-290-gYoS08PpMVSyhEXtv9Hu0A-1; Wed, 26 May 2021 13:24:18 -0400
X-MC-Unique: gYoS08PpMVSyhEXtv9Hu0A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3E3E108C254;
	Wed, 26 May 2021 17:24:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4714A1037F21;
	Wed, 26 May 2021 17:24:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E34295BBE8;
	Wed, 26 May 2021 17:24:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14QHMh4Z020614 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 May 2021 13:22:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 13AD320E76AC; Wed, 26 May 2021 17:22:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F5DD20E76A1
	for <blinux-list@redhat.com>; Wed, 26 May 2021 17:22:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC35C90DE20
	for <blinux-list@redhat.com>; Wed, 26 May 2021 17:22:42 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-398-ahVPUzlFMCe0RAq-f85TpA-1; Wed, 26 May 2021 13:22:40 -0400
X-MC-Unique: ahVPUzlFMCe0RAq-f85TpA-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 31C255C0167
	for <blinux-list@redhat.com>; Wed, 26 May 2021 13:22:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Wed, 26 May 2021 13:22:40 -0400
X-ME-Sender: <xms:34OuYCt3FCsTrqCMh-pciFHqsL72-vssXWmLL4nK2I4xJC8sEj6WTA>
	<xme:34OuYHd7YShGW8Z_gUwhx1legBPSw_4CpwFefnSIIkHj8MVk6MqODhuVhZHqmg8hs
	gcCxcY1Gurl6L7CHZs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdekfedguddufecutefuodetggdotefrod
	ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
	necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtre
	dttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuie
	ehvdefffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedv
	rdefrdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
	hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:34OuYNzTgsE485modKqPou44cR3LAwcB2irK1oRhvXtuCqTYflHKPA>
	<xmx:34OuYNNIv0r9xbraOeXaWxHZNQFN1U_GDs7m5LnRF1nOrRlKRV8Iqw>
	<xmx:34OuYC9YpwcOSaGK5rDKUuq6W9x9C_kxtWSSY-ptKFYde_hiJvqfaQ>
	<xmx:4IOuYFJ8Lr4vTckq5ghQqbDcyjurYFB9TDVE6uFgVzpZGrd8pde-2w>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA
	for <blinux-list@redhat.com>; Wed, 26 May 2021 13:22:39 -0400 (EDT)
Date: Wed, 26 May 2021 10:22:38 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Crawling a website for media files.
In-Reply-To: <CAO2sX31bb2qOf=erBYE2ZQtnKpTYkFMOx8ynLHnvztRYQh=rjQ@mail.gmail.com>
Message-ID: <131bc516-5674-8a3-82e3-a001aee478e@hubert-humphrey.com>
References: <CAO2sX31bb2qOf=erBYE2ZQtnKpTYkFMOx8ynLHnvztRYQh=rjQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I would suggest examining "lftp" which is a web-site based ftp application. I 
found it somewhat tricky downloading with wild-cards, but it can be done. Hope 
that helps
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

