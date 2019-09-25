Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F68BDF35
	for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2019 15:44:17 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2E3C68A1C95;
	Wed, 25 Sep 2019 13:44:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6935E1001B01;
	Wed, 25 Sep 2019 13:44:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E1EC64E589;
	Wed, 25 Sep 2019 13:44:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8PDeqN5013410 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Sep 2019 09:40:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8D00F6012C; Wed, 25 Sep 2019 13:40:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx04.extmail.prod.ext.phx2.redhat.com
	[10.5.110.28])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87CC5600C8
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 13:40:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2A9B691761
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 13:40:49 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 46dfMh2Pcwz1pMZ
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 09:40:48 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 46dfMh0np4zcbR; Wed, 25 Sep 2019 09:40:48 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 46dfMh0TYSzcbQ
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 09:40:48 -0400 (EDT)
Date: Wed, 25 Sep 2019 09:40:47 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: grub problem
In-Reply-To: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
Message-ID: <alpine.NEB.2.21.1909250936410.29382@panix1.panix.com>
References: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.28]); Wed, 25 Sep 2019 13:40:49 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]);
	Wed, 25 Sep 2019 13:40:49 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.28
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]); Wed, 25 Sep 2019 13:44:16 +0000 (UTC)

Probably grub isn't even installed on the problem computer.  This is why
when I do a linux install with grub I make it a point to uncomment that
TUNE line in grub configuration file so that way I hear some
grub-specific sounds when the computer boots if grub is actually
installed.  Try reinstalling linux on that problem machine making sure
you have enough disk space for it first.  Also if you have a good amount
of memory you don't need a swap partition 8G or above and you may
eventually need a swap file.

On Wed, 25 Sep 2019, Linux for blind general discussion wrote:

> Date: Wed, 25 Sep 2019 06:09:24
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: grub problem
>
> Hi.
> I don't know if I've written here about this before.
> I've got a hp prodesk 600 computer.
> I have installed windows.
> But I can't boot linux. I don't even get grub. when I boot the
> computer it boots into windows.
> It has worked on every computer I've had except this one.
> LInux works very good on this computer without windows installed.
>
>
> --
> Kristoffer Gustafsson
> Sal?ngsgatan 7a
> tel:033-12 60 93
> mobil: 0730-500934
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
