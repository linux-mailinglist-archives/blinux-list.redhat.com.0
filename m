Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 67A6D162B49
	for <lists+blinux-list@lfdr.de>; Tue, 18 Feb 2020 18:05:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582045502;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XIRrrwf1ZZiOVCFPqOys/CKUd9ACDsiQfi7XYMH0HIg=;
	b=e/0mCMlxOq5u1s+bcWhgMbW0ffrU8hr8NXE1PcoiccZi+MMYP27AgmRQug3+rTnNSfeXeg
	0sUMH6tKBRx2ul7INFHr8aSqfb/UU/F5L3vbHUYqmxdYzaKmBtiy9fSqn3c/ojj3/yaeQf
	Wx738j2vvy/VzNCKyWRHU0aDchuc9/4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-47-UyXAVXhHOpaI0p_oFohbiw-1; Tue, 18 Feb 2020 12:04:56 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12AA4108443A;
	Tue, 18 Feb 2020 17:04:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A60319E9C;
	Tue, 18 Feb 2020 17:04:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0D64835B0C;
	Tue, 18 Feb 2020 17:04:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01IH4aGp003442 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Feb 2020 12:04:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4F2DD206320F; Tue, 18 Feb 2020 17:04:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 483C92063209
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 17:04:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 15D5C8028B8
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 17:04:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-8-GkILq4MKPtmNw4DiehGBSg-1; Tue, 18 Feb 2020 12:04:31 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48MRzM19ZJzv0l
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 12:04:31 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48MRzL6ZQdzcbc; Tue, 18 Feb 2020 12:04:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48MRzL68CPzcbW
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 12:04:30 -0500 (EST)
Date: Tue, 18 Feb 2020 12:04:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: early warning I hope
In-Reply-To: <CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
Message-ID: <alpine.NEB.2.21.2002181202270.25429@panix1.panix.com>
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
MIME-Version: 1.0
X-MC-Unique: GkILq4MKPtmNw4DiehGBSg-1
X-MC-Unique: UyXAVXhHOpaI0p_oFohbiw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01IH4aGp003442
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Garbage!  For most of the time I have had excellent operating results
with archlinux and I'm not unique in the blind community on this count
either.  It breaks only occassionally and losOts less often than Windows.
 Windows can't even figure out the proper order to install its updates
when those become available.

n Tue, 18 Feb 2020, Linux for blind general discussion wrote:

> Date: Tue, 18 Feb 2020 07:32:04
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list <blinux-list@redhat.com>
> Subject: Re: early warning I hope
>
> Sorry but Archlinux is not something to use for someone blind using Linux,
> Debian stable maybe with backports, appimages, flatpaks and snaps packages
> if needed would be better with Mate having Compiz under if low vision,
> gnome-orca, brltty, espeak and so on are obviously recommended.
>
> Debian testing is also an option but I would avoid if possible.
>
> Ubuntu Mate however has the top out-of-the-box accessibility at a point
> that blind users could nearly install linux alone without any help, their
> mate menu from solus I think give them their edge, I wonder if Debian could
> use it.
>
> I was working on linux accessibility without being a coder, I tried to get
> vinux and sonar linux team or similar to move to a debian base hoping to
> add a few features that I kept hidden since I need to push a result as a
> whole to fix various Linux issues.
>
> Until then I sadly have to avoid to contribute or I would just make it
> worse.
>
> Le mar. 18 f?vr. 2020 04:07, Linux for blind general discussion <
> blinux-list@redhat.com> a ?crit :
>
> > I just ran a kernel update a few minutes ago on archlinux and tried
> > rebooting.
> > Some uuid cannot be found and I got thrown into an emergency shell.  All
> > of this of course without screen reader working.
> > I found this out as a result of talking to a be my eyes volunteer on the
> > phone after she examined my screen.
> > I have no idea what caused that and have minimal usb stuff connected to
> > the computer.  I had disconnected a flash drive from the computer thinking
> > the flash drive was the cause of the missing uuid but that wasn't the
> > case.
> > Fortunately I use solid state drives and have another different system on
> > one of them or I'd be offline for a while.
> > The volunteer didn't read me the long number after that uuid error.
> >
> >
> >
> > --
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

