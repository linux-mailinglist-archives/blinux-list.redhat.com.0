Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CAE50066C
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 08:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649919010;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Or7N3+Qs9bAC1y014KoFuRZnoT3DrkvxS4DFzjYGknA=;
	b=ZT5FC0MAQRkSCUmfv+siPZu+kgtSI2Ruke6BLmIE0tu+18xCZahtQBEZ0TEMrUfHipuqDI
	bvJ58qTys/byaKhnHxnX61x5hDdF2emtj+/MZvafYGGNaOEJBVm+CLjNeKotT9GQyGXryd
	a9vDJ/AoHcRV8yX3LqBQkY9uJU7ZxR4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-610-4zCmUplpODa1neeDDU2NrA-1; Thu, 14 Apr 2022 02:50:07 -0400
X-MC-Unique: 4zCmUplpODa1neeDDU2NrA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A73791C05EA1;
	Thu, 14 Apr 2022 06:50:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6DC85C28127;
	Thu, 14 Apr 2022 06:50:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B0AE61940352;
	Thu, 14 Apr 2022 06:50:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8323.1649896260.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.8323.1649896260.111207.blinux-list@redhat.com>
Date: Thu, 14 Apr 2022 01:49:49 -0500
Subject: Re: FYI - Command Line Programs for the Blind
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.8447.1649919004.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I use apps, like TweeseCake which is a client for Twitter, Mastodon,
Telegram, Gihub, online radio, and file exploration because it's
convenient. Admittedly, I only use the Twitter, Mastodon, and Telegram
parts, but it's really nice to jube able to browse stuff from anywhere,
only hearing what you need, nothing more. No need for a web browser, or a
Pidgin thing where everything is in a list like Thunderbird, and if you
have Discord set up there, can lag really hard due to all the channels and
stuff collected there. I mean, there's a reason a few developers see the
need to work on these things, because it gives us some of the speed that a
sighted person gets from widgets and such.
Devin Prater
r.d.t.prater@gmail.com




