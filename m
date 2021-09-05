Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id CA15B40117D
	for <lists+blinux-list@lfdr.de>; Sun,  5 Sep 2021 22:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630873340;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O8tBxD9wEkWFYzTzGHOjd1pjxBf1qoMPcP46MaSy6IQ=;
	b=VBVBBcG3+auUw3qtba0U77UQpl6UkatKtbZSeiF1ns6Y5BV+2RCH58Rly79eJqyjFKJQaM
	FCxTeqml5umbw/Tpr6phpdKE8AcnOS7Zf9t0AzNZbDDDRRjhrOt+e9fKXPgffn8FyShA39
	zXpcDChgv3/2dRoVOvRIvt6Bfgy0wiI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-534-TIVz1xnSMRmcAACdbEMACw-1; Sun, 05 Sep 2021 16:22:19 -0400
X-MC-Unique: TIVz1xnSMRmcAACdbEMACw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55FD8107ACC7;
	Sun,  5 Sep 2021 20:22:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB9EE669ED;
	Sun,  5 Sep 2021 20:22:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 328B21809C98;
	Sun,  5 Sep 2021 20:22:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 185KM1uE015474 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Sep 2021 16:22:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 26C74200B660; Sun,  5 Sep 2021 20:22:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22085200AFD4
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 20:21:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85880185A794
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 20:21:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-553-EEs9SvJwMLaqklzg_KA25g-1; Sun, 05 Sep 2021 16:21:55 -0400
X-MC-Unique: EEs9SvJwMLaqklzg_KA25g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H2jcM0L1tz4Bc8;
	Sun,  5 Sep 2021 16:21:55 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H2jcL6knRzcbc; Sun,  5 Sep 2021 16:21:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H2jcL6MvMzcbW;
	Sun,  5 Sep 2021 16:21:54 -0400 (EDT)
Date: Sun, 5 Sep 2021 16:21:54 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No GNOME Terminal on Jenux?
In-Reply-To: <CAGz84JJ1Aww6=rZxMD3fvZijuZvKjo6LVoBoHwo7CPXeRmPu1w@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2109051617230.17810@panix1.panix.com>
References: <e532d780-aba9-1a5b-64f6-880ade71e38b@gmail.com>
	<18C382B6-0C05-4660-8ED0-29BCA802BACF@gmail.com>
	<83cfe362-91fe-b36c-cbc3-f4055cfb888e@gmail.com>
	<alpine.NEB.2.23.451.2109051343190.23445@panix1.panix.com>
	<CAGz84JJ1Aww6=rZxMD3fvZijuZvKjo6LVoBoHwo7CPXeRmPu1w@mail.gmail.com>
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
Cc: Daniel Nash <dnl.nash@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Maybe not, it could be Jenux install script didn't include gnome-terminal
in its packages download.  I wasn't able to find it on the system.  It
could be gnome renamed that package too.  Maybe systemctl disable
gdm.service and on reboot you go into fenrir for the terminal work on a
real console.  If Jenux included a startx script that can first enable gdm
then start gdm up that might work.  Also see what happens when you try
downloading gnome-terminal.  It could be it's available for installation
after all.


On Sun, 5 Sep 2021, Linux for blind general discussion wrote:

> I'd consider that if I had a running terminal; this seems not to be the case
> or, is that '-e' option to be used in a console?
>
>
> Thanks,
>
>
> Dave
>
>
>
>
> On Sun, Sep 5, 2021 at 1:44 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > Have you tried fenrir -e yet?
> >
> >
> > On Sun, 5 Sep 2021, Linux for blind general discussion wrote:
> >
> > > Thank you!  Must be something in the way Arch built GNOME.  It's pretty
> > hard
> > > to maintain a system without a working terminal.
> > >
> > >
> > >
> > > Cheers,
> > >
> > >
> > >
> > > Dave
> > >
> > >
> > >
> > >
> > > Sent from Slint GNU/Linux.  https://slint.fr/doc/HandBook.html for info
> > >
> > > On 9/5/21 1:27 PM, Linux for blind general discussion wrote:
> > > > I think this is a general prob;em in arch as I have run into the same
> > > > problem and have not found a work around for this.  Thanks.
> > > >
> > > > Matthew
> > > >
> > > >
> > > >
> > > >> On Sep 5, 2021, at 12:33 PM, Linux for blind general discussion
> > > >> <blinux-list@redhat.com> wrote:
> > > >>
> > > >> Greetings!
> > > >>
> > > >>
> > > >> I installed Jenux with GNOME, and find that the resulting system has
> > no
> > > >> usable GnOME terminal.  Whether I try starting it with,
> > "gnome-terminal",
> > > >> in the 'run' dialogue, or select it from the overview, nothing
> > happens.  I
> > > >> also tried getting a talking console on tty2, and find that such
> > consoles
> > > >> don't speak.  How can I get a talking terminal or console on this
> > system,
> > > >> besides reinstalling and choosing Mate?
> > > >>
> > > >>
> > > >>
> > > >> Thanks,
> > > >>
> > > >>
> > > >>
> > > >> Dave
> > > >>
> > > >>
> > > >>
> > > >>
> > > >> --
> > > >> Sent from Slint GNU/Linux.  https://slint.fr/doc/HandBook.html for
> > info
> > > >>
> > > >> _______________________________________________
> > > >> Blinux-list mailing list
> > > >> Blinux-list@redhat.com
> > > >> https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

