Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id B85289C670
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 00:39:34 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 153C48CF1A5;
	Sun, 25 Aug 2019 22:39:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02B5810027A6;
	Sun, 25 Aug 2019 22:39:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2BD2F180B536;
	Sun, 25 Aug 2019 22:39:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PMdKbC012093 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 18:39:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 71F1360920; Sun, 25 Aug 2019 22:39:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx12.extmail.prod.ext.phx2.redhat.com
	[10.5.110.41])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CB07608C1
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 22:39:18 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6320D301A3E3
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 22:39:17 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id t24so10730682oij.13
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 15:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=lb+UcvRxxTVOmTBQGdnWGBo9ye8Gew8jR19Vy4D4Udc=;
	b=VITuzPeBl33quXoy0KiySC5stgKzJqsGFTPLuJqbETx/yMSkayBCHTOwpcKgE9GwQo
	oTEkSXaa068EUK7MqyqZAhe79caCyjVE1D7EhA7mk02TsgNv0afs6iQ8iIuj5oUGnrTU
	9NTmXv6KzEsOmrEr6C6+YpLtn9FR1C1+j1GbG2B/3Qma4hktiFmcWHC31uFgvjP6QUGK
	rzyLxD87axON3pwTYdqAgcXquWgxiSd0Jo1gp3aFtR0olyyE3ppOWsF+DpGu17VedQ90
	YwafQmtHmysmtvGzkIY5d6yzjNFhjXT0D/tsdXD9GYQ2Kav8OXqUkKgJYPOkv7ja/8O0
	IbFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=lb+UcvRxxTVOmTBQGdnWGBo9ye8Gew8jR19Vy4D4Udc=;
	b=lJBISCpE9QM8Kh8c95XJfF9lABs66PA1SiGRxSUkwIo+rq6zbES8ZeE7+wwbU4ssv1
	yA7yKArZt+BsICfVn7mHjR9k61BuAXNz1ONIlk/6ZeCt8NJiyZQmdgS/v4gV+lOrZ6rh
	4nBmKLr2eY2pl7M4byM/LoId1laCgfYpvYPNEM+Ki5POq0VveYmxLxMo6XLY+8rJ0IHA
	9XAXs2B/cfOdR/R7UK4mZRZ2gF5BzS4dmQUNWCJDR8CYuBqEMsuTjhIJivBx++5gaM+6
	2u2HTAraYDg0B4t68Q9ykrE2YN5mWi+x2LaLdJJv6q2d9ra/tJxqGhTy6bWFaYCn1F9W
	Qx9A==
X-Gm-Message-State: APjAAAWXTL6IuQLnPJ7ThzbtCfQCIvvJDpez3z16q9qqFFaU/FjY8JaT
	hlBVquofW5oJmdp6dFXRP+4LYZjOS5Bwb9M8jInmFg==
X-Google-Smtp-Source: APXvYqxOzCXeIXbcZnlt5z5p3mNsV70FO3GsF04aK/Ji5exxp+GZzTOeUEjsatWuEilWvwXG2PkgIAZEDyMe8WLgA2w=
X-Received: by 2002:aca:c58d:: with SMTP id v135mr10093857oif.42.1566772756502;
	Sun, 25 Aug 2019 15:39:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sun, 25 Aug 2019 15:39:15 -0700 (PDT)
In-Reply-To: <20190825.213109.635.20@192.168.1.131>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
	<20190825.212134.847.19@192.168.1.131>
	<64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
	<20190825.213109.635.20@192.168.1.131>
Date: Sun, 25 Aug 2019 22:39:15 +0000
Message-ID: <CAO2sX30wUQLmSwgswdFibSYszEVQdeLRmx1_8PNYN0oH6W_-qg@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.41]);
	Sun, 25 Aug 2019 22:39:17 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]);
	Sun, 25 Aug 2019 22:39:17 +0000 (UTC) for IP:'209.85.167.173'
	DOMAIN:'mail-oi1-f173.google.com'
	HELO:'mail-oi1-f173.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.173 mail-oi1-f173.google.com 209.85.167.173
	mail-oi1-f173.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.41
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]); Sun, 25 Aug 2019 22:39:33 +0000 (UTC)

Regarding the Domino's lawsuit, a few points to consider:

1. They are much smaller than Amazon, and thus there's a much greater
chance a lawsuit will actually accomplish something.

2. Last I checked, Domino's website was an inaccessible mess even in
Firefox, one of the major graphical web browsers. By comparison,
Amazon, though far from perfect, is usable in Firefox with Orca.
Assuming my experience isn't that unusual and that the gulf between
the major graphical browsers isn't as great as that between graphical
browsers and text-browsers, Domino's bad web design is probably
shutting out a much larger portion of their potential customers
compared with Amazon.

3. Domino's has actual competition. Even if the lawsuit results in the
metaphorical slap on the wrist or they don't care about business lost
because blind pizza lover's can't place an order on their website,
Bringing their poor treatment of disabled consumers to light might
actually convince enough people to favor other delivery pizzerias.
Amazon doesn't have any real competition, making it much harder for
anyone to follow through on a decision to deny them business.

That said, I confess I'm a bit leery of the legal route as a
instrument of change. Sitting aside the tendency for sufficiently
large corporations to shrug off all but the most damaging lawsuits,
I'm fearful of setting precedents that large corporations can easily
comply with while remaining ruthlessly uncaring in their pursuit of
larger bottom lines but which could easily trip up a small-time
creator trying to establish a web presence.

Part of me says what we need is for every k-12 and college class in
web design to focuse on standard's compliance and for every course
involving UI design to hammer home the importance of accessibility...
but I've got even less faith that the goverenment can actually promote
right thinking through education than that they can pass legistlation
that keeps corporations in check without overburdening indie creators.

Though, while on the subject, can anyone recommend a good text book
for someone wanting to expand their web design skills that puts
emphasis on writing web sites that are standards compliant and
accessible? I know how to format text with HTML and create lists and
tables, but don't know the first thing about CSS, HTML5, dynamic
content, or making forms interactive, so something friendly to a blind
beginner would be nice.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
