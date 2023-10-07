Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1E87BC974
	for <lists+blinux-list@lfdr.de>; Sat,  7 Oct 2023 19:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696701262;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+XAC8VE9zfsg6wYSWMgY65T2GYjBADC4c8wC4TvXxvA=;
	b=RZowN8/g9ZB/2UuMIdCKz1RnQmmuniuC7uWatLkdW7YpM3HX+Yf4wDRnNYihZJVRkA4tBX
	xM9vw8n39NvFNmgx8joNARZf3dxgKA8FLTDnIUCdJ5fdvRmWmdGZXkOQG01jnOHkuNH/VX
	C7V0gSdAcWDnKJaeubGmp+fzocvNysg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-133-Wrcw2JUmOHmCe_A4Z15OJg-1; Sat, 07 Oct 2023 13:54:18 -0400
X-MC-Unique: Wrcw2JUmOHmCe_A4Z15OJg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54235801E91;
	Sat,  7 Oct 2023 17:54:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2046DC158BA;
	Sat,  7 Oct 2023 17:54:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2232E19465B5;
	Sat,  7 Oct 2023 17:54:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Debian with Orca
MIME-Version: 1.0
Date: Sat, 07 Oct 2023 12:54:01 -0500
Message-ID: <mailman.22.1696701251.2052526.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <7464.1696701241.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In a seemingly endless trek to get both Windows 11 and debian
Linux from a 3-year-old laptop I recently acquired, I had been
trying to install debian Linux with orca on to a large-capacity
thumb drive.  The debian bullseye installs were taking as long as
twelve hours or so to do and when I finally got one to finish, it
was as slow as molasses in January or the same thing in July in
the Southern hemisphere and was completely useless except for ssh
logins from another computer using the command-line or console
mode.

	Orca never did anything except an occasional halting
error message.

	Finally, I took a one-terabyte Crucial (Brand name) usb
drive and decided to try that.  The twelve-hour marathon reduced
to less than an hour and the orca installation is talking as well
as it does on a desktop system, here.  The real problem was the
slowness of data transfer in and out of the usb thumb drive.  The
orca screen reader and mate terminal are responding nicely and fast
and all seems well so far.

	Now for some questions:

	I am not new to orca but, in the couple of years I have
been trying it on the desktop and now, the laptop, I really miss
having a command-line console which I can get with no problem if
I ssh in to either orca system with a command-line Linux box.

	This is the standard debian install installation image
one can download and it found the laptop sound interface without
any special measures such as installing a usb sound card .  On
some systems, you do get command-line consoles by pressing Control+Alt+F2
and you can go back to the GUI by Control+Alt+f1.  I think there are
maybe 5 more command-line consoles in which speakup talks.  On
this installation, Control+Alt+f2 prompts one to type a command or ESC to
exit.  One of the other just kills speech and nothing much seems
to happen.  Like the spoiled rich kid on Christmas morning, I
want it all but not in a nasty way so I am not complaining.  If
necessary, I could get another hopefully fast usb drive and
install debian without the GUI and get the consoles but since this
is a laptop, every extra piece of gear makes it less portable.
Also, Every instance of Linux one makes will have a different ssh
host key unless one copies the same key to all instances.
Otherwise the systems you are using ssh to talk to think
something's wrong when they see the different host keys.

	I would also like to say some good words about slint.  I
was able to get a command-line set of consoles but the only way I
could get anything to talk was to plug in a usb sound card.  One
such card was a Creative Labs SoundBlaster series usb sound card
which worked perfectly for the speakup voice plus I also tried
another very inexpensive sound card which also worked with no
difference between the Creative Labs and the sound card whose
name escapes me, but slint couldn't automatically find this
laptop's built-in sound card.

	Everything else in slint that I tried appears to have no
problems .

	Sound system hardware is so proprietary that audio issues
in Linux are like grains of sand on the beach, common and gritty
when you have to deal with them.

	So, my primary question is am I missing something about
the command consoles?  The mate terminal seems to be working but
it's not quite the same as a command-line console.

Martin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

