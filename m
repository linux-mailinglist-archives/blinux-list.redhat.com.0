Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AC9462998
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 02:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638235247;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qeQ+WIvibOh8abLyadA7/tGmIZR2dkwsrW1+Ya0vV38=;
	b=InRTlGvgsh8y/AFolRd5e6qqnIgK/ASXPc13eOHWd1uoYiCy56Kjw80RrqTfH2meLMmgbt
	ZjhTjHCiphA4QJwyG7SYGULFZ4msGrbkCYTJjwIB2yWYXOTobq4po2xqD6eNIKDEVcU38S
	9l5Ug1p6z0E5xGcGDgeBSm0xsqBumhM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-555-hAcLC0X-NnenJZXVZfpwLg-1; Mon, 29 Nov 2021 20:20:43 -0500
X-MC-Unique: hAcLC0X-NnenJZXVZfpwLg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2A4B1006AA0;
	Tue, 30 Nov 2021 01:20:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70FD560BF1;
	Tue, 30 Nov 2021 01:20:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B10604CA93;
	Tue, 30 Nov 2021 01:20:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AU1KU2h026603 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 20:20:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 03C1F2156603; Tue, 30 Nov 2021 01:20:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F32AF215660C
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 01:20:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6705E811E76
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 01:20:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-36-ken11QVMNPuoWlb_ew-pXw-1; Mon, 29 Nov 2021 20:20:23 -0500
X-MC-Unique: ken11QVMNPuoWlb_ew-pXw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J34CV6Qknz2tXN
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 20:20:22 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J34CV5f65zcbc; Mon, 29 Nov 2021 20:20:22 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J34CV5JFZzcbP
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 20:20:22 -0500 (EST)
Date: Mon, 29 Nov 2021 20:20:22 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?
In-Reply-To: <878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111292017540.5144@panix1.panix.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Before editing a configuration file, make a copy of it to another file,
that way if you do a configuration change you don't like you can back out
and same goes with any mistakes.  If you like your changed configuration
file, then maybe delete your backup.


On Mon, 29 Nov 2021, Linux for blind general discussion wrote:

> Thanks a bundle for all of you folks. I did not know how much of a discussion
> my innocent and naive question would generate. I learned a lot from your
> answers. Although I have never messed with configuration files since the days
> of the autoexec.bat in the days of dos, I think I have enough courage to play
> with changing some configuration settings using some of the editors you
> suggested.
>
> I launched few of them both in the desktop and in the terminal and I found
> geany and nano to be easy. I did not find Micro, I guess it is not
> preinstalled on slint.
>
> I know that my editing needs would be very basic.
>
> Cheers,
>
> Ibrahim
>
> On 11/29/21 5:33 PM, Linux for blind general discussion wrote:
> > There is teachjove and jove is jonathan's own version of emacs and
> > teachjove can be run without running jove or emacs directly.  This can be
> > done from the terminal for any willing to learn.  I suppose emacs could be
> > configured in the same way but haven't tried that yet.  It probably would
> > need a small script.
> >
> >
> > On Mon, 29 Nov 2021, Linux for blind general discussion wrote:
> >
> >> I actually have a computer science degree and still find both emacs
> >> and vi to be riddles, wrapped in mysteries, inside enigmas and I
> >> should probably figure out a way to add puzzle, conundrum, and a few
> >> other synonyms to that Matryoshka doll of an idiom.
> >>
> >> I don't doubt the claims they are powerful bits of kit once mastered,
> >> but they certainly for the faint of heart and not a good choice if you
> >> just want to edit the occasional config file.
> >>
> >> I personally use Nano, and it lets you just enter nano to open a blank
> >> file you can just start typing in or nano path/to/filename.ext to open
> >> an existing file, but it does have some commands that might throw
> >> people coming from a grapphical editor or word processor for a
> >> loop(e.g. save is ctrl+o, not ctrl+s, quit is ctrl+x, not ctrl+q) and
> >> has cut and paste that is line based instead of selection based(e.g.
> >> ctrl+k cuts the current line in its entirety, repeating ctrl+k without
> >> otheer input continues adding lines to the cut buffer, ctrl+u uncuts
> >> evereything in the cut buffer, copying is accomplished by uncutting
> >> where youo cut, then uncutting again where you want the copy). Also,
> >> pressing ctrl+g will bring up nano's full command list, while the most
> >> commond commandsare printed on the bottom two lines of the screen.
> >>
> >> For simpler console text editors, there's also Micro, which is similar
> >> to Pico/nano, but has key bindings more in line with the majority of
> >> graphical editors.
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
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

