Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F169A49D923
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 04:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643253741;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/CyZr8pwOz/nJj16PCLUbtHIweRO9WSkhATCQCgy3EQ=;
	b=GUe3608AX03giFY8Afhye9NiMoagQn3mHvECv/RuA1iS1ZyHTC0Q7WKhmLbfB9l7oyF8NK
	0M/tbx/MhoNRZj7R98fRdKu6wLylBhkqihbz/6kjIOD7XYY/7MtOiguC0292ysT5AIWAbg
	J2nXG1jYr4R14cKPrfiAfwb82h0ZZ/E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-358-NsCcXYNROEGPKy5MjjU16A-1; Wed, 26 Jan 2022 22:22:17 -0500
X-MC-Unique: NsCcXYNROEGPKy5MjjU16A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7FE731853024;
	Thu, 27 Jan 2022 03:22:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EF561037F4A;
	Thu, 27 Jan 2022 03:22:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7C7794BB7C;
	Thu, 27 Jan 2022 03:22:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R3M2G6019012 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 22:22:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4EADF2166B16; Thu, 27 Jan 2022 03:22:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A36F2166B3F
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:21:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 53B89185A79C
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:21:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-615-H70u2juNNLe1iNR6h8mLdA-1; Wed, 26 Jan 2022 22:21:57 -0500
X-MC-Unique: H70u2juNNLe1iNR6h8mLdA-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jkm911MPqz2r6b
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:21:57 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4Jkm9113vtz1QX9; Wed, 26 Jan 2022 22:21:57 -0500 (EST)
Date: Wed, 26 Jan 2022 22:21:57 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Why do you use Linux? expanded from  Converting text to mp3
Message-ID: <YfIP1c5bihD/wxmY@panix.com>
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
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I use linux exclusively and for several reasons.

1. I worked in Unix and  SunOS since 1986. So Linux was a familiar environment
to transition into. 

2. Because once I get it  to work, it works. That keyboard configuration I mentioned
occurred years ago and I haven't touched it since not even when I switched to a different machine. Not even when I switched to different keyboards.
Not even when I switched to different versions of Linux.

3. Linux does what I want without backtalk, second guessing, ads, unwanted upgrading, or mysterious crashes.


4. Linux trades learning for power and flexibility.
The few times   I tried learning Windows I quickly grew frustrated at just how limited the software was and
how it forced the user to do things its way instead of letting me do them MY way.
I spent more time fighting with windows than getting things done.

5. Everyone I know who uses Windows, spends far too much time complaining about windows, fixing the
many problems windows causes by its quirks, arcane mysteries, shortcomings, and built in faults,
so I see no reason to give it yet another try.

