Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id DFC0E25224E
	for <lists+blinux-list@lfdr.de>; Tue, 25 Aug 2020 22:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598389187;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ghTJ6V9AnJu8X05ka1uJ0X4k66BDI7bnuedDn9IX3Lg=;
	b=P9HNn+k8a1K27S7cwTFjP5YAtFlxf6N6KUyV8s/jmsoFLVhq5v/JTJFipZdYnnBddWfzkI
	sRdXpuOiYSOchv49w1DwXnEAQUhqI70JvYPem3ii5e2aFgMXUijKlVrhTQzDnAVk31aTH/
	GRTa5UNToFYLAP3mQIoLVfD8ooVnl50=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-Y2QYQ171NIyiM5CwMDiAjw-1; Tue, 25 Aug 2020 16:59:44 -0400
X-MC-Unique: Y2QYQ171NIyiM5CwMDiAjw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C304610ABDB2;
	Tue, 25 Aug 2020 20:59:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36E8F747BD;
	Tue, 25 Aug 2020 20:59:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A5AF4662A4;
	Tue, 25 Aug 2020 20:59:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07PKxbt0020918 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Aug 2020 16:59:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 08D5A202278D; Tue, 25 Aug 2020 20:59:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EDAB62022791
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 20:59:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6637A8007A4
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 20:59:34 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-441-5Pr0M6IsNuevHzzt0JSn_g-1;
	Tue, 25 Aug 2020 16:59:31 -0400
X-MC-Unique: 5Pr0M6IsNuevHzzt0JSn_g-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id DA784C0C
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 16:59:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Tue, 25 Aug 2020 16:59:29 -0400
X-ME-Sender: <xms:sXtFX1L-fOOzE6vbW3MWaVCrpxrDqIzpRxLykSNtIorQjFUtgmrsoA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedruddvtddgudehkecutefuodetggdotefrod
	ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
	necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhgfgggtsehttd
	ertddtredvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghr
	thdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeefuddvuddvvefffe
	evgeejfffggfeiiefgtdeugfehgfejhedtieelhfeuleelffenucfkphepuddtgedrudej
	vddrfedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
	homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:sXtFXxIRRABxSet0p7ESarhPFhdbEtyuglzPiXXc8mn4lPaKIvItGw>
	<xmx:sXtFX9vISZRdIPY0IiBn5_ij4R-TMEH1BpPyVea5vfP55rFwue8Y1Q>
	<xmx:sXtFX2azpsZtw12yhsesyhh_cFs9UbwP8BUPD6wAKlmW5lseC8cuEQ>
	<xmx:sXtFX4puWVjT2L-gBH9zH7AdBi994i7CtW8d9YkMwVWNpZ1jmihnuw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id E4206328005E
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 16:59:28 -0400 (EDT)
Date: Tue, 25 Aug 2020 13:59:27 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Hello
In-Reply-To: <52A61F6D-F5D3-4A8B-86EC-639F76F1D1D2@yahoo.com>
Message-ID: <alpine.DEB.2.23.453.2008251356140.3914581@chime>
References: <52A61F6D-F5D3-4A8B-86EC-639F76F1D1D2.ref@yahoo.com>
	<52A61F6D-F5D3-4A8B-86EC-639F76F1D1D2@yahoo.com>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Well Ashley, I would say one of the really nice aspects are that Linux 
doesn't try-and-do alot of thinking for me. As an example, in a 
text/console setup, it will only refress a page when I ask it to. Also, 
unlike a ChromeBook or windows, it will not try-and-predict what url I 
want to visit. Again its at my command. Best of luck with your class.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

