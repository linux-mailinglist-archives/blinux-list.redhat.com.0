Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C626B6B7036
	for <lists+blinux-list@lfdr.de>; Mon, 13 Mar 2023 08:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678693352;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DRxIpMyVCmxmu8xZVCs5AWJ2iciiqZgeukVbPo7rdho=;
	b=cuy50hU6OKFwQQ8NKEEDA7pzgNNbauwmCFSKwoDURHoix1OAakl2TLoAoZhwJIagXO13g+
	HfEkhND3+7wsxgW1V6gOUott/9Iov2YFAm3EV7cso9Cl2eVBADlHfXYHEnejAEUUNb8RCn
	eYWxXkwlPdCdkeU6KIxPmV+sb89g/Dc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-93-Vedvd44BOKSeEnvmeIZYhw-1; Mon, 13 Mar 2023 03:42:29 -0400
X-MC-Unique: Vedvd44BOKSeEnvmeIZYhw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29D8E1C08783;
	Mon, 13 Mar 2023 07:42:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A11FF2166B26;
	Mon, 13 Mar 2023 07:42:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0DB1619465A4;
	Mon, 13 Mar 2023 07:42:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 13 Mar 2023 03:42:16 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: has anyone got emmaubuntus talking?
In-Reply-To: <mailman.519.1678667016.3486283.blinux-list@redhat.com>
References: <mailman.398.1678577483.3486290.blinux-list@redhat.com>
 <mailman.450.1678604156.3486283.blinux-list@redhat.com>
 <mailman.408.1678605367.3486286.blinux-list@redhat.com>
 <mailman.453.1678606864.3486292.blinux-list@redhat.com>
 <mailman.519.1678667016.3486283.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.626.1678693340.3486291.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If dyslectics and the totally blind can't bridge through installation with
a screen reader talking google tts is pointless.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sun, 12 Mar 2023, Linux for blind general discussion wrote:

> if it uses google tts then its a damn good tts
> On 3/11/2023 11:41 PM, Linux for blind general discussion wrote:
> > Oh dear, gspeech is google speech and any emmaubuntus system has to be
> > online at all times to use it and start it.  That's an unacceptable
> > security vulnerability here.
> >
> >
> >
> > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty:
> >   soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > On Sun, 12 Mar 2023, Linux for blind general discussion wrote:
> >
> >> Plus, there are Ubuntu variants for XFCE(Xubuntu) and LXDE(Lubuntu)
> >> and last I checked, there were XFCE and LXDE variants of Debian CD1
> >> and the Debian Netinstaller featured LXDE and XFCE alongside Gnome,
> >> KDE, and Mate on the list of options at the install additional
> >> software step.
> >>
> >> Presumably, other major distros have options, either at time of
> >> downloading the iso, time of installation, or after installing the
> >> system, to setup XFCE, LXDE, LXQT, or one of the many stand-alone
> >> window managers.
> >>
> >> On 3/12/23, Linux for blind general discussion <blinux-list@redhat.com>
> >> wrote:
> >>> Hello,
> >>>
> >>> are you really sure it's necessary to use a specialized Linux
> >>> distribution just because of the computer's age?
> >>>
> >>> I mean, Linux is pretty lightweight even on the flagship distros, in
> >>> most cases, you're completely fine with them and can benefit from their
> >>> accessibility support.
> >>>
> >>> I've recently installed Ubuntu Mate 22.04 64-bit on my cca. 15 years old
> >>> laptop, and I was very pleased with the experience.
> >>>
> >>> Indeed, it was not as lightning as my current-one, though honestly, I
> >>> had a feeling most of the delay came actually from the physical
> >>> keyboard, which is very sturdy compared to today's standards, and takes
> >>> quite an effort to type on.
> >>>
> >>> But even with this slowdown, the experience was still quite fluent.
> >>>
> >>>
> >>> Best regards
> >>>
> >>>
> >>> Rastislav
> >>>
> >>>
> >>> D?a 12. 3. 2023 o 0:31 Linux for blind general discussion nap?sal(a):
> >>>> I downloaded the latest release.  It has espeak-ng on it but doesn't have
> >>>> orca.  I couldn't figure out how to get espeakup-ng to come up on boot so
> >>>> I'd have a talking install at least.
> >>>> For those that don't yet know emmaubuntus is a distribution aimed at
> >>>> under-powered and refurbished machines stuff that would otherwise end up
> >>>> in the land fills.  It's for beginners to linux and the only reason I'm
> >>>> doing anything with it at all is to possibly help a remote sighted person
> >>>> migrate one or more old windows machines to this version of linux and she
> >>>> hasn't used linux yet.  It offers xfce and lxqt as desktops.  If orca
> >>>> isn't in the repository being used it ought to get in the repository so
> >>>> the desktops get accessible for screen reader users.
> >>>>
> >>>>
> >>>>
> >>>> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> >>>> defense of liberty:
> >>>>    soap, ballot, jury, and ammo. Please use in that order."
> >>>> -Ed Howdershelt (Author, 1940)
> >>>>
> >>>> .
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

