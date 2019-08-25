Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 491B29C5DF
	for <lists+blinux-list@lfdr.de>; Sun, 25 Aug 2019 21:40:47 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 45B9D3082B4B;
	Sun, 25 Aug 2019 19:40:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C891A600C4;
	Sun, 25 Aug 2019 19:40:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3C4AF1800B74;
	Sun, 25 Aug 2019 19:40:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PJeWoR009327 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 15:40:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1F78E196AE; Sun, 25 Aug 2019 19:40:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx21.extmail.prod.ext.phx2.redhat.com
	[10.5.110.62])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16DF319C70
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 19:40:29 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0164418C4265
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 19:40:29 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id 16so10601279oiq.6
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 12:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=iFfJ82n9/CBBjaBHrr2LlX7pFQFrmAjCJAtaH3apcNg=;
	b=Bgukpp1QeKkwd9YoXttLNKD9Y7ycqROWsSlF+XEHMd5JAOHJIBLi1mN6DMAt5/GXiI
	IxX8843uaqxvsAJmrevJWJncHmrvP7CwjshCEaoNlh90dmjRtMjlkMfZA0qb+kPmx1MJ
	+ESo7Hy0R8MW91y8ZueoYXMPkqczXpswIb3Kj0MwCetZlYGTjzadKvZGkyLK5ycksxdV
	8twd2gKQj6ojssU54QBYsnQZKUFZwD+kIXv3n5FygQaf6CuQligJzTgB6PVJLeCwIIdh
	fN9Mox4CbXjc3tDJG5xrko5UhqERI83F3JmUP5g4ajXxGHFl7QpiNs2ZcNFO9zCv98mA
	F8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=iFfJ82n9/CBBjaBHrr2LlX7pFQFrmAjCJAtaH3apcNg=;
	b=smHZUptDDWblloWCI55q26iDP4GOV9Dt3PcRoNd/KvksCx9Q+evpkFuqFBtbZBafqX
	QliNevLxD2pWr6qapcJ51WNmtDC0sfg4tAvIiaKVsrFt0JlWPC/B8HvezpgDkPpfcSzT
	r4vTHFazKEnfsTxh7qNl+cBWqC3s4YxUI8Mqn3wE/o6fITQaWhueYpITi71YLWA2N+CA
	m9QDgHK8TIeEnx9d37Z2vIdS61wwX02gMCvJ2cs4376JtbZQ3tCAMG25BFQxHEwHo2Ic
	EL3gK+a/4VCXPpgVhOW0S2xX4ih0F8KvbuHYxBQjvVCs90hXB4PAnd0+OU9bRqnFzuVP
	Azyw==
X-Gm-Message-State: APjAAAXAFi3MbnV5HJQtUa3n3bksO5rT+xlnRdUr19MQGNWVcWr9OjH7
	ooM0xYVLtxSoxRAMPUjgSH6RL2BespwUiR3rqwHiJg==
X-Google-Smtp-Source: APXvYqyYProWcXbdlX62aIM9wBi8TkfDbleJgoRyoNJINLS0pC4GDoOcoDkD+CQX27/YCsyzlIxeCiF78uvArVjgT/8=
X-Received: by 2002:aca:5b04:: with SMTP id p4mr10159795oib.161.1566762028249; 
	Sun, 25 Aug 2019 12:40:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sun, 25 Aug 2019 12:40:27 -0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.1908251242560.3197@server2.shellworld.net>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<A4215BB2-6107-4752-AC5F-679E449FC076@gmail.com>
	<Pine.LNX.4.64.1908241501480.31524@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<Pine.LNX.4.64.1908251242560.3197@server2.shellworld.net>
Date: Sun, 25 Aug 2019 19:40:27 +0000
Message-ID: <CAO2sX30F90R0WWgkP-B8dGEGewQYjowwCMuiUF_izpFL19wvzQ@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.62]);
	Sun, 25 Aug 2019 19:40:29 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.62]);
	Sun, 25 Aug 2019 19:40:29 +0000 (UTC) for IP:'209.85.167.182'
	DOMAIN:'mail-oi1-f182.google.com'
	HELO:'mail-oi1-f182.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.167.182 mail-oi1-f182.google.com 209.85.167.182
	mail-oi1-f182.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.62
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Sun, 25 Aug 2019 19:40:45 +0000 (UTC)

Okay, from my Firefox+Orca perspective, the site that results from the
"click here for a simplified shopping experience" is still there, and
the simplified site is what I get when I load Amazon from my
bookmarks.

