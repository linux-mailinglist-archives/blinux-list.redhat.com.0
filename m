Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5575712A8E8
	for <lists+blinux-list@lfdr.de>; Wed, 25 Dec 2019 19:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577299775;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=biMrbmECebOY5ZZ0br0ZUqMTru+Gl5CZ1jAXgB1JSgo=;
	b=ZIdWbnq1/qRIiR59oHBOyVp6zFQ7Ogy/Dr14yYeQq8lAnaAQaXj3bearKVXMWku79bEPBc
	gW0r2RfN7cPPEZvpqeZxjRDuSrJx2zNHtdnHmgPLInxWpnF0S9ZnTcvt4vmYC1xoWArxIM
	12C3hDIrEyqzLhLviasWofYu1cZ1K4Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-Laj3LBuFNXW3-pXGTStTNw-1; Wed, 25 Dec 2019 13:49:33 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EC84107ACC4;
	Wed, 25 Dec 2019 18:49:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA0B560BE2;
	Wed, 25 Dec 2019 18:49:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E9EFE825D9;
	Wed, 25 Dec 2019 18:49:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBPIn4c3019660 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Dec 2019 13:49:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 103F92166B28; Wed, 25 Dec 2019 18:49:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C01A2166B27
	for <blinux-list@redhat.com>; Wed, 25 Dec 2019 18:49:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4706E801E76
	for <blinux-list@redhat.com>; Wed, 25 Dec 2019 18:49:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-225-cePr-uxcOSm3KsmjyfP3jA-1; Wed, 25 Dec 2019 13:48:59 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47jhvG5Xtvz1G07
	for <blinux-list@redhat.com>; Wed, 25 Dec 2019 13:48:58 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47jhvG46gvzcbc; Wed, 25 Dec 2019 13:48:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47jhvG3kWzzcbV
	for <blinux-list@redhat.com>; Wed, 25 Dec 2019 13:48:58 -0500 (EST)
Date: Wed, 25 Dec 2019 13:48:58 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: archlinux lxde ratpoison adventure
In-Reply-To: <alpine.NEB.2.21.1912250949140.12663@panix1.panix.com>
Message-ID: <alpine.NEB.2.21.1912251344550.21769@panix1.panix.com>
References: <alpine.NEB.2.21.1912241239030.23485@panix1.panix.com>
	<20191225111107.5a80ffdc@telaviv1.shlomifish.org>
	<alpine.NEB.2.21.1912250846470.24572@panix1.panix.com>
	<alpine.NEB.2.21.1912250949140.12663@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: cePr-uxcOSm3KsmjyfP3jA-1
X-MC-Unique: Laj3LBuFNXW3-pXGTStTNw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBPIn4c3019660
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

since I used festival rather than espeak as the default (for some reason
no flavor of speech-dispatcher likes espeak) I have to run sudo -i
festival --server & before running startx.  I have the ratpoison line in
.xinitrc after the startlxde line and if ratpoison is running it's doing
so very quietly.  Now I need to read up on festival and find out how to
set a default voice for it.  Then I think I'll have a stable accessible
lxde environment available.

On Wed, 25 Dec 2019, Linux for blind general discussion wrote:

> Date: Wed, 25 Dec 2019 09:55:09
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: archlinux lxde ratpoison adventure
>
> It turns out no need to phone be my eyes this time.  I got lxde to start
> up using startx and I got orca talking and orca is now set up.  I don't
> know if ratpoison came up yet.  Something else is strange probably in
> lxde.  The alt-f2 key combination works but other key combinations you
> might use in mate don't appear to work.  Now I need to read up on lxde
> keyboard shortcuts and then I'll start searching this system and find
> out what utilities the lxde environment offers.  I installed lxde rather
> than lxde-gtk3 since on the archwiki lxde-gtk3 is rated as experimental
> so far.  I may try that environment later to compare performance with
> standard lxde with respect to accessibility.
>
> On Wed, 25 Dec 2019, Linux for blind general discussion wrote:
>
> > Date: Wed, 25 Dec 2019 08:53:43
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Subject: Re: archlinux lxde ratpoison adventure
> >
> > I'm about to phone be my eyes after this holiday and find out what's
> > going on with the screen.  I did a bit more reading so installed
> > xorg-init and its dependencies leaving twm out and installing xterm
> > since I've read ratpoison and xterm get along well enough.  I got
> > speech-dispatcher-git and festival working and have orca on the machine
> > too.  After running startx and hearing the information speak about xorg
> > and having speech go silent I don't have orca coming up once alt-f2 and
> > orca is run.  I'll check if gsettings is on this machine and try a
> > couple orca accessibility commands done by gsettings to see if those
> > help before calling be my eyes though since those may help.  I prefer
> > logging in on command line then only starting up graphical if I need
> > something graphical can do better since that way I'm already logged in.
> >
> > On Wed, 25 Dec 2019, Linux for blind general discussion wrote:
> >
> > > Date: Wed, 25 Dec 2019 04:11:07
> > > From: Linux for blind general discussion <blinux-list@redhat.com>
> > > To: Linux for blind general discussion <blinux-list@redhat.com>
> > > Subject: Re: archlinux lxde ratpoison adventure
> > >
> > > Hi,
> > >
> > > On Tue, 24 Dec 2019 12:42:25 -0500
> > > Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > >
> > > > I can't yet get this combination running since ratpoison can't find a
> > > > DISPLAY yet.  The linux system had a command line environment earlier and
> > > > had no need of a DISpLAY at that time.  I'm curious to know if ratpoison
> > > > will be better than xorg and I've already got ratpoison in my .xinitrc
> > > > file.
> > > >
> > >
> > > ratpoison is a window manager and depends on xorg (see
> > > https://en.wikipedia.org/wiki/Ratpoison ) and does not replace it.
> > >
> > > Just my 2 cents.
> > >
> > > --
> > >
> > > Shlomi Fish       https://www.shlomifish.org/
> > > Apple Inc. is Evil - https://www.shlomifish.org/open-source/anti/apple/
> > >
> > > Officer: Captain, there?s a new star system a few thousands of lightyears
> > > away, and its sun has an irregular shape.
> > >     ? http://www.shlomifish.org/humour/Star-Trek/We-the-Living-Dead/
> > >
> > > Please reply to list if it's a mailing list post - http://shlom.in/reply .
> > >
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

