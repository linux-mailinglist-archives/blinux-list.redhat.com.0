Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 654891F8AC5
	for <lists+blinux-list@lfdr.de>; Sun, 14 Jun 2020 22:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592168199;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JynlJqmenuKaasD06OtCOLGp49wnHt0kakoVcMcgM7k=;
	b=aiSdKgNiy2gGuXhUN7KpsRMJua1xyWsAJ5OfBpA1vUf63mi+qAS0mEyOdAuzhGC4hOiDqg
	FK5mamne5fY3Mic0XyZIDVScGio6gBhMu5TlPFPKMD8cPY8Tai6EvEFTnl+l9Lp+6nqcDR
	htFJYStKI3hfgOTXQxAb+pPv5Jsp5SA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-jBMLN6cWPqSKBCqFlZQorg-1; Sun, 14 Jun 2020 16:56:20 -0400
X-MC-Unique: jBMLN6cWPqSKBCqFlZQorg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 886EA835B40;
	Sun, 14 Jun 2020 20:56:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44E162B5BF;
	Sun, 14 Jun 2020 20:56:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CAC64833BB;
	Sun, 14 Jun 2020 20:56:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EKuCQP003801 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 16:56:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3ECFC110F398; Sun, 14 Jun 2020 20:56:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39770110F397
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 20:56:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 44F59811E77
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 20:56:10 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com
	(wnew2-smtp.messagingengine.com [64.147.123.27]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-276-UptbHLQePyePETYFPTXb7Q-1;
	Sun, 14 Jun 2020 16:56:07 -0400
X-MC-Unique: UptbHLQePyePETYFPTXb7Q-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.west.internal (Postfix) with ESMTP id 6D61E403
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 16:56:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Sun, 14 Jun 2020 16:56:05 -0400
X-ME-Sender: <xms:5I7mXpZsRgBfVhuNmHJ-qQg6XaP0gkla03hIkRKxrYp90lI4N1utvQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeiiedgudehkecutefuodetggdotefrod
	ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
	necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhgfgggtsehttd
	ertddtredvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghr
	thdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeefuddvuddvvefffe
	evgeejfffggfeiiefgtdeugfehgfejhedtieelhfeuleelffenucfkphepuddtgedrudej
	vddrtddrudegfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
	hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:5I7mXgYcydk8kWnDLtBHTdcs0Lx8fv65tGEddiUL0ohuB-eNJw5hlA>
	<xmx:5I7mXr-qtmpU2UtniHt3SpyM0uV4Y6XwiM_rhdPuJb8TZef7xxHrmA>
	<xmx:5I7mXnq5JdwBqglLzAtKpLRxfNq4ljRqDp1Cw5yv4aoaff0u0wo2Yw>
	<xmx:5I7mXt5BekA1DRKz4pHk-UtMwhjy2HgajYDllMt8yzkuM2_GtlKcCYuzr98>
Received: from [192.168.0.3] (cpe-104-172-0-143.socal.res.rr.com
	[104.172.0.143])
	by mail.messagingengine.com (Postfix) with ESMTPA id 57A9930618BF
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 16:56:04 -0400 (EDT)
Date: Sun, 14 Jun 2020 13:56:02 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
In-Reply-To: <1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
Message-ID: <alpine.DEB.2.22.394.2006141355001.3348482@chime>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I think many years ago there were lots of spam which came through this 
list, so they altered to this current way
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

