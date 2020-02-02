Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 4C25914FBBE
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 06:33:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580621611;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DYhRpXzXJ65/Lmb5+t28Ds07KjKD5lLFZSRKIgMoNbs=;
	b=IoN2+pR238VDFGJFwL3mQYY8iiKJSlfMGY6Se3c8Uxuqg/KG/L1b9Ozei6gICbwAeVSB/W
	tVSjKdwvqVTaUp88X6ZxgDW5umB8Hhdywb+6FFGyjOjKSHwE8hie8HuyLEY2IZezJEYGn8
	V14klcmMqIaXGOnCv7EQDV10eUle5YI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-4jCDbV8mMC2c11N_RluS1A-1; Sun, 02 Feb 2020 00:33:29 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 103CE800D41;
	Sun,  2 Feb 2020 05:33:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86A5B5C1D4;
	Sun,  2 Feb 2020 05:33:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DBFF418089C8;
	Sun,  2 Feb 2020 05:33:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0125X1VS013964 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Feb 2020 00:33:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8FDCB10EE6DC; Sun,  2 Feb 2020 05:33:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B20810EE6DA
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 05:32:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC84E1019808
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 05:32:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-219-VLRkOBrAMbOG8yya2hlQcQ-1; Sun, 02 Feb 2020 00:32:55 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 489KNl1sz4z1k7c
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 00:32:55 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 489KNl0P17zcbc; Sun,  2 Feb 2020 00:32:54 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 489KNk6xvCzcbW
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 00:32:54 -0500 (EST)
Date: Sun, 2 Feb 2020 00:32:54 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A Live Boot Image for the Mac that Talks
In-Reply-To: <CAO2sX32EXpxci1Y3q2Jch+Z75vdUx-cRQS2=dxdOOtBLiqY-yQ@mail.gmail.com>
Message-ID: <alpine.NEB.2.21.2002020031250.19173@panix1.panix.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
	<10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
	<E1iy5Fq-0006fl-BN@wb5agz>
	<CAO2sX32EXpxci1Y3q2Jch+Z75vdUx-cRQS2=dxdOOtBLiqY-yQ@mail.gmail.com>
MIME-Version: 1.0
X-MC-Unique: VLRkOBrAMbOG8yya2hlQcQ-1
X-MC-Unique: 4jCDbV8mMC2c11N_RluS1A-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0125X1VS013964
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

Older machines wouldn't have that capability.  One computer I have can
do it and the other computer cannot.  The difference is the flash bios
in each of the machines.  One permits it and the other does not.

On Sun, 2 Feb 2020, Linux for blind general discussion wrote:

> Date: Sat, 1 Feb 2020 22:04:36
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: A Live Boot Image for the Mac that Talks
>
> I don't have any experience with Macs or writing bootable images to
> USB sticks(I just burn isos to DVD using wodim when I need to make a
> new Linux disc), but my first two thoughts are:
>
> 1. Perhaps the Mac's bios isn't configured to allow booting from USB
> media. I know I've had to get sighted assistance to fix the bios boot
> order on every laptop and desktop I've acquired since going blind
> before I could boot installation media to install Linux... I even had
> to do it for a netbook that came pre-loaded with Ubuntu if memory
> serves.
>
> 2. I could be wrong, but I believe the files needed for making a
> CD/DVD bootable and making a USB stick bootable are different. If so,
> even a properly written iso might not result in a bootable USB stick
> if the iso only includes the files needed for booting from CD/DVD.
> Again, no experience with making bootable USB sticks, so I might be
> horribly mistaken.
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

