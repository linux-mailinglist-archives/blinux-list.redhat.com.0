Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 741302B1EE8
	for <lists+blinux-list@lfdr.de>; Fri, 13 Nov 2020 16:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605281827;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qDitoBTZb+yBNN0KcVWes2VmyqkMh74QvgWWXlvl7+U=;
	b=GB0rhaIHnyBq+3Yz4+8XjwGEgGcpfokq7N+C7FNeIJ99J/JdR7RX5jfVd44vwAqdQo9RHu
	4VPAyOOFpmsui0CGi7+k6aZDaYJOp2osTZOFJ7vZCVGx9fYJcGbjZZYYdexNKYUoT81bEm
	LuTGz1aqsXOmzQx0CUPie1AAO78jxVs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513-zYTNW84zNmmGeairFxNmsQ-1; Fri, 13 Nov 2020 10:37:04 -0500
X-MC-Unique: zYTNW84zNmmGeairFxNmsQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E20657083;
	Fri, 13 Nov 2020 15:37:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 834B96EF5D;
	Fri, 13 Nov 2020 15:36:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3EC9B58104;
	Fri, 13 Nov 2020 15:36:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0ADFarp8021639 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Nov 2020 10:36:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E6468100BFF1; Fri, 13 Nov 2020 15:36:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2836100BFEF
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 15:36:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB72D803522
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 15:36:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-545-PzhcY7b_PIyXEOKiacJyWQ-1; Fri, 13 Nov 2020 10:36:47 -0500
X-MC-Unique: PzhcY7b_PIyXEOKiacJyWQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CXjHz3ML0zTMk
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 10:36:47 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CXjHz34ppzcbc; Fri, 13 Nov 2020 10:36:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CXjHz2ywBzcbV
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 10:36:47 -0500 (EST)
Date: Fri, 13 Nov 2020 10:36:47 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Possibly Off-Topic: Earphone recommendations.
In-Reply-To: <CAO2sX31vKWFMQmjUJqv7jSKqL+hqGB0T45-R8xMT42WiPHx_UA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2011131034020.24898@panix1.panix.com>
References: <CAO2sX31vKWFMQmjUJqv7jSKqL+hqGB0T45-R8xMT42WiPHx_UA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Why not blow a few more bucks and go bluetooth?  Given all of the tech
you have your media player might pair and your computer would pair with
a bluetooth card plugged into a usb slot.  This question would have
better been asked on electronics-talk@nfbnet.org.

On Fri, 13 Nov 2020, Linux for blind general discussion wrote:

> Date: Fri, 13 Nov 2020 10:10:34
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>,
>     Orca List <orca-list@gnome.org>, raspberry-vi@freelists.org
> Subject: Possibly Off-Topic: Earphone recommendations.
>
> Sorry if this qualifies as off-topic for any of the mailing lists I'm
> sending it to, but I figure I'm not the only one on any of these lists
> who wears earphones almost every waking moment and considers them one
> of the most essential pieces of technology they use on a daily basis.
>
> Anyways, as so often happens, frequent plugging and un plugging lead
> to the wires on the plug of my Panasonic ear clips to fray to the
> point one earpiece  is silent most of the time, and i have no spare
> earphones, so I'm in the market for a new pair.
>
> My initial thought is to just order a couple pairs of the same
> Panasonic earclips I've been using for years. They're comfortable
> enough for all day wear, have no sound quality issues I can detect,
> are fairly inexpensive(~$12-15 on Amazon depending on color choice),
> and I know what I'm going to get.
>
> On the other hand, the Panasonics I've been using for the last 5 years
> or so have always had an annoyingly short wire(I need to hike up my
> pants for the wire to reach my portable media player in my pocket and
> I more often than not have to use an extension cable with my desktop),
> wrapping the wire around my neck when no plugged into anything is kind
> of annoying, and they seem to be getting less durable(I've gone
> through two pairs since last December, the three previous pairs each
> averaged about a year-and-a-half based on my Amazon order history),
> and it would be nice to be able to ditch the wire when it isn't
> needed.
>
> But it's nearly impossible to find wireless earphones that are ear
> clip style, and even expanding to other form factors, it's hard to
> find a pair with halfway decent battery life, for under $30, and I've
> yet to find a pair that either had the option of using an aux cable
> for connecting to devices without Bluetooth or a dongle you could just
> plug into a 3.5mm jack, and best I can tell, Bluetooth adaptors aren't
> all that affordable either.
>
> So anyone have any recommendations for a good, inexpensive pair of
> earphones that either has a long, rugged wire or which is wireless
> with good battery life and a good solution for backwards compatibility
> with wired-only audio sources? Preferably of the ear clip
> style(regular earbuds are too insecure for my liking, earplug style
> earbuds irritate my ear canals and leave me prone to ear infections, I
> have big ears, so retro earmuff style headphones leave me with sore
> cartilage after a few hours, and behind the head earphones sound like
> they'd be uncomfortable with how much of my time is spent either
> laying down with my head on a pillow, in a recliner with my had on the
> headrest, or leaning against a wall.). And for wired solutions,
> something with a built-in cord spool or recommendations for a third
> part spool that could be added would be appreciated.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

