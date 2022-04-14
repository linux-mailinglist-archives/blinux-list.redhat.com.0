Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F83500F9C
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 15:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649943132;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9WOqBrUGuOknp1F5mvKV3TtJ6kCCb0eliSrUMB8bxpk=;
	b=BS15nE6D53rvgg3yLyl297ss4bvH8NoTvTrBiFWdLDf7v84ArARip37jKeNROav7ageDMP
	ifgJ4OZvpZLujCXdLlivxNzJ9oG415QdlvukDG4xEJ4m0RXdPm5kt/xbnL+9cwqgoxwaPB
	l/MqJhC7WNStIB3/6DvReJiUShD00mc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-308-0Q5QHXF9NL294tp6XzbUfw-1; Thu, 14 Apr 2022 09:32:08 -0400
X-MC-Unique: 0Q5QHXF9NL294tp6XzbUfw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D42E80346F;
	Thu, 14 Apr 2022 13:32:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6E51E14582F6;
	Thu, 14 Apr 2022 13:32:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F0B57194034C;
	Thu, 14 Apr 2022 13:32:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: FYI - Command Line Programs for the Blind
Date: Thu, 14 Apr 2022 08:33:25 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.8654.1649941714.111201.blinux-list@redhat.com>
References: <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8323.1649896260.111207.blinux-list@redhat.com>
 <mailman.8220.1649898351.111205.blinux-list@redhat.com>
 <mailman.8227.1649901807.111205.blinux-list@redhat.com>
 <mailman.8228.1649902278.111205.blinux-list@redhat.com>
 <mailman.8692.1649939739.111210.blinux-list@redhat.com>
 <mailman.8518.1649940497.111204.blinux-list@redhat.com>
 <mailman.8515.1649941359.111202.blinux-list@redhat.com>
 <mailman.8654.1649941714.111201.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.8525.1649943124.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You don't draw a line anywhere. People are going to use their computers however they want and trying to segregate them by category doesn't make much sense. Deaf people need specialized phones. Quadroplegic people need specialized hardware. Deaf Blind people need braille. So what? Getting upset over specialized software and hardware seems rather silly.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Thu, 14 Apr 2022 14:08:25 +0100
Subject: Re: FYI - Command Line Programs for the Blind

> Also true as far as that goes, so where do you draw that line then?
>
> On Thu, Apr 14, 2022 at 08:03:38AM -0500, Linux for blind general discussion wrote:
> > That can be said for any specialized software. High end photo editing software is really only good for that special niche group for example. And they have to go out of their way to buy it and install it.
> > ----- Original Message -----
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Date: Thu, 14 Apr 2022 13:48:10 +0100
> > Subject: Re: FYI - Command Line Programs for the Blind
> >
> > > See to me, I see Orca as part of the installed system, not some special app you have to go install a laJaws or NVDA on Windows however.
> > >
> > > So to me, no, Orca's a part of the distro that helps out disabled (Not just blind....) users however. Something like Fenrir that you have to go out of your way to install specifically, or espeakup, or TDSR, or... would more fit that specialized blindie specific software tag however I feel, since you need to...
> > >
> > > 1. Go installe it from Git, or Pip or your package manager or however you install it
> > >
> > > 2. It doesn't help anyone but blind users. Something like Orca with a magnifier also wouldn't be blind specific since it'd help people with low vision as well for instance however
> > >
> > > That and, well, I just feel like if it's part of the distro or OS, it's not really this hyper specialized thing. It's there when you've installed the system alongside every other package that gets installe.
> > >
> > > Okay for something like vanilla Arch, I'd argue that works against Orca because I had to manually install it and, yes, go out o my way when setting up this box to have Orca on as part of my install and setup routine....but for something like a GUI Arch installer that lets you select accesssibility in the installer, the distinction gets really, really fuzzy since then Orca's installed and part o the system. Ditto for Ubuntu, Debian, et cetera. Kind of a tough one to call
> > >
> > > On Thu, Apr 14, 2022 at 02:33:04PM +0200, Linux for blind general discussion wrote:
> > > >
> > > > Hmmm, interesting, about "the blind" and being human.
> > > >
> > > > I have no problem with it anyway, because I just wonder: "The blind" has
> > > > and will always refer to humans and not some animals.
> > > >
> > > > Then about blind-specific products: the Orca you are using on the
> > > > computer is certainly a blindie thing, isn't it? The fact that you
> > > > require specialised applications 'made for the blind' to participate in
> > > > mainstream activities says otherwise.
> > > >
> > > >
> > > > Linux for blind general discussion <blinux-list@redhat.com> writes:
> > > >
> > > > > Well, no, I didn't mean to replace one for-the-blind specialized Linux
> > > > > distribution with another. Everything I said centered around the fact
> > > > > that I use something that anyone can use, I work with anyone, and I am
> > > > > human above all, not the blind. Slint is also a one-man show that is
> > > > > just a specialized Slackware, albeit with some improvements, and even
> > > > > Slackware as old as it is is also a one-man show. I am much more in
> > > > > favor personally of using distributions with much better community
> > > > > support and more than one person maintaining them. Yes, a team can get
> > > > > too large for the good of its own project, but two heads are always
> > > > > better than one, and three can usually be better than 2.
> > > > >
> > > > > ~Kyle
> > > > >
> > > > > _______________________________________________
> > > > > Blinux-list mailing list
> > > > > Blinux-list@redhat.com
> > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
> > >
> > > --
> > > Jace's words are up there. Quoted and old messages below this point
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
> >
>
> --
> Jace's words are up there. Quoted and old messages below this point
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

