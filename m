Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 924831FBE52
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jun 2020 20:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592332967;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cQmt29ZM3GxhDOKYy24XtkB/Pzs+9CgLQovVvDbkvMo=;
	b=ELz2F+UopTCO00oqpM3Ktr6e8rLGCIqPIlwR8qtVqc2E81P8RCTLJB9AkmIi31izwD8rkL
	FYwDQw+dONfQNLhI6j+bJERowXOxJmV/wnCPLI/NyBvsVkBYdYWhK+FVVWnJGoaWhBE7d3
	HqPSwH8IImq5n0/xoCFvuHjJ58fr66E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-502-loE5HgRLOp-EM0XDjYhIWw-1; Tue, 16 Jun 2020 14:42:45 -0400
X-MC-Unique: loE5HgRLOp-EM0XDjYhIWw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7DCD2835B52;
	Tue, 16 Jun 2020 18:42:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 198CB60CC0;
	Tue, 16 Jun 2020 18:42:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BDCC41809547;
	Tue, 16 Jun 2020 18:42:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05GIgaZk020008 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jun 2020 14:42:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A4082B07B6; Tue, 16 Jun 2020 18:42:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F71E86D61
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 18:42:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C788D18A6663
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 18:42:33 +0000 (UTC)
Received: from mail-out-02.crystone.se (mail-out-02.crystone.se
	[93.90.145.12]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-68-LTbut9DJP0O7GoOoiN_glQ-1; Tue, 16 Jun 2020 14:42:29 -0400
X-MC-Unique: LTbut9DJP0O7GoOoiN_glQ-1
X-Halon-ID: faecafa1-b000-11ea-a467-005056917149
Authorized-sender: anders@pipkrokodil.se
Received: from [10.5.0.3] (unknown [141.98.255.145])
	by mail-out-01.crystone.se (Halon) with ESMTPSA
	id faecafa1-b000-11ea-a467-005056917149;
	Tue, 16 Jun 2020 20:41:25 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Tue, 16 Jun 2020 20:41:23 +0200
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<CAO2sX31RY2cas9Bg6sURkAWAuLvohJ6TBux4SE-NxAmaMuVPqg@mail.gmail.com>
	<be1b173c-19e7-fe1f-d6a2-d7ecf3f264cf@gmail.com>
	<C3FC0F8B-2F8D-47F0-A8F8-3660B1C280C1@cfcl.com>
To: blinux-list@redhat.com
In-Reply-To: <C3FC0F8B-2F8D-47F0-A8F8-3660B1C280C1@cfcl.com>
Message-Id: <8D982AB7-B538-426D-845A-349E7A461BD7@pipkrokodil.se>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05GIgaZk020008
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi!
When i was on the eye-free list i actually saw a thread or message about a dualboot phone with buttons.
If you remember the l Nokia E90 communicator there was a company that started to make that phone with both a Linux distro and a stock android version.
If i find it i can forward the message here.
/A

> 16 juni 2020 kl. 18:59 skrev Linux for blind general discussion <blinux-list@redhat.com>:
> 
> Someone said:
>> ... you might be better off starting with a Raspberry Pi if you want a more vanilla Linux/GNU experience on a pocket-sized computer than what Android offers...
> 
> 
> The Raspberry Pi is a great piece of hardware, with a truly amazing number of interface options.  I followed the F123/VOISS effort with great interest and am now following Stormux.  However, the RasPi isn't a great starting point for a truly portable (i.e., palmtop) computer system.  Size and weight issues aside, there is the problem of how to support "instant on" capability (e.g., for use as a notetaker).
> 
> Because my Android cell phone has power management and sleep mode support, it can run for more than a day on its built-in battery.  I haven't been able to find any reasonable way to get this kind of behavior on a RasPi.  Even idling, the power requirement over a day would drain any reasonable set of batteries.  Booting the device and shutting it down each time I want to use it would be very inconvenient.
> 
> A few billion Android cell phones have been manufactured and more are being made all the time.  After a few years, these get really cheap to buy, because the latest version of Android won't run on them.  So, why not repurpose them as blind-friendly computers, notetakers, etc?
> 
> And then said:
>> ... unless there's some smartphones out there that support replacing their stock Android with the ARM version of more traditional distros.
> 
> Android phones can be reloaded with different boot and OS code.  My initial posting discussed several OS variants that start with the open source Android code, allowing them to use (some) APK apps (e.g., the Android Accessibility Suite).
> 
> The postmarketOS folks (https://postmarketos.org) are taking a somewhat different approach.  They install a complete Linux system, based on Alpine Linux (https://alpinelinux.org).  The system can't run APK apps yet, but this is a project goal.  For details, see the FAQ (https://postmarketos.org/faq.html).
> 
> - Rich Morin
> 
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

