Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9CD4FFFEB
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 22:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649881428;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Eykeu7eMucNJKB1BrL76fcI3EHRpqgA+SfUMcYVjEHo=;
	b=gsogUw1QdL/hYB3Mvc7tXdbSj1qbg/TJDw7nA1tPlB0n+efUJ4s6/CoiQv7tn7c/sd5Kuj
	bOHexDxeMjD6BISFOhBqtF/SAvlIi5IwTn8aha8zXGzGVzuPPMKcvnCJoXWp2DKqew7BZc
	SEhD6NpqQC5T+gxN5dxT595cyTqz3Xo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-157-8I0XvL7QNsaVAeFnaJUotQ-1; Wed, 13 Apr 2022 16:23:45 -0400
X-MC-Unique: 8I0XvL7QNsaVAeFnaJUotQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC135101AA52;
	Wed, 13 Apr 2022 20:23:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9312C2166BA4;
	Wed, 13 Apr 2022 20:23:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 07AE71940353;
	Wed, 13 Apr 2022 20:23:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 16:23:39 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
In-Reply-To: <mailman.8346.1649867449.111204.blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8209.1649858812.111208.blinux-list@redhat.com>
 <mailman.8162.1649859377.111209.blinux-list@redhat.com>
 <mailman.8191.1649860611.111209.blinux-list@redhat.com>
 <mailman.8286.1649861527.111202.blinux-list@redhat.com>
 <mailman.8346.1649867449.111204.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.8350.1649881422.111208.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

These debates can be both informative and useful for those new to linux
who haven't made their choices yet.


On Wed, 13 Apr 2022, Linux for blind general discussion wrote:

> I think the most important things to remember here are that:
>
> 1. People are different and that's okay.
>
> 2. Blind people are just as diverse as people in general.
>
> At the end of the day, debating Mutt versus Thunderbird has about as
> much impact as debating Coke versus Pepsi. Hardcore fans of either
> aren't likely to change their mind for any reason, there's no way of
> doing an objective comparison, and just as how which cola is better
> comes down to the individual's tastebuds, which e-mail client is
> easier to setup and use ultimately comes down to which software
> idiosyncrasies the end user is more comfortable with.
>
> Though, for what it's worth, just as I'm not a fan of colas and much
> prefer Dr. Pepper when it comes to caramel colored fizzy drinks, I'm
> not a fan of e-mail clients and prefer to just use my e-mail's web
> interface... and the last time I checked my e-mail on a machine other
> than my personal one, doing so was as simple as launching Firefox,
> typing gmail.google.com into the address bar, entering my e-mail
> address and password, and then once logged in, I just used what of
> NVDA's navigational hotkeys matched Orca's to check level 3 headings
> for how many unread messages were in my inbox and spam, and jump to
> the checkbox on the first message in the message list... Granted, that
> was years ago, so its entirely possible paranoid security on Google's
> part would make logging in difficult, and they might try forcing me to
> use their bogged down with JavaScript standard view instead of
> respecting my preference for the HTML view.
>
> Granted, the only time I've ever used an e-mail client was theGmail
> app on android 2.2 back when I still had a working eyeball, so I
> suspect I'd find both Mutt and Thunderbird perplexing if I ever gave
> them a try, and the only things I know about SMTP, pop3, and imap is
> the first stands for simple mail transfer protocol and they all have
> something to do with the technical details of e-mail most people are
> ignorant of... Though, I'd probably give Mutt or Alpine a try befor
> Thunderbird or whatever Chromium's companion e-mail client is called
> if only because my setup doesn't really let me run GUI applications
> other than Firefox.
>
> And while I agree the massive overlap in key bindings makes switching
> between GUI applications easy, and its great that Micro exists for
> those wanting to reduce their GUI dependence without having to learn
> an editor with key bindings that predate standardization, I must
> confess that I'm so used to nano's key bindings that I wish I could
> make Firefox switch over to nano-like bindings when I focuse a
> multi-line textbox and the only modern convention I miss when typing
> in nano is the ability to select text by holding shift and using
> arrow/navigation keys...
>
> Honestly, the application I most want that doesn't seem to exist would
> probably be a text-mode web browser that:
>
> 1. Arrow and navigation keys move around the page like in an editor.
>
> 2. Has Firefox-like keybindings for all the common web browser functions.
>
> 3. Has Orca-like keybindings for page navigation.
>
> 4. Has a browse/focus mode toggle equivalent to Orca+A.
>
> 5. Forces pages with multi-column layouts into single column for
> presentation(or at least as the option to)... This is to avoid
> situations where a console screen reader tries to interleave text from
> a list of links in the left column with the page's main content in the
> center/right column.
>
> 6. Supports the functional aspects of JavaScript, HTML5, etc. while
> ignoring the eyecandy aspects.
>
> 7. Disables rich web content by default, but has a keyboard shortcut
> to activate it for the current page and a menu for fine tuning which
> rich content is allowed, and whether the allowance is temporary or
> permanent(essentially providing No-Script-like functionality).
>
> 8. embeds nano(or the text-mode text editor of the user's choice)
> within focused textboxes(so, if I wanted to post the contents of a
> file on my hard drive via a web form, instead of opening a second tab,
> navigating to the file on my system, and copy and pasting it into the
> form, I could just go into thetext box, get an embedded nano window,
> and use Nano's insert from another file command... and if there's
> multiple files, I could just do that repeatedly... and unlike with
> Firefox's address bar, I'd have tab completion for getting the path to
> the file).
>
> 9. The ability to import bookmarks, saved passwords, etc. from a
> Firefox(and other popular browsers) profile would be a nice bonus,
> especially if it was done via a supplementary package that could be
> removed after migrating.
>
> There are probably other features I'd want in my dream text-mode web
> browser, but something that provides a remotely similar browsing
> experience to Firefox+Orca would be amazing and would probably be
> enough to make me ditch the GUI altogether... though I confess, a
> simple means of launching arbitrary GUI applications in a kiosk-like
> manner with Orca would be nice for those rare occasions I'm curious to
> give a GUI application a try... sadly, maintaining a full desktop is
> over kill with how much I live in the GUI, and the script I use to
> launch Firefox with Orca suffers from crippling overspecialization and
> its someone else's work that I don't begin to understand how to adapt
> to applications beyond the handful it was designed for.
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

