Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 109C55001E6
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 00:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649889040;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=atLbtIqoJ2nf2otri9oKxnJAKeuYOEQI7VVxNitl2sU=;
	b=QXEMk1TgrFTkqqvxN6jsNDQl3aDr/dcmgc4VKeG8wP7C5Do8DqjsndUGwYB1Ph2DAfDUKT
	nK7wqmqnFu6gCv1QjtoKdRdq2UuwyIrbZBxapiH9TFGXLKiH7I5dFkhL5uZ7URuChucSAK
	dtmSKm3RRwE/iAkMlJ1winiJyRTsDOw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-kAMClwgGNvCKKytVGfKihw-1; Wed, 13 Apr 2022 18:30:36 -0400
X-MC-Unique: kAMClwgGNvCKKytVGfKihw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81C778339A5;
	Wed, 13 Apr 2022 22:30:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A64292166B4F;
	Wed, 13 Apr 2022 22:30:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2C6581940353;
	Wed, 13 Apr 2022 22:30:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: FYI - Command Line Programs for the Blind
Date: Wed, 13 Apr 2022 17:31:41 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.8428.1649888423.111203.blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.8307.1649889026.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You disconnect from the network and it skips over that microsoft account thing.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Wed, 13 Apr 2022 18:20:19 -0400
Subject: Re: FYI - Command Line Programs for the Blind

> Not only that, what's a new windows user to do if they don't already have
> an email address?
>
>
> On Wed, 13 Apr 2022, Linux for blind general discussion wrote:
>
> > With Linux however...I don't have to have an email account to log in
> >
> > I have the choice to run a desktop, or none at all
> >
> > I have the ability to install what I want, from a trusted source without fear of oh this site's shady, is it a virus, type fears.
> >
> > I can do one command to update my system, without having to reboot.
> >
> > I don't get unneeded software installed at boot time that returns with updates, and I don't have to use a debloat script written by a third party to chop out bits of the OS
> >
> > Oh and, yes....
> >
> > It's my machine. I can set it up how I want, with the programs I want and need, without some arbitrary bit of the OS going mg this this not well known it is a virus are you sure you want to run this!'
> >
> > Oh and, I can get my machine working without spending inordinate amounts of money on A11Y tech and software, though as well. On a console, speakup and Fenrir work well. Orca isn't perfect but nor are screenreaders on the Windows/Mac sides of things, and those are insanely bigger and more resourceful companies
> >
> > On Wed, Apr 13, 2022 at 04:51:38PM -0500, Linux for blind general discussion wrote:
> >
> > > Wow, responding to these points:
> > > Devin Prater
> > > r.d.t.prater@gmail.com
> > >
> > >
> > > On Wed, Apr 13, 2022 at 2:08 PM Linux for blind general discussion <
> > > blinux-list@redhat.com> wrote:
> > >
> > > > Why not use windows 11 then?
> > > >
> > > >
> > > > Now why the hell would I wanna do something like that? First, I want my
> > > > freedom. Next, I don't want to have to get a Microsoft account just to
> > > > use my computer.
> > >
> > > These are valid points. But what I get from Windows: a mostly clean
> > > accessibility experience (mostly thanks to NVDA and community support), and
> > > a good many apps designed by and for the blind.
> > >
> > >
> > > > And for God's sake I want to be able to change my
> > > > default browser or uninstall something I don't want.
> > >
> > > I mean I have Google Chrome set as my default browser right now. And I can
> > > uninstall a lot. There's no Candy Crush Saga, and I just uninstalled Dizney
> > > Plus.
> > >
> > >
> > > > And if I do want to
> > > > open up a terminal sometimes, it is my right to do so.
> > >
> > > Windows Terminal exists. They even have a Windows package manager. But if
> > > you don't like that one, you use Scoop, or Chocolatey, which also have some
> > > Linux apps and command line programs.
> > >
> > > > And their mail
> > > > application is broken as fsck as well.
> > > >
> > > That's still true. But you'd just install Thunderbird wouldn't you? It
> > > works even better on windows than Linux because the accessibility bus is
> > > faster to load all those messages into its buffers.
> > >
> > > >
> > > > ~Kyle
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
> > > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
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
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

