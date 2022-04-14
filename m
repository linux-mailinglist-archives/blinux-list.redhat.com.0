Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A66A4501460
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 17:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649950052;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0mba91u/aRlYtqc7JDDHYHOE/3Yyc8uyUNLIlMY6LwE=;
	b=esIzmofsZ7ow7I2f39CAE9PhdPPZAGf/quKoGuds+YL37vGMGWhMIdWZJSdrhqETt/w1pK
	h00O2WLfc1k28djxQXGh5DjEStkb2eLKtUwKo7Wdpvo7C9i2laKEKs3iHqCWQMfTPL/7nk
	mNhLYnCiRut/rJujiYnJtcag8bpuk8I=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-530-CRxGKOt9MNaiAqpn5ot9mw-1; Thu, 14 Apr 2022 11:27:31 -0400
X-MC-Unique: CRxGKOt9MNaiAqpn5ot9mw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90E113802ACE;
	Thu, 14 Apr 2022 15:27:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C37B1C27EA6;
	Thu, 14 Apr 2022 15:27:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 65A6E194034B;
	Thu, 14 Apr 2022 15:27:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 16:27:21 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
 <mailman.8307.1649889026.111207.blinux-list@redhat.com>
 <mailman.8412.1649893760.111204.blinux-list@redhat.com>
 <mailman.8388.1649918679.111207.blinux-list@redhat.com>
 <mailman.8563.1649948774.111202.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8563.1649948774.111202.blinux-list@redhat.com>
Message-ID: <mailman.8501.1649950048.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Shout out to the quickemu project for this actually.

Qemu is made even easier to use that way and covers a ton of distros and even different OSes from various sides of things and it is...well, bar a few exceptions of weird pathing, easy to get up and running. ALl you need is qemu and js and edkk2-ovmf and you're good to go.

And no hassle with Virtualbox or installing VMware.

Disclaimer: I'm not sponsored by qemu or the Quickemu project. I just happen to like their stuff and find it super easy to use and manage. They even managed to make MS's OSes tolerable. I'm calling shenanigans on that last one, and YMMV may vary but, quickemu is a great little e bit of kit. Just install the dependancies, git clone and you're good to go. I'll take that over fighting with virtualbox/vmware which seem to be getting worse with every major numbered release, e.g. 5 to 6, 6 to 7 and so forthOn Thu, Apr 14, 2022 at 11:05:50AM -0400, Linux for blind general discussion wrote:
> Please try this in a VM first. I tried to dualboot once, it didn't work,
> 
> 
> That's because Microsoft still thinks they're the shizz and they overwrite
> your sensible bootloader with their own. The virtual machine is in fact your
> best bet, and I would take this one step further and say just install Linux
> as the host OS, and then if you need to run anything else, run it in the
> virtual machine. It's much better to run unstable virtual machines on top of
> a stable host OS than it is to run your stable OS in a virtual machine on an
> unstable host. If your unstable virtual machine gets hacked or otherwise
> needs to be destroyed, you only have to recreate the virtual machine, and
> you can even take snapshots in most cases that will preserve older working
> versions. But if your host gets toasted or roasted, you have lost
> everything.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Jace's words are up there. Quoted and old messages below this point

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

