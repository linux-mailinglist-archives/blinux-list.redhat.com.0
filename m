Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4C4943FC170
	for <lists+blinux-list@lfdr.de>; Tue, 31 Aug 2021 05:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630379488;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3toSo1cNxDUTv1+8nIdqQ/B+lnPhNftRodbzcUOuUCw=;
	b=ArvyyPIXQKSv5Yl6gPgygAhKsES2ezbJQTD8OgRAKholWz0I7TghC6HnEbKI3TNzJMnEwj
	xvHqf7INGXvAQYRAeDYAuwj0CCTUMtbFjun/2hEs+VE2ikcVpk0/l76kxe+O20aplcdd6m
	ZitejGAuQlnNQtxhD+w+DB9+3rh42nw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-U7EpTMNHOwOiPnFbv_UgMw-1; Mon, 30 Aug 2021 23:11:25 -0400
X-MC-Unique: U7EpTMNHOwOiPnFbv_UgMw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A9D4107ACF5;
	Tue, 31 Aug 2021 03:11:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 61D361017CF3;
	Tue, 31 Aug 2021 03:11:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D16F5181A0F1;
	Tue, 31 Aug 2021 03:11:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17V3Aljs032070 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 30 Aug 2021 23:10:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 954FE20341A4; Tue, 31 Aug 2021 03:10:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90CD320341A0
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 03:10:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AAF5E811E76
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 03:10:44 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-505-yuQLpKaCOsSJdiS5ak5dJg-1; Mon, 30 Aug 2021 23:10:42 -0400
X-MC-Unique: yuQLpKaCOsSJdiS5ak5dJg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GzByn4VtCzLrF
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 23:10:41 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GzByn4JPLzcbc; Mon, 30 Aug 2021 23:10:41 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GzByn4DNPzcbP
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 23:10:41 -0400 (EDT)
Date: Mon, 30 Aug 2021 23:10:41 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Found this on youtube
In-Reply-To: <3d1aaedd-2a1c-4f19-f74a-6797e1515bdf@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108302306260.19325@panix1.panix.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
	<efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
	<alpine.NEB.2.23.451.2108290909030.12570@panix1.panix.com>
	<YSuTJ9eHEzFKdmn9@brandt-slint.localhost>
	<a3199a39-e7c7-17d6-f5d3-fc8bd1ae13b9@gmail.com>
	<alpine.NEB.2.23.451.2108292019140.16928@panix1.panix.com>
	<20210830.003146.800.2@[192.168.1.100]>
	<alpine.NEB.2.23.451.2108292053280.21590@panix1.panix.com>
	<3d1aaedd-2a1c-4f19-f74a-6797e1515bdf@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17V3Aljs032070
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
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

iblind-computers.org didn't work.  So I searched for blind-arch and came
up with nothing useable.  Then I searched for linux blind-arch and scored.
I did have a read about endeavouros and so far as I know all it offers is
the calamares installer with no other option so for now that's unuseable.
Interesting thing is manjaro loads up on updates and in some way breaks
the rolling release policy implemented by archlinux but endeavouros does
not get in the way of the rolling release policy of archlinux.
Now, let's find out how well blind-arch will work.


On Mon, 30 Aug 2021, Linux for blind general discussion wrote:

