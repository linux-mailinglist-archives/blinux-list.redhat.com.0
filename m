Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 024A54FB0CD
	for <lists+blinux-list@lfdr.de>; Mon, 11 Apr 2022 01:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649633136;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=B78dOeQsBuh3XxsVME2LlNItRmuX/7pgTa894O+rRJQ=;
	b=Vw7Dhf+eJCho4bREPNbuB0nPDa0pfTnixyc7XNKCQyLvkpCMYMVUUOYYzWbPA0UdNVj8Hu
	YcH+KCtTdVzcdeG5+OnNwG3GrhnPCy9jqIXiU54gD/Bgz/wGiutbjwjiYWrv92kCytinfV
	mwDKzeBQnRNhKyEYL90hpJcLiFwpL94=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-628-SOp_uk-QPve29nvoNfXp8A-1; Sun, 10 Apr 2022 19:25:32 -0400
X-MC-Unique: SOp_uk-QPve29nvoNfXp8A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 61A431857F06;
	Sun, 10 Apr 2022 23:25:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ED94D54ACA6;
	Sun, 10 Apr 2022 23:25:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 57DFA1940362;
	Sun, 10 Apr 2022 23:25:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 10 Apr 2022 18:03:48 -0500
To: blinux-list@redhat.com
Subject: Re: Question, is it possible to install Linux on a portion of my
 hard drive? Using a Dell Latitude 3520.
In-Reply-To: <mailman.7739.1649620810.111206.blinux-list@redhat.com>
References: <mailman.7739.1649620810.111206.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.7631.1649633125.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here, replying in-line.

> a partition of somewhere between 50 and 60 GB stood be sufficient
> for this?

That's plenty of space.  I've done light-weight installs on under 8
GB.  It doesn't leave a lot of space for your user-space files, but
you can use a shared drive-space, a network-drive, or a USB drive for
your user files outside the OS if you need.  One of my laptops has a
8GB hard-to-find/expensive-to-replace SSD form-factor/interface, so I
installed the OS on it, and then put a low-profile 32GB USB drive in
it to hold my home directory and it works fine.

> The big question here is is any distro that I download want to be
> something that I can install myself?

Different distros have varying degrees of accessibility support.  

> Meaning have either speech or more importantly braille accepts.

Other folks here may have more recent reports on which distros work
better, either providing speech or braille support.  Some provide an
option to boot to a serial console, so if your braille-reader
supports showing up as a serial-device, you might be able to use that
100%.

There's also a difference between getting your machine to accessibly
boot into the installer, and once the installer is running, is it
accessible.  Do you need to change BIOS options? do you need to press
some particular sequence of keys at a particular time to boot into an
accessible installer? 

> Question number two is the graphical know just how the best way to
> use the Lennox partition?

It may depend on you as a user and what you're comfortable with.  If
you have learned to get around in a command-line, there are hundreds
of tools to empower you there.  Most of what I do happens on the CLI.
If you want to use a GUI, then Orca is the top dog in that world, but
it's more subject to the accessibility-design of individual
applications.

> Question will I need some kind of virtualization software on the
> laptop to enable the next to run.

You can either run your Linux install in a virtual machine (in which
case, yes, you might want some virtualization software), or you can
dual-boot, choosing whether you want to boot Windows or Linux when
you start up your machine.

> has anyone had significant issues with Dell hardware.

I've had pretty good results with the exception of Wifi cards.  The
three Dell laptops that I have here (my wife gives me dirty looks for
accruing long-outdated laptops) came with the Broadcom chipset and
they're generally pretty rubbish. You might have luck, but you might
not.  In my case, I bought replacement wifi cards with the
well-supported Atheros chipset for under $10 each.  A quick hardware
swap and I had no further issues.

There might also be video-card issues (there's some bruhaha about
Nvidia vs. AMD vs. Intel and their associated drivers), but if you're
running headless, you may be able to ignore issues here.

Hopefully this encourages you to have fun hacking,

-Tim




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

