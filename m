Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F52658670
	for <lists+blinux-list@lfdr.de>; Wed, 28 Dec 2022 20:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672255918;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vTcsb1rjVwkgO8yP5uj02tRLRRBSkNJxY8181y6uSQo=;
	b=T8HQ9w31gz7dGZ5DGsCCqCY72H31tU6rKEaUrvtf0CWZT4j9Ss9BT/TlSR7B/17Rqmq30Z
	IoFMt6IeSdPu6uMjjI+jrAGpmGtF2Na4ZMs6RxmJc8IpQMeRbAA+ji+gEmOop6MDVq7K0Y
	hQ0G5SNRyvq5M6msVYtw0YnhoeG7Nbc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-AXnFlzC2PiiGJhE8vmxKxA-1; Wed, 28 Dec 2022 14:31:55 -0500
X-MC-Unique: AXnFlzC2PiiGJhE8vmxKxA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2ED71C05122;
	Wed, 28 Dec 2022 19:31:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2EAE640C124A;
	Wed, 28 Dec 2022 19:31:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 146661946594;
	Wed, 28 Dec 2022 19:31:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 28 Dec 2022 14:30:48 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A 2 terabyte Drive Kills Booting.
In-Reply-To: <mailman.1756.1672254387.2515669.blinux-list@redhat.com>
References: <mailman.1756.1672254387.2515669.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1914.1672255904.2515672.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I haven't dealt with drives that large yet but was told anything above 1tb
had to be formatted with raid.  If you already did that, this won't help.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Wed, 28 Dec 2022, Linux for blind general discussion wrote:

> Last Spring, I bought a 2 terabyte Samsung drive for backing up a
> system running debian buster.  It's a great drive for running
> rsnapshot and it mounts and unmounts lightning fast.  I have
> things setup so that the drive is plugged in to a usb port all
> the time but my backup script mounts the file system just after
> Midnight for backups.  Unless I want something off of the drive
> such as the time I accidentally deleted a bunch of email archives,
> the drive is un mounted but it's device node, of course, still
> sits in /dev.
>
> 	The backup script mounts  it's UUID on
> /var/cache/rsnapshot, takes a new backup and then umounts and all
> that works fine.
>
> 	I have set grub to use a serial console and /dev/ttyS0 is
> the port for that and I am getting good communication between it
> and a Raspberry Pi so one can tell what grub is doing when it
> boots up.
>
> 	There is a problem, however, and I wasn't sure exactly
> what was causing it because this system is on pretty much 24/7 so
> it may go for weeks between reboots.
>
> 	If I reboot it with the backup drive plugged in to a usb
> port, it hangs forever just after grub reports that it is loading
> the kernel.
>
> 	The only way to regain control is to have a keyboard
> plugged in and type Ctrl-Alt-Del or press and hold the power
> button for a few seconds.
>
> 	When the boot process starts, I unplug the 2 terabyte
> drive and get all the same messages via grub except that this
> time it reboots completely and one can log in, do work, etc.
>
> 	If you plug the 2-terabyte drive back in after bootup, it
> quickly registers itself and is ready to be mounted if one so
> desires.
>
> 	So the upshot of all this is that the system works
> properly and the backups happen each night but if there ever was
> a problem and the system rebooted, one would be up the creek
> because the system seems to refuse to boot if that drive is
> mounted.
>
> 	If I halt grub and start the grub command shell, I can
> list all the devices which are listed slightly differently in
> grub so the drive that is normally /dev/sda is listed as hd0.
> Another drive on that system is a 512-MB drive that holds the
> /home file system.  One can do a ls command in grub and the boot
> drive which in unix is /dev/sda now is listed as hd0 with
> partitions of hd0:1 and hd0:5
>
> 	The /home drive is hd1 with hd1:1 as the /home partition.
>
> 	The 2 terabyte drive shows up as hd2 with hd2:1 as the
> whole drive where the backups go.
>
> 	All 3 drives show up in grub's ls command and the backup
> drive passes fsck with flying colors.
>
> 	The backup drive is not bootable and there is only one
> big partition for it.
>
> 	I also set grub to pass the UUID of the root partition to
> the kernel.  It works fine with that setup or just using the
> device name.
>
> 	Does this situation sound familiar to anybody and were you
> able to fix it?
>
> 	This could be a lot worse such as not working at all, but
> right now, a live person has to make sure the 2 terabyte drive is
> unplugged until booting is finished and then it's safe to plug it
> back in.
>
> 	Thanks for any and all suggestions.
>
> 	Martin McCormick
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

