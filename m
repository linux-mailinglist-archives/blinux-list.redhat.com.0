Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C311A49D953
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 04:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643254705;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vHh5aKtMMyqt2PJ3Uq6XcBOaJJglyfXnywah5hLtZNQ=;
	b=UH6QJ0mY8n3ZWlG0F8bWxF07I3yuKkkbt0Hd43QTrj7sLV8rDKTJUBzSI3bOGLYDvs5tLF
	qHN0eagpMHCWRgOf10zv0qa4T2f4Di0Q95/bnlCc8MhlPsMKCzuxvCkfoXLkeHZyRb/yw0
	ggHK4XlEoD/U2c69iDU9QpyNMRlzShA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-19-MnhVYvhbM_mdpBJEB1QAeg-1; Wed, 26 Jan 2022 22:38:22 -0500
X-MC-Unique: MnhVYvhbM_mdpBJEB1QAeg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B2058144E1;
	Thu, 27 Jan 2022 03:38:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 682C1E2CD;
	Thu, 27 Jan 2022 03:38:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1550A1806D1C;
	Thu, 27 Jan 2022 03:38:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R3cDrr020561 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 22:38:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 444F840885B0; Thu, 27 Jan 2022 03:38:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40C0D40885B5
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:38:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24F4C3C01BB3
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:38:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-318-6Ly_xbldOry32wDJ15QGpw-1; Wed, 26 Jan 2022 22:38:11 -0500
X-MC-Unique: 6Ly_xbldOry32wDJ15QGpw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JkmWk5l3Hz2sHZ
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:38:10 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JkmWk4TM1zcbc; Wed, 26 Jan 2022 22:38:10 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JkmWk3jBzzcbP
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:38:10 -0500 (EST)
Date: Wed, 26 Jan 2022 22:38:10 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
In-Reply-To: <YfIP1c5bihD/wxmY@panix.com>
Message-ID: <19b0d7f9-169b-5a19-8d69-e9a63c85c517@panix.com>
References: <571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
	<YfIP1c5bihD/wxmY@panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I use Linux since I have no help desk nearby that can fix windows
problems.  If I had such a help desk, it would cost money and I'm retired
so on a fixed income.
I ran into too many problems updating windows especially with service
packs.  Back in the day screen readers for windows before nvda came on the
scene cost about as much as a decent computer one could use to run
windows.  That got better thanks to nvda and what it did to
freedomscientific's sales once school districts and parents moved over to
nvda and states wanting to run their i.d.p. budgets on the cheap found out
about nvda.
I learned Unix in the early '90's and was using msdos to do commercial
level programming before windows moved in.
I don't have with G.U.I. on Linux since although it's on the machines I
use, I mostly live on the command line.  Having been totally blind from
birth, I find windows to be a cultural clash with my mental models.
No problem with spreadsheets in dos and to some extent windows since both
braille and spreadsheets use cells.
Doing stuff with dos and Linux I don't worry about fonts colors or twips
and if you're going to use windows and do forms, all of those are proper
concerns.  Fonts colors and twips again are more of the cultural clash I
have with windows.