On Wed, Apr 13, 2022 at 7:31 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Kyle, I'm unsure on something. Not anything you said....but more a thought
> I had, and it came up in a discussion I was in the other day about oh we
> need a client for FB for the blind.
>
> My stance was yeah, no. FB doesn't like third party clients. How the frack
> I'm not permabanned off of Discord for using a Pigin plugin I don't know,
> but back to my main point and this may get ranty, I'm tired, I'm all arg,
> why....
>
> So. Why is it that there's this sub set of blind people who stick to what
> I've seenn called various names, the blind/blindie bubble, blinkosphere
> (which honestly just sounds like a navigation aid for someone....much like
> a Walkman, and Bill Bryson had a great joke about that in one of his books)
> et al.
>
> Why do people in that sphere want to use blind specific apps over
> something that's bigger and more well known and has a lot of support. I've
> flat out had people say oh no, Ubuntu isn't worth using, I'll use
> Accessible Coconut or I want Vinux back.
>
> To which my response can be summed up as you want something maintained by
> one person, who just does some scripts, turns off bits of an OS the smart
> people at Canonical (despite their isues and questionable decisions with
> some bits of Ubuntu) work on, and support? They recently wanted more A11Y
> testers over on the Orca list as well, yet there's the sphere of blind
> people who go oh I'm blind I must only use blind software, the same sort
> that go I won't use this service because it's not blind friendly, when it
> really is. They just didn't bother to spend more than ten seconds checking
> it out. THe sort that go use Elton, and then go but but why is Facebook so
> popular why can't Elton be like that...and they are the sort of people to,
> at the same time, cry for more inclusivity then fight against it by not
> using those apps or giving eeback to developers, yet be uber quick to call
> out those same devs for not 'doing enough' when the devs got put onto
> things that actually, you know, help a comp
>  any stay afloat.
>
> Sorry, it jusst got me thinking on that. m in your boat. Kyle. move over
> and keep paddling. I'm blind. I'm a person. I'm not 'the blind', whatever
> that is, that nebulous idea of 'the blind' and 'the sighted' really, really
> bugs me, the us vs them mentality /some/ blind people have.
>
> Anyway, bringing this back to the point of the discussion, somthing else
> in Linux's favor is it does work on older hardware and lower powered
> machines as well, with things like XCE/LXDE (which I've had a tinker with
> on Arch and kind of do like for what it is). Now if QT can sort itself out
> and make something workable in the near futuree...
>
> I don't want apps designeed for the blind. I want those talented blind
> people to work on apps everyone can use no matter your disability, no
> matter if you're fully able, or blind, or deaf, or whatever your
> disability. I mean, I've always thought the 'for the blind only' is
> actually ableist ina  kind of screwed up way, because they push away other
> disabilities and only focus on their own. Looking at you, audio only games
> or apps with a heavy, heavy focus on sound that drown out the speech
>
> On Wed, Apr 13, 2022 at 08:01:35PM -0400, Linux for blind general
> discussion wrote:
> > These are valid points. But what I get from Windows: a mostly clean
> > > accessibility experience (mostly thanks to NVDA and community
> support), and
> > > a good many apps designed by and for the blind.
> >
> >
> > Having been on a laptop recently just to test a website, I can say that
> > although improvements have been made that make NVDA easier to use, its
> > virtual buffering makes things harder to use, not easier, and the
> > accessibility experience I found far less clean. This laptop I was on was
> > fairly new, and I still had major problems just browsing because the
> whole
> > thing was made slower by the screen reader having to copy the page from
> the
> > website. Even worse since it has to infinite loop over the original and
> > compare it with its copy in case anything ever changes. Next I must point
> > out that although I am blind, I have never fallen into the category of
> "the
> > blind." This is a point I failed to make early on in this thread,
> although I
> > make it here. I, AM, NOT, THE, BLIND, I, AM HUMAN! I shout it from the
> > rooftops. I, AM, HUMAN, it's only my eyes that don't work so well. I will
> > also point out that some years ago, I found myself running that horrible
> > beast of a non-operating system just to play two games and to use a
> twitter
> > client that was made for as you so eloquently put it, "the blind." Once I
> > saw that this was all I was using it for, I tossed that virtual machine
> into
> > the trash faster than you can say "toss that virtual machine into the
> > trash." I found that it certainly wasn't worth my time and energy to
> keep it
> > running just for that frivolous activity that I could do on the host
> Linux
> > OS with just a little more effort, and the Twitter website really isn't
> so
> > bad that it needs "for the blind" treatment.
> >
> > > I mean I have Google Chrome set as my default browser right now. And I
> can
> > > uninstall a lot. There's no Candy Crush Saga, and I just uninstalled
> Dizney
> > > Plus.
> > >
> > > What? How did you do all that? I got help trying to get some of that
> crap gone, and it WILL, NOT, GO, not even on 10. OK I think 3 of us were
> able to wrestle Disney Plus off the thing, but getting rid of that
> Microsoft browser is a no-go, along with many other things that just didn't
> have the appropriate uninstall or remove type of buttons, only a link that
> took us to a help page about how to uninstall software. But the crap simply
> won't go, no matter how hard we tried to get it gone. Did they fix this in
> 11 with the default browser thing? There was much talk around the interwebs
> about the browser in 11 being stuck, and it taking hours to try to figure
> out how to change the default, and then once enough people figured out how
> to change it, Microsoft went and fixed them so they got the Microsoft
> browser back and couldn't change it anymore. This is what happens when you
> let a single company with a known history of bad business control every
> aspect of your computer. They can do what
>   t
> > hey want with it, no matter how much of a power user you think you are.
> > > Windows Terminal exists. They even have a Windows package manager. But
> if
> > > you don't like that one, you use Scoop, or Chocolatey, which also have
> some
> > > Linux apps and command line programs.
> > > OK I'll give you that cmd is still a thing, and believe it or not, you
> will find many articles around the interwebs that tell you to open up cmd
> to do this or that. And I guess they've made it somewhat more useful again?
> Last time I used anything like that, they were taking things away from it
> to make it less useful, not adding choices to make it more usable. I pretty
> much lost it when they took move away for example.
> >
> >
> > > That's still true. But you'd just install Thunderbird wouldn't you? It
> > > works even better on windows than Linux because the accessibility bus
> is
> > > faster to load all those messages into its buffers.
> > >
> > >
> > Um, no. If Google Chrome is any indication, it would be slower, as it's
> > loading all that stuff into buffers that are not needed and take time.
> One
> > banking website that I tested felt quite sluggish on a rather new
> laptop. I
> > can do my banking much much faster here on this 8-year-old all-in-one
> > computer than I was able to do on that laptop. I felt like I was slogging
> > through mud using that thing. I'm sure email in Thunderbird would be
> just as
> > bad. It used to feel sluggish here as well, but this has been greatly
> > improved now. I no longer notice any sluggishness here, even on less
> > resource packed machines, even in large folders, which I will admit used
> to
> > be a high pain point, not because of the accessibility bus itself, but
> > because of event floods that have been largely fixed.
> >
> > ~Kyle
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

