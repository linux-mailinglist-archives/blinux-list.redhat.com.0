Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B67826D1
	for <lists+blinux-list@lfdr.de>; Mon,  5 Aug 2019 23:26:41 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 95837315C011;
	Mon,  5 Aug 2019 21:26:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A28D52F2;
	Mon,  5 Aug 2019 21:26:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 607E418089C8;
	Mon,  5 Aug 2019 21:26:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x75LLJGj010392 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Aug 2019 17:21:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ED2FA10016EA; Mon,  5 Aug 2019 21:21:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E70C610016E8
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 21:21:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id C430583F3B
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 21:21:15 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 462W0V6zlRz1HtK
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 17:21:14 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 462W0V6GlMzcbR; Mon,  5 Aug 2019 17:21:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 462W0V6B0JzcbQ
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 17:21:14 -0400 (EDT)
Date: Mon, 5 Aug 2019 17:21:14 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No F Key Boot Menu
In-Reply-To: <CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
Message-ID: <alpine.NEB.2.21.1908051720430.2278@panix1.panix.com>
References: <20190805.195033.561.2@0.0.0.0>
	<CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.27]); Mon, 05 Aug 2019 21:21:16 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Mon, 05 Aug 2019 21:21:16 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Mon, 05 Aug 2019 21:26:40 +0000 (UTC)

The delete key can get you into bios on some systems too.

On Mon, 5 Aug 2019, Linux for blind general discussion wrote:

> Date: Mon, 5 Aug 2019 15:59:41
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: No F Key Boot Menu
>
> Often the escape key can be used to bring up a boot menu. That being
> said, there's usually an option in bios to set more than 1 boot drive,
> such that if the 1st 1 doesn't contain bootable media, it'll move onto
> the 2nd 1, etc.
>
> On 8/5/19, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > My bios:
> > Board: EVGA INTERNATIONAL CO.,LTD 131-HE-E995 1.0
> > UEFI: American Megatrends Inc. 2.08 06/28/2019
> > does not seem to have a function whereby you can select a device to boot
> > from using one of the function keys. Instead, one must physically go into
> > the bios and change boot order, if, for example, you wish to boot from a
> > flash drive to install an OS. And if that flash drive is subsequently
> > removed, the system will not boot, until you go into the bios and change the
> > boot order, again.
> > My question: is this normal bios behavior these days, or is something wrong
> > in my particular implementation. I turned off the secure boot function in
> > there. Would turning that on fix this? What else might I look for in the
> > bios to either (a) allow for falling back on different devices should one be
> > removed or (b) to allow the function key boot menu found in previous bios
> > implementations.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
