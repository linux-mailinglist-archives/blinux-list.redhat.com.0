Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 19D24174ED4
	for <lists+blinux-list@lfdr.de>; Sun,  1 Mar 2020 19:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583085794;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z4KF8U/Mp3NMCObe00Df8C6ajQ3fJLxGuUKFI/EZYhA=;
	b=RwMByuWhU3c+Wrtc7q0Q0qN4aDGBMv4ygLGXzaRP6gLJMGtsYuhR5MUTE3x37fLZh4+91T
	J9IGkGpDjmv2Foe9+HJG6hE1OJahswAqHnP9yaA3TF0nF73qmFYnZfYvrM/PG3uuXMBl8u
	NCIjrr9cwCfcKCOK5SFimoYrscDCUHE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-pXTWbgsuPsqyBfN9mJZ75w-1; Sun, 01 Mar 2020 13:03:11 -0500
X-MC-Unique: pXTWbgsuPsqyBfN9mJZ75w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 65787800D50;
	Sun,  1 Mar 2020 18:03:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA3955C296;
	Sun,  1 Mar 2020 18:03:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CE171809567;
	Sun,  1 Mar 2020 18:03:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021I2vQc001063 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 13:02:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 12F3383B61; Sun,  1 Mar 2020 18:02:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EA677D567
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 18:02:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3816800294
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 18:02:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-112-xnD8JLxgOB2z_rmp8Ln9BA-1; Sun, 01 Mar 2020 13:02:52 -0500
X-MC-Unique: xnD8JLxgOB2z_rmp8Ln9BA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48Vrj82cWWz1dFd
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 13:02:52 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48Vrj80k2bzcbc; Sun,  1 Mar 2020 13:02:52 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48Vrj7747NzcbV
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 13:02:51 -0500 (EST)
Date: Sun, 1 Mar 2020 13:02:51 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Want to try a GUI. Which one is best?
In-Reply-To: <20200301173057.GA14419@abilitiessoft>
Message-ID: <alpine.NEB.2.21.2003011300110.6533@panix1.panix.com>
References: <20200301111759.GA12551@abilitiessoft>
	<alpine.NEB.2.21.2003010712220.19233@panix1.panix.com>
	<CAO2sX310Obvpt=w1X=1+Tz7eWgXC5aiBz=53nond=1i0PpfSog@mail.gmail.com>
	<20200301173057.GA14419@abilitiessoft>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 021I2vQc001063
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is really something debian does not provide.  Archlinux that can be
done with installing a few of the correct packages and I don't remember
the list now didn't save it in braille.  Now, with slint you can do all
of that and that's one of the installation choices.  Slint doesn't have
gnome either but does have mate.
https://slint.fr/ is the first url and search the page for accessibility
and read what you find.

On Sun, 1 Mar 2020, Linux for blind general discussion wrote:

> Date: Sun, 1 Mar 2020 12:30:57
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Want to try a GUI. Which one is best?
>
> Hello,
>
> Thanks for all your suggestions. I have Debian Buster, command-line only. I may just wait until the next Debian testing is available and see if they include Mate.
> I
> will be using brltty, and no speech.
>
> This leaves one concern in my original message for discussion. I want Debian to boot into the command-line, but I want to have a command or script for starting
> the GUI when I need it.
>
> Thanks,
> John J. Boyer <john.boyer@abilitiessoft.org>
>
> On Sun, Mar 01, 2020 at 01:54:07PM +0000, Linux for blind general discussion wrote:
> > Best I can tell, Mate 1.24 is currently available in both Debian
> > Testing(aka Bull's Eye which will eventually become Debian 11) and
> > Debian Unstable(aka Sid).
> >
> > It's unlikely something as big as a new version of Mate will make it
> > into Debian 9 aka Stretch or oldstable or Debian 10 aka Buster or
> > Stable as Debian priortizes stability over cutting edge, though it
> > might make it into backports(more likely for Buster than for Stretch,
> > but I confess to not knowing how long Debian supports Oldstable when a
> > new Stable is released).
> >
> > That said, while Orca, the primary, and possibly only, graphical
> > screen reader for Linux, is officially part of Gnome and persumably
> > optimized for that environment, and probably works so well with Mate
> > due to Mate's origins as a Gnome fork(as I understand it, Gnome 3
> > brought many controversial changes to look and feel and Mate startedas
> > a way to keep the Gnome 2.x look and feel in an updated environment),
> > Orca should, in theory, be able to work with any GTK-based Desktop
> > Environment or Window Manager, though anything QT-based(KDE chief
> > among them) is currently a bit hit or miss.
> >
> > Gnome or Mate might be the best options for a beginner as they're the
> > most well documented DEs for using them with Orca, but Knoppix using a
> > combination of LXDE and Orca when launching a full Desktop seems to
> > work well, and I've heard people have had success with the ratpoison
> > window Manager.
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

