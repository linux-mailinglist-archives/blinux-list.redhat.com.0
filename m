Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id C11191FBC37
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jun 2020 18:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592326792;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=heLVJtB6yLGPS2QA6rAt97KdJwzvskgUMT7Bts1od6M=;
	b=L+gRsdBLCz7NWy5EmCfse/+Np0Wpu3QG7xa5P8KuTwwHp2KgMjKRsFGa5i9QImHiaILKUw
	uQtK3Xsu040g2cYgkGxxwPonl9TLYLNxTErSO2qb5+nZsU1XNrzZrXBZQ8oKN6FRp+ijIt
	J4EKZPGBUyxsS61roPqO0Ip6FGpXrhg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-469-09xdyRYkOwSltWCaPNEWCg-1; Tue, 16 Jun 2020 12:59:50 -0400
X-MC-Unique: 09xdyRYkOwSltWCaPNEWCg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CF5F100CCC8;
	Tue, 16 Jun 2020 16:59:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D90A79303;
	Tue, 16 Jun 2020 16:59:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 931D11809547;
	Tue, 16 Jun 2020 16:59:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05GGxeth009730 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jun 2020 12:59:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 28B2010EE84A; Tue, 16 Jun 2020 16:59:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2463A10EE849
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 16:59:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F2DA833B49
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 16:59:38 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-171-6Rx8DwEZNC2gQUve_NPsDA-1; Tue, 16 Jun 2020 12:59:35 -0400
X-MC-Unique: 6Rx8DwEZNC2gQUve_NPsDA-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id 7343BFCE1B0
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 09:59:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Tue, 16 Jun 2020 09:59:33 -0700
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
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <be1b173c-19e7-fe1f-d6a2-d7ecf3f264cf@gmail.com>
Message-Id: <C3FC0F8B-2F8D-47F0-A8F8-3660B1C280C1@cfcl.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05GGxeth009730
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Someone said:
> ... you might be better off starting with a Raspberry Pi if you want a more vanilla Linux/GNU experience on a pocket-sized computer than what Android offers...


The Raspberry Pi is a great piece of hardware, with a truly amazing number of interface options.  I followed the F123/VOISS effort with great interest and am now following Stormux.  However, the RasPi isn't a great starting point for a truly portable (i.e., palmtop) computer system.  Size and weight issues aside, there is the problem of how to support "instant on" capability (e.g., for use as a notetaker).

Because my Android cell phone has power management and sleep mode support, it can run for more than a day on its built-in battery.  I haven't been able to find any reasonable way to get this kind of behavior on a RasPi.  Even idling, the power requirement over a day would drain any reasonable set of batteries.  Booting the device and shutting it down each time I want to use it would be very inconvenient.

A few billion Android cell phones have been manufactured and more are being made all the time.  After a few years, these get really cheap to buy, because the latest version of Android won't run on them.  So, why not repurpose them as blind-friendly computers, notetakers, etc?

And then said:
> ... unless there's some smartphones out there that support replacing their stock Android with the ARM version of more traditional distros.

Android phones can be reloaded with different boot and OS code.  My initial posting discussed several OS variants that start with the open source Android code, allowing them to use (some) APK apps (e.g., the Android Accessibility Suite).

The postmarketOS folks (https://postmarketos.org) are taking a somewhat different approach.  They install a complete Linux system, based on Alpine Linux (https://alpinelinux.org).  The system can't run APK apps yet, but this is a project goal.  For details, see the FAQ (https://postmarketos.org/faq.html).

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

