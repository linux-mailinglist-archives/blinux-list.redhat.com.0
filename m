Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEDD502EE2
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 21:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650049368;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5s2xXvY+TY3NyWK5dkry34LGorQGqvfUgRIZ03Qq0wM=;
	b=Mx/d9Di6c7abtgWHX6V9r+uuTyt5q2+fS6voegfZNpQg6jGqI2hUlzBl0hM4j89ODku26u
	tY1h1hL+NOGZ0mytVWDhBPUBPUQfEx4wTy42ODP/fVYrkA1lBnIqQTa8S1M64CyPwkDBT9
	Z4Kso9D4ric3AdMiSZzYh0CT7GK2JMg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-403--UdTl6YSMPKJHe-EGbFzmA-1; Fri, 15 Apr 2022 15:02:45 -0400
X-MC-Unique: -UdTl6YSMPKJHe-EGbFzmA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 406C33C01D9E;
	Fri, 15 Apr 2022 19:02:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 674A09E6D;
	Fri, 15 Apr 2022 19:02:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C8AAB1940352;
	Fri, 15 Apr 2022 19:02:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.8801.1650034419.111206.blinux-list@redhat.com>
 <mailman.8655.1650038644.111209.blinux-list@redhat.com>
 <mailman.8537.1650045730.111205.blinux-list@redhat.com>
 <mailman.8822.1650046773.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.8822.1650046773.111206.blinux-list@redhat.com>
Date: Fri, 15 Apr 2022 14:02:21 -0500
Subject: Re: Getting started with Emacspeak?
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.8760.1650049359.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To kill the icons, do C-u C-e a. That's Control + U (universal argument),
Control + E for the Emacspeak layered command, then a for audio icons. Then
to change speech rate, do C-u C-e d r. To set that perminently, do C-h spc
(control + h then space) for customize, type emacspeak, pres Enter, find
the speech rate for whatever you're using, eSpeak or Outloud, then change
that number, then save the buffer with C-x s.

To install MELPA, add this to your .emacs.el file:

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

Save your .emacs.el file. Now, do C-h p. This opens a list of packages. You
can use your arrow keys, or n and p, to navigate packages. Press i to make
the ones you want to install, including the nov package for reading books,
then press x to install. You'll be asked if you want to install a number of
packages, press y.

Then, when done, you can add this to enable nov.el to open EPUB files:

(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))

You can read more about it at:

https://depp.brause.cc/nov.el/

Devin Prater
r.d.t.prater@gmail.com




On Fri, Apr 15, 2022 at 1:20 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> So. How would I go about installing all that from scratch then? I've a
> bone tock emacspeak install with paru -S emacspeak.
>
> Now. How do I get that book thing, tramp and gnus or notmuch and such. Is
> there a script I can run that does all the heavy lifting for me or is it a
> case of download this, extract it here, edit these files and such? I've no
> clue where Arch puts the configs and stuff for emacspeak or where to even
> look for editing stuf like that.
>
> So. Where do I begin?
>
> See what i want to do before anything else, is up the speech rate and kill
> the sound icons, the beeps and bleeps when I move around a buffer. I did
> look in the emacspeak manual but didn't find anything and the default
> speech rate is insanely slow for my liking
>
> On Fri, Apr 15, 2022 at 01:01:55PM -0500, Linux for blind general
> discussion wrote:
> > One thing you forgot to ask: Can I read books in Emaacs with Emacspeak?
> The
> > answer is yes, through Nov.el (from the Melpa package archives). It's
> > pretty darn nice, preserves all the formatting, lets you move through
> > chapters and such, much better than converting to plain text and trying
> to
> > save your place there.
> > Devin Prater
> > r.d.t.prater@gmail.com
> >
> >
> >
> >
> > On Fri, Apr 15, 2022 at 11:04 AM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> > > Hi answers inline, but in short for the first three questions: yes it's
> > > possible.
> > >
> > >
> > > Linux for blind general discussion <blinux-list@redhat.com> writes:
> > >
> > > > I know i'm going to be in for a long, long, painful process.
> > > >
> > > > But here's my questions.
> > > >
> > > > Can I, on emacspeak...
> > > >
> > > > 1. Check and respond to my gemails? Dirent things online have
> > > > different answers
> > > You can use any of the email clients such as notmuch, Wanderlust, gnus
> > > or mu4e to do just that. The only thing I have to say is that like most
> > > terminal applications, you have to deal with  text files to enter IMAP
> > > and SMTP details.
> > >
> > > As for me, I use notmuch.
> > >
> > >
> > > >
> > > > 2. Have a telnet client up and going to connect to stuff like MUDs
> > > > without leaving emacspeak?
> > >
> > > Sure, you use tramp for that. For instance, entering /ssh:root!blahblah
> > > will connect you to a remote ssh server at blahblah.
> > >
> > > >
> > > > 3. Can I browse the modern net in emacspeak or?
> > >
> > > You can use eww or w3. If you set a variable for it to pretend as if it
> > > is FF or something else. However, personally, though I am a heavy Emacs
> > > user, I still find browsing with Firefox or Chrome with Orca a better
> > > option.
> > > >
> > > > And 4. Al, do you happen to know where I can get a hold o that book
> > > > you metnioned?
> > >
> > > I am not Al, but the book is called Harley's Emacs Field Guide and can
> > > be found from Bookshare.
> > >
> > >
> > > Cheers,
> > >
> > > Ishe
> > >
> > >
> > > >
> > > > Those are my four questions. I the answer to any of the above is no,
> > > it's a deal breaker for me
> > > > --
> > > > Jace's words are up there. Quoted and old messages below this point
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> --
> Jace's words are up there. Quoted and old messages below this point
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

