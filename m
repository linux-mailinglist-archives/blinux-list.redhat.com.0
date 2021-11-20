Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7240E45809B
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 22:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637444665;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8lq+vNnpzWI17tVyVV3eDWcZJRH4D+equC2jQjKNqSY=;
	b=YYE2XckAsOvqUSiZwaesg6B1ghPYhE7HpO+79RtooaDOwq2FkwyHTFmeTkJNc3d6sAYp58
	jyADh1LCxI0leKSti1xGz5TfrhhH4x8OSoMSrCxemYQk9rzxlfNO3uNezJBvKLDz2shph8
	Z60p46Zu8cEJivBTxaGthy0l0L54SC4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-442-CoEWs13kOymDuRIN9b6vBA-1; Sat, 20 Nov 2021 16:44:21 -0500
X-MC-Unique: CoEWs13kOymDuRIN9b6vBA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 235741006AA3;
	Sat, 20 Nov 2021 21:44:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 166C060862;
	Sat, 20 Nov 2021 21:44:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5770C4A702;
	Sat, 20 Nov 2021 21:44:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AKLi4N6027710 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 20 Nov 2021 16:44:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 644612166B2D; Sat, 20 Nov 2021 21:44:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E7812166B26
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 21:43:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 034AD185A7B2
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 21:43:59 +0000 (UTC)
Received: from frontmx.svk.fi (79-134-96-138.cust.suomicom.net
	[79.134.96.138]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-194-qD0tmwSzPIOep7qXYS67dw-1; Sat, 20 Nov 2021 16:43:56 -0500
X-MC-Unique: qD0tmwSzPIOep7qXYS67dw-1
Received: from frontmx.svk.fi (localhost.localdomain [127.0.0.1])
	by frontmx.svk.fi (Proxmox) with ESMTP id 4D6FF1C1C40
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 23:33:56 +0200 (EET)
Received: from smtps.svk.fi (heppa.svk.fi [192.168.10.4])
	by frontmx.svk.fi (Proxmox) with ESMTPS id 413A81C1C9D
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 23:33:56 +0200 (EET)
MIME-Version: 1.0
Date: Sat, 20 Nov 2021 23:33:55 +0200
To: blinux-list@redhat.com
Subject: Re: Ideal temperature
In-Reply-To: <fe3a75a0-6db8-6f92-8859-a009326e9678@seznam.cz>
References: <fe3a75a0-6db8-6f92-8859-a009326e9678@seznam.cz>
Message-ID: <daa7b60aa84f6ee9af1210b4db6b34e7@ijn2.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello Vojta,

On 2021-11-20 16:14 UTC, Linux for blind general discussion wrote:
> Hello all,
> 
> please, how much can Raspberry Pi 4B be warm and not suffer? What
> temperature is ideal for Raspberry and what is uncomfortable for it

The higher the temperature the more your Raspberry suffers. That's
why in the firmware there are limiters which step in whenever the die
temperature gets too high. The limiters function so that you shouldn't
be able to break your Raspberry due to excess heat.

> when I am using Mate desktop and Orca in Ubuntu mate 20.04? When I had
> only passive cooling, my Rpi 4B had 58 degrees and was slower, now
> with active cooling it has only 34 degrees and it's quick and no
> sluggish, but if I want to read or watch film, the sound of cooling is

I assume you are relating to degrees Celsius (aka Centigrade).
Whenever the SoC temperature reaches certain limit the firmware reduces
processor frequency hence lowering the SoC die temperature so that
it would not die due to excess heat. It sounds like your cooling is
really good.

> a little annoying for me. But I don't want suffering for my Raspberry,
> because I like it. I am thinking to unplug active cooling, but I am
> afraid about my raspberry condition. I can't buy any other active
> cooling, because it wouldn't be joined in my Zonepi box, in what I
> have my Pi installed.

You either let firmware do its frequency lowering due to temperature
rising (caused by watching films and other computationally heavy loads),
add bigger (passive) heat sink or just live with your present active
cooling.

Regards,
Birdie

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

