Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0616F410D2B
	for <lists+blinux-list@lfdr.de>; Sun, 19 Sep 2021 21:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632080689;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J5vWznwyIi89nOqPX3L5JgZ6Jt3kacSULmRcNs875V0=;
	b=YQxj3dhm584x72csVAVi7uyGD9gKlMIbxRWZTyMvgeGUeD+O9BoNpMk1qRoYZcPsylkke2
	DkPaL2yiVBKxsuNKOHPNcyJQOsag6feXv6NHv+dE82wKw+RSTuzlzaJoFTp6IYE2GdGYLE
	nGEGDpN1JmM+Hy6SRpMLPaElQQ2f7n4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-5-y-4k3QNYqJ9CfV-1acTw-1; Sun, 19 Sep 2021 15:44:48 -0400
X-MC-Unique: 5-y-4k3QNYqJ9CfV-1acTw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2FAB81431D;
	Sun, 19 Sep 2021 19:44:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 733F25D9D5;
	Sun, 19 Sep 2021 19:44:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF2374E590;
	Sun, 19 Sep 2021 19:44:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18JJiRJh024714 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 19 Sep 2021 15:44:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A4A921003219; Sun, 19 Sep 2021 19:44:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FB3C1110AAB
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 19:44:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 50EC3899ECB
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 19:44:24 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-43-zw35I80uMcOxyAr-T4GG2w-1; Sun, 19 Sep 2021 15:44:22 -0400
X-MC-Unique: zw35I80uMcOxyAr-T4GG2w-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id E9EAC621D90; Sun, 19 Sep 2021 19:39:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id E91706219B5;
	Sun, 19 Sep 2021 15:39:17 -0400 (EDT)
Date: Sun, 19 Sep 2021 15:39:17 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Possibly Off-Topic: Android Smartphone Recommendations.
In-Reply-To: <CAO2sX33aWL4__RHq2RZkFW+PimVh7Z7g=_TS1wudsG7sAeiBQA@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2109191536230.2662108@server2.shellworld.net>
References: <CAO2sX33aWL4__RHq2RZkFW+PimVh7Z7g=_TS1wudsG7sAeiBQA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
Cc: raspberry-vi@freelists.org
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well..perhaps?
The alcatel go flip.
While for me personally the phone is a bit of a lost cause, your goals 
differ  and might resonate with its almost smart phone abilities.
Buttons, 3.5 headphone jack, an insane amount of battery life, talkback 
and google assistant, etc. etc.
do you  mind sharing the flip phone you are currently using?



On Sun, 19 Sep 2021, Linux for blind general discussion wrote:

> Okay, so I'm contemplating putting a cheap Android smartphone on a
> spare line on my household's shared plan and trying to learn how to
> use talkback(or whatever it's called these days) and wanted to get
> some feedback from fellow Blind Linux users.
>
> I don't care for pretty much any of the trends in Smartphone design
> I'm aware of, so I know I'll have to make compromises to things I
> consider bad design, and I don't have the funds to buy a phone
> straight out, so I'm limited to what I can get through my carrier's
> in-house financing. My service is through US Cellular, and I'm stuck
> with them until at least May 2023 due to existing financing plans on
> phones already on the plan. Recommendations for phones US Cellular
> carries would be nice, but considering their website is utter
> garbage(and even my sighted housemates agree), I'd rather ask a sales
> associate if they carry x phone and be told no than subject people not
> their customers to their website.
>
> Anyways, my biggest priority is that the phone has a 3.5 mm audio
> jack. I already have a pair of wired earphones I like and would like
> to be able to go back and forth between the phone and my Desktop(which
> doesn't have bluetooth as far as I know) and don't have the money for
> wireless earphones that have decent battery life, aren't earbuds, and
> have an aux port for compatibility with older devices.
>
> My next biggest priority is longevity. I don't want to get stuck on
> the upgrade treadmill with a phone that's barely paid off by the time
> it's stuck with a version of Android that no one supports anymore.
> Long term support from the manufacturer would be nice, but I'll settle
> for good chances of running generic Android images or being able to
> load a more traditional Linux Distribution. And on a related note,
> something that won't shatter like glass if knocked out of my hand
> would be nice.
>
> Some lesser priorities:
>
> The more physical buttons, the better... a proper numpad or full
> qwerty keyboard would be great, but not holding my breath. I know I'm
> going to have to do battle with touch gestures or voice commands, but
> anything that can be done via traditional controls would be a great
> anti-frustration feature in my book.
>
> Since a removable battery is highly unlikely, and being able to charge
> a spare on a dock is a pipedream, decent battery life would be a plus,
> though I get the impression that decent battery life and smartphones
> are seldom used in the same sentence without some kind of negation.
> Also, the ability to completely disable the display part of the
> touchscreen, or at least keep the backlight incredibly dim if not off
> would be nice... Honestly, I'd rather not have a screen at all and
> instead use the real estate for a keyboard on par with those Texas
> Instruments uses in their calculators, but again, not holding my
> breath.
>
> Since smartphones cap out at a rather anemic 128GB of on-board
> storage, and I get the impression 128GB is still a premium feature,
> removable storage is a must... and it would be nice if I could access
> the memory card and even the phone's on-board storage by connecting
> the phone to my Desktop via USB, it showing up as generic USB mass
> storage, and just being able to do a
>
> pmount /dev/sdx
>
> where x is whatever letter the phone gets assigned instead of having
> to constantly mess around with moving a microSD card between phone and
> desktop... And it's a pipedream feature, but a full-sized SD slot so I
> can just pop in my existing 512GB card instead of investing in a high
> capacity microSD and having to populate it would be nice.
>
> And, it's a bit of a lower priority, but I have big hands, so
> something with a decent amount of heft would be nice... and as I plan
> to keep my flip phone until the day it stops working, I couldn't care
> less about how well the smartphone does as an actual phone.
>
> I've heard good things about Google's Pixel line of smartphones in
> regards to accessibility, and understand the Pixel 3 to be a solid,
> economical option, but I also suspect that was coming from the
> perspective of someone who either uses a Windows Desktop or uses a
> smartphone as their primary computing device.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

