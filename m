Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 197D265B845
	for <lists+blinux-list@lfdr.de>; Tue,  3 Jan 2023 00:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672703027;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hSMggEQp7ig8Zp7gwbvpDT7jImu1BCqMA74RjVxnl34=;
	b=NElvdjRn2NJDuaZL9zvdUw2o7eHiRib3t13Lle7SVHMkR9wTDwLspPkRLesQU10bPQxvWI
	244LfVq9n22VSN8WXXJ3y42fHW3rieYahGzd5LNnRH3Y/eXXepT1FxTLyyrB8m35z/nwbp
	3HXuMxJKryRTs1EMxXPGarjwJLs0XOM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-EhirkYIFOWO-mkKJjd0HYA-1; Mon, 02 Jan 2023 18:43:46 -0500
X-MC-Unique: EhirkYIFOWO-mkKJjd0HYA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FAB13804509;
	Mon,  2 Jan 2023 23:43:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 488D3140EBF5;
	Mon,  2 Jan 2023 23:43:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BA7A7194658F;
	Mon,  2 Jan 2023 23:43:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.2166.1672659484.2515676.blinux-list@redhat.com>
 <mailman.2316.1672675299.2515662.blinux-list@redhat.com>
 <mailman.2265.1672698069.2515665.blinux-list@redhat.com>
In-Reply-To: <mailman.2265.1672698069.2515665.blinux-list@redhat.com>
Date: Mon, 2 Jan 2023 17:43:23 -0600
Subject: Re: any other jenux users here?
To: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2251.1672703020.2515669.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That distro has always been problematic.
Devin Prater
r.d.t.prater@gmail.com




On Mon, Jan 2, 2023 at 4:21 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> I only have bare metal here and that's where the last three isos failed.
>
>
>
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Mon, 2 Jan 2023, Linux for blind general discussion wrote:
>
> > Hi,
> >
> >
> > I have jenux running in a vm, but not having any problems at the
> moment.  I
> > have not been able oto get either slint or jenux to boot on a barebones
> > machine, but I this had to do with secure boot which neither arch or
> slint
> > support which is a shame since most if not all machines have by default
> and do
> > not have sited help to disable.
> >
> >
> > Matthew
> >
> >
> >
> > On 1/2/2023 6:38 AM, Linux for blind general discussion wrote:
> > > At least the last 3 isos wouldn't come up speaking on a
> thinkpenguin.com
> > > Penguin pro 11 computer I have.  The isos continually rebooted and I
> > > verified those isos were correct on my machine before attempting to run
> > > the installer.  The author of jenux thinks it's a uefi problem on my
> > > machine but that's not likely since the machine now runs slint 15.0 and
> > > that uses uefi when installing.
> > > I think uefi in mathematics terms is what's called greatest common
> > > denominator and bios  is lowest common denominator.
> > >
> > >
> > >
> > > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > defense of liberty:
> > >   soap, ballot, jury, and ammo. Please use in that order."
> > > -Ed Howdershelt (Author, 1940)
> > >
> > > .
> > >
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
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

