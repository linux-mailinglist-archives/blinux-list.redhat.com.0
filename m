Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CD858C76
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jun 2019 23:08:57 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id C401083F45;
	Thu, 27 Jun 2019 21:08:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 196E25D9D2;
	Thu, 27 Jun 2019 21:08:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 841C71806B1A;
	Thu, 27 Jun 2019 21:08:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5RL8YHE023405 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jun 2019 17:08:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3D8311001B06; Thu, 27 Jun 2019 21:08:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx07.extmail.prod.ext.phx2.redhat.com
	[10.5.110.31])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 353E51001B28
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 21:08:31 +0000 (UTC)
Received: from mta01.o2sblack.fr (mta01.o2sblack.fr [109.234.163.21])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 278D6C18B2C1
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 21:08:08 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
	DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: C5B93100834.A4CAD
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=9HyzX+RKtzxve94d6kSYiVmzhTDtD6EH/JqpwBMpPmU=;
	b=OefT96qb0FEggzxyZ7tyToAA99
	KTHqdVdE0v/GwMo8fpjzHDYuYqp4GyShBIAr3KA2f2niUPpO/QDRToReWgV3zZH3hAARdWPpXQcWN
	UfDpOLLUqmjgnDgL7QTf+f1tVBt4Es3+Oh4YagAjg1UCsYwKottF3Qb8EJA1uHRcgy3M=; 
Subject: Re: climagic
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.1906271110410.22430@panix1.panix.com>
	<CAO2sX31x2=fK7_HtdOc-dXtTt2chZ8P8FUaQ30HHA872UXH87A@mail.gmail.com>
	<47a843cf-0663-454a-08d5-577d59da03be@slint.fr>
	<CAO2sX32fqDesO7OJC-pEX8q+mzepkZmvr8DMLnK81hcKkr94_g@mail.gmail.com>
Message-ID: <bd596fd7-f63c-963a-4a92-2153f29918e8@slint.fr>
Date: Thu, 27 Jun 2019 23:07:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAO2sX32fqDesO7OJC-pEX8q+mzepkZmvr8DMLnK81hcKkr94_g@mail.gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Greylist: Delayed for 74:08:29 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.31]); Thu, 27 Jun 2019 21:08:12 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]);
	Thu, 27 Jun 2019 21:08:12 +0000 (UTC) for IP:'109.234.163.21'
	DOMAIN:'mta01.o2sblack.fr' HELO:'mta01.o2sblack.fr'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.163.21 mta01.o2sblack.fr 109.234.163.21
	mta01.o2sblack.fr <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.31
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Thu, 27 Jun 2019 21:08:56 +0000 (UTC)

If you do not have /proc/confoig.gz, try:
find /lib/modules/$(uname -r) -name pcspkr*

If the driver is shipped as module you will get this answer:
/lib/modules/4.12.17/kernel/drivers/input/misc/pcspkr.ko
assuming that "uname -r" gives: 4.12.17

Else, try:
grep pcspkr /lib/modules/$(uname -r)/modules.builtin
If the pcspkr driver is built in the kernel you will have
a non empty anwser

Else pcspkr is not available.

Didier

On 6/27/19 10:47 PM, Linux for blind general discussion wrote:
> Okay, apparently, I don't even have a /proc/config.gz(tab completing
> on /proc/co gives me /proc/consoles)
> 
> My installed system is based on Knoppix 8.1 or 8.2, though except for
> the kernel and Knoppix-specific accessibility packages, everything has
> been updated to the latest Debian Unstable. My kernel version is
> 4.12.7 and the only package I have installed from the Kernel category
> is linux-image-4.12.7. I'm running an older kernel because every
> attempt I've made to install a newer kernel from the Debian
> repositories has broken speech.
> 
> I do have a second hard drive with a nearly stock copy of Knoppix 8.5
> that I plan to make my system drive once I can get hold of a Sata
> cable(the narrower kind) so I can hook up both harddrives
> simultaneously.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
