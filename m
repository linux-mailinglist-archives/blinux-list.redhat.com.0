Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 6C5231CFCEC
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 20:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589307285;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3VzfAaiqiSSGjsh2WtGO2hVkI0uUlcjEKDKojK1BumQ=;
	b=cv5VvBpRP5YI2WUrDrofWfiQOF48Dx/RQaeZLTHqXiuUah5EMcteNdLOp3UsEvInUrFS5I
	NHvHgu5E+mtXlAjhkkKGdyUqyX1zTsRgWc0NI2AuVKvP8RJMFFyXjNgv+3vtZhHErmOlcr
	FG8MCzEwzeK3iE0RjpRnAvW1QPp73XM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-SM1_yMB9NbO49iMfMpX2-w-1; Tue, 12 May 2020 14:14:43 -0400
X-MC-Unique: SM1_yMB9NbO49iMfMpX2-w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 345ED46B;
	Tue, 12 May 2020 18:14:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1964160C05;
	Tue, 12 May 2020 18:14:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E959D1809547;
	Tue, 12 May 2020 18:14:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CIEZhx007154 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 14:14:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3AD5C1030047; Tue, 12 May 2020 18:14:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 372751030049
	for <blinux-list@redhat.com>; Tue, 12 May 2020 18:14:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCC52833B45
	for <blinux-list@redhat.com>; Tue, 12 May 2020 18:14:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-446-1K-JsPu8Py2qAsklpLTZpQ-1; Tue, 12 May 2020 14:14:28 -0400
X-MC-Unique: 1K-JsPu8Py2qAsklpLTZpQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49M5YJ0hvSz1d4l
	for <blinux-list@redhat.com>; Tue, 12 May 2020 14:14:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49M5YJ0PHczcbc; Tue, 12 May 2020 14:14:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49M5YJ0GwJzcbV
	for <blinux-list@redhat.com>; Tue, 12 May 2020 14:14:27 -0400 (EDT)
Date: Tue, 12 May 2020 14:14:27 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Manjaro linux
In-Reply-To: <c638d1b2-f0c6-f973-1cbe-fe38897bbd3e@ukr.net>
Message-ID: <alpine.NEB.2.21.2005121413390.2382@panix1.panix.com>
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
	<alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
	<CAO2sX32dVWnC1F8EQuQef1_SPStF0=r1c-k+JSz4M+Jm7z82PQ@mail.gmail.com>
	<c33e7e92-9eb7-3b58-afb4-9285eb928b86@gmail.com>
	<c638d1b2-f0c6-f973-1cbe-fe38897bbd3e@ukr.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Last time I installed it, KaliLinux used espeak to install then once
install had been done, orca was enabled.

On Tue, 12 May 2020, Linux for blind general discussion wrote:

> Date: Tue, 12 May 2020 13:26:20
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Manjaro linux
>
> Hi Kyle.
>
> Details of the problem you described here (in the context of Ubuntu-MATE):
>
> https://bugs.launchpad.net/ubuntu-mate/+bug/1874283
>
> 12.05.20 19:58, Linux for blind general discussion ????:
> > On the other hand, to my knowledge, there is no distro that uses Orca
> >> to make a graphical installer accessible and that all distros that
> >> have accessible installers utilize either a text-mode screen reader or
> >> brltty to make a text-based installer accessible.
> >
> >
> > This isn't the case at all. Ubuntu uses Orca with Ubiquity, which is
> > completely accessible. I know, I just used it last week to install to a
> > rather old laptop for a client. There is a little problem getting the
> > installer working from the "Install Ubuntu 20.04" app icon on the MATE
> > version, but opening a terminal and running
> >
> > sudo -e ubiquity
> >
> > from there should speak without any issues. I believe someone told me this
> > method worked, and there's no reason I can see why it shouldn't work. I
> > can't comment on how well it works now, but OpenSUSE used to have an
> > installer that worked with Orca. Anakonda in Fedora also works with Orca,
> > but you need to switch from Wayland to an X session in order to make it
> > work. Not text mode, just X, which is no longer the default. In fact, of all
> > the major distros currently available, I think Debian is the only one that
> > uses a text-based installer with a text-mode screen reader. Well, there's
> > Arch, but its installation process is 100% manual, it has no automated
> > installer at all, so it really doesn't count. I do fully agree though that
> > Manjaro is probably not the best choice, and not only because of the
> > installer. That was actually the least of the problems that we who worked
> > with the Sonar project had with Manjaro, mostly after installation.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

