Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8375167E1
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 22:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651438472;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AHQYEvcmsHb+RfbbqmFK0GFvuBxsPiYXa/x8r8dDe0Y=;
	b=DwaVYMR5mzlHILfdkLgu9pB8OW6pERG7mYMpmgRJG2XqqRqFNXlRJs3c+j3A+TzfQcXD6T
	hL8z1HrAk4ERhBkMZRHo8iZCTupCuG3fABmeQAWsmOtYZUyT4f17abPAsxZsc4LXa/2Kl2
	sCvWEKr8kyCz5sHfAeh/G8ndgYn4Y5A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-111-PAgIMXrKOLO14PoLZOjPrQ-1; Sun, 01 May 2022 16:54:28 -0400
X-MC-Unique: PAgIMXrKOLO14PoLZOjPrQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7517385A5BC;
	Sun,  1 May 2022 20:54:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 39D362166B40;
	Sun,  1 May 2022 20:54:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9EAED1947063;
	Sun,  1 May 2022 20:54:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 1 May 2022 15:08:41 -0500
To: blinux-list@redhat.com
Subject: Re: Running a Linux VM on older desktop, is it even worth trying?
In-Reply-To: <mailman.11131.1651005205.111202.blinux-list@redhat.com>
References: <mailman.11131.1651005205.111202.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.12477.1651438466.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here, replying inline.

> 1. Most importantly, this machine is a decade old and I'm worried
> it'll choke on a virtual machine even if it's Linux-on-Linux,

For virtualization, the biggest factor is CPU support for
virtualization-specific instructions.  There's a lengthy write-up
on how to check for CPU support here

https://www.cyberciti.biz/faq/linux-xen-vmware-kvm-intel-vt-amd-v-support/

but you can check with this pipeline:

  $ sort -u /proc/cpuinfo | grep ^flags | grep -w lm | grep -w aes |
grep -qw -e vmx -e svm && echo yep || echo nope

It will output either "yep" (your CPU has the requisite features) or
"nope" if it doesn't.

With your CPU about a decade out, it's a bit more hit-or-miss.  My
similarly-aged daily driver doesn't have virtualization support, but
the laptop I bought for my wife around the same time does have
support.  Go figure.

> I already run into circumstances were Firefox+Orca slow to a
> crawl

Firefox alone (or chromium) is a bit of a hog on such specs, even
without Orca.  And Orca on those specs might be a bit sluggish.
Combining them is bound to be rough.  However, depending on how you
configure OS running in the VM, it can be roughly the same mediocre
experience with a GUI and running FF/Orca in the VM (the VM overhead
should be minimal).  Or it can be a treat if you are just doing
command-line or light-weight GUI stuff.

> My Specs are:
> 
> Vintage 2011 Intel i7. Exact model unknown

If you want the exact details you can either check the output of
"dmesg" or you can view /proc/cpuinfo (which is what I use above to
check for virtualization support)

> 4 GB RAM... I understand having this little RAM is practically
> unheard of these days so this is probably my biggest concern.

Seconded.  Though it's also one of the most common and cheapest
upgrades to provide, so if you can bump up the RAM (maybe even max it
out), it will make your life better across the board.  Even without
virtualizing.

> All of my hard drives are platter based.

Unfortunate, but not a deal-killer.

> I'm guessing it would be better to store the virtual drives for my
> virtual machines on one of my data drives instead of the system
> drive

Yes, this seems reasonable.

> No idea if I have integrated graphics or a proper graphics card,

If you're fully blind and just using an audio or Braille interface,
this may be a lot less of a concern rather than if you used the GUI
(with a magnifier or otherwise).  For what it's worth, you could
likely even get away with the X Virtual Framebuffer (xvfb) which
doesn't require any video card at all.

> 2. My system isn't setup to allow me to run a full desktop, and the
> script I use to launch Firefox+orca in a kiosk-like fashion

This is likely to be the biggest pain point.  Without knowing how
you have this configured, it may be hard for folks to help you to the
fullest extent.

> As a result, I need a Virtual machine that can be setup and run
> from a tty without X, ideally one that can run a GUI within the VM
> even if it can't render the view to the host(I don't have a monitor
> anyways, the only output I need from the VM is audio).

a couple options exist for doing things like this

1) do a non-GUI install, either with a local VM console or via a
serial-port connection.  Both of these should be as accessible as
your terminal.

2) have your VM install happen over VNC (getting this set up in the
first place is more complex)

3) the X protocol allows for using a "remote" machine (which could be
X running on your VM's host), so programs can run in the VM while
using the host's X display


> Does the Host OS being 32-bit restrict the guest OS to 32-bit

I'm less certain about this one.  My gut reaction says that it would
be better to use a 64-bit host OS to contain 32-bit or 64-bit guest
OSes.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

