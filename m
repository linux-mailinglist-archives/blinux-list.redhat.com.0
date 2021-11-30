Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCCC462CC5
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 07:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638253796;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5fW6FQNqYP7FyzkOSsZOUQV4H24/yC8SNbUZ/t5hYl4=;
	b=FM89YJ6O5aDXKNTnJ20Ij2LTrnQk2EGTX+9Pqr4YdTPOYNBtqFQ5JOIIwwbplLuwxvH20r
	DFRONxCmPadY45IbO1FegyX+ItFpIIMrIemiH7zAuGWHYsWSDFDcrhWga1TXknQ5m0vQj6
	Qm8iOM9l1r5ofU03xpw0IVzIOHwcQzg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-209-SgkoV2mwMUSwad-l85-sUQ-1; Tue, 30 Nov 2021 01:29:52 -0500
X-MC-Unique: SgkoV2mwMUSwad-l85-sUQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A524F83DD22;
	Tue, 30 Nov 2021 06:29:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFFF11B5C0;
	Tue, 30 Nov 2021 06:29:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D08901809C88;
	Tue, 30 Nov 2021 06:29:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AU6TITr015733 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 01:29:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C51034047279; Tue, 30 Nov 2021 06:29:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C12C74047272
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 06:29:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A7F9D185A794
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 06:29:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-35-27lhOQFDPM6fBwZ0whWZDg-1; Tue, 30 Nov 2021 01:29:16 -0500
X-MC-Unique: 27lhOQFDPM6fBwZ0whWZDg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J3C3w1Yjtz3r6X
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 01:29:16 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J3C3w1L4mzcbc; Tue, 30 Nov 2021 01:29:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J3C3w1DcjzcbP
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 01:29:16 -0500 (EST)
Date: Tue, 30 Nov 2021 01:29:16 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?
In-Reply-To: <20211129210050.090ce9a0@bigbox.attlocal.net>
Message-ID: <alpine.NEB.2.23.451.2111300127570.10828@panix1.panix.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<alpine.NEB.2.23.451.2111292017540.5144@panix1.panix.com>
	<20211129210050.090ce9a0@bigbox.attlocal.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Version control can be a good idea if users learn to use it.  I found rcs
to be the simplest of these systems to learn and use.


On Mon, 29 Nov 2021, Linux for blind general discussion wrote:

> Tim here.  I like putting my configuration files in version control,
> whether git, subversion, or even just old-school RCS.  That way I
> have a complete history of changes, can undo all sorts of changes,
> compare various versions, etc.  It really helps track down
> when/why/where something broke.
>
> -tim
>
>
>
>
> On November 29, 2021, Linux for blind general discussion wrote:
> > Before editing a configuration file, make a copy of it to another
> > file, that way if you do a configuration change you don't like you
> > can back out and same goes with any mistakes.  If you like your
> > changed configuration file, then maybe delete your backup.
> >
> >
> > On Mon, 29 Nov 2021, Linux for blind general discussion wrote:
> >
> > > Thanks a bundle for all of you folks. I did not know how much of
> > > a discussion my innocent and naive question would generate. I
> > > learned a lot from your answers. Although I have never messed
> > > with configuration files since the days of the autoexec.bat in
> > > the days of dos, I think I have enough courage to play with
> > > changing some configuration settings using some of the editors
> > > you suggested.
> > >
> > > I launched few of them both in the desktop and in the terminal
> > > and I found geany and nano to be easy. I did not find Micro, I
> > > guess it is not preinstalled on slint.
> > >
> > > I know that my editing needs would be very basic.
> > >
> > > Cheers,
> > >
> > > Ibrahim
> > >
> > > On 11/29/21 5:33 PM, Linux for blind general discussion wrote:
> > > > There is teachjove and jove is jonathan's own version of emacs
> > > > and teachjove can be run without running jove or emacs
> > > > directly.  This can be done from the terminal for any willing
> > > > to learn.  I suppose emacs could be configured in the same way
> > > > but haven't tried that yet.  It probably would need a small
> > > > script.
> > > >
> > > >
> > > > On Mon, 29 Nov 2021, Linux for blind general discussion wrote:
> > > >
> > > >> I actually have a computer science degree and still find both
> > > >> emacs and vi to be riddles, wrapped in mysteries, inside
> > > >> enigmas and I should probably figure out a way to add puzzle,
> > > >> conundrum, and a few other synonyms to that Matryoshka doll of
> > > >> an idiom.
> > > >>
> > > >> I don't doubt the claims they are powerful bits of kit once
> > > >> mastered, but they certainly for the faint of heart and not a
> > > >> good choice if you just want to edit the occasional config
> > > >> file.
> > > >>
> > > >> I personally use Nano, and it lets you just enter nano to open
> > > >> a blank file you can just start typing in or nano
> > > >> path/to/filename.ext to open an existing file, but it does
> > > >> have some commands that might throw people coming from a
> > > >> grapphical editor or word processor for a loop(e.g. save is
> > > >> ctrl+o, not ctrl+s, quit is ctrl+x, not ctrl+q) and has cut
> > > >> and paste that is line based instead of selection based(e.g.
> > > >> ctrl+k cuts the current line in its entirety, repeating ctrl+k
> > > >> without otheer input continues adding lines to the cut buffer,
> > > >> ctrl+u uncuts evereything in the cut buffer, copying is
> > > >> accomplished by uncutting where youo cut, then uncutting again
> > > >> where you want the copy). Also, pressing ctrl+g will bring up
> > > >> nano's full command list, while the most commond commandsare
> > > >> printed on the bottom two lines of the screen.
> > > >>
> > > >> For simpler console text editors, there's also Micro, which is
> > > >> similar to Pico/nano, but has key bindings more in line with
> > > >> the majority of graphical editors.
> > > >>
> > > >> _______________________________________________
> > > >> Blinux-list mailing list
> > > >> Blinux-list@redhat.com
> > > >> https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >>
> > > >>
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

