Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 595A01643AD
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 12:50:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582112999;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W5PYaC78CX050UQP9ZzQXYkckKKuQvPID/E74nHBfYw=;
	b=aPjN2XDTa9UEENfMx8r/xDia/4UuHPk3uO9vry7Hv7tcI9P9YfWWRfJewBSt/N1O3d2r9F
	YMqFPgrm0b4h9Ftqe26Kh94FJlsU0hnmQEb0D0GEMteQcHiXD80kyg2jJzD2VIGVnSDzDI
	wCR1ZJ/oUpzejUHQesf2avHH4j0JIhs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-HLG1Wmq2PJS0i5P5gU9fLA-1; Wed, 19 Feb 2020 06:49:56 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BA997189F760;
	Wed, 19 Feb 2020 11:49:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45D4362660;
	Wed, 19 Feb 2020 11:49:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 08ABE35B16;
	Wed, 19 Feb 2020 11:49:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JBniYl001001 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 06:49:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 661602026D69; Wed, 19 Feb 2020 11:49:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C8572063206
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 11:49:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C0DA101D252
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 11:49:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-234-MTj_eYAwMiaTMILB4s1FDQ-1; Wed, 19 Feb 2020 06:49:37 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48MwxX1Xy4zr8v
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 06:49:36 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48MwxW6w7Jzcbc; Wed, 19 Feb 2020 06:49:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48MwxW6KNSzcbV
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 06:49:35 -0500 (EST)
Date: Wed, 19 Feb 2020 06:49:35 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: early warning I hope
In-Reply-To: <CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
Message-ID: <alpine.NEB.2.21.2002190638280.12705@panix1.panix.com>
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
MIME-Version: 1.0
X-MC-Unique: MTj_eYAwMiaTMILB4s1FDQ-1
X-MC-Unique: HLG1Wmq2PJS0i5P5gU9fLA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JBniYl001001
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Archlinux has a track record such that accessibility tools break rarely
at most.
Since I have another type of system on another solid state drive I can
use archlinux with a large degree of safety.
Now, this is going to set your hair on fire.  I have even had good luck
with many packages from the aur repository.
Also, I got that archlinux system reinstalled and am thinking the solid
state disk in use may be near its time to retire and be replaced.
I had started using Unix in 1989 and learned some of the basics on the
bsd learn program.  Unfortunately it is now abandonware but the system I
accessed had it fully operational.
First graphical user interface I ran was gnopernicus with gnome so I've
been using linux for a few minutes.

Slackware accessibility has excellent support on slint@freelists.org.
It had support on the speakup list earlier and the
slackware@yahoogroups.com list until that list got taken over by
lesbians and that wiped that forum out.  The userlocal.com website and
linuxquestions.com website have good slackware support forums on them
too.

On Tue, 18 Feb 2020, Linux for blind general discussion wrote:

> Date: Tue, 18 Feb 2020 22:28:24
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list <blinux-list@redhat.com>
> Subject: Re: early warning I hope
>
> Do you realize that archlinux is intended to advanced users and that a
> rolling release might break things anytime when a blind user absolutely
> can't use his computer if the accessibility tools he need don't work ?
>
> On the other side, Slint is Slackware based, out of the 5 majors
> distributions bases, it's one of the two far less used so the user have
> barely no community to help him in case of issues.
>
> So Debian make sense since it's the base of 80% of all distributions so
> it's by far the widest community so support is a no brainer, also Debian
> name is stability and blinds need it at point way higher than average
> end-users.
>
> Ubuntu Mate stability is lower so LTS versions are heavily recommended for
> blinds, for regular not blind end-users version 19.10 have an edge for a
> few features but they should swap and keep 20.04 LTS as soon as released.
>
> For outdated accessibility stack it's mostly false, Debian stable with
> backports or Debian testing are even more updated than Ubuntu after all
> Ubuntu is based from Debian testing but it's slightly outdated since they
> have to make a release first.
>
> Knoppix Adrianne is not suited for an installed setup.
>
> For low vision users and color blinds, Mate tweak allow to add Compiz that
> add color filters color inversion and magnification shortcuts.
>
> For the rest, without knowing features I wanna implement, you may underlook
> Debian but with them, it may be game changer but I won't hand my jewels
> cause I need to release a whole set of ideas as a proof of concept,
> otherwise idiots would waste ideas that could change everything and solve
> many linux issues at the same time.
>
> Micha?l Caron Couturier
>
>
> Le mar. 18 f?vr. 2020, ? 04 h 07, Linux for blind general discussion <
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

