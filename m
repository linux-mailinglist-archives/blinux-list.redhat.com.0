Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 77C4C2B245A
	for <lists+blinux-list@lfdr.de>; Fri, 13 Nov 2020 20:19:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605295180;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WN8qdM4jjuP9IPPrxyLmaPqGjIPzYRPQ4TpwvRy4Brk=;
	b=Jbj7Ej7p6ujkDs/Mc4DiiQvUsaLEYgGW3I8MFnErG4qQmWcjSA7obmgmM/QcpB4m+SoPht
	NZvKedmMVynM6z+1v0PfGtfKPUApGYU9SnImAun2BDh/i8gCAo7Nh30vlHvZ0h/iyj5Sk5
	y8CXse1ukdaM8bl7PPBPdRnL8HlwD0Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-K8uXp-tdOV292uh2yCyCDQ-1; Fri, 13 Nov 2020 14:19:38 -0500
X-MC-Unique: K8uXp-tdOV292uh2yCyCDQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 337581868406;
	Fri, 13 Nov 2020 19:19:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1AE6B6EF5D;
	Fri, 13 Nov 2020 19:19:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD2C3180B657;
	Fri, 13 Nov 2020 19:19:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0ADJIvUU015203 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Nov 2020 14:18:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A2D66215688E; Fri, 13 Nov 2020 19:18:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D1282156A50
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 19:18:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC4E3185A79C
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 19:18:52 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-511-tXWP1xNYN5qMbphjdrlTmw-1; Fri, 13 Nov 2020 14:18:50 -0500
X-MC-Unique: tXWP1xNYN5qMbphjdrlTmw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 605F05401E9; Fri, 13 Nov 2020 19:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 5F474540105
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 14:18:49 -0500 (EST)
Date: Fri, 13 Nov 2020 14:18:49 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Possibly Off-Topic: Earphone recommendations.
In-Reply-To: <CAO2sX31vKWFMQmjUJqv7jSKqL+hqGB0T45-R8xMT42WiPHx_UA@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2011131416180.3220255@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oh speaking personally, I feel it is on topic.
Do you  mind sharing the model of Panasonic ear clip  headphones you have 
been  buying?
I resonate with all you said about earbuds and the like, so would welcome 
a chance to research your clips.
Thanks,



On Fri, 13 Nov 2020, Linux for blind general discussion wrote:

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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

