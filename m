Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F837AD71A
	for <lists+blinux-list@lfdr.de>; Mon, 25 Sep 2023 13:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695641957;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AWu9E3iajDZ5PzA/YcyyIPq9s2oY4bPx8+G+cN0qa4Q=;
	b=f1JdPkMOLGOOG6uS/o24RAH4V0uALKAnMCunY9hkV6C9YwfMdxIxAkbvJvbUq6F2WtB2pc
	6GbrcZzBQIq07jlz+3NosMN5W5mc6hWzTLHtfkibQOoVwxm1yFpKF4JavAAg03BJCZWT2L
	kLy3dq1a9pAsmbFNLJ2u8ZjwKS80kvs=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-135-6H4j_gu1Ma-i6CcFVxUrLA-1; Mon, 25 Sep 2023 07:39:15 -0400
X-MC-Unique: 6H4j_gu1Ma-i6CcFVxUrLA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E7F43822547;
	Mon, 25 Sep 2023 11:39:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 976612026D4B;
	Mon, 25 Sep 2023 11:39:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C79FC19465A8;
	Mon, 25 Sep 2023 11:39:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Talking Images for 64-bit Laptop
In-reply-to: <mailman.2216.1695421961.2242620.blinux-list@redhat.com>
References: <mailman.2112.1695416202.2242621.blinux-list@redhat.com>
 <mailman.2216.1695421961.2242620.blinux-list@redhat.com>
Comments: In-reply-to Linux for blind general discussion
 <blinux-list@redhat.com>
 message dated "Sat, 23 Sep 2023 00:20:12 +0200."
MIME-Version: 1.0
Date: Mon, 25 Sep 2023 06:38:53 -0500
Message-ID: <mailman.294.1695641943.4021072.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <11190.1695641933.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I appreciate all this information because I got in a bit of a
hurry and ended up at the wrong site and the web monster showed
me a 3-GB image for slint which I downloaded.  The download went
fine and the image flowed like good wine on to a 4-GB usb stick.

slint-14.2.iso?viasf=1

Whatever this is, it's not a bootable image but probably all the
sources which is a nice thing to have but won't do the job at
hand right now.  I should mount it and see what's there but it
produced a thumb drive with 1 single partition of type hidden
according to fdisk -l /dev/sdx.

This whole project is going fairly nicely in that my wife helped
me turn off secureboot and change the boot order to usb first
then internal drive and, if the internal drive wasn't sick, I'd
be up and running.

	Another debian-11 distro on a different thumb drive jups
right in to the installation routine if you type s at the beeps
and the system seems to just love it.

	Since the keyboard is a laptop keyboard, getting a
secondary tty is a bit tricky.  I had good beginners' luck after
getting to the partitioner but I haven't been able to duplicate
that more than once.  I held alt+F1, I think and got the second
console and was able to look around in /dev.  The mentally-ill
internal drive, however, was nowhere to be found and the only
/dev/sdx listing was my boot drive for Linux.

	I killed everything and restarted but couldn't get the
second console or any of the others to show but the partitioner,
this time could see every drive in the system and their
descriptions were spot on so I could have installed then had I
wanted to do so.

	I could see that the internal drive is a Kingston ssD
with 2 terabytes and all the partitions including Microsoft's
partition were listed.  I am sorely tempted to plug a real
keyboard in to a usb converter which has a number pad like the
good Lord meant keyboards to have, I mean a real number pad, not
these fake ones that only give you numbers but have no numlock to
cycle back and forth.

	When I was going to the school for the blind, they
started us in typing on QWERTY keyboards back in 1962 when I was
in the Fifth grade so it's nice when stuff stays in the usual
place.

	That time when I could see all the drives on the system
and could have installed Linux, I kept getting a really nice
keyboard help instead of the secondary consoles so I don't know
what changed but I couldn't call them up any more.

	The keyboard help said F1 when I pressed the key to the
right of Escape so alt + that should have switched to tty1 from
tty0.

	Anyway, I'll try your suggestion and see if I get slint
when I put that image in.

	When I get Windows 11 working again, I will have a laptop
with windows  11 or a Linux laptop if I plug in the slint image,
hopefully the correct one this time.

	I do see that the CMOS clock is right in that if I do the
date command from /dev/tty1, I see a utc date that is appropriate
for my time zone.  Older Windows systems set the CMOS clock based
on local time so this one is new enough to do it the right way.

Linux for blind general discussion <blinux-list@redhat.com> writes:
> Hi Martin,
> 
> to clarify, I have provided an image of an installed system as you 
> requested:
> https://slackware.uk/slint/x86_64/slint-14.2.1/minislint/README.minislint
> but it was for a previous Slint version.
> 
> You'd be better off installing the most recent version in an USB stick 
> (or a SD
> card in an USB enclosure)  as indicated in:
> https://slint.fr/en/HandBook.html#_install_slint
> 
> Cheers,
> Didier

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

