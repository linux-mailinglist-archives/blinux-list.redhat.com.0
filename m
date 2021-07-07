Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 17DF83BE8DB
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 15:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625664772;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Xxp5M2fUroeoHQhPsEzBIXA1npPCaOxngR0nB7OOdNo=;
	b=VcpWuGiUNJtebPM80NEgach74XbEY5OkjxTL6scubutoWymMUF3VN//D3/r9PRtaLgExPc
	BicJ8Lw8PRidRzJBkfJ+n5P85lTc7rxO9w9vIpHxp0yGuAZLkI1L93iaPUh+1Kj9nb7iSf
	BG7GtKyPPqwwjDggtmfn/GrhAlKQg/g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-455-yeONEQIiNM28DynXs8xmTw-1; Wed, 07 Jul 2021 09:32:50 -0400
X-MC-Unique: yeONEQIiNM28DynXs8xmTw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9FBC100CCC8;
	Wed,  7 Jul 2021 13:32:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75FB419C66;
	Wed,  7 Jul 2021 13:32:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B2F491832EAC;
	Wed,  7 Jul 2021 13:32:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167DWdni018861 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 09:32:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 70F292029F8F; Wed,  7 Jul 2021 13:32:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C7B42029F87
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:32:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14614180F6E1
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:32:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-248-NcVzK1YKOW-N7R4BTNL2BA-1; Wed, 07 Jul 2021 09:32:34 -0400
X-MC-Unique: NcVzK1YKOW-N7R4BTNL2BA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GKgMj4CCCz3lgS
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 09:32:33 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GKgMj4K1lzcbc; Wed,  7 Jul 2021 09:32:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GKgMj4FpXzcbP
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 09:32:33 -0400 (EDT)
Date: Wed, 7 Jul 2021 09:32:33 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting linux again
In-Reply-To: <d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
Message-ID: <alpine.NEB.2.23.451.2107070923430.21694@panix1.panix.com>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Both slint and jenux are available.  The slint distro has excellent
accessibility and its parent distribution slackware likely will be
upgrading to slackware 15.0 or 15.1 this year.  That parent distribution
was the first commercial linux distribution on the market.  While jenux is
for those that want to live on the bleeding edge, slint is not.  Slint and
slackware have slackbuilds.org for 3rd party scripts you can use to build
and install 3rd party software.  The archlinux answer to that is the aur
repository.  If you go with jenux, choose the base distribution when it
comes up for a console environment.  Jenux can be complicated if a user
that chose base install wants a graphic install later on on the same
machine without reinstalling the whole system.  The slint distribution is
different.  You get to run in console but slint installs a graphical
environment you can run from console with the startx script.

 On Wed, 7 Jul 2021, Linux for blind general discussion wrote:

> Hi,
>
> I'd still use Debian because IMHO it is the best distro regarding accessiblity
> support, easy and uncomplicated installation for a blind user with braille and
> speech, e.g. I am using Debian for more then 20 years now and I not missed
> anything. I am also working in the console most of the time.
>
> Cheers,
>
>   Schoepp
>
>
> Am 07.07.2021 um 14:37 schrieb Linux for blind general discussion:
> > I've been very busy the last few years and have been using the terminal on
> > my Mac for a lot of the things I used to do in linux. Now I would like to
> > get a laptop for linux again. I mostly want it for command-line use rather
> > than for the gui though I suppose I may end up expanding to that at some
> > point. I mostly used debian when I was using linux with a few excursions
> > into arch. I am totally blind and use speech and braille but the more I can
> > use braille, the happier I am. I used thinkpads a lot and also converted old
> > Apple machines but I don't have a spare Apple computer right now and
> > probably would go for Lenovo. Can somebody tell me which dists are now the
> > best for installing linux, especially knowing that I want to use the command
> > line a lot? If I get a Lenovo with linux on it, am I probably going to want
> > to reinstall anyway and how hard is that nowadays? Obviously this email is
> > prompted a lot by the thread about getting a laptop for linux. It really
> > feels funny writing about th
> is
> >    as if I was a complete novice when I used to install and set up systems
> >    all the time but I guess one has to restart somewhere.
> >
> > The only problem I had with my Lenovos, and this was after years of use, was
> > having the fan quit. Some of this was just the age of the Lenovos but it
> > seemed to me that it was becoming harder to know how to set up the system so
> > the fan worked right where at the beginning of my use of linux I never had
> > to pay attention to fan settings. It may of course be that it was mostly the
> > age of the laptops - I got years of use out of them - but I'm still a bit
> > hesitant because of that.
> >
> > I know this email covers a lot of territory - I'm basicly thinking out loud
> > - so just respond to whatever you know and can address.
> >
> > Thanks for any suggestions.
> >
> > Thanks.
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
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

