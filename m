Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A438510BA7
	for <lists+blinux-list@lfdr.de>; Wed, 27 Apr 2022 00:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651010581;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gwqywrhYFcKVrJSqa3ktPfUZOC8mxLieXGbFpImc7UU=;
	b=MXnWsBdJn4g1OnpuHooFkpiFQTYN/q6jSwWKhIdKjezfjMuRgVABBEyKj7MCcQebszru36
	rCE/eS9G5rAGf5R5OdP7CT1//0F5JjXHOqYpgPzrxCGrGn1Yl/Nex6Ovcbkpu6Ndpjuvv3
	BdIBQEi7/S3aWKGtX87foPun6F4e04c=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-135-_q7qbBgtMPSA8gV6jgqoSQ-1; Tue, 26 Apr 2022 18:02:58 -0400
X-MC-Unique: _q7qbBgtMPSA8gV6jgqoSQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 511713C01DA0;
	Tue, 26 Apr 2022 22:02:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1A32D463EC6;
	Tue, 26 Apr 2022 22:02:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7DCA81940355;
	Tue, 26 Apr 2022 22:02:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running a Linux VM on older desktop, is it even worth trying?
In-Reply-To: <mailman.11131.1651005205.111202.blinux-list@redhat.com>
References: <mailman.11131.1651005205.111202.blinux-list@redhat.com>
User-Agent: Notmuch/0.35 (https://notmuchmail.org) Emacs/28.1
 (x86_64-pc-linux-gnu)
Date: Wed, 27 Apr 2022 00:00:43 +0200
MIME-Version: 1.0
Message-ID: <mailman.10976.1651010572.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Hi,

My machine is 4GB ram, so I am surprised when you say 4GB is unheard of
these days. I am running an Arch Linux distro on a 500GB hard drive, 4GB
Ram and a 64-bit processor.



Linux for blind general discussion <blinux-list@redhat.com> writes:

> Okay, so I want to give some Linux distros other than the one I'm
> running a try, but I don't have a spare machine in working order to
> use, don't have a spare hard drive to swap out in my main machine, and
> don't want to risk my running system to try out a different distro I
> might not like... The obvious solution would be to fire up a virtual
> machine, but I've got a few concerns.
>
> 1. Most importantly, this machine is a decade old and I'm worried
> it'll choke on a virtual machine even if it's Linux-on-Linux,
> especially since I already run into circumstances were Firefox+Orca
> slow to a crawl(usually on websites that Abuse JavaScript, HTML5, and
> other rich web content).
>
> My Specs are:
>
> Vintage 2011 Intel i7. Exact model unknown, but I believe its from the
> 2600 series... I understand even old i7s have aged fairly well, so
> this is my least concern.
>
> 4 GB RAM... I understand having this little RAM is practically unheard
> of these days so this is probably my biggest concern.
>
> All of my hard drives are platter based. I've got a swap partition of
> unknown size, but since my understanding is that accessing swap and
> the system partition at the same time would slow things down, I'm
> guessing it would be better to store the virtual drives for my virtual
> machines on one of my data drives instead of the system drive(my tower
> has three harddrives, a smaller drive used for the system and two
> larger drives used for data storage).
>
> No idea if I have integrated graphics or a proper graphics card, but
> I'm assuming this is mostly a non-issue since I'm not running any 3-d
> modeling software or games using polygonal graphics.
>
> 2. My system isn't setup to allow me to run a full desktop, and the
> script I use to launch Firefox+orca in a kiosk-like fashion only works
> for a few, specific applications. I've attempted to write a script to
> let me launch arbitrary GUI apps with Orca to no avail... As a result,
> I need a Virtual machine that can be setup and run from a tty without
> X, ideally one that can run a GUI within the VM even if it can't
> render the view to the host(I don't have a monitor anyways, the only
> output I need from the VM is audio).
>
> 3. I'm running a 32-bit kernel. I know my processor is 64-bit as I've
> gotten the distro I'm using to boot from Live media with a 64-bit
> kernel, but haven't been able to get an installed system working with
> anything other than a 32-bit Kernel... Does the Host OS being 32-bit
> restrict the guest OS to 32-bit as well?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

