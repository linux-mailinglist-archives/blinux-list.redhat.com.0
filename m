Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD00850F7
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2019 18:22:17 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E867C6404C;
	Wed,  7 Aug 2019 16:22:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E71B260852;
	Wed,  7 Aug 2019 16:22:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DFB0E2551D;
	Wed,  7 Aug 2019 16:22:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x77GM47g019069 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Aug 2019 12:22:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A242660610; Wed,  7 Aug 2019 16:22:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9BCFB608AB
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 16:22:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id F35BA7FDFF
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 16:21:59 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 463cGH1wf0zrWm
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 12:21:59 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 463cGH0PQQzcbR; Wed,  7 Aug 2019 12:21:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 463cGH05xvzcbQ
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 12:21:58 -0400 (EDT)
Date: Wed, 7 Aug 2019 12:21:58 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No F Key Boot Menu
In-Reply-To: <6d9c88f5-439c-0859-c5b5-2da72c16e7d7@GMAIL.COM>
Message-ID: <alpine.NEB.2.21.1908071220070.28208@panix1.panix.com>
References: <20190805.195033.561.2@0.0.0.0>
	<CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
	<alpine.NEB.2.21.1908051720430.2278@panix1.panix.com>
	<20190805.212710.331.4@[0.0.0.0]>
	<b8453ab0-c221-daf9-6868-8cc121e6c843@gmail.com>
	<20190806.012851.270.6@[0.0.0.0]>
	<6d9c88f5-439c-0859-c5b5-2da72c16e7d7@GMAIL.COM>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.27]); Wed, 07 Aug 2019 16:22:00 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Wed, 07 Aug 2019 16:22:00 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Wed, 07 Aug 2019 16:22:16 +0000 (UTC)

The dells if I remember are the systems where as soon as you turn them
on you hit the delete key to get into bios.  I have no idea how the real
estate is laid out once you get into bios on those machines though.

On Wed, 7 Aug 2019, Linux for blind general discussion wrote:

> Date: Wed, 7 Aug 2019 07:08:49
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: No F Key Boot Menu
>
> So I'll leap in here. I've been trying to get my Dell Inspiron to boot from a
> Linux stick. No boot menu anywhere, all the articles say oh, you have to do
> this and this and that, but......will this actually work?
>
> On 06/08/2019 02:28, Linux for blind general discussion wrote:
> > I think I found the answer:
> > ? Fast Boot
> > On/Off
> > Enabling fast boot will make the initial post/boot slightly faster by
> > bypassing the boot
> > device check and using last boot HDD.
> > Default: On
> > So now I just need some eyeballs to help me get in there and turn that off.
> > ----- Original Message -----
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: blinux-list@redhat.com
> > Date: Mon, 5 Aug 2019 20:28:41 -0500
> > Subject: Re: No F Key Boot Menu
> >
> >> Yes, on my HP Envy, if I hit the F2 key at startup, I can select from a
> >> list of boot devices. I do this when I'm installing a new OS from my USB
> >> stick.
> >>
> >>
> >> On 8/5/19 4:27 PM, Linux for blind general discussion wrote:
> >>> Getting into the bios isn't the problem. It's selecting a device to boot
> >>> from which is.
> >>>
> >>> ----- Original Message -----
> >>> From: Linux for blind general discussion <blinux-list@redhat.com>
> >>> To: Linux for blind general discussion <blinux-list@redhat.com>
> >>> Date: Mon, 5 Aug 2019 17:21:14 -0400
> >>> Subject: Re: No F Key Boot Menu
> >>>
> >>>> The delete key can get you into bios on some systems too.
> >>>>
> >>>> On Mon, 5 Aug 2019, Linux for blind general discussion wrote:
> >>>>
> >>>>> Date: Mon, 5 Aug 2019 15:59:41
> >>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
> >>>>> To: blinux-list@redhat.com
> >>>>> Subject: Re: No F Key Boot Menu
> >>>>>
> >>>>> Often the escape key can be used to bring up a boot menu. That being
> >>>>> said, there's usually an option in bios to set more than 1 boot drive,
> >>>>> such that if the 1st 1 doesn't contain bootable media, it'll move onto
> >>>>> the 2nd 1, etc.
> >>>>>
> >>>>> On 8/5/19, Linux for blind general discussion <blinux-list@redhat.com>
> >>>>> wrote:
> >>>>>> My bios:
> >>>>>> Board: EVGA INTERNATIONAL CO.,LTD 131-HE-E995 1.0
> >>>>>> UEFI: American Megatrends Inc. 2.08 06/28/2019
> >>>>>> does not seem to have a function whereby you can select a device to
> >>>>>> boot
> >>>>>> from using one of the function keys. Instead, one must physically go
> >>>>>> into
> >>>>>> the bios and change boot order, if, for example, you wish to boot from
> >>>>>> a
> >>>>>> flash drive to install an OS. And if that flash drive is subsequently
> >>>>>> removed, the system will not boot, until you go into the bios and
> >>>>>> change the
> >>>>>> boot order, again.
> >>>>>> My question: is this normal bios behavior these days, or is something
> >>>>>> wrong
> >>>>>> in my particular implementation. I turned off the secure boot function
> >>>>>> in
> >>>>>> there. Would turning that on fix this? What else might I look for in
> >>>>>> the
> >>>>>> bios to either (a) allow for falling back on different devices should
> >>>>>> one be
> >>>>>> removed or (b) to allow the function key boot menu found in previous
> >>>>>> bios
> >>>>>> implementations.
> >>>>>>
> >>>>>> _______________________________________________
> >>>>>> Blinux-list mailing list
> >>>>>> Blinux-list@redhat.com
> >>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>>>>
> >>>>>
> >>>> --
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://www.redhat.com/mailman/listinfo/blinux-list
> >> --
> >> Christopher (CJ)
> >> Chaltain at Gmail
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
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
