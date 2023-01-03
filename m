Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CE47C65B875
	for <lists+blinux-list@lfdr.de>; Tue,  3 Jan 2023 01:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672707396;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=D0midPEWRa91G97Wl0DTp2snUhp3zGAve1SOCDue+I8=;
	b=PEitx4BHMnoxQVjeQ51pq5iABbf6J+LGMparCnfMgttg/MmRlRo5VqHbBSxPrpS1uMF66b
	iOMaWjEbQ0AW+IlfmmpOvsxYQb7A0riyaqfkZwJfi4tHcpiuKeIBSlQ173iAQOVGepdOPR
	90XzuQTK5viuiOucTaPZoDzGH2QbL8A=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-413-rHswmXlUPGSVwHZTUnHQsA-1; Mon, 02 Jan 2023 19:56:33 -0500
X-MC-Unique: rHswmXlUPGSVwHZTUnHQsA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 986923C02B7A;
	Tue,  3 Jan 2023 00:56:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5CF7F49BB6A;
	Tue,  3 Jan 2023 00:56:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1AB8A194658F;
	Tue,  3 Jan 2023 00:56:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 2 Jan 2023 19:56:19 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other jenux users here?
In-Reply-To: <mailman.2251.1672703020.2515669.blinux-list@redhat.com>
References: <mailman.2166.1672659484.2515676.blinux-list@redhat.com>
 <mailman.2316.1672675299.2515662.blinux-list@redhat.com>
 <mailman.2265.1672698069.2515665.blinux-list@redhat.com>
 <mailman.2251.1672703020.2515669.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2278.1672707384.2515665.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jenux had occassional problems in the past, this though is different.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 2 Jan 2023, Linux for blind general discussion wrote:

> That distro has always been problematic.
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Mon, Jan 2, 2023 at 4:21 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > I only have bare metal here and that's where the last three isos failed.
> >
> >
> >
> > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty:
> >  soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > On Mon, 2 Jan 2023, Linux for blind general discussion wrote:
> >
> > > Hi,
> > >
> > >
> > > I have jenux running in a vm, but not having any problems at the
> > moment.  I
> > > have not been able oto get either slint or jenux to boot on a barebones
> > > machine, but I this had to do with secure boot which neither arch or
> > slint
> > > support which is a shame since most if not all machines have by default
> > and do
> > > not have sited help to disable.
> > >
> > >
> > > Matthew
> > >
> > >
> > >
> > > On 1/2/2023 6:38 AM, Linux for blind general discussion wrote:
> > > > At least the last 3 isos wouldn't come up speaking on a
> > thinkpenguin.com
> > > > Penguin pro 11 computer I have.  The isos continually rebooted and I
> > > > verified those isos were correct on my machine before attempting to run
> > > > the installer.  The author of jenux thinks it's a uefi problem on my
> > > > machine but that's not likely since the machine now runs slint 15.0 and
> > > > that uses uefi when installing.
> > > > I think uefi in mathematics terms is what's called greatest common
> > > > denominator and bios  is lowest common denominator.
> > > >
> > > >
> > > >
> > > > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > > defense of liberty:
> > > >   soap, ballot, jury, and ammo. Please use in that order."
> > > > -Ed Howdershelt (Author, 1940)
> > > >
> > > > .
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
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

