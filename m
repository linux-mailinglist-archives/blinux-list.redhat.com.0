Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C4E453966
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 19:29:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637087367;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MpKfWAtKwKtvXJT+mDNA7MvXo4iUAP2snfUmlHfVTXg=;
	b=R/5l8rLgTRXcoRVq/yBcqlwxm6HZezpE7ErobVddNc/1GCJgalBDaExm4J9QwHjUgDG6nY
	zbisyRyLxcRE3c/J4u8XVZA9dN0b5vP/e7MXXpEgipcJ5Dp1/WFH5nH5hKYxdVnl1Yjmau
	eGn7A7Y36V6UfvcC8S4eCiZdPSjmhVQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-LcQxwqT2POmDg0dq7igrAA-1; Tue, 16 Nov 2021 13:29:23 -0500
X-MC-Unique: LcQxwqT2POmDg0dq7igrAA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E59021014512;
	Tue, 16 Nov 2021 18:29:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D02E25C1A1;
	Tue, 16 Nov 2021 18:29:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B95991806D03;
	Tue, 16 Nov 2021 18:29:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGISsvS029038 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 13:28:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C282351DD; Tue, 16 Nov 2021 18:28:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCD5A51DC
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 18:28:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74504800C00
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 18:28:49 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-94-l6-yiFukNCaYig-oCVDYuQ-1; Tue, 16 Nov 2021 13:28:47 -0500
X-MC-Unique: l6-yiFukNCaYig-oCVDYuQ-1
Received: by mail-qv1-f53.google.com with SMTP id gu12so152468qvb.6
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 10:28:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=qCdOXPgCj94Ua8A6TMLkxo+c6T1dRF6XH8kgyqtWW0U=;
	b=gTcMMgog+6tCnI6g8uUY605UmFA7a26JHwhlKIdQIIEvOXi0ZrRClbN9q35WG1YDZ4
	MzctonWxr9M92FE7q65EGxMkSFP8aY35b7GGTg5+xCvtkWyHSW3ENRk7wbgIa0uY40wy
	P4LsI1suT2ZPt4UXDPWUMUo4ckx5kPHMxNhroemoU+ai8T2HcX425n7pHLUXUNRsaMhL
	1apKVXCDm/BwbmdxN5zSiGKOB4in8od3CmyJ0DgPnCx8ddPivQmZuaYWV+Ehd7Iyj9la
	T8sjwP5H4v6437ydOnh7qgRITQz6ay+/yQ6eOs4mRPIrJFKtOH+ILcxt/VR4+/Z88n8D
	pw7A==
X-Gm-Message-State: AOAM531rd9Voh8K055PeLLoB9C2PD/xnNCA63O1vjH/415Rp2QnyYlSr
	ZAs7kXgF9bl3Et8f8kDEY00jmfI2WJk=
X-Google-Smtp-Source: ABdhPJxb/XWfDTqlXbpaH73sjJJqFEw/3mlXmEAtbGTWgZbHfyoLiPnKYmqsMALp4QskXnE0phIepw==
X-Received: by 2002:a05:6214:1d03:: with SMTP id
	e3mr48094611qvd.61.1637087326050; 
	Tue, 16 Nov 2021 10:28:46 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	x17sm5137207qta.66.2021.11.16.10.28.45 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 16 Nov 2021 10:28:45 -0800 (PST)
Date: Tue, 16 Nov 2021 13:28:44 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Gui vs. cli software
Message-ID: <85856f94-b8c5-6584-42ab-b72476121a@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



I use a gui for specific tasks.  In general; using key commands with it requires at least 3 times as many key inputs to perform what a cli
program does with one key command.  Another advanttage is that I often combine a number of programs/utillities in a shell script or alias so
the combination works like a custom designed single program.  This often uses the output of one as the input of another in one single process;
something almost impossible in a gui setup.

For example, I have a script which grabs specific text content of a web page that tallies corona virus cases etc. and presents only that from
the cli as speech output.  It strings three programs and utilities in a row to get this result.  The output of each is passed on to the next
to get that and only that text from the web page total content.

On Mon, 15 Nov 2021, Linux for blind general discussion wrote:

> You ever heard the saying, "the command line makes difficult tasks
> easy and impossible tasks merely difficult"?" There is a lot of truth
> to that. Often I can, w/a few keystrokes, relatively speaking,
> accomplish in minutes what it would take hours for a GUI to
> accomplish, assuming it could do so at all, which is not always
> accurate.
>
> Of course I'm saying there should be accessible GUI apps for those who
> wish to use them. But even in century 21, there are still many cases
> where the cli is more powerful. Yeah, there are exceptions, but for
> the most part it holds true.
>
> On 11/15/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > Hello,
> >
> > I prefer gui apps, because is 21st century, not time of first computers.
> > If we want linux will more popular, it must have more gui apps. I agree,
> > cli is better for older and slow computers or if you want work without
> > spinning computer ventilators, but learn with gui is in my oppinion
> > easier than cli.
> >
> > Take care.
> >
> > Best regards
> >
> > Vojta.
> >
> > Dne 15. 11. 21 v 18:59 Linux for blind general discussion napsal(a):
> >>
> >> The topic of using gui vs. cli came up recently.  My view is the cli
> >> allows much more individual control over software functions.  The gui is
> >> oftn limited to what the developer decides is best for you as to function
> >> and individual control.  The gui was originally sold as an easier
> >> way to use computers; which meant in practice the developer trying to
> >> guess how users might want to use it at the cost of greater individual
> >> control.
> >>
> >> Menu driven cli software is the obvious middle ground for ease of learning
> >> and using programs, which could easily use mouse input.  The
> >> developer could have a default setup for ease of beginner use.  But it was
> >> at the time not the new sexy flash bang eye candy which graphics
> >> allowed.
> >>
> >>
> >>   -- ent- XR
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

