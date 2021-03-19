Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 25DA2341372
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 04:27:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616124453;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OGngfEezKmzuy2yHW7ommHS1R27TBq01VRJ1brji/7E=;
	b=RueAOttqDacYNibOdZn4JcTkvb8EORvYYIi/weJbnj+Hok0ipixEnzxmJ1FtoyCM8isF3Q
	bfSGPINU8+2DB9Kif+i/tl2iy1tB3A1XZAoMEZVgibS/2VZxLpRyQvgFTY/hYj+az6itb8
	PiEfn3gCaZuOgQDsgr7qBNGnjrTZ5Gs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-z_qGlby-OGeHceaS3vIcOw-1; Thu, 18 Mar 2021 23:27:31 -0400
X-MC-Unique: z_qGlby-OGeHceaS3vIcOw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59F781009456;
	Fri, 19 Mar 2021 03:27:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8AAA1002388;
	Fri, 19 Mar 2021 03:27:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2F1781809C83;
	Fri, 19 Mar 2021 03:27:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12J3RJv9018241 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 23:27:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B627AFA726; Fri, 19 Mar 2021 03:27:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0FD2F97E7
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 03:27:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43C18185A7B4
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 03:27:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-111-r1KJpZ2wOWGRdTilEOR9sw-1; Thu, 18 Mar 2021 23:27:14 -0400
X-MC-Unique: r1KJpZ2wOWGRdTilEOR9sw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4F1q8151qZz1lSt
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:27:13 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4F1q814hMHzcbc; Thu, 18 Mar 2021 23:27:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4F1q814bD3zcbV
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:27:13 -0400 (EDT)
Date: Thu, 18 Mar 2021 23:27:13 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Are Their Any Other Graphical Screen-Readers in Linux, Other
	than ORCA?
In-Reply-To: <CAO2sX30O_NtdZbLXaK3CDJbc2omc0064RG1HfwrXfDgPi3KLuA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2103182326400.8329@panix1.panix.com>
References: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
	<7fad9a07-f428-f096-1a4e-2ef5589a1388@protonmail.com>
	<Pine.LNX.4.64.2103181943340.1840295@server2.shellworld.net>
	<8bb58e3d-eb8f-1140-22a0-f8d18b7ec47@hubert-humphrey.com>
	<CAO2sX30O_NtdZbLXaK3CDJbc2omc0064RG1HfwrXfDgPi3KLuA@mail.gmail.com>
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

maybe running a terminal using edbrowse would help.

On Fri, 19 Mar 2021, Linux for blind general discussion wrote:

> For what it's worth, I agree that it's disgusting how many websites
> use JavaScript and other rich web content for things that could be
> done with basic HTML... and wish I knew a good way to selectively
> block problematic JavaScript while allowing just the JavaScript that
> is vital for some websites to function. Pre-Quantum versions of
> NoScript worked great for this, but that became pretty much unuseable
> with the Quantum overhaul and I've yet to find a decent replacement.
>
> I also think Orca's preferences are downright labyrinthine, making
> toggling settings that aren't set to a keyboard shortcut impractical
> despite cases where it would be useful to do so.
>
> That said, on the dream interface front, my biggest want is a
> text-mode web browser that I find half as usable as Firefox with
> Orca... My main reason being that Firefox and Orca are by far the
> largest apps I use on a daily basis, and if I could find a
> satisfactory text-only browsing experience, I could ditch the GUI
> altogether.
>
> At a bare minimum, it would need to feature:
> Full support for modern web technologies(As much as I hate JavaScript
> and it's ilk, there are just too many websites that abuse them to
> avoid them entirely).
> Built-in navigational Hotkeys similar to those provided by Orca, NVDA, and JAWS.
> Firefox-like Keybindings, or at least keybindings that aren't
> completely alien to someone used to Graphical browsers.
> A page renderer the forces multi-column pages into a single column so
> screen readers aren't trying to read text from multiple columns.
> Arrow keys move around the page like in most text editors.
> focused objects stretch to the width of the screen.
> Tabbed browsing.
>
> And things that would be nice to have:
> JavaScript and Cookies blocked by default, but with keyboard shortcuts
> to allow them on the current page, reloading the page as needed and a
> permissions menu that provides more nuanced control of these or to
> permanently white list certain domains. Also, auto whitelisting of
> cookies created when submitting a log-in page would be nice(actually,
> it would be ideal if only cookies needed to maintain log-ins where
> accepted and all others were blocked by default).
> pressing enter simulates a left mouse click on the character under the
> reading cursor if enter would normally do nothing. For websites with
> JavaScript clickables or places that appear as plain-text that are
> meant to be clicked.
>
> If anyone knows of any text-mode browsers with any of these features,
> I'd love to hear about them, but from what I've tried, most text-mode
> browsers do one or more of the following:
>
> preserve multi-column layouts, which leads to stuff from different
> columns getting read together(e.g. pages with a list of links in the
> left margin and the main content in the middle end up with each line
> consisting of a link from the left column and a line of text from the
> middle column. mixing content that one doesn't want mixed and often
> making the body text more choppy due to some of each line going to
> text that should be off screen).
>
> Have incomplete or non-existant support for rich web content, meaning
> many websites simply don't work.
>
> Have keybindings that make no sense to someone who was introduced to
> the Internet via graphical browsers(though I imagine many people who
> have been using text mode browsers since the dos days and are only
> trying graphical browsers due to how the web is growing ever more
> hostile towards text-only browsers are probably just as lost
> attempting the migration in the other direction). Up and down arrows
> acting the way I expected from  shift+tab and tab was surpremely
> disorienting the first time I tried a text-mode browser, not to
> mention that it leaves me dependant on screen review to read what's
> between tabbable elements.
>
> And quite frankly, the navigational hotkeys provide by Orca, NVDA, and
> JAWS are so darn useful, I wonder how I got by without them back when
> I could see. Sure, a scroll wheel or swiping on a touchscreen is a
> powerful tool for jumping over large sections of a web page when you
> can see well enough to do so, as is simply tapping/clicking on the
> elements you want to put focus on, but it still sounds slow compared
> to keeping one's fingers on the keyboard and instantly jumping between
> headings or between form elements of a specific type... and why screen
> readers have to provide this functionality instead of it being a
> standard feature in all browsers, graphical and text-based, baffles
> me... If my vision was miraculously restored tomorrow, it would be
> tempting to keep Orca around just for the navigational hotkeys if I
> couldn't find a Firefox extension to do the same.
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