> Hi,=A0 I think you can go to blind-computers.org.=A0 If that does not wor=
k, google
> blind arch and that should gget you what you want.
>
>
> Matthew
>
>
>
> On 8/29/21 8:53 PM, Linux for blind general discussion wrote:
> > That ought to work.
> >
> >
> > On Sun, 29 Aug 2021, Linux for blind general discussion wrote:
> >
> >> You mean
> >> pacman -S espeakup
> >> systemctl disable fenrir
> >> systemctl enable espeakup
> >>
> >> ----- Original Message -----
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: Linux for blind general discussion <blinux-list@redhat.com>
> >> Date: Sun, 29 Aug 2021 20:24:58 -0400
> >> Subject: Re: Found this on youtube
> >>
> >>> You probably disrupted the install every time during updating the key=
ring
> >> step.  Jenux automatically sets that in motion and it's important to g=
o to
> >> lunch while that's happening since it takes a while.  I had suggested =
all
> >> of this get done before speech ever comes up but that isn't happening =
yet.
> >> The capslock-u key reads previous line the capslock-i key reads curren=
t
> >> line and capslock-o reads the next line.  Fenrir is a challenge for th=
ose
> >> used to espeak.  My guess is if you don't like fenrir wait until you g=
et a
> >> Jenux archlinux install completed then pacman -S espeak and once done
> >> systemctl disable fenrir and then systemctl enable espeak then reboot =
and
> >> see if that's better.  Once done, you might also do as root last two
> >> commands need doing as root too pacman -R fenrir.
> >>
> >>
> >> On Sun, 29 Aug 2021, Linux for blind general discussion wrote:
> >>
> >>> Hi,
> >>>
> >>>
> >>> Yesterday I did a blind arch install with no problem.=A0 One of the o=
psion
> >>> is to
> >>> update the key ring.=A0 You may want to try this first before anythin=
g else.
> >>>
> >>>
> >>> Matthew
> >>>
> >>>
> >>>
> >>> On 8/29/21 10:01 AM, Linux for blind general discussion wrote:
> >>>> Hi,
> >>>>
> >>>> every time I've tried installing Jenux the install failed. Why? I ha=
ve no
> >>>> idea. I know there are many people verry happely using Jenux,
> >>>> unfortunatly,
> >>>> I am not one of them.
> >>>>
> >>>> Warm regards,
> >>>>
> >>>> Brandt Steenkamp
> >>>>
> >>>> Sent using Mutt from the Slint laptop
> >>>> On Sun, Aug 29, 2021 at 09:12:29AM -0400, Linux for blind general
> >>>> discussion
> >>>> wrote:
> >>>>> Jenux does get an accessible system up with either android or sever=
al
> >>>>> flavors of archlinux.  Not all flavors of archlinux are accessible =
that
> >>>>> can be installed with Jenux but most are.  Jenux has continuing sup=
port
> >>>>> as
> >>>>> shown by the different dates embedded in the names of the iso's and
> >>>>> sha512
> >>>>> files available on its site.
> >>>>>
> >>>>>
> >>>>> On Sun, 29 Aug 2021, Linux for blind general discussion wrote:
> >>>>>
> >>>>>> Hi all,
> >>>>>>
> >>>>>>
> >>>>>> The last I checked, the BlindArch ISO is rather old. I did an inst=
all,
> >>>>>> but
> >>>>>> there were so many things wrong with the install I kept it for les=
s
> >>>>>> than
> >>>>>> an
> >>>>>> hour. It would've taken me days to fix it all.
> >>>>>>
> >>>>>>
> >>>>>> I am actually considdering writing an install Script in the line o=
f a
> >>>>>> NixOs
> >>>>>> configuration for my own personal use, thus, no choices, all baked=
 in
> >>>>>> to
> >>>>>> the
> >>>>>> script. It would probably take me some time, but what can you do?
> >>>>>>
> >>>>>>
> >>>>>> I would rather do that than screw around with "install scripts". M=
ost
> >>>>>> of
> >>>>>> the
> >>>>>> darn things is buggy as all get out, or doesn't include the
> >>>>>> accessibility
> >>>>>> stuff by default.
> >>>>>>
> >>>>>> Warm regards,
> >>>>>>
> >>>>>> Brandt Steenkamp
> >>>>>>
> >>>>>> Sent using Thunderbird from the Slint Laptop
> >>>>>>
> >>>>>> On 2021/08/28 23:05, Linux for blind general discussion wrote:
> >>>>>>> Hi all,
> >>>>>>>
> >>>>>>> Just found this on Youtube and wondered if anyone hhas tried it. =
 This
> >>>>>>> is
> >>>>>>> a
> >>>>>>> blind arch install demo on how it works.
> >>>>>>>
> >>>>>>> https://www.youtube.com/watch?v=3D72g-2fbP04w
> >>>>>>> Matthew
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>> _______________________________________________
> >>>>>>> Blinux-list mailing list
> >>>>>>> Blinux-list@redhat.com
> >>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>>>>
> >>>>>> _______________________________________________
> >>>>>> Blinux-list mailing list
> >>>>>> Blinux-list@redhat.com
> >>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>> _______________________________________________
> >>>>> Blinux-list mailing list
> >>>>> Blinux-list@redhat.com
> >>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>>
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
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
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

