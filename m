Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E6F46DA9D
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 19:00:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638986420;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E6LodEQf4kwG9EvkqrtZOCuzVvjYGZlLYAu6Pi13Zvk=;
	b=fv7SSYMTB2qcb+GGnTAWHEsEmsmFpKa6rhfgUQXpZk1Fijx5yr4VCMn3358IEWkRnskaA7
	IfxLNdyUYXqLPOn5HJYcM8MdtdKZyOEOUcGBpTheFYfHnBj9nQ0v0unbEFxeqPKyG+OGtc
	Nx3ukqwyzf7PDensD3OX5tr32m8HEKk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-93-z0jThOJDNXGii6vgAe0e4g-1; Wed, 08 Dec 2021 13:00:16 -0500
X-MC-Unique: z0jThOJDNXGii6vgAe0e4g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D861C2F24;
	Wed,  8 Dec 2021 18:00:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82F4D60843;
	Wed,  8 Dec 2021 18:00:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 77D421809CB9;
	Wed,  8 Dec 2021 18:00:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8Hwhxw013841 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 12:58:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3B91B2026D2F; Wed,  8 Dec 2021 17:58:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 379F82026D60
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 17:58:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10D1B2BD19F4
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 17:58:38 +0000 (UTC)
Received: from omta03.suddenlink.net (omta03.suddenlink.net [208.180.40.73])
	by relay.mimecast.com with ESMTP id us-mta-56-v-81y5yDOwahTCegS4vMSQ-1; 
	Wed, 08 Dec 2021 12:58:36 -0500
X-MC-Unique: v-81y5yDOwahTCegS4vMSQ-1
Received: from wb5agz.lan ([47.217.109.16]) by dalofep03.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20211208175835.IGZN2665.dalofep03.suddenlink.net@wb5agz.lan>
	for <blinux-list@redhat.com>; Wed, 8 Dec 2021 11:58:35 -0600
Received: from martin by wb5agz.lan with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>) id 1mv1D9-0001mn-Hw
	for blinux-list@redhat.com; Wed, 08 Dec 2021 11:58:35 -0600
To: blinux-list@redhat.com
Subject: Switching to a Different email Client
MIME-Version: 1.0
Date: Wed, 08 Dec 2021 11:58:35 -0600
Message-Id: <E1mv1D9-0001mn-Hw@wb5agz.lan>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep03.suddenlink.net from [47.217.109.16] using ID
	martin.m@suddenlink.net at Wed, 8 Dec 2021 11:58:35 -0600
X-CM-Analysis: v=2.4 cv=Ut0Ai88B c=1 sm=1 tr=0 ts=61b0f24c cx=a_idp_d
	a=vgFQBM89cIsqvvZDmBSopQ==:117 a=vgFQBM89cIsqvvZDmBSopQ==:17
	a=kj9zAlcOel0A:10 a=IOMw9HtfNCkA:10 a=wC5lZz0xddkA:10
	a=JbgYdXmGSK3jqA-T2boA:9 a=CjuIK1q_8ugA:10
	a=pHzHmUro8NiASowvMSCR:22 a=6VlIyEUom7LUIeUMNQJH:22
X-CM-Envelope: MS4xfJ4GWP1rg0u7brJ+3vcHG1CstFYC64kOGYosbqURdTsL3K/c7btRzPcnBUaYEkuoU32ZVykGRIRHRCf/qx7JkZlC5F51yzTgeMRk/YjQ20wPgeTPZqjh
	r91PHME+ZRXBYoc3s+lNvQStPWW1dMx/FDAAK2P9WMmD2wMvYzubV6jIin3CU06hzmT4LqWi2Z2i2g==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <6867.1638986315.1@localhost>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have been using nmh for at least 25 years and there are enough
growing pains now to think seriously about at least getting
another user agent to better handle html messages and
securelinks.

	The system is debian which means that it comes loaded
with exim4 which answers to the name sendmail or mail and is the
MTA found on debian distributions.

	I have it set to put individual messages in ~/Mail/folder
which I would like to keep as much of that as possible to be able
to still read about 25 years of archives at times.

	I am a command-line junky although I do live in the 21ST
century and have used gnome but I am not sure this system is
quite beefy enough for gnome so I'd like to stay in the
command-line world as in let's not have to boil the ocean so I
can occasionally click on a link that is in a html message.

	The situation which I am dealing with right this minute
is that I need to reset my password on a web site that our smart
thermostat uses and it sends you a confirmation message that has
a securelink in it.  Click that link and, hopefully, you get
approved to reset your password.  I don't know what happens
because i have yet to see it work.  The web page that the link
goes to defaults to a message stating that "This link has already
expired." which, I guess, changes to something else if you happen
to correctly respond to it.

	Basically, is there anything in the command-line world
that I could install which would help in these situations?

	If I could do that while still leaving nmh around, that
would be a big bonus.  The goal is to shred as little as possible
and be able to respond to securelinks in html.

Thanks in advance.

Martin McCormick

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

