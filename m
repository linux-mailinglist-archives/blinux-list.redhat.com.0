Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DF971468C67
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 18:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638725199;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HjIWGurILbfnvcSYsNdiu3O4bJ2FhWYFeCps4gj7GjA=;
	b=T5DiFlk7NZx2f3jpIog5Y5IpOWX6LJtjyP/01q7qrp4S0vXnQ8Q5HKtnzlkYGkrbbKBhei
	DVpn0TfB8uXLUBLvMNOex9iE64gOJScklQ/CVWGsC4JGwP8jPDA9PPm5WjR5k14Hz9QHY7
	GHo/cJZgfWhzgUDB/G0/G5DIfq/szD0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-60-5TeQe0pqP3i69ghZy8GixQ-1; Sun, 05 Dec 2021 12:26:36 -0500
X-MC-Unique: 5TeQe0pqP3i69ghZy8GixQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14D1B1030C20;
	Sun,  5 Dec 2021 17:26:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD75522DEB;
	Sun,  5 Dec 2021 17:26:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5BD491809CB8;
	Sun,  5 Dec 2021 17:26:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5HQFxU011013 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 12:26:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 48A3FC15E73; Sun,  5 Dec 2021 17:26:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4467AC15E72
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 17:26:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A622811E78
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 17:26:15 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-352-QZGrkz3dPGuFIPcF9XLW1A-1; Sun, 05 Dec 2021 12:26:13 -0500
X-MC-Unique: QZGrkz3dPGuFIPcF9XLW1A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J6YPd03HFzFbR
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 12:26:12 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J6YPc6bSkzcbc; Sun,  5 Dec 2021 12:26:12 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J6YPc6DNVzcbP
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 12:26:12 -0500 (EST)
Date: Sun, 5 Dec 2021 12:26:12 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Useful aliases in .bashrc?
In-Reply-To: <16b79725-64b9-b768-5d88-08a9d76326c3@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112051219290.29322@panix1.panix.com>
References: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
	<20211205081607.1b8e272e@bigbox.attlocal.net>
	<16b79725-64b9-b768-5d88-08a9d76326c3@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In my .bash_aliases file I have:
alias rnv='rvlc --quiet --novideo --key-vol-up 123 --no-skinned-playlist'
alias ft='date +"%r"'
alias gen-password="head -c 16 /dev/urandom | base64 | cut -c -22"
alias td="date '+Time: %r %n Date: %A %B %-d %Y %n Week: %U %n Day Of
Year: %j'"


To use that .bash_aliases has to be sourced from .profile.
The first one makes vlc work well for me I need audio and don't need
video.  The second gets the clock time off of date.
The third can help when prompted for a new password and your mind goes
blank, just remember to braille the one you like and use when that comes
up.
The fourth gives me date information in detail; working with numerology
it's sometimes useful to have all of that information.



On Sun, 5 Dec 2021, Linux for blind general discussion wrote:

> Hi Tim,
>
>
> I really like your way of doing things.
>
>
> Quick question, please ramble if you'd like, managing podcasts, how?
>
>
> To expand on that a bit, what do you use for a pod catcher; where do they go,
> in short, what is the easiest way to deal with your podcasts, especially if
> you have many of the things, like I currently do on my phone.
>
>
> I'd like to get most of them off of there, space and all.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from Slint Linux using Thunderbird
>
> On 2021/12/05 16:16, Linux for blind general discussion wrote:
> > Tim here. A couple from my collection:
> >
> >
> > Sometimes I type "cd .." too quickly, and miss the space or even a
> > period too, so these make my typos work as expected
> >
> >    alias cd..='cd ..'
> >    alias cd.='cd ..'
> >
> > I commonly jump to my MP3/podcast queue directory and run a command
> > (`biggest`) that finds all the files in the subdirectories and sorts
> > them all from smallest to largest (big ones that don't sound
> > interesting are the first on my chopping-block for saving time/space):
> >
> >    alias mp3='pushd ~/Music/podcasts/; biggest -h | tail -20'
> >
> > Also helping with podcasts I have
> >
> >    alias ti='id3 -q "%_p%_f: %t"'
> >
> > to give me the titles of podcasts I point it at.
> >
> > I also keep my finances in ledger(1) format and have a number of
> > aliases around manipulating those
> >
> >    alias fin='pushd ~/finances/ledger'
> >    alias le='pushd ~/finances/ledger; vim +$ $(date +%Y).txt'
> >
> >    checking() {
> >      pushd ~/finances/ledger
> >      ledger -f only"$(date +%Y)".txt --pedantic register Checking "$@"
> >    }
> >
> >    led() {
> >      pushd ~/finances/ledger
> >      ledger -f only"%(date +%Y)".txt --pedantic balance -l "commodity ==
> >      'USD'" not "Equity:Opening Balances" and not "^Income:" "$@"
> >    }
> >
> >
> > The "fin" alias just takes me to the directory; the "le" opens the
> > current year's data in vim and places the cursor at the bottom so I
> > can add new entries; the "checking" function gives me my checkbook
> > register (to which I can append "--cleared" for only those
> > transactions that have cleared); and the "led" function gives me a
> > hierarchical overview of all of my accounts and how they roll up.  I
> > also have a more complicated "pay" shell-function that will look for
> > the most recent transaction that matches some parameters and
> > re-create that transaction with today's date in my preferred format,
> > and set the amount to the specified quantity letting me do things like
> >
> >    $ pay kroger 38.21
> >
> > rather than manually find & copy the entire block, and update the
> > amounts.
> >
> > Finally, I keep my calendar in remind(1) format so I have several
> > aliases that help me set all my preferred parameters
> >
> >    alias 1='rem -g -q -iCOLOR=2 -@2'
> >    for i in 2 3 4 5 6
> >    do
> >      alias $i='rem -g -q -iCOLOR=2 -@2 "*"'$i
> >    done
> >
> > so I can just type "1" for today's agenda or "3" for a 3-day agenda.
> > (I can ramble for hours on using remind and have a lengthy blog post
> > about it.  If you want a text-based workflow for your calendar, it's
> > *amazing*!)
> >
> > Hopefully this gives you some more ideas,
> >
> > -Tim
> >
> >
> > On December  5, 2021, Linux for blind general discussion wrote:
> >> Hi all,
> >>
> >>
> >> I have never really played with .bashrc, but have found it rather
> >> useful to add a few aliases to it.
> >>
> >>
> >> The one I find most useful so far is the alias to my "startwin.sh"
> >> qemu script. I use
> >>
> >>
> >> alias windows="sh ~/qemu/startwin.sh"
> >>
> >>
> >> instead of having to type, every time
> >>
> >>
> >> sh ~/qemu/startwin.sh
> >>
> >>
> >> If you have any useful aliases to share, please do?
> >>
> >>
> >> After all, why should we not make each other's lives a bit easier?
> >>
> >> --
> >> Warm regards,
> >>
> >> Brandt Steenkamp
> >>
> >> Sent from Slint Linux using Thunderbird
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
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
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

