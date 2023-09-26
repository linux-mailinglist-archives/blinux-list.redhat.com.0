Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 387A37AEE59
	for <lists+blinux-list@lfdr.de>; Tue, 26 Sep 2023 16:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695737584;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gKkG3W72xbqSIMsMBIUrx0EHh4Izd6Nrh5XwHOGJxG8=;
	b=X8zen7bvYHeoCaig8tY3kkYsAG1iUCMZPUZ0fxvteAJ8DmGsYFdgaijeoSryRWDJDp1AKh
	5QPVDcQjQMwghOOlbD2pGIiZKPFoN0nH6yieNuYGjRq/4DYAXeJjnpDxXfdhmGxKMzTCsJ
	iR2nf2dPSjdTNN+9V8V7WfHfLKjzNQI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-52-7fxW7n7KPTCE6Hmk2oiLjw-1; Tue, 26 Sep 2023 10:12:59 -0400
X-MC-Unique: 7fxW7n7KPTCE6Hmk2oiLjw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D80E28039C1;
	Tue, 26 Sep 2023 14:12:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6114D40C6E76;
	Tue, 26 Sep 2023 14:12:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 21EA819465B2;
	Tue, 26 Sep 2023 14:12:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 26 Sep 2023 10:01:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Talking Images for 64-bit Laptop
In-Reply-To: <mailman.969.1695736728.4021070.blinux-list@redhat.com>
References: <mailman.2112.1695416202.2242621.blinux-list@redhat.com>
 <mailman.2216.1695421961.2242620.blinux-list@redhat.com>
 <mailman.291.1695646516.4021078.blinux-list@redhat.com>
 <mailman.367.1695657175.4021075.blinux-list@redhat.com>
 <mailman.969.1695736728.4021070.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.972.1695737548.4021070.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Don't press enter.  Wait for the three tones then wait for speech to
happen.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Tue, 26 Sep 2023, Linux for blind general discussion wrote:

> I am sorry, but I have bad news.  I downloaded the image, sent it
> to a 32-GB usb card and tried it.  The system immediately found
> the EFI partition and played the 3 notes in ascending order
> within 5 or 10 seconds after powering on.  I pressed Enter and
> waited and waited and waited, left the room for a few minutes,
> came back, waited some more but that was the last sound.
>
> 	Later, it occurred to me that I might get it to talk if
> there was a usb sound card since those devices are in common use
> everywhere.
>
> 	I now had this lap top with a 4-port extender containing
> a full-size keyboard and the 128-GB thumb drive that was the
> target of the Linux installation so why not also plug in a usb sound
> card.
>
> 	I did and slint found that card.  This is a very good way
> to set this part of the installation since the person doing the
> install must respond.
>
> 	I did make several later tries and confirmed that this
> lap top's native sound interface is like a lot of native sound
> interfaces in that it is too proprietary for it's own good.
>
> 	One of my favorite items when doing this sort of thing is a
> portable AM radio to more or less get an electroencephalogram of
> whether the computer seems to still be alive.  One tunes to a
> blank spot near the low end of the AM band if there is no radio
> station there and listens to the static that the circuitry in the
> computer makes as it computes.
>
> 	If something is wrong and the computer locks up, the
> crackle, pop, beep and squeak abruptly stop and there is nothing
> but the hiss of the radio.
>
> 	The computer, in this case, doesn't lock up but slint
> never sees a viable native sound interface to probe.  I hear lots
> of zips, pops squeaks and beeps of all kinds indicating that the
> computer is still alive and well but not talking.  Adding the usb
> sound card gives slint something it can recognize as a sound
> interface.  It did start voicing the screen just like it should
> but it should have found the native interface automatically.
>
> 	I have another Debian 11 distribution that uses the same
> concept of sending an English message to every sound card asking
> one to press enter if this is the correct card and it talks all
> the time through the installation process.
>
> 	For now, I am using that installer since it is the same
> debian version I wanted anyway which is bullseye or debian 11.
>
> 	That install image does find the HP lap top's native
> sound interface.  When the installation is complete, it has
> produced some unpleasant surprises on other systems I have used
> it on if their native sound cards were particularly complex.  One
> system, for instance, talked all the way through the installation
> but wouldn't reliably talk after booting to the installed system.
> Simply unplugging the speaker or plugging in a set of headphones
> would kill the audio.  It turned out to think that hdmi was
> supposed to be the correct output.
>
> 	If this helps any, this lap top appears to have no
> trouble sending the musical notes at the boot time.  The oldest
> PC's had a system for making noises which you are probably very
> familiar with which used a timer-counter integrated circuit that
> was fed from a roughly 1-MHZ clock.  The 16-bit counter in the
> chip is fed with some constant depending upon what note or pitch
> one needs.  There is also a gate which connects pure DC to the
> speaker or nothing if we are on the low half of the cycle.  Tones
> are produced by stuffing this constant in to the counter and the
> counter counts down to 0 and then restarts after sending a pulse
> to the speaker.
>
> 	You can get an amazing number of noises out of such a
> circuit from Morse Code to at least video-game quality music.
>
> 	I am guessing this lap top has some modern version of
> that noise-maker timer-counter-switch in order for the music to
> come  through but obviously, we need to find the built-in sound
> card for speech to work.
>
> 	I am certainly not complaining about slint.  As one who
> likes to tinker with computers, PIC microcontrollers and radios,
> I know how difficult it is to make just about anything work over
> the broad range of situations that public users produce so, if
> there is any information I can provide to help, I am glad to do
> so.
>
> Linux for blind general discussion <blinux-list@redhat.com> writes:
> > Hi Martin,
> >
> > sorry for the mistake in the Handbook. Of course I should have written:
> >
> > wget https://slackware.uk/slint/x86_64/slint-15.0/iso/slint64-15.0-5.iso
> > wget
> > https://slackware.uk/slint/x86_64/slint-15.0/iso/slint64-15.0-5.iso.sha256
> >
> > then:
> > sha256sum -c slint64-15.0-5.iso.sha256
> >
> > I will fix that and/or make a link like slint64-15.0-latest.iso
> >
> > Cheers,
> > Didier
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

