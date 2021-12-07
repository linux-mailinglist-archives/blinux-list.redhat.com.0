Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5C646C4E2
	for <lists+blinux-list@lfdr.de>; Tue,  7 Dec 2021 21:50:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638910206;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/bMloJ0DymxlvsQYZZfZ5I5pLMagtpHgBFvH0dx3oZY=;
	b=DztSNA6CsDTBp6z8WYGfrSf7doWENrEai1BEuIdOfA/lbCFGHtJ/O9UbwnrmxV4U94iW5z
	HUZ6myWf29/qL4ZCbQ7MMBS+iKKGKLlQ6m4y0j7u2l8DJ89msBWIwCSCyQlqg9luC1PFQE
	skdM6weZvyojn/mXq0osmAtbNLNkaxE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-397-pZhE0v95N8mtQm7haM8kNw-1; Tue, 07 Dec 2021 15:50:04 -0500
X-MC-Unique: pZhE0v95N8mtQm7haM8kNw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8212E102CB2B;
	Tue,  7 Dec 2021 20:49:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A475E10023AA;
	Tue,  7 Dec 2021 20:49:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0B2C44A705;
	Tue,  7 Dec 2021 20:49:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B7Knj4w002795 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 7 Dec 2021 15:49:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B658DC08094; Tue,  7 Dec 2021 20:49:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B22F3C08088
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 20:49:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9D082811E7A
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 20:49:45 +0000 (UTC)
Received: from omta04.suddenlink.net (omta04.suddenlink.net [208.180.40.74])
	by relay.mimecast.com with ESMTP id us-mta-586-woqY2Cu1OD-aodiKpJqFSQ-1;
	Tue, 07 Dec 2021 15:49:44 -0500
X-MC-Unique: woqY2Cu1OD-aodiKpJqFSQ-1
Received: from wb5agz.lan ([47.217.109.16]) by dalofep02.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20211207204746.DVEZ9837.dalofep02.suddenlink.net@wb5agz.lan>
	for <blinux-list@redhat.com>; Tue, 7 Dec 2021 14:47:46 -0600
Received: from martin by wb5agz.lan with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>) id 1muhNK-0007k7-8u
	for blinux-list@redhat.com; Tue, 07 Dec 2021 14:47:46 -0600
To: blinux-list@redhat.com
Subject: Using lynx to Dump a text file in to a Web Form
MIME-Version: 1.0
Date: Tue, 07 Dec 2021 14:47:46 -0600
Message-Id: <E1muhNK-0007k7-8u@wb5agz.lan>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep02.suddenlink.net from [47.217.109.16] using ID
	martin.m@suddenlink.net at Tue, 7 Dec 2021 14:47:46 -0600
X-CM-Analysis: v=2.4 cv=D4skltdj c=1 sm=1 tr=0 ts=61afc872 cx=a_idp_d
	a=vgFQBM89cIsqvvZDmBSopQ==:117 a=vgFQBM89cIsqvvZDmBSopQ==:17
	a=kj9zAlcOel0A:10 a=IOMw9HtfNCkA:10 a=wC5lZz0xddkA:10
	a=XAMzbEDvu_47di7LO5UA:9 a=CjuIK1q_8ugA:10
	a=pHzHmUro8NiASowvMSCR:22 a=6VlIyEUom7LUIeUMNQJH:22
X-CM-Envelope: MS4xfGqkq9beIGfd1kwV/l7gr6Gq1AjwnpKs75ZRingPEbKsSFrOCP5cEKWrUmIMfoZhxUxuRHjLxqhgzDC8FVrjtQLxKjHykecikXAt+kWZBueYJyizTWsU
	zZyapwJAEPKhPl7CJiXIWEQqRs1EQJ+X8Y/4ACqOiu1DmIB3MKqT82NRy/roHmkGtvPMXgTd/AhkWQ==
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <29765.1638910066.1@localhost>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I once knew a key sequence one could run in a case of having a
multi-line form such that one could dump a formatted text file in
to that form.

	I have forgotten what a person does but the case where
this works is let's say, a situation where you are prompted to
enter a message followed by a bunch of empty lines that fill as
you type.

	You type what to put in to those lines and then bring up
the web page and go to the input form and then I think lynx
prompts for the name of your text file and you type that in and
off it goes.  One usually ends up with the basic format of your
file neatly filling the form which you can then just send.

	If lynx is the browser, what is the correct procedure to
do this?

	Thanks.

Martin McCormick

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

