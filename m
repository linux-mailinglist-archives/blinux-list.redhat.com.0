Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D3D983C15C4
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jul 2021 17:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625757422;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M8upRFbPyci+E/j4ZDfXXlKL/nRCGIelmR1nIFEB0s8=;
	b=H2q1uAjakQtMvux+qaXA6LTtDUQuCgGJSJT0QjYVhwMxd0/wE+RXGFNGTerC5wC7Ki16YV
	4hQzxnpg8lKVbYprNNcsYQc5zkB8LujE5OcbRl6BsOy+Q0sH2yA2RxzOq0rnLJiNXpWfUw
	puNc7mspSXDrvYtTkwo/99nA9S/zJtM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-SKGdj6PKP6mCnB9x1KP7-Q-1; Thu, 08 Jul 2021 11:17:01 -0400
X-MC-Unique: SKGdj6PKP6mCnB9x1KP7-Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42071109D609;
	Thu,  8 Jul 2021 15:16:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4250460843;
	Thu,  8 Jul 2021 15:16:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8981A4EA29;
	Thu,  8 Jul 2021 15:16:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 168FGIsT018817 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 8 Jul 2021 11:16:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5502E10CD2D2; Thu,  8 Jul 2021 15:16:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F0B810CD2CE
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 15:16:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 822A189C5E3
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 15:16:14 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-213-U2s9M2ELNf6IwN22JyR_GQ-1; Thu, 08 Jul 2021 11:16:12 -0400
X-MC-Unique: U2s9M2ELNf6IwN22JyR_GQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GLKcq6Dfgz4QFk
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 11:16:11 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GLKcq64xbzcbc; Thu,  8 Jul 2021 11:16:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GLKcq62nLzcbW
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 11:16:11 -0400 (EDT)
Date: Thu, 8 Jul 2021 11:16:11 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting linux again
In-Reply-To: <52346499-23D5-4468-AD12-C5982DAD5CF1@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107081115170.20194@panix1.panix.com>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<CAGJxbF4KF7FJE0hRpR-zJyYHvgqcKQNhVVXPy3StT6v6w9Gv_Q@mail.gmail.com>
	<fb35b6c3-69c5-feb6-b26d-bf4a2369b59d@schoeppi.net>
	<52346499-23D5-4468-AD12-C5982DAD5CF1@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That means your driver hasn't been added to the non-free installer and
people will have to request that driver be added.


On Thu, 8 Jul 2021, Linux for blind general discussion wrote:

> I did use the non-Free installer. Same results.
> Devin Prater
> r.d.t.prater@gmail.com
>
> Https://devinprater.flounder.online
>
> > On Jul 7, 2021, at 9:24 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > Have you used the installer where all non-free firmwares are included or the normal installer? Maybe your hardware would be have been detected if you had used the non-free installer...
> >
> > Cheers,
> >
> >  Scoepp
> >
> > Am 07.07.2021 um 15:48 schrieb Linux for blind general discussion:
> >> Just make sure Debian supports all of your hardware first. My Acer
> >> Espire E-1574... or 1575... worked on Arch install but not when trying to
> >> install Debian. Also be aware that many packages will probably be versions
> >> out of date of upstream, so missing features and possible fixes. Besides
> >> that it would probably be a good console system.
> >> Devin Prater
> >> r.d.t.prater@gmail.com
> >> gemini://tilde.pink/~devinprater/
> >> On Wed, Jul 7, 2021 at 8:40 AM Linux for blind general discussion <
> >> blinux-list@redhat.com> wrote:
> >>> That's great news! I had seen a comment somewhere about debian no longer
> >>> having an accessible install but if it still does, I will definitely go to
> >>> that first.
> >>>
> >>>
> >>>
> >>> --
> >>> Cheryl
> >>>
> >>> May the words of my mouth
> >>> and the meditation of my heart
> >>> be acceptable to You, Lord,
> >>> my rock and my Redeemer.
> >>> (Psalm 19:14 HCSB)
> >>>
> >>> On Wed, 7 Jul 2021, Linux for blind general discussion wrote:
> >>>
> >>>> Hi,
> >>>>
> >>>> I'd still use Debian because IMHO it is the best distro regarding
> >>>> accessiblity support, easy and uncomplicated installation for a blind
> >>> user
> >>>> with braille and speech, e.g. I am using Debian for more then 20 years
> >>> now
> >>>> and I not missed anything. I am also working in the console most of the
> >>> time.
> >>>>
> >>>> Cheers,
> >>>>
> >>>>  Schoepp
> >>>>
> >>>>
> >>>> Am 07.07.2021 um 14:37 schrieb Linux for blind general discussion:
> >>>>> I've been very busy the last few years and have been using the terminal
> >>> on
> >>>>> my Mac for a lot of the things I used to do in linux. Now I would like
> >>> to
> >>>>> get a laptop for linux again. I mostly want it for command-line use
> >>> rather
> >>>>> than for the gui though I suppose I may end up expanding to that at
> >>> some
> >>>>> point. I mostly used debian when I was using linux with a few
> >>> excursions
> >>>>> into arch. I am totally blind and use speech and braille but the more I
> >>> can
> >>>>> use braille, the happier I am. I used thinkpads a lot and also
> >>> converted
> >>>>> old Apple machines but I don't have a spare Apple computer right now
> >>> and
> >>>>> probably would go for Lenovo. Can somebody tell me which dists are now
> >>> the
> >>>>> best for installing linux, especially knowing that I want to use the
> >>>>> command line a lot? If I get a Lenovo with linux on it, am I probably
> >>> going
> >>>>> to want to reinstall anyway and how hard is that nowadays? Obviously
> >>> this
> >>>>> email is prompted a lot by the thread about getting a laptop for linux.
> >>> It
> >>>>> really feels funny writing about th
> >>>> is
> >>>>>    as if I was a complete novice when I used to install and set up
> >>> systems
> >>>>> all the time but I guess one has to restart somewhere.
> >>>>>
> >>>>> The only problem I had with my Lenovos, and this was after years of
> >>> use,
> >>>>> was having the fan quit. Some of this was just the age of the Lenovos
> >>> but
> >>>>> it seemed to me that it was becoming harder to know how to set up the
> >>>>> system so the fan worked right where at the beginning of my use of
> >>> linux I
> >>>>> never had to pay attention to fan settings. It may of course be that it
> >>> was
> >>>>> mostly the age of the laptops - I got years of use out of them - but
> >>> I'm
> >>>>> still a bit hesitant because of that.
> >>>>>
> >>>>> I know this email covers a lot of territory - I'm basicly thinking out
> >>> loud
> >>>>> - so just respond to whatever you know and can address.
> >>>>>
> >>>>> Thanks for any suggestions.
> >>>>>
> >>>>> Thanks.
> >>>>>
> >>>>>
> >>>>> _______________________________________________
> >>>>> Blinux-list mailing list
> >>>>> Blinux-list@redhat.com
> >>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>>
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>>>
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

