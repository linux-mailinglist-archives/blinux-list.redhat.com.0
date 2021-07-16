Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id ABBD13CBB94
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 20:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626458516;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fz1UHqHPheQV1sjJjB1cK2Lh1ZiJe8vrzttH+XkRsOc=;
	b=YOBTVE3C7nKIom0KYPRgUaeJisWY+dWEB31rLxL25YOh31Ejr1+qbydvQaoiXZmFl5IQhe
	FoqasDrvgCYXqf2Ub+olVfEu2oI/PrVC6Iy/4EzFMad/DTW2ITYQPAMrSCU7g7DR4EXaKU
	+eO4TEHA8hoLxJwA6uB+iOiQIuVkAV8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-572-OI_3i5EYPtiPgFfMC-uQBQ-1; Fri, 16 Jul 2021 14:01:54 -0400
X-MC-Unique: OI_3i5EYPtiPgFfMC-uQBQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05F45100C612;
	Fri, 16 Jul 2021 18:01:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 725E45C1A1;
	Fri, 16 Jul 2021 18:01:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 094524EA2A;
	Fri, 16 Jul 2021 18:01:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GI1c5r014564 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 14:01:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4291A205FA98; Fri, 16 Jul 2021 18:01:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E399205FAA1
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 18:01:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 471BB8037AB
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 18:01:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-134-21pdgpzFO0-fnZ--EFGPdg-1; Fri, 16 Jul 2021 14:01:31 -0400
X-MC-Unique: 21pdgpzFO0-fnZ--EFGPdg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GRJvv160Pz3mn6
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 14:01:31 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GRJvv0bKYzcbc; Fri, 16 Jul 2021 14:01:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GRJvv0GJvzcbP
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 14:01:31 -0400 (EDT)
Date: Fri, 16 Jul 2021 14:01:30 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora pros and cons
In-Reply-To: <C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So long as you already know how to do all of that ahead of installation
you're golden.  Similar to Microsoft accessibility approach for my money
in that you have to know how to turn screen narrator on ahead of time too.
For my money when Apple released Tiger 10.4 Apple did it better.


On Fri, 16 Jul 2021, Linux for blind general discussion wrote:

> With Fedora, you at least know that the Mate installer is accessible. Ubuntu Mate?s installer isn?t accessible, with the latest 20.10 release. Fedora?s Mate spin, which I just installed today, *is* accessible. You still have to enable Assistive Technology support, and turn on Orca, and set a keyboard command for Orca, but that?s not too hard to do.
> Devin Prater
> r.d.t.prater@gmail.com
>
> Https://devinprater.flounder.online
>
> > On Jul 16, 2021, at 10:29 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > Hello, I am interested in advantages and disadvantages of Fedora vs Ubuntu-based linux.
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

