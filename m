Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8366349F24A
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 05:14:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643343241;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zeIvJeIs78w+8cyr2CLyEHX2T98AzndChQEzaoB30KY=;
	b=fWaR9COWptzvqYPjrnSSz1lWfxYDH9NQUlyAzjUTEYQTII9ktxwH+xb7k/u2m1+SGI8LvC
	66CmPvcMam0Rs+FXJpg+vhmWXvquh3YIGXSbIQyxEaPzetZtqaaUYLUrM89gvURIlenpDF
	Kvp2n1wazMuq1aPFqimBD4OAKueZh3A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-383-jGLrAaajMIyLUpOxwSU1nQ-1; Thu, 27 Jan 2022 23:13:58 -0500
X-MC-Unique: jGLrAaajMIyLUpOxwSU1nQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1675C1083F60;
	Fri, 28 Jan 2022 04:13:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 007DF10D1537;
	Fri, 28 Jan 2022 04:13:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C13F04BB7C;
	Fri, 28 Jan 2022 04:13:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S4Dk5t008449 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 23:13:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 894F576E9; Fri, 28 Jan 2022 04:13:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8502376E8
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 04:13:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5649C80B707
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 04:13:43 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
	[209.85.216.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-426-2OcA7zbfOHCI26I4PZr--g-1; Thu, 27 Jan 2022 23:13:41 -0500
X-MC-Unique: 2OcA7zbfOHCI26I4PZr--g-1
Received: by mail-pj1-f42.google.com with SMTP id h12so5350983pjq.3
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 20:13:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=5ywLDzuzAZGaRO8RawHqJ0WrylZEV30frzsWLnKcm3s=;
	b=1pvT5alNGMaSPWF32IonfK0IFECOl/IQ/nzOHFmK7Ve+TJ7cnGNDr/gf6kacWcL9qO
	kxFVOKLOjvO2HsMKKCv8Ii+Vow3fhZbSEjlgxIdc0lnh+/0922wielDKuM6BcYKGqLdW
	AetrJped2R2+xGeq+0/FkQfdmZQzhOTfHQy8x1TlyaprcBKAQq1Pj52Ac4mKXw3i4ft2
	s8PfUoR0cEjJN9vnJEoU+Co60aO/sXA9rJsF3IrMHzuFHpAyJqsv02ICGPpy3BRUei+n
	/4JIO3TIxu/BbK0fQ+VMsOxHgDXjetN5aPEirL9GoVeNLtjZs23Xq2D9Fk/8A24Pf7Ti
	xxPA==
X-Gm-Message-State: AOAM5329o4DPDZgvWa8kBgNIOTJ2gWMPV0JMyh4TNAKhnyEZhPMSzGBt
	fyDE7N+R8JaCAdXtzLs9TNf2Bjr7piniC/Otdmho8bPo
X-Google-Smtp-Source: ABdhPJysV20IcEwuT7KGXDvw+MVAmBCB2on2lbOPJd04fwZpbE9zEB2n4u+gOxd3ceFIAkieMx+Y/oDyNCPQxCFxytA=
X-Received: by 2002:a17:90a:83:: with SMTP id
	a3mr17667673pja.169.1643343219932; 
	Thu, 27 Jan 2022 20:13:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:b655:0:0:0:0 with HTTP; Thu, 27 Jan 2022 20:13:39
	-0800 (PST)
In-Reply-To: <CAPo=n-9UfJA2kW-Lc32Uy6X3Q+vU6TMHkz3GH+R2Y8bfmBFSeQ@mail.gmail.com>
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
	<CABKqQvF2jRBAb=Rw9MzgCq-U_0r7rGNA1uqTodcrxKuTGYorrQ@mail.gmail.com>
	<CAPo=n-9UfJA2kW-Lc32Uy6X3Q+vU6TMHkz3GH+R2Y8bfmBFSeQ@mail.gmail.com>
Date: Thu, 27 Jan 2022 22:13:39 -0600
Message-ID: <CABKqQvF12fg-iDHTjQ3nhXNUfJ=zpfWC7qT7ahVQsMfMhqz7zQ@mail.gmail.com>
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
To: blinux-list@redhat.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I found the espeak-ng.conf file under etc. I changed the rate settings
in that file, and nothing happened. I also found the same file right
inside the ~/config directory. I changed that one too. My speech is
still painfully slow! Nothing changed. Do I have to create all the
folders for the original path that you gave me? Or is something wrong
with the new rate values I used? I am stuck, and this simple thing
really should not be this hard, especially since the first thing most
of us do is adjust the speaking rate. I wish someone would explain
what's up with that.

Amanda[0]

On 1/27/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hi Amanda,
>
> Assuming you are using Espeak-ng (the default), you can speed up Orca's
> speech by editing the file
> ~/.config/speech-dispatcher/modules/espeak-ng.conf.
> Look for lines starting with "EspeakMinRate", "EspeakNormalRate", and
> "EspeakMaxRate". The values are in words per minute. Adjust them to your
> preference and let us know if it helps.
>
> Now for my Linux story:
>
> I started using Linux in 2006, when I was still in high school. I was very
> much interested in Unix, so I first experimented with Cygwin, and later
> ordered an Ubuntu live CD via the post.
> A bit later I switched to Fedora Core 3 modified with Speakup, which was
> what I was using when the Windows half of my computer broke itself in 2008.
> I then decided to learn to do everything on Linux, rather than taking the
> trouble to fix Windows.
>
> Interestingly, when I applied to study Computer Science after school, one
> of the concerns of the University was that the CS degree required the use
> of Linux, and they were unsure how accessible that would be. Of course I
> was able to demonstrate to them how I actually use Linux, which made
> convincing them a bit easier. I must mention that at the time (and still to
> an extent), computer science was a degree really not often studied by blind
> people here in South Africa.
>
> For the most part I have now used Linux full time for about 14 years,
> though I do maintain a virtual machine with Windows 10 for the times when I
> have to test Windows software for my work.
> For me, the biggest advantage of Linux is customizability. I have my setup
> configured exactly how I want it, for instance: a screen session on console
> 1, Emacs with Emacspeak on console 2, and graphical stuff on console 6. My
> text consoles are configured to be huge, since the character size makes no
> difference to me, and I would rather have to scroll less.
>
> The times I have to boot up my virtual machine, I am surprised by how
> different the experience is, with multiple pre-installed services
> immediately demanding my attention, asking me to sign into cloud services,
> and performing background tasks which I did not order, but with no easy way
> of disabling. That said, had I been a full time Windows user, I probably
> would have known how to configure Windows exactly how I want it as well, so
> I guess a big part of it is also what one is used to and comfortable with.
>
> Regards,
>
> Rynhardt
>
> On Thu, Jan 27, 2022 at 5:43 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>>
>> Dang, y'all are old!
>>
>> I'm in a Computer Science graduate program. It's practically required
>> that I have a Linux machine. I don't use it Linux exclusively. In
>> fact, I just got this Ubuntu machine that I am on now. Why is Orca's
>> speech so slow? I have it sped up to 100%, and it's still way too
>> slow! Speaking of customization, the NVDA screen reader on windows
>> allows me to set the speech rate to a level that is comfortable for
>> me.
>>
>> Amanda[0]
>>
>> On 1/26/22, Linux for blind general discussion <blinux-list@redhat.com>
> wrote:
>> > I use linux exclusively and for several reasons.
>> >
>> > 1. I worked in Unix and  SunOS since 1986. So Linux was a familiar
>> > environment
>> > to transition into.
>> >
>> > 2. Because once I get it  to work, it works. That keyboard
> configuration I
>> > mentioned
>> > occurred years ago and I haven't touched it since not even when I
> switched
>> > to a different machine. Not even when I switched to different
>> > keyboards.
>> > Not even when I switched to different versions of Linux.
>> >
>> > 3. Linux does what I want without backtalk, second guessing, ads,
> unwanted
>> > upgrading, or mysterious crashes.
>> >
>> >
>> > 4. Linux trades learning for power and flexibility.
>> > The few times   I tried learning Windows I quickly grew frustrated at
> just
>> > how limited the software was and
>> > how it forced the user to do things its way instead of letting me do
> them MY
>> > way.
>> > I spent more time fighting with windows than getting things done.
>> >
>> > 5. Everyone I know who uses Windows, spends far too much time
> complaining
>> > about windows, fixing the
>> > many problems windows causes by its quirks, arcane mysteries,
> shortcomings,
>> > and built in faults,
>> > so I see no reason to give it yet another try.
>> >
>> > On Wed, Jan 26, 2022 at 09:19:09PM -0500, Linux for blind general
> discussion
>> > wrote:
>> >> Okay  then,
>> >> This illustrates another point which got touched  on in a different
>> >> thread
>> >> as well.
>> >> The, you must be prepared to do programming if you are going to use
> Linux
>> >> fluidly, if at all.
>> >> On an entirely different list I am on, folks were complaining about
>> >> windows
>> >> 10 and windows 11, because of the changes.
>> >> Computers are increasingly such critical parts of our lives, banking
>> >> shopping, even voting, that many on the list spoke of just wanting to
> sit
>> >> down at their computer and have things work...so they still use older
>> >> editions of things like Windows  XP?  and Windows  7.
>> >> I admit that is part of why the out of the box concept discussed here
>> >> where
>> >> Access is concerned seems a bit, speaking personally, like a
>> >> misconception.
>> >> Few on the list I referenced above are using adaptive tools, and some
> of
>> >> them are scientists, with many not wanting configuring to be a part of
>> >> their
>> >> computer lives.
>> >>  So, why do you use Linux?
>> >> what makes it worth the time the training and the trial  / error?
>> >> Oh, and is it your only operating system?
>> >> Want to ask the latter because I know someone who indeed uses Linux
>> >> exclusively, vowing never to touch windows again.
>> >> Please feel free to express in detail, never mind my personal
> situation,
>> >> because the journalist in me is interested as well.
>> >> Karen
>> >>
>> >>
>> >>
>> >> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>> >>
>> >> > Fair point.
>> >> >
>> >> > As regards the keyboard, I agree with the main keyboard philosophy,
> and
>> >> > in fact speakup does allow you to customize it to use the main
> keyboard
>> >> > instead of the
>> >> > keypad. However, it took me a while to customize it to my liking and
>> >> > required quite a bit of study and generating of personal keymaps, so
>> >> > might not be of any interest to those who aren't comfortable making
>> >> > some low level modifications.
>> >> >
>> >> > On Wed, Jan 26, 2022 at 08:16:08PM -0500, Linux for blind general
>> >> > discussion wrote:
>> >> > > Which may illustrate my point.
>> >> > > I can use those without changing what I have now.
>> >> > > Speaking personally if Linux does not provide equal access to both
>> >> > > hardware
>> >> > > and  software speech, in both its command line and graphical
>> >> > > platforms, I am
>> >> > > unsure  just where the advantage is for me personally.
>> >> > > One thing I personally disliked with speakup, at least the times I
>> >> > > tried it
>> >> > > years back was the need to remove my hands from the keyboard for
> many
>> >> > > things.
>> >> > > That may not hold true all the way around, but I am a solid typist
> and
>> >> > > do
>> >> > > not like having to remove may hands, say use the number pad, if I
> want
>> >> > > as I
>> >> > > work content.
>> >> > > That is me though, which is one magical thing about personal
>> >> > > computers.
>> >> > > everyone brings their desires and usage goals to their machines.
>> >> > > Which to my mind again personally means Linux should, if it
> actually
>> >> > > can, be
>> >> > > flexible enough for all choices to work in it command line and
>> >> > > graphical.
>> >> > > Karen
>> >> > >
>> >> > >
>> >> > >
>> >> > > On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>> >> > >
>> >> > > > I don't use Firefox. I use a text based browser, either lynx,
> w3m,
>> >> > > > or links (the chain) depending.
>> >> > > >
>> >> > > > On Wed, Jan 26, 2022 at 07:48:42PM -0500, Linux for blind
>> >> > > > general
>> >> > > > discussion wrote:
>> >> > > > > Rudy,
>> >> > > > > As an example, may I ask what edition  of  Firefox you are
> running
>> >> > > > > with that
>> >> > > > > dectalk Express?
>> >> > > > > Karen
>> >> > > > >
>> >> > > > >
>> >> > > > >
>> >> > > > > On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>> >> > > > >
>> >> > > > > > Karen,
>> >> > > > > > I use Linux speakup with a Dectalk express speech
> synthesizer.
>> >> > > > > > And I believe speakup also handles the
>> >> > > > > > slot card version of dectalk though you'll need a desktop PC
>> >> > > > > > that supports it, so the software is there.
>> >> > > > > >
>> >> > > > > >
>> >> > > > > > Rudy
>> >> > > > > >
>> >> > > > > > On Wed, Jan 26, 2022 at 05:22:35PM -0500, Linux for blind
>> >> > > > > > general discussion wrote:
>> >> > > > > > > Kyle,
>> >> > > > > > > i do not consider my hardware decktalk provided via my
> reading
>> >> > > > > > > edge to be an
>> >> > > > > > > example of text to speech.
>> >> > > > > > > By definition, and there are many, the term, which refers
> to
>> >> > > > > > > taking
>> >> > > > > > > information in text format  and  rendering it aloud does
> not,
>> >> > > > > > > speaking
>> >> > > > > > > personally,  equal pronunciation ease.
>> >> > > > > > > In fact one theory about this has to do with preserving
>> >> > > > > > > the
>> >> > > > > > > audiobook
>> >> > > > > > > market.
>> >> > > > > > > granted, as  was pointed out in a thread some time ago, I
> am
>> >> > > > > > > not likely to
>> >> > > > > > > learn about Linux screen readers, no driver exists for my
>> >> > > > > > > hardware speech,
>> >> > > > > > > and software synthesizer sources  currently do a number on
> my
>> >> > > > > > > brain.
>> >> > > > > > > Karen
>> >> > > > > > >
>> >> > > > > > >
>> >> > > > > > >
>> >> > > > > > > On Wed, 26 Jan 2022, Linux for blind general discussion
>> >> > > > > > > wrote:
>> >> > > > > > >
>> >> > > > > > > > That being said, the audiophile in me cannot resist
> pointing
>> >> > > > > > > > out that
>> >> > > > > > > > pronunciation abilities of tts are of far less quality
> than
>> >> > > > > > > > those
>> >> > > > > > > > provided by many actual screen readers, at least the
> ones I
>> >> > > > > > > > have
>> >> > > > > > > > used...which???? does not include any for Linux.
>> >> > > > > > > >
>> >> > > > > > > >
>> >> > > > > > > > That being said, the technofile in me cannot resist
> pointing
>> >> > > > > > > > out the
>> >> > > > > > > > fact that every screen reader for every OS uses nothing
> but
>> >> > > > > > > > TTS
>> >> > > > > > > > technology to read the screen. Well, I guess BeMyEyes
>> >> > > > > > > > doesn't, but it's
>> >> > > > > > > > not exactly a screen reader, unless you need the
> volunteer
>> >> > > > > > > > to read a
>> >> > > > > > > > screen for you.
>> >> > > > > > > >
>> >> > > > > > > > ~ Kyle
>> >> > > > > > > >
>> >> > > > > > > > _______________________________________________
>> >> > > > > > > > Blinux-list mailing list
>> >> > > > > > > > Blinux-list@redhat.com
>> >> > > > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >> > > > > > > >
>> >> > > > > >
>> >> > > > > > > _______________________________________________
>> >> > > > > > > Blinux-list mailing list
>> >> > > > > > > Blinux-list@redhat.com
>> >> > > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >> > > > > >
>> >> > > > > >
>> >> > > > > > --
>> >> > > > > > Rudy Vener
>> >> > > > > > Website: http://www.rudyvener.com
>> >> > > > > > Twitter: https://twitter.com/RudySalt
>> >> > > > > > The difference between truth and falsehood is that truth
> remains
>> >> > > > > > constant no matter which political party holds the majority.
>> >> > > > > >  - A. R. Vener
>> >> > > > > >
>> >> > > > > > _______________________________________________
>> >> > > > > > Blinux-list mailing list
>> >> > > > > > Blinux-list@redhat.com
>> >> > > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >> > > > > >
>> >> > > > > >
>> >> > > > >
>> >> > > > > _______________________________________________
>> >> > > > > Blinux-list mailing list
>> >> > > > > Blinux-list@redhat.com
>> >> > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >> > > >
>> >> > > > --
>> >> > > > Rudy Vener
>> >> > > > Website: http://www.rudyvener.com
>> >> > > > Twitter: https://twitter.com/RudySalt
>> >> > > > The difference between truth and falsehood is that truth remains
>> >> > > > constant no matter which political party holds the majority.
>> >> > > >  - A. R. Vener
>> >> > > >
>> >> > > > _______________________________________________
>> >> > > > Blinux-list mailing list
>> >> > > > Blinux-list@redhat.com
>> >> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >> > > >
>> >> > > >
>> >> > >
>> >> > > _______________________________________________
>> >> > > Blinux-list mailing list
>> >> > > Blinux-list@redhat.com
>> >> > > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >> >
>> >> > --
>> >> > Rudy Vener
>> >> > Website: http://www.rudyvener.com
>> >> > Twitter: https://twitter.com/RudySalt
>> >> > The difference between truth and falsehood is that truth remains
>> >> > constant no matter which political party holds the majority.
>> >> >  - A. R. Vener
>> >> >
>> >> > _______________________________________________
>> >> > Blinux-list mailing list
>> >> > Blinux-list@redhat.com
>> >> > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >> >
>> >> >
>> >>
>> >> _______________________________________________
>> >> Blinux-list mailing list
>> >> Blinux-list@redhat.com
>> >> https://listman.redhat.com/mailman/listinfo/blinux-list
>> >
>> > --
>> > Rudy Vener
>> > Website: http://www.rudyvener.com
>> > Twitter: https://twitter.com/RudySalt
>> > The difference between truth and falsehood is that truth remains
> constant no
>> > matter which political party holds the majority.
>> >   - A. R. Vener
>> >
>> > _______________________________________________
>> > Blinux-list mailing list
>> > Blinux-list@redhat.com
>> > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >
>> >
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com <Blinux-list@redhat.com>
>> https://listman.redhat.com/mailman/listinfo/blinux-list
> <https://listman.redhat.com/mailman/listinfo/blinux-list>
>>
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

