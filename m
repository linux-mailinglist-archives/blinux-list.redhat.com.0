Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id B31B814FB2E
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 02:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580607336;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xtnM7EDynDXM9pdvu8PAFpd6CULVXgT06HCX0ZTk5p4=;
	b=AnL5rXSoI+rwfxRIgu4ZVt5ZzrxJF6rUwvYS5/sYwQ7SaJuME+10iEauGjz4f6aKE2qQnP
	/5ypBy5+ESSlWLKNs5UoxWZ3Hg3n61/DBhfOXnyOeCH+W8cQU9o768uJy+CMwDGdhYgEf9
	jS46iQwZFgcQIzHZf6jtV/oydwD9AlU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-411-8h8dG_NNMuWpEH84IORoCA-1; Sat, 01 Feb 2020 20:35:34 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D48C107ACC5;
	Sun,  2 Feb 2020 01:35:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6EC0F8479D;
	Sun,  2 Feb 2020 01:35:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D23EF1809567;
	Sun,  2 Feb 2020 01:35:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0121ZHGi009554 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Feb 2020 20:35:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 68AB31000D99; Sun,  2 Feb 2020 01:35:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 648BD10A50FE
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 01:35:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4DD785A337
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 01:35:15 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-124-xJvuFyWQPoacp4xFQ6wcGg-1; Sat, 01 Feb 2020 20:35:13 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 489D6S6HG5z1cRy
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 20:35:12 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 489D6S4DSrzcbc; Sat,  1 Feb 2020 20:35:12 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 489D6S3fGGzcbV
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 20:35:12 -0500 (EST)
Date: Sat, 1 Feb 2020 20:35:12 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A Live Boot Image for the Mac that Talks
In-Reply-To: <d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
Message-ID: <alpine.NEB.2.21.2002012026030.26479@panix1.panix.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
MIME-Version: 1.0
X-MC-Unique: xJvuFyWQPoacp4xFQ6wcGg-1
X-MC-Unique: 8h8dG_NNMuWpEH84IORoCA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0121ZHGi009554
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

If you have or can access another computer that isn't a mac, I'd check
the drive on that computer to see if it also fails.  If it fails, you
got a bad drive.  Flash drives can come from the factory and either work
temporarily or not at all.  Another possibility may be the usb port to
load the drive is bad so maybe try a different port.  Have you ever
booted a flash drive on that apple computer in the past?  If no, then
you're in new territory.  Apple uses a different disk format and I don't
know how this works with flash drives or if it's not relevant here.  If
you downloaded the sha512 file you'll have to fix its format a string of
' /out' is in that file and needs to be removed.  Then you can check the
iso integrity with sha512sum -c Jenux-xxx.iso.sha512.
If you can access the flash drive not booting it, an integrity check of
the iso on that flash drive after you copy the corrected .sha512 file to
the flash drive could be informative.

On Sat, 1 Feb 2020, Linux for blind general discussion wrote:

> Date: Sat, 1 Feb 2020 18:32:16
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: A Live Boot Image for the Mac that Talks
>
> I may be wrong, but I seem to remember instructions to do just that to create
> a bootable source for installing a distribution. Do you know where I can read
> about this subject?? Thanks!
>
>
> Al
>
>
> On 2/1/20 6:07 PM, Linux for blind general discussion wrote:
> > dd is not a good command for burning usb sticks and this is probably why
> > you had a failure.
> >
> > On Sat, 1 Feb 2020, Linux for blind general discussion wrote:
> >
> >> Date: Sat, 1 Feb 2020 18:01:42
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: blinux-list@redhat.com
> >> Subject: Re: A Live Boot Image for the Mac that Talks
> >>
> >> I suspect I am about to learn something so here's the deal:
> >>
> >> 	I downloaded the iso image and used dd to pour it in to a
> >> thumb drive
> >>
> >> dd if=imagefile of=/dev/sdd in this case and away it went.
> >>
> >> 	Several minutes later, the roughly 1-gig file ended up on
> >> the thumb drive.
> >>
> >> 	The mac is old enough not to have the T2 chip so if the
> >> drive is bootable, it should boot which it does not.
> >>
> >> 	If you plug the drive in, a message pops up stating that
> >> it is unreadable on this computer
> >>
> >>  How do I get the Mac to boot off of that drive?
> >>
> >> Martin McCormick
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
>
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

