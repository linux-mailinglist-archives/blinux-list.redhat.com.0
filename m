Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 061EB4014D1
	for <lists+blinux-list@lfdr.de>; Mon,  6 Sep 2021 03:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630892494;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YFXdzMzbdaH3dHPTw4AHJ+mfnZS808UUCOiqPbw4F8Q=;
	b=MEI4dXn/Eg8zahAQ/pJ1lF9maKJciWq634g4Mx5yXLA398dhD3PNLZ/H8yYfOtKEOexJFq
	RO47zPmmLp2H/5WHA9IQh1mzxmFBV6tHEU6WccIvBWoxq0FqrbTZXWvgJQ23eziw6qv2h/
	jixhiAq/Gsh7QbB1ZbBobQkDnVkBcZc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-314o1outN3yN1b3GtgX40w-1; Sun, 05 Sep 2021 21:41:32 -0400
X-MC-Unique: 314o1outN3yN1b3GtgX40w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E6BA010054F6;
	Mon,  6 Sep 2021 01:41:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A01F026E60;
	Mon,  6 Sep 2021 01:41:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55AC418087F1;
	Mon,  6 Sep 2021 01:41:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1861fOXu007086 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Sep 2021 21:41:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9917E216029A; Mon,  6 Sep 2021 01:41:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 892B9216239C
	for <blinux-list@redhat.com>; Mon,  6 Sep 2021 01:41:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93A8D89C7E0
	for <blinux-list@redhat.com>; Mon,  6 Sep 2021 01:41:21 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-211-nrqL6tpkOAqcEKBCvvg0BQ-1; Sun, 05 Sep 2021 21:38:13 -0400
X-MC-Unique: nrqL6tpkOAqcEKBCvvg0BQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H2rdJ5wpCz4MgF
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 21:38:12 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H2rdJ5h7gzcbc; Sun,  5 Sep 2021 21:38:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H2rdJ5fkGzcbW
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 21:38:12 -0400 (EDT)
Date: Sun, 5 Sep 2021 21:38:12 -0400
To: blinux-list@redhat.com
Subject: Re: No GNOME Terminal on Jenux? (fwd)
Message-ID: <alpine.NEB.2.23.451.2109052137590.5669@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



---------- Forwarded message ----------
Date: Sun, 5 Sep 2021 16:41:03
From: Daniel Nash <dnl.nash@gmail.com>
To: Jude DaShiell <jdashiel@panix.com>
Subject: Re: No GNOME Terminal on Jenux?

Hello:

Even if both gnome and gnome-extra groups are installed, the gnome
terminal package seems to be broken, in that it errors out giveing some
sort of dbus related error. For a terminal that is accessible with orca
and yasr, as well as fenrir with its pty emulation mode, try either
terminator or mate-terminal. I will add terminator as a package to the
default gnome and mate presets, since it is already included in the base
gui preset which uses ratpoison. Also, if you interupt the login process,
by logging in and immediately hitting control c before fenrir stops, you
can perform maintenence tasks in an environment where X cannot run for
whatever reason. Please let me know if you need any further assistance.

Sincerely:

Daniel Nash
On Sun, Sep 05, 2021 at 04:21:54PM -0400, Jude DaShiell wrote:
> Maybe not, it could be Jenux install script didn't include gnome-terminal
> in its packages download.  I wasn't able to find it on the system.  It
> could be gnome renamed that package too.  Maybe systemctl disable
> gdm.service and on reboot you go into fenrir for the terminal work on a
> real console.  If Jenux included a startx script that can first enable gdm
> then start gdm up that might work.  Also see what happens when you try
> downloading gnome-terminal.  It could be it's available for installation
> after all.
>
>
> On Sun, 5 Sep 2021, Linux for blind general discussion wrote:
>
> > I'd consider that if I had a running terminal; this seems not to be the case
> > or, is that '-e' option to be used in a console?
> >
> >
> > Thanks,
> >
> >
> > Dave
> >
> >
> >
> >
> > On Sun, Sep 5, 2021 at 1:44 PM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> > > Have you tried fenrir -e yet?
> > >
> > >
> > > On Sun, 5 Sep 2021, Linux for blind general discussion wrote:
> > >
> > > > Thank you!  Must be something in the way Arch built GNOME.  It's pretty
> > > hard
> > > > to maintain a system without a working terminal.
> > > >
> > > >
> > > >
> > > > Cheers,
> > > >
> > > >
> > > >
> > > > Dave
> > > >
> > > >
> > > >
> > > >
> > > > Sent from Slint GNU/Linux.  https://slint.fr/doc/HandBook.html for info
> > > >
> > > > On 9/5/21 1:27 PM, Linux for blind general discussion wrote:
> > > > > I think this is a general prob;em in arch as I have run into the same
> > > > > problem and have not found a work around for this.  Thanks.
> > > > >
> > > > > Matthew
> > > > >
> > > > >
> > > > >
> > > > >> On Sep 5, 2021, at 12:33 PM, Linux for blind general discussion
> > > > >> <blinux-list@redhat.com> wrote:
> > > > >>
> > > > >> Greetings!
> > > > >>
> > > > >>
> > > > >> I installed Jenux with GNOME, and find that the resulting system has
> > > no
> > > > >> usable GnOME terminal.  Whether I try starting it with,
> > > "gnome-terminal",
> > > > >> in the 'run' dialogue, or select it from the overview, nothing
> > > happens.  I
> > > > >> also tried getting a talking console on tty2, and find that such
> > > consoles
> > > > >> don't speak.  How can I get a talking terminal or console on this
> > > system,
> > > > >> besides reinstalling and choosing Mate?
> > > > >>
> > > > >>
> > > > >>
> > > > >> Thanks,
> > > > >>
> > > > >>
> > > > >>
> > > > >> Dave
> > > > >>
> > > > >>
> > > > >>
> > > > >>
> > > > >> --
> > > > >> Sent from Slint GNU/Linux.  https://slint.fr/doc/HandBook.html for
> > > info
> > > > >>
> > > > >> _______________________________________________
> > > > >> Blinux-list mailing list
> > > > >> Blinux-list@redhat.com
> > > > >> https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > >
> > > > > _______________________________________________
> > > > > Blinux-list mailing list
> > > > > Blinux-list@redhat.com
> > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > >
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
> > >
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

