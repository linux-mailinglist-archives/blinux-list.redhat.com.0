Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 263154E1C1C
	for <lists+blinux-list@lfdr.de>; Sun, 20 Mar 2022 15:51:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647787902;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dSExu/6ztFKi8a56VcgFj3E1BXoyUIM2b38zn3CEgNM=;
	b=ZQaTjUuU46RIK2kxiucUkbDjE6HxtesnUGeD4yUYpbeU/AADz2L0Llz70kPjQMDClGwc6/
	Hrw6R/4s1XOWG2gzVdaP5y/XCuAu47csX5BEjOX2TOXt2Ac/TwOQ7Q4dogv6H8DCXXYiwx
	3xFrsI6vSPdoaIImck6coMSr3JCjyRA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-20-pMyX-uvrN860kG7TyIcqjw-1; Sun, 20 Mar 2022 10:51:38 -0400
X-MC-Unique: pMyX-uvrN860kG7TyIcqjw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E42B42A59567;
	Sun, 20 Mar 2022 14:51:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6A9E5141ADA5;
	Sun, 20 Mar 2022 14:51:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D32A31953560;
	Sun, 20 Mar 2022 14:51:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 20 Mar 2022 10:51:26 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: new listmember. Trying to get Jenux installed
In-Reply-To: <mailman.3068.1647768502.111201.blinux-list@redhat.com>
References: <mailman.3068.1647768502.111201.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3090.1647787889.111203.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I recommend you don't install that iso.  I recommend you wait for the next
version.
If you do install this version of the iso, your home directory will be
left unwriteable for files and directories because your home directory
will have been encrypted during installation with or without a key.  The
developer found this bug and has an image being tested which is supposed
to fix this bug so when you select not to encrypt, you don't run into
these problems.
The default screen reader on jenux for console use is fenrir and orca for
the desktop.  The default shell is zsh.  The shell can be changed to bash
if you wish post-install when you learn the chsh command and how to use
it.
I know all about this since I tried this installation as a test case a few
days ago.
You have been warned.


On Sun, 20 Mar 2022, Linux for blind general discussion wrote:

> Hi.
>
>
> I'm new here. I'm also new to Linux at least in terms of what I know about it.
> I've done very minor experiments on it off and on for a few years but just
> enough to be dangerous.
>
>
> Right now I'm trying to experiment with Jenux. I downloaded a very recent iso
>
>
> Jenux-2022.03.13-dual
>
>
> How do I install it? I'm installing it on a very low powered Atom D2550 based
> Mini ITX slim Intel Desktop Board. Powering it from an admittedly hilariously
> overpowered 400watt fanless seasonic power supply that cost more than this
> board by nearly twice, because I ripped this board out of an old nettop I
> upgraded for someone and I've been using it for Linux experiments. For storage
> I have a 160gb Toshiba MK something or other out of an old Asus EeePC904ha
> netbook from about 2007. I can force booting from my USB by unplugging the
> SATA cable from the Toshiba drive.
>
>
> It's a dual core hyperthreaded 1.8ghz 64bit capable, piece of 3watt
> minisculity from 2012 with 1gb of single channel memory, mounted on a Mini ITX
> Bamboo test bench, sitting in the bottom of my first desktop I ever owned from
> 2003 so that the wires for the power button on that case can be used to jump
> the power pins on this board. It runs Debian Mate well enough. But I forgot my
> password and I'm currently reinstalling that but I may turn right around and
> install Jenux if I can figure out how to do it. I tried already but while it
> seemed to be making plenty of electronic noise for quite a long time, it never
> spoke anything. I had a USB Audio Class device connected and a pair of wired
> headphones plugged into the audio out jack.
>
>
> Heeeelp?
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

