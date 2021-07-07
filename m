Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2EE6E3BECC7
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 19:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625677480;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pIX44F+oxShRHu7l9Z5ZTLEJvrwCcArhPxkCeyzW0Cc=;
	b=L4c7xFQGfwcw3B09xaFs95OHES+AADtkwTX4KOxp8+rmnPbs5kOp28PfgLsXlSDCtr723x
	kC44OsQ1gtzAMdYQ39Nk2jUim74EUDY4EHnyhQTzBJmnFcpo79VArYdsnYCKdck99IukHH
	5n1W62Sua35BS1WIH/u8pyTAsKntdAE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-554-VIkuVepsN1amBOavxSD9Tw-1; Wed, 07 Jul 2021 13:04:38 -0400
X-MC-Unique: VIkuVepsN1amBOavxSD9Tw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE2C91023F42;
	Wed,  7 Jul 2021 17:04:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DBB3A60854;
	Wed,  7 Jul 2021 17:04:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2CA424A712;
	Wed,  7 Jul 2021 17:04:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167H4QDD019697 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 13:04:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9DBBF2044710; Wed,  7 Jul 2021 17:04:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 99970204400E
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 17:04:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3DB189C7E0
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 17:04:23 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-319-gWYcCukZPBmt14AUMSH1Qw-1; Wed, 07 Jul 2021 13:04:21 -0400
X-MC-Unique: gWYcCukZPBmt14AUMSH1Qw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GKm4511MHzK1m
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:04:21 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GKm450Th7zcbc; Wed,  7 Jul 2021 13:04:21 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GKm45065rzcbP
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:04:20 -0400 (EDT)
Date: Wed, 7 Jul 2021 13:04:20 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting linux again
In-Reply-To: <372e8ea5-7c6f-b287-5907-5db16c2088df@schoeppi.net>
Message-ID: <alpine.NEB.2.23.451.2107071301410.4901@panix1.panix.com>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>
	<alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
	<372e8ea5-7c6f-b287-5907-5db16c2088df@schoeppi.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I expect you have non-standard hardware.  For most of the people that
install slint speech comes up on first boot and you have to turn it off in
the install process for those that don't want speech.



On Wed, 7 Jul 2021, Linux for blind general discussion wrote:

> Sure, you have to know how to start braille or speech when using the Debian
> installer. Thats true and also well documented ;-). But then you can use a
> very clear and simple and guided installation process which was not that
> simple AFAIK with e.g.Slint. The last time I tried Slint I had to enter
> commands in a shell which is not the case and not necessary with Debian where
> a guided installer can be used.
>
> But ofcourse I can be wrong, I tested Slint a few months ago and maybe I do
> not remember right.
>
> And ofcourse Slint has all things included regarding accessebility and can be
> used very well with a braille device or speech, no matter, Slint is also a
> very good choice regarding accessebility.
>
>
>
> Am 07.07.2021 um 17:33 schrieb Linux for blind general discussion:
> > Actually, debian does not have the most accessible installer.  For that,
> > it's either Slint or Jenux.
> > In order to get debian screen reader accessibility going, you have to know
> > about and use a boot parameter.  With slint and Jenux, no such boot
> > parameter is necessary.
> >
> >
> > On Wed, 7 Jul 2021, Linux for blind general discussion wrote:
> >
> >> Debian has the most accessible installer AFAIK, all other distros I know
> >> are
> >> not that easy to setup. So defenatly give Debian a try ;-).
> >>
> >> Cheers,
> >>
> >>    Schoep
> >>
> >>
> >>
> >> Am 07.07.2021 um 15:39 schrieb Linux for blind general discussion:
> >>> That's great news! I had seen a comment somewhere about debian no longer
> >>> having an accessible install but if it still does, I will definitely go to
> >>> that first.
> >>>
> >>>
> >>>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >>
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
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