The simplified homepage is filled with various advertising and
recommendation clusters, each headed by a level 2 html heading.
Admittedly, the one's that are filled with category links instead of
individual product links tend to go to pages with an atrocious
shortage of html headings, and the body of the simplified homepage is
empty if JavaScript isn't enabled. However, even without JavaScript,
the search box and cart links are easy enough to find(the go button on
the search box is the second button from the top of the page and often
the last button on the page, and shifting tabbing from this is the
link to clear the search box, the search box itself, and the cart
link.

In this view the shopping cart and individual product pages seem to
match the mobile view I remember using on an android phone prior to
blindness, with all of the most important stuff either a button or a
few tabs/shift tabs from a button. My only real complaint about this
view of the cart is the lack of a subtotal for saved items, and my
only real complaint about this view of product pages is that some
times the product description is truncated compared to the full site
and the inability to acess customer Q&A.

Admittedly, checking out from this view of the cart makes it difficult
to utilize points from my Amazon Prime card and for some reason, the
block that's supposed to display subtotal, shipping, tax, and total is
empty.

Now, from the simplified homepage, I have to disable css to make the
link to the desktop/full site visible to ctrl+F which I need if I want
to access customer Q&A or place an order using my reward points. The
desktop home page is a mess and often slows my browser to a crawl, but
fortunately, if I pull up the mobile view of my cart in one tab before
switching to the desktop home page in a different tab, I can keep my
cart in mobile view even across page changes while loading product
pages in desktop view in new tabs from the cart. The desktop product
pages are kind of cluttered and make picking options for products with
options harder, but add plenty of html headings to help skip over the
clutter to reach product descriptions(again, often more detailed than
on the mobile view) and customer Q&A(inaccessible from mobile view).

Admittedly, once done with things I need the desktop/full version of
the site for, I often need ctrl+F to find the link back to the
simplified homepage, and for some reason, I have to restart firefox to
get product pages and my cart to load in mobile view after switching
back to thesimplified homepage(if I don't restart Firefox, I get stuck
with somekind of intermediate view, and while the switch to desktop
view doesn't force an existing shopping cart tab to switch, the switch
back to simplified does).

Not entirely sure what cause Amazon to toss me captcha BS every now
and then, but it's rare enough that I tend to count it as a site error
rather than deliberately bad design.

I also have a problem with Amazon trying to push mp3 downloads of
Music and Audible versions of audiobooks when I'm looking for Audio CD
editions, but I suspect I'd have that problem even if I was still
among the sighted.

Best I can tell, there isn't much, if any difference between the
desktop and mobile views of search results, but as every product link
is an HTML heading and the link to open filter options is right after
the go button on the search box, any clutter doesn't really bother me.

Admittedly, my experience using Amazon is limited to Firefox and it
might be an inaccessible mess in Chromium, Safari, and whatever the
default Windows web browser is these days, but I'd personally give
Amazon at least a B+ for accessibility, and while I might just be used
to Amazon's idiosyncrasies, I'd declare it more accessible than the
vast majority of web stores. That said, I'm pretty sure this thread
was started because Amazon doesn't play well with links, elinks, lynx,
etc. or perhaps, that these browsers don't play well with Amazon.

If a website was giving me, Firefox, and Orca as much trouble as the
OP implies Amazon is giving them, the text browsers, and whatever
console screen reader they're using, I'd probably just call the web
designers idiots and not use the site(admittedly, not using Amazon is
a much bigger sacrifice than for most other websites), but given how
well Amazon works for me and how the main reason I use Firefox is that
none of the text-mode browsers I've tried seem half as usable(though,
in all fairness, even Firefox would be a pain in the anatomy to use if
Orca didn't provide all those handy navigational hotkeys), I can't
help wondering if the problem isn't as much due to the limitations of
the major text-mode browsers as it is due to the flaws in Amazon's web
design.

I mean, it would be great if Amazon and every other major website
worked well with elinks et al., but unless I'm majorly misinformed,
many of these browsers lack functionality all the major graphical
browsers have had for years, and while some of that functionality
probably needs to die in a fire, upgrading text browsers to better
work with modern web sites is probably much easier than convincing web
masters to cater too what's probably a very small minority of users.

But hey, if there's a text-mode web browser out there that's equipped
with all the functional aspects of the modern web and provides a
decent replacement for the navigational hotkeys graphical screen
readers provide when surfing the web, I'd love to hear about it.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
