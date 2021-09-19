Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 66777410C68
	for <lists+blinux-list@lfdr.de>; Sun, 19 Sep 2021 18:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632069777;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BVdB83UqasMyGopOGPvVn3n1QIs+6S+YD4vU00ol5nw=;
	b=Mb/bXesMYS2V4MYWM0yCiANWjxyr5/NaCm6XuVj4rKpv+VYgamLVWqxh5qsnkaPjSvFgts
	YzPgqePQZfxYVsj34myNhwAUr+o7Uitz6COZezflVk+C1E0t3T5Pj7OzqG4vReq8PWPE1O
	n9k6moxKd3uTgu5e7s+pdAx5GxvvZlk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-8KhkPj7UOI-GPSksaAHI7g-1; Sun, 19 Sep 2021 12:42:54 -0400
X-MC-Unique: 8KhkPj7UOI-GPSksaAHI7g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C067F802935;
	Sun, 19 Sep 2021 16:42:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C627101E1DB;
	Sun, 19 Sep 2021 16:42:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7F3961801241;
	Sun, 19 Sep 2021 16:42:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18JGfH1G007460 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 19 Sep 2021 12:41:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3D32850178; Sun, 19 Sep 2021 16:41:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 37E8450177
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 16:41:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E8B1800883
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 16:41:13 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-532-0ET3Is31O8OdsJL3etmrnQ-1; Sun, 19 Sep 2021 12:41:11 -0400
X-MC-Unique: 0ET3Is31O8OdsJL3etmrnQ-1
Received: by mail-qv1-f53.google.com with SMTP id a13so9661608qvo.9
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 09:41:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=u1a7gH5t9zO2lzb4I6qyM0eNp9+B1zOaeNaEggdKWmM=;
	b=RFmmmCHDB92+HlYGMt43/UJ4Zyuk6owpRHFX1u5WlDjjEoi6P1BGPLiYhjmZTXopnt
	1hJ9axrUQoz9CnmCcfdcVz9kZ3VQfviHvMsogOlFHj2z9wQ8zDVDd2uxSOWD17Ts1c/L
	3gQ/OEMI0FftzJyGTly9R3vd9XgK4xC6j5SeFempBnbBoxBghlUhf0HWPPVKprTPdVHE
	4IqjwIooLNQxpz3VwiwtZcis/OeJpTq1/hopayNn5Cm1/LSgUYP1DXrwnFIDLGdOsSpF
	zbDiWRk5xgpMnzew79qfuZuwzfFxEjFmBNLgbWxmhEytI8m3Sqd5QxbUSL1M3y2s4m+X
	ft+w==
X-Gm-Message-State: AOAM531tiTOXdHk7j3nQWsOvgSEq46chzwblnrPXy5K5/s1KoFl/nLkH
	pN0yBW8jJqY0gVazQ0+2gcCirAHHB2TCFOWuo3s+wUD0fsE=
X-Google-Smtp-Source: ABdhPJzuZ0+bkNYCRErNAEI6dZa08u6UY57bMJPuDBbpBR9Jvdr7hO+v/ZiQ2WM/JfXFklEaluITwW9Ry8oeGjiZasQ=
X-Received: by 2002:a05:6214:6a7:: with SMTP id
	s7mr21296758qvz.34.1632069670750; 
	Sun, 19 Sep 2021 09:41:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:5548:0:0:0:0:0 with HTTP; Sun, 19 Sep 2021 09:41:10
	-0700 (PDT)
Date: Sun, 19 Sep 2021 16:41:10 +0000
Message-ID: <CAO2sX33aWL4__RHq2RZkFW+PimVh7Z7g=_TS1wudsG7sAeiBQA@mail.gmail.com>
Subject: Possibly Off-Topic: Android Smartphone Recommendations.
To: Linux for blind general discussion <blinux-list@redhat.com>,
	raspberry-vi@freelists.org
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so I'm contemplating putting a cheap Android smartphone on a
spare line on my household's shared plan and trying to learn how to
use talkback(or whatever it's called these days) and wanted to get
some feedback from fellow Blind Linux users.

I don't care for pretty much any of the trends in Smartphone design
I'm aware of, so I know I'll have to make compromises to things I
consider bad design, and I don't have the funds to buy a phone
straight out, so I'm limited to what I can get through my carrier's
in-house financing. My service is through US Cellular, and I'm stuck
with them until at least May 2023 due to existing financing plans on
phones already on the plan. Recommendations for phones US Cellular
carries would be nice, but considering their website is utter
garbage(and even my sighted housemates agree), I'd rather ask a sales
associate if they carry x phone and be told no than subject people not
their customers to their website.

Anyways, my biggest priority is that the phone has a 3.5 mm audio
jack. I already have a pair of wired earphones I like and would like
to be able to go back and forth between the phone and my Desktop(which
doesn't have bluetooth as far as I know) and don't have the money for
wireless earphones that have decent battery life, aren't earbuds, and
have an aux port for compatibility with older devices.

My next biggest priority is longevity. I don't want to get stuck on
the upgrade treadmill with a phone that's barely paid off by the time
it's stuck with a version of Android that no one supports anymore.
Long term support from the manufacturer would be nice, but I'll settle
for good chances of running generic Android images or being able to
load a more traditional Linux Distribution. And on a related note,
something that won't shatter like glass if knocked out of my hand
would be nice.

Some lesser priorities:

The more physical buttons, the better... a proper numpad or full
qwerty keyboard would be great, but not holding my breath. I know I'm
going to have to do battle with touch gestures or voice commands, but
anything that can be done via traditional controls would be a great
anti-frustration feature in my book.

Since a removable battery is highly unlikely, and being able to charge
a spare on a dock is a pipedream, decent battery life would be a plus,
though I get the impression that decent battery life and smartphones
are seldom used in the same sentence without some kind of negation.
Also, the ability to completely disable the display part of the
touchscreen, or at least keep the backlight incredibly dim if not off
would be nice... Honestly, I'd rather not have a screen at all and
instead use the real estate for a keyboard on par with those Texas
Instruments uses in their calculators, but again, not holding my
breath.

Since smartphones cap out at a rather anemic 128GB of on-board
storage, and I get the impression 128GB is still a premium feature,
removable storage is a must... and it would be nice if I could access
the memory card and even the phone's on-board storage by connecting
the phone to my Desktop via USB, it showing up as generic USB mass
storage, and just being able to do a

pmount /dev/sdx

where x is whatever letter the phone gets assigned instead of having
to constantly mess around with moving a microSD card between phone and
desktop... And it's a pipedream feature, but a full-sized SD slot so I
can just pop in my existing 512GB card instead of investing in a high
capacity microSD and having to populate it would be nice.

And, it's a bit of a lower priority, but I have big hands, so
something with a decent amount of heft would be nice... and as I plan
to keep my flip phone until the day it stops working, I couldn't care
less about how well the smartphone does as an actual phone.

I've heard good things about Google's Pixel line of smartphones in
regards to accessibility, and understand the Pixel 3 to be a solid,
economical option, but I also suspect that was coming from the
perspective of someone who either uses a Windows Desktop or uses a
smartphone as their primary computing device.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

