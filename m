Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8AC03174ED9
	for <lists+blinux-list@lfdr.de>; Sun,  1 Mar 2020 19:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583086066;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JGVmVweJMtYuUwsoSmSpvBSdxEdLZV3Xj5OZBcplRgQ=;
	b=C6cr4i6IikYBsihCz/MxiuoPUqD7udE2PUmuPA7vmd2GA6DR85GeqA2vmQTg+Q+z1z9WvI
	nwc4mW6gSvtNBVIxlCqgOJFJU6y0IAwfn/j0cvRjCH5K92OHKF+aBrkaF/QZOE7wgoNOwI
	fU6QZfU6LlujF2qE+U9sAu3Y6AlLy/k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-62-tIPN5NvAM-WWXicWO-wYCQ-1; Sun, 01 Mar 2020 13:07:44 -0500
X-MC-Unique: tIPN5NvAM-WWXicWO-wYCQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 63138189F760;
	Sun,  1 Mar 2020 18:07:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C4261001B28;
	Sun,  1 Mar 2020 18:07:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 086BB1809567;
	Sun,  1 Mar 2020 18:07:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021I7aTK001169 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 13:07:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1AD5C83B61; Sun,  1 Mar 2020 18:07:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16E3C7D567
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 18:07:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDD30101A55A
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 18:07:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-18-SnKAihtINt22F5GGKJi3Vw-1; Sun, 01 Mar 2020 13:07:31 -0500
X-MC-Unique: SnKAihtINt22F5GGKJi3Vw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48VrpW36D7z1dTl
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 13:07:31 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48VrpW1HWFzcbc; Sun,  1 Mar 2020 13:07:31 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48VrpW0l1xzcbW
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 13:07:31 -0500 (EST)
Date: Sun, 1 Mar 2020 13:07:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Want to try a GUI. Which one is best?
In-Reply-To: <alpine.NEB.2.21.2003011300110.6533@panix1.panix.com>
Message-ID: <alpine.NEB.2.21.2003011304590.6533@panix1.panix.com>
References: <20200301111759.GA12551@abilitiessoft>
	<alpine.NEB.2.21.2003010712220.19233@panix1.panix.com>
	<CAO2sX310Obvpt=w1X=1+Tz7eWgXC5aiBz=53nond=1i0PpfSog@mail.gmail.com>
	<20200301173057.GA14419@abilitiessoft>
	<alpine.NEB.2.21.2003011300110.6533@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 021I7aTK001169
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The most useful approach for accessibility users unless they use a mouse
is to install startx and ratpoison and then have ratpoison run which
brings up startx and startx then brings up mate.  The ratpoison is a
package which when you get it working makes startx accessible more so
than it already is.

On Sun, 1 Mar 2020, Linux for blind general discussion wrote:

> Date: Sun, 1 Mar 2020 13:02:51
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Want to try a GUI. Which one is best?
>
> This is really something debian does not provide.  Archlinux that can be
> done with installing a few of the correct packages and I don't remember
> the list now didn't save it in braille.  Now, with slint you can do all
> of that and that's one of the installation choices.  Slint doesn't have
> gnome either but does have mate.
> https://slint.fr/ is the first url and search the page for accessibility
> and read what you find.
>
> On Sun, 1 Mar 2020, Linux for blind general discussion wrote:
>
> > Date: Sun, 1 Mar 2020 12:30:57
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Subject: Re: Want to try a GUI. Which one is best?
> >
> > Hello,
> >
> > Thanks for all your suggestions. I have Debian Buster, command-line only. I may just wait until the next Debian testing is available and see if they include Mate.
> > I
> > will be using brltty, and no speech.
> >
> > This leaves one concern in my original message for discussion. I want Debian to boot into the command-line, but I want to have a command or script for starting
> > the GUI when I need it.
> >
> > Thanks,
> > John J. Boyer <john.boyer@abilitiessoft.org>
> >
> > On Sun, Mar 01, 2020 at 01:54:07PM +0000, Linux for blind general discussion wrote:
> > > Best I can tell, Mate 1.24 is currently available in both Debian
> > > Testing(aka Bull's Eye which will eventually become Debian 11) and
> > > Debian Unstable(aka Sid).
> > >
> > > It's unlikely something as big as a new version of Mate will make it
> > > into Debian 9 aka Stretch or oldstable or Debian 10 aka Buster or
> > > Stable as Debian priortizes stability over cutting edge, though it
> > > might make it into backports(more likely for Buster than for Stretch,
> > > but I confess to not knowing how long Debian supports Oldstable when a
> > > new Stable is released).
> > >
> > > That said, while Orca, the primary, and possibly only, graphical
> > > screen reader for Linux, is officially part of Gnome and persumably
> > > optimized for that environment, and probably works so well with Mate
> > > due to Mate's origins as a Gnome fork(as I understand it, Gnome 3
> > > brought many controversial changes to look and feel and Mate startedas
> > > a way to keep the Gnome 2.x look and feel in an updated environment),
> > > Orca should, in theory, be able to work with any GTK-based Desktop
> > > Environment or Window Manager, though anything QT-based(KDE chief
> > > among them) is currently a bit hit or miss.
> > >
> > > Gnome or Mate might be the best options for a beginner as they're the
> > > most well documented DEs for using them with Orca, but Knoppix using a
> > > combination of LXDE and Orca when launching a full Desktop seems to
> > > work well, and I've heard people have had success with the ratpoison
> > > window Manager.
> > >
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> >
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

