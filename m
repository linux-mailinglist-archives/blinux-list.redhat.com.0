Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4FC7D2073F8
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 15:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593004045;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=m8rgLoTryjqdHY6kULJRLCkM0beNoVtembOLtCjbNx8=;
	b=CpUX9+fAraIEV/ueBecBnMotokAo9pdq/ZBKwt4h0Culmir8UQUmWlBmBFyEZZTA9we9x3
	JgMIy5OfmDx+cVLbzbZxdArAXF1qZf6uF4iydiWh+3vQcL0Arcd44Lg93mHFKluv4vlSqt
	T7zumH/Kk1hM7jwiXsUqAaQap02W8Hg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-un8oKsLUMoex2C6NMcCPSg-1; Wed, 24 Jun 2020 09:07:23 -0400
X-MC-Unique: un8oKsLUMoex2C6NMcCPSg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E4B3A0BDE;
	Wed, 24 Jun 2020 13:07:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F09762B476;
	Wed, 24 Jun 2020 13:07:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 256371CA6;
	Wed, 24 Jun 2020 13:07:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OD7DLK009682 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 09:07:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 85A8FEE378; Wed, 24 Jun 2020 13:07:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E169176C2
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 13:07:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D97D8108C26B
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 13:07:10 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-501-i1LApnA8P8exrE_IEk1aug-1; Wed, 24 Jun 2020 09:07:07 -0400
X-MC-Unique: i1LApnA8P8exrE_IEk1aug-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 49sNhq26JXz27Lj
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 13:07:07 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id jjwtjbTT2ZK1 for <blinux-list@redhat.com>;
	Wed, 24 Jun 2020 13:06:34 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 49sNh95pd3z27Lh
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 13:06:33 +0000 (UTC)
Message-ID: <20200624.130638.725.17@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Re: Prospects for an accessible and open version of Android?
Date: Wed, 24 Jun 2020 08:06:38 -0500
MIME-Version: 1.0
In-Reply-To: <20200624120822.GG2690@rednote.net>
References: <EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05OD7DLK009682
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

USB booting is hit or miss. A lot of time's it's not enabled in the bios. So you plug in the USB stick, have to dig out sighted help to turn on USB boot in the priority menu. And if you unplug the USB stick, it often gets turned off again. So the cycle repeats. At least, with optical drives, you generally left them plugged in all the time so you didn't have to do the bios dance whenever you wanted to try out a new distro.
Rob

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Wed, 24 Jun 2020 08:08:22 -0400
Subject: Re: Prospects for an accessible and open version of Android?

> OK, we're not quite communicating here.
> 
> System 76 systems come with Ubuntu 20.4 pre-installed. You want another
> distro, you pop in a usb stick and go for it, or launch over ethernet.
> 
> Asking for optical drives is a losing proposition these days, afaik.
> They're very yesterday.
> 
> I should be able to give yhou direct experience in a few weeks. I
> ordered my fully loaded MeerKat earlier this week. Delivery is around 3
> weeks.
> 
> Best,
> 
> Janina
> 
> Linux for blind general discussion writes:
> > While a machine coming preloaded with Linux is nice and at least means
> > not having to fight Microsoft's latest attempts to dig their claws in
> > and make nuking the copy of Windows I didn't want and installing Linux
> > harder and means a better than average chance the hardware is fully
> > compatible with Linux and won't require proprietary drivers,
> > personally, the more important issue is whether a machine is
> > configured for optical and/or USB boot out of the box so I can just
> > install whichever distro I want and configure it from scratch without
> > the hassle of tracking down a monitor, a willing sighted assistent,
> > and walking them through the process of fixing the boot order(because
> > as hard as finding a sighted assistant is, finding one who actually
> > knows their way around a BIOS is even harder).
> > 
> > So anyone know if System76 or any other pro-linux PC makers ship
> > systems I can just pop an installation CD/DVD into and run an
> > installer on first boot? Or have all of them followed the mainstream
> > into the insanity of disabling all boottable devices that aren't the
> > primary harddrive or placing them so low in the boot order they'll
> > only boot if the system drive is borked?
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> 
> -- 
> 
> Janina Sajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

