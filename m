Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id CD30980AF8
	for <lists+blinux-list@lfdr.de>; Sun,  4 Aug 2019 14:37:27 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 05D7030860A6;
	Sun,  4 Aug 2019 12:37:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41FDF5D704;
	Sun,  4 Aug 2019 12:37:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B285A1800202;
	Sun,  4 Aug 2019 12:37:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x74CZYJN000541 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Aug 2019 08:35:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7ADAB1000336; Sun,  4 Aug 2019 12:35:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 724D7100032C
	for <blinux-list@redhat.com>; Sun,  4 Aug 2019 12:35:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 476D1309DF0A
	for <blinux-list@redhat.com>; Sun,  4 Aug 2019 12:35:29 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 461gNJ4bXKz1SrH
	for <blinux-list@redhat.com>; Sun,  4 Aug 2019 08:35:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 461gNJ3qJgzcbR; Sun,  4 Aug 2019 08:35:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 461gNJ3mLJzcbQ
	for <blinux-list@redhat.com>; Sun,  4 Aug 2019 08:35:28 -0400 (EDT)
Date: Sun, 4 Aug 2019 08:35:28 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Those Rotten VGA BIOS Setup Screens
In-Reply-To: <E1huFN9-0004wX-1Y@wb5agz>
Message-ID: <alpine.NEB.2.21.1908040831280.41@panix1.panix.com>
References: <E1huFN9-0004wX-1Y@wb5agz>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.45]); Sun, 04 Aug 2019 12:35:29 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Sun, 04 Aug 2019 12:35:29 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Sun, 04 Aug 2019 12:37:26 +0000 (UTC)

I've heard of a weasel card which goes in the monitor connector and then
can send output to at least a printer and maybe a serial device.  Those
choosing this route to not bother anyone can expect to pay $400.00 for
the equipment and no I don't have any contact information for any
vendor.  I read about these back in the 1990's so those may have got
discontinued by now.

On Sun, 4 Aug 2019, Linux for blind general discussion wrote:

> Date: Sun, 4 Aug 2019 08:12:22
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Those Rotten VGA BIOS Setup Screens
>
> 	Are there any gadgets out there that one can connect to a
> Linux box which will hook to the VGA output of a computer needing
> BIOS setup work and output text so we don't have to bother other
> people to help us tinker?
>
> 	Another possibility might be to use a LCD monitor which
> generally has much less flicker than do the old CRT-style
> monitors and then snap a picture of the screen on an iPad and use
> something like Prismo which is an OCR program that, when you can
> get it to work works well.
>
> 	The longest shot I am thinking of is to buy a device from
> Epifan which can receive VGA video and converts it in to a .uvc
> file which is the same format that web cams use.
>
> 	I will have to dive in to perl and write a program that
> can at least decode the characters on that screen.  One nice
> thing about that is that it is guaranteed to be straight and in
> focus.
>
> 	I will have to learn about the .uvc format in order to
> expand one frame of video in to the bit map.
>
> 	I'm glad nobody is waiting on this project besides me.
>
> 	Even so, this is a perfect example of how technology
> works against you when you want to do something that all the
> suits who design this stuff didn't anticipate you needing to do.
>
> 	In this case, I've got some old Dell computers which need
> to always boot from CDROM before the hard drive.
>
> 	When you set them up this way, they revert back to a
> different sequence for some unknown reason after maybe 6 months
> or a year.  As computer users who are blind, it's much better all
> around if we can solve our own problems within reason.
>
> 	Some rack-mount servers do have serial-based setup
> methods but most desktops don't.
>
> 	Besides, if you have ever been in the same room as many
> rack-mount servers, you'll notice it's like being on the runway
> when a jet is about to take off.
>
> 	They are built to be in a rack with gobs of other hot
> servers and they move a ton of air with their tiny fast-moving
> fans.
>
> Anyway, thanks for any good ideas.
>
> Martin McCormick
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