On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> I use linux exclusively and for several reasons.
>
> 1. I worked in Unix and  SunOS since 1986. So Linux was a familiar environment
> to transition into.
>
> 2. Because once I get it  to work, it works. That keyboard configuration I mentioned
> occurred years ago and I haven't touched it since not even when I switched to a different machine. Not even when I switched to different keyboards.
> Not even when I switched to different versions of Linux.
>
> 3. Linux does what I want without backtalk, second guessing, ads, unwanted upgrading, or mysterious crashes.
>
>
> 4. Linux trades learning for power and flexibility.
> The few times   I tried learning Windows I quickly grew frustrated at just how limited the software was and
> how it forced the user to do things its way instead of letting me do them MY way.
> I spent more time fighting with windows than getting things done.
>
> 5. Everyone I know who uses Windows, spends far too much time complaining about windows, fixing the
> many problems windows causes by its quirks, arcane mysteries, shortcomings, and built in faults,
> so I see no reason to give it yet another try.
>
> On Wed, Jan 26, 2022 at 09:19:09PM -0500, Linux for blind general discussion wrote:
> > Okay  then,
> > This illustrates another point which got touched  on in a different thread
> > as well.
> > The, you must be prepared to do programming if you are going to use Linux
> > fluidly, if at all.
> > On an entirely different list I am on, folks were complaining about windows
> > 10 and windows 11, because of the changes.
> > Computers are increasingly such critical parts of our lives, banking
> > shopping, even voting, that many on the list spoke of just wanting to sit
> > down at their computer and have things work...so they still use older
> > editions of things like Windows  XP?  and Windows  7.
> > I admit that is part of why the out of the box concept discussed here where
> > Access is concerned seems a bit, speaking personally, like a misconception.
> > Few on the list I referenced above are using adaptive tools, and some of
> > them are scientists, with many not wanting configuring to be a part of their
> > computer lives.
> >  So, why do you use Linux?
> > what makes it worth the time the training and the trial  / error?
> > Oh, and is it your only operating system?
> > Want to ask the latter because I know someone who indeed uses Linux
> > exclusively, vowing never to touch windows again.
> > Please feel free to express in detail, never mind my personal situation,
> > because the journalist in me is interested as well.
> > Karen
> >
> >
> >
> > On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
> >
> > > Fair point.
> > >
> > > As regards the keyboard, I agree with the main keyboard philosophy, and
> > > in fact speakup does allow you to customize it to use the main keyboard instead of the
> > > keypad. However, it took me a while to customize it to my liking and
> > > required quite a bit of study and generating of personal keymaps, so
> > > might not be of any interest to those who aren't comfortable making
> > > some low level modifications.
> > >
> > > On Wed, Jan 26, 2022 at 08:16:08PM -0500, Linux for blind general discussion wrote:
> > > > Which may illustrate my point.
> > > > I can use those without changing what I have now.
> > > > Speaking personally if Linux does not provide equal access to both hardware
> > > > and  software speech, in both its command line and graphical platforms, I am
> > > > unsure  just where the advantage is for me personally.
> > > > One thing I personally disliked with speakup, at least the times I tried it
> > > > years back was the need to remove my hands from the keyboard for many
> > > > things.
> > > > That may not hold true all the way around, but I am a solid typist and do
> > > > not like having to remove may hands, say use the number pad, if I want as I
> > > > work content.
> > > > That is me though, which is one magical thing about personal computers.
> > > > everyone brings their desires and usage goals to their machines.
> > > > Which to my mind again personally means Linux should, if it actually can, be
> > > > flexible enough for all choices to work in it command line and graphical.
> > > > Karen
> > > >
> > > >
> > > >
> > > > On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
> > > >
> > > > > I don't use Firefox. I use a text based browser, either lynx, w3m, or links (the chain) depending.
> > > > >
> > > > > On Wed, Jan 26, 2022 at 07:48:42PM -0500, Linux for blind general discussion wrote:
> > > > > > Rudy,
> > > > > > As an example, may I ask what edition  of  Firefox you are running with that
> > > > > > dectalk Express?
> > > > > > Karen
> > > > > >
> > > > > >
> > > > > >
> > > > > > On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
> > > > > >
> > > > > > > Karen,
> > > > > > > I use Linux speakup with a Dectalk express speech synthesizer. And I believe speakup also handles the
> > > > > > > slot card version of dectalk though you'll need a desktop PC that supports it, so the software is there.
> > > > > > >
> > > > > > >
> > > > > > > Rudy
> > > > > > >
> > > > > > > On Wed, Jan 26, 2022 at 05:22:35PM -0500, Linux for blind general discussion wrote:
> > > > > > > > Kyle,
> > > > > > > > i do not consider my hardware decktalk provided via my reading edge to be an
> > > > > > > > example of text to speech.
> > > > > > > > By definition, and there are many, the term, which refers to taking
> > > > > > > > information in text format  and  rendering it aloud does not, speaking
> > > > > > > > personally,  equal pronunciation ease.
> > > > > > > > In fact one theory about this has to do with preserving the audiobook
> > > > > > > > market.
> > > > > > > > granted, as  was pointed out in a thread some time ago, I am not likely to
> > > > > > > > learn about Linux screen readers, no driver exists for my hardware speech,
> > > > > > > > and software synthesizer sources  currently do a number on my brain.
> > > > > > > > Karen
> > > > > > > >
> > > > > > > >
> > > > > > > >
> > > > > > > > On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
> > > > > > > >
> > > > > > > > > That being said, the audiophile in me cannot resist pointing out that
> > > > > > > > > pronunciation abilities of tts are of far less quality than those
> > > > > > > > > provided by many actual screen readers, at least the ones I have
> > > > > > > > > used...which???? does not include any for Linux.
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > That being said, the technofile in me cannot resist pointing out the
> > > > > > > > > fact that every screen reader for every OS uses nothing but TTS
> > > > > > > > > technology to read the screen. Well, I guess BeMyEyes doesn't, but it's
> > > > > > > > > not exactly a screen reader, unless you need the volunteer to read a
> > > > > > > > > screen for you.
> > > > > > > > >
> > > > > > > > > ~ Kyle
> > > > > > > > >
> > > > > > > > > _______________________________________________
> > > > > > > > > Blinux-list mailing list
> > > > > > > > > Blinux-list@redhat.com
> > > > > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > > > > > >
> > > > > > >
> > > > > > > > _______________________________________________
> > > > > > > > Blinux-list mailing list
> > > > > > > > Blinux-list@redhat.com
> > > > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > > > >
> > > > > > >
> > > > > > > --
> > > > > > > Rudy Vener
> > > > > > > Website: http://www.rudyvener.com
> > > > > > > Twitter: https://twitter.com/RudySalt
> > > > > > > The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
> > > > > > >  - A. R. Vener
> > > > > > >
> > > > > > > _______________________________________________
> > > > > > > Blinux-list mailing list
> > > > > > > Blinux-list@redhat.com
> > > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > > > >
> > > > > > >
> > > > > >
> > > > > > _______________________________________________
> > > > > > Blinux-list mailing list
> > > > > > Blinux-list@redhat.com
> > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > >
> > > > > --
> > > > > Rudy Vener
> > > > > Website: http://www.rudyvener.com
> > > > > Twitter: https://twitter.com/RudySalt
> > > > > The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
> > > > >  - A. R. Vener
> > > > >
> > > > > _______________________________________________
> > > > > Blinux-list mailing list
> > > > > Blinux-list@redhat.com
> > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > >
> > > > >
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > > --
> > > Rudy Vener
> > > Website: http://www.rudyvener.com
> > > Twitter: https://twitter.com/RudySalt
> > > The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
> > >  - A. R. Vener
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