On Wed, Jan 26, 2022 at 09:19:09PM -0500, Linux for blind general discussion wrote:
> Okay  then,
> This illustrates another point which got touched  on in a different thread
> as well.
> The, you must be prepared to do programming if you are going to use Linux
> fluidly, if at all.
> On an entirely different list I am on, folks were complaining about windows
> 10 and windows 11, because of the changes.
> Computers are increasingly such critical parts of our lives, banking
> shopping, even voting, that many on the list spoke of just wanting to sit
> down at their computer and have things work...so they still use older
> editions of things like Windows  XP?  and Windows  7.
> I admit that is part of why the out of the box concept discussed here where
> Access is concerned seems a bit, speaking personally, like a misconception.
> Few on the list I referenced above are using adaptive tools, and some of
> them are scientists, with many not wanting configuring to be a part of their
> computer lives.
>  So, why do you use Linux?
> what makes it worth the time the training and the trial  / error?
> Oh, and is it your only operating system?
> Want to ask the latter because I know someone who indeed uses Linux
> exclusively, vowing never to touch windows again.
> Please feel free to express in detail, never mind my personal situation,
> because the journalist in me is interested as well.
> Karen
> 
> 
> 
> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
> 
> > Fair point.
> > 
> > As regards the keyboard, I agree with the main keyboard philosophy, and
> > in fact speakup does allow you to customize it to use the main keyboard instead of the
> > keypad. However, it took me a while to customize it to my liking and
> > required quite a bit of study and generating of personal keymaps, so
> > might not be of any interest to those who aren't comfortable making
> > some low level modifications.
> > 
> > On Wed, Jan 26, 2022 at 08:16:08PM -0500, Linux for blind general discussion wrote:
> > > Which may illustrate my point.
> > > I can use those without changing what I have now.
> > > Speaking personally if Linux does not provide equal access to both hardware
> > > and  software speech, in both its command line and graphical platforms, I am
> > > unsure  just where the advantage is for me personally.
> > > One thing I personally disliked with speakup, at least the times I tried it
> > > years back was the need to remove my hands from the keyboard for many
> > > things.
> > > That may not hold true all the way around, but I am a solid typist and do
> > > not like having to remove may hands, say use the number pad, if I want as I
> > > work content.
> > > That is me though, which is one magical thing about personal computers.
> > > everyone brings their desires and usage goals to their machines.
> > > Which to my mind again personally means Linux should, if it actually can, be
> > > flexible enough for all choices to work in it command line and graphical.
> > > Karen
> > > 
> > > 
> > > 
> > > On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
> > > 
> > > > I don't use Firefox. I use a text based browser, either lynx, w3m, or links (the chain) depending.
> > > > 
> > > > On Wed, Jan 26, 2022 at 07:48:42PM -0500, Linux for blind general discussion wrote:
> > > > > Rudy,
> > > > > As an example, may I ask what edition  of  Firefox you are running with that
> > > > > dectalk Express?
> > > > > Karen
> > > > > 
> > > > > 
> > > > > 
> > > > > On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
> > > > > 
> > > > > > Karen,
> > > > > > I use Linux speakup with a Dectalk express speech synthesizer. And I believe speakup also handles the
> > > > > > slot card version of dectalk though you'll need a desktop PC that supports it, so the software is there.
> > > > > > 
> > > > > > 
> > > > > > Rudy
> > > > > > 
> > > > > > On Wed, Jan 26, 2022 at 05:22:35PM -0500, Linux for blind general discussion wrote:
> > > > > > > Kyle,
> > > > > > > i do not consider my hardware decktalk provided via my reading edge to be an
> > > > > > > example of text to speech.
> > > > > > > By definition, and there are many, the term, which refers to taking
> > > > > > > information in text format  and  rendering it aloud does not, speaking
> > > > > > > personally,  equal pronunciation ease.
> > > > > > > In fact one theory about this has to do with preserving the audiobook
> > > > > > > market.
> > > > > > > granted, as  was pointed out in a thread some time ago, I am not likely to
> > > > > > > learn about Linux screen readers, no driver exists for my hardware speech,
> > > > > > > and software synthesizer sources  currently do a number on my brain.
> > > > > > > Karen
> > > > > > > 
> > > > > > > 
> > > > > > > 
> > > > > > > On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
> > > > > > > 
> > > > > > > > That being said, the audiophile in me cannot resist pointing out that
> > > > > > > > pronunciation abilities of tts are of far less quality than those
> > > > > > > > provided by many actual screen readers, at least the ones I have
> > > > > > > > used...which???? does not include any for Linux.
> > > > > > > > 
> > > > > > > > 
> > > > > > > > That being said, the technofile in me cannot resist pointing out the
> > > > > > > > fact that every screen reader for every OS uses nothing but TTS
> > > > > > > > technology to read the screen. Well, I guess BeMyEyes doesn't, but it's
> > > > > > > > not exactly a screen reader, unless you need the volunteer to read a
> > > > > > > > screen for you.
> > > > > > > > 
> > > > > > > > ~ Kyle
> > > > > > > > 
> > > > > > > > _______________________________________________
> > > > > > > > Blinux-list mailing list
> > > > > > > > Blinux-list@redhat.com
> > > > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > > > > > 
> > > > > > 
> > > > > > > _______________________________________________
> > > > > > > Blinux-list mailing list
> > > > > > > Blinux-list@redhat.com
> > > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > > > 
> > > > > > 
> > > > > > --
> > > > > > Rudy Vener
> > > > > > Website: http://www.rudyvener.com
> > > > > > Twitter: https://twitter.com/RudySalt
> > > > > > The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
> > > > > >  - A. R. Vener
> > > > > > 
> > > > > > _______________________________________________
> > > > > > Blinux-list mailing list
> > > > > > Blinux-list@redhat.com
> > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > > > 
> > > > > > 
> > > > > 
> > > > > _______________________________________________
> > > > > Blinux-list mailing list
> > > > > Blinux-list@redhat.com
> > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > 
> > > > --
> > > > Rudy Vener
> > > > Website: http://www.rudyvener.com
> > > > Twitter: https://twitter.com/RudySalt
> > > > The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
> > > >  - A. R. Vener
> > > > 
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > 
> > > > 
> > > 
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > 
> > -- 
> > Rudy Vener
> > Website: http://www.rudyvener.com
> > Twitter: https://twitter.com/RudySalt
> > The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
> >  - A. R. Vener
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> > 
> > 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt
The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
  - A. R. Vener

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

