Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6467345AE82
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 22:36:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637703374;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qoRYiKtdqFZfjQD9Z4ciUpRT5voPe475UTtcloFbI78=;
	b=BEO6R5b1h/dIn2HHGNj1NP0wM9sd2QqWrc80tEBpqOlzCBZ5XI3ep1YvWlTMzU9o0e1JLt
	MFSTmvqcLyn+XIMQ2bsJ3HohpECYB7L4udMc6qAJTRD/yqbOXAUuCGJ+25nCoesnjHMhR9
	1iTvOp9VZC4rW0jJ0LKOcAsSpgtz4RM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-505--1X8t89iMseEVnR7kEFIpQ-1; Tue, 23 Nov 2021 16:36:11 -0500
X-MC-Unique: -1X8t89iMseEVnR7kEFIpQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0BBC681CB04;
	Tue, 23 Nov 2021 21:36:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D5A211045E84;
	Tue, 23 Nov 2021 21:36:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA9891809C81;
	Tue, 23 Nov 2021 21:35:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANLZnfY019521 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 16:35:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C3B481121318; Tue, 23 Nov 2021 21:35:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFA921121315
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 21:35:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 768A3802814
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 21:35:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-211-ROMoAw2fMRehM6GTfq6tIQ-1; Tue, 23 Nov 2021 16:35:44 -0500
X-MC-Unique: ROMoAw2fMRehM6GTfq6tIQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HzHW42Qf2zLjv
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 16:35:44 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HzHW41kYlzcbc; Tue, 23 Nov 2021 16:35:44 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HzHW41N2NzcbP
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 16:35:44 -0500 (EST)
Date: Tue, 23 Nov 2021 16:35:44 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Ok, Jenux finally installed for me!
In-Reply-To: <B5680B56-6FCB-4768-9404-664C2D069970@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111231630150.11512@panix1.panix.com>
References: <B5680B56-6FCB-4768-9404-664C2D069970@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This should be a one-time procedure.  key in alt-f2 then key in orca
--setup.
Does orca start talking?
I don't know what desktop choice you made mate is a good one and kde last
time I knew didn't have orca in it so orca would have to be downloaded and
installed with all dependencies in kde and even kde-accessibility list
can't provide any guideance for use with orca since that hasn't been
researched on that list.  If you chose a base install, you have no desktop
and you also have no orca on your system.
 On Tue, 23 Nov 2021, Linux for blind general discussion wrote:

> Hi all,
>
> I finally had success installing Jenux, however,, now that I have it on the desktop, I cannot get Orca to talk. If anyone knows how to get it going, I'd be happy to keep the system for the time being.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from my MacBook Air
>
> Contact:
>
> Phone: +27 (0)60 525 9181 <tel://+27605259181>
>
> Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
>
> Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
>
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

