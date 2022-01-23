Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB4449714F
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 12:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642938159;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uUeQjPAhyxfWFZQkzYtxJylDlYavzmSRjrwwqMigdBw=;
	b=c3DitpOlln7+y/t+0wZq8gy6b+od7F3qH0T+esUd8RLXE3Gz30FexNWuYBkQR5/D+YNwf/
	jtcWLJuX1CIquxr8al9ESI0Kc5LULsFCkasE84wUATST5XKVE26m1KnIMcXvzGkJyjOz/Z
	dT7FjmeJDZWnTV4um0L/PHf2i7mHtMQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-466-OP0zREtHNVS-fQAKfVE26g-1; Sun, 23 Jan 2022 06:42:35 -0500
X-MC-Unique: OP0zREtHNVS-fQAKfVE26g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D939F1853026;
	Sun, 23 Jan 2022 11:42:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 989302376A;
	Sun, 23 Jan 2022 11:42:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E48B31809CB8;
	Sun, 23 Jan 2022 11:42:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NBgSjS031120 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 06:42:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E55BA40CFD11; Sun, 23 Jan 2022 11:42:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0C6540CFD0B
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 11:42:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7E1F380409A
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 11:42:27 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-490-EIlght4gPAmffVokI0xeew-1; Sun, 23 Jan 2022 06:42:26 -0500
X-MC-Unique: EIlght4gPAmffVokI0xeew-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JhWSK3p6wzQrm
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 06:42:25 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JhWSK3NWHzcbc; Sun, 23 Jan 2022 06:42:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JhWSK2kZdzcbC
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 06:42:25 -0500 (EST)
Date: Sun, 23 Jan 2022 06:42:25 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
In-Reply-To: <b4515952-fdab-c9e1-4a2e-07c7d2f6c783@gmail.com>
Message-ID: <54c0dae2-c64-d946-e3-cdc8d9806166@panix.com>
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
	<e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
	<3449a41e-479-d678-f49-310f4c2eff@panix.com>
	<b4515952-fdab-c9e1-4a2e-07c7d2f6c783@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

The machine wasn't bought, it had been used for windows earlier.  We tried
updating service packs for windows on the machine first and when that
failed, I then failed to install linux on the machine.


On Sun, 23 Jan 2022, Linux for blind general discussion wrote:

> That, my friend is why you do research before you buy.
>
>
> Example, most all HP machines will take Linux, no issue. Lenovo ThinkPads are
> known for being ideal for installing Linux. I've never run across a newer Del
> which doesn't run Linux like a champ.
>
>
> Just look for something well known and in your budget and google it's
> moddle+Linux like so.
>
>
> "Example HP laptop+Fedora"
>
>
> You will almost certainly find the info you are looking for.
>
>
> I've always believed, if you want your system to work the way you want, either
> use a fresh install you do yourself of a distro "you" like, in my case Slint,
> or build it yourself, Arch or Gentoo, if you like.
>
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Slint machine using Thunderbird
>
> On 2022/01/23 11:34, Linux for blind general discussion wrote:
> > Well now, that just depends on what brand and model of laptop comes your
> > way.  I remember a Dell Dimension 1550 that wouldn't install linux on it
> > at all.  The retirement program I'm with subsequently trashed that laptop
> > as a result of that failure.
> > Not all of the older laptops will take linux and perhaps some of the newer
> > laptops won't take linux either.
> > Some people prefer not to gamble.
> >
> >
> > On Sun, 23 Jan 2022, Linux for blind general discussion wrote:
> >
> >> I have never bought a laptop that comes with Linux pre installed, why
> >> should
> >> I, when I can just do it myself, and then install everything I want/need in
> >> a
> >> system.
> >>
> >>
> >> My favorite machine thus far would be my Huawei MateBook D15. It has a very
> >> nice, grate, big keyboard, yes, also a rather large screen, but what can
> >> you
> >> do? The battery is also reasonable.
> >>
> >> Warm regards,
> >>
> >> Brandt Steenkamp
> >>
> >> Sent from the Slint machine using Thunderbird
> >>
> >> On 2022/01/23 00:12, Linux for blind general discussion wrote:
> >>> Well,
> >>> For me it was always either the HP Pavillion or the Dell Satellite models.
> >>> Relatively easy to use, come with standard options and a nice big
> >>> keyboard.
> >>> Yes, I have large hands. And yes, like you, screen size isn?t important to
> >>> me. Still, with a larger screen there is video capability that can be
> >>> retasked easily enough. Also, since most laptops often use screen size as
> >>> a
> >>> depending factor, a larger one will have the advantage of a larger
> >>> keyboard.
> >>>
> >>> -Eric
> >>>
> >>>
> >>>> On Jan 22, 2022, at 1:16 PM, Linux for blind general discussion
> >>>> <blinux-list@redhat.com> wrote:
> >>>>
> >>>> I am looking for a Linux machine to use in graduate CS courses. I
> >>>> probably
> >>>> want Ubuntu or another common distro that comes with the screen reader (I
> >>>> assume Orca) and other a11y stuff already installed. I like small, light
> >>>> laptops (since I don't use the screen) that have decent memory and
> >>>> battery
> >>>> life. Which machines are your favorites.
> >>>>
> >>>> Thanks for the tip on VmWare the other day, BTW.
> >>>>
> >>>> Amanda[0]
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

