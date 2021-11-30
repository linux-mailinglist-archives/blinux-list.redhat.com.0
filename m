Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0849B4631CF
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 12:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638270478;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zfGz43N/RAU6j7UKsmPXeB954x92+Kg3nStWHNLdXwQ=;
	b=E6/tOdAft8mj2XUYg8EqEVPFAFTEN3UODQ+2TAnqxwmCKVMvvQl1Hfr4Hf84qs0iYz8SXw
	QQBmuXMlxbPIwq9t/hx1PF9k+y233rkVsD1R5itJwvH8xIqYLvnvKdSY41c2HKZT0xThUP
	3HorZ0lnF9TX73awdTnG89QdOVDVgu4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-180-Z9Mk94LVMDeZCiKleLf2dA-1; Tue, 30 Nov 2021 06:07:54 -0500
X-MC-Unique: Z9Mk94LVMDeZCiKleLf2dA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75E8A101F002;
	Tue, 30 Nov 2021 11:07:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 487A25DAA5;
	Tue, 30 Nov 2021 11:07:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB8B64CA93;
	Tue, 30 Nov 2021 11:07:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUB7gOJ004862 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 06:07:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id ED4D44010FF6; Tue, 30 Nov 2021 11:07:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8C7E400DB2F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 11:07:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0AE4185A7B2
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 11:07:41 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-310-3Kug2Z6aOZqh85BXbeE1Jg-1; Tue, 30 Nov 2021 06:07:40 -0500
X-MC-Unique: 3Kug2Z6aOZqh85BXbeE1Jg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J3KF74FbDz3yjL
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 06:07:39 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J3KF73bQlzcbc; Tue, 30 Nov 2021 06:07:39 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J3KF73BPkzcbP
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 06:07:39 -0500 (EST)
Date: Tue, 30 Nov 2021 06:07:39 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to copy output from a terminal?
In-Reply-To: <77bd08c8-a47c-8526-28c9-d5145ebea123@seznam.cz>
Message-ID: <alpine.NEB.2.23.451.2111300606410.11173@panix1.panix.com>
References: <c46122c2-cd84-f852-d4e8-0d9018caf644@gmail.com>
	<alpine.NEB.2.23.451.2111300440330.5394@panix1.panix.com>
	<745bf6e8-8267-1064-ecbf-fa53a36f2019@seznam.cz>
	<alpine.NEB.2.23.451.2111300524140.12284@panix1.panix.com>
	<77bd08c8-a47c-8526-28c9-d5145ebea123@seznam.cz>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That log you created with tee should be in your current directory.  If you
ran this in your user directory it would be in your user directory.


On Tue, 30 Nov 2021, Linux for blind general discussion wrote:

> OK and where can I find that log? If I write startx to login to Mate, I have
> long bug.
>
> Vojta.
>
> Dne 30. 11. 21 v 11:26 Linux for blind general discussion napsal(a):
> > Your problem is that errors go to stderr and normal output goes to stdout,
> > but never fear Linux has you covered.
> > $ ./command 2>&1 | tee -a command.log
> > That sends those errors to stdout and tee writes all of that into
> > command.log
> >
> >
> > On Tue, 30 Nov 2021, Linux for blind general discussion wrote:
> >
> >> Hello,
> >>
> >> and what about copying errors? I can't boot to Stormux in Mate desktop and
> >> I
> >> have long bug. How can I save it, when I am in console? is some way to
> >> share
> >> it with Storm and others? If I write them I have some bug, they cannot help
> >> me, because some bug is really large termine.
> >>
> >> Thanks.
> >>
> >> Best regards
> >>
> >> Vojta.
> >>
> >> Dne 30. 11. 21 v 10:42 Linux for blind general discussion napsal(a):
> >>> $ ./startwin.sh|tee startwin.log does it destructively.
> >>> $ ./startwin.sh | tee -a startwin.log does it non-destructively and
> >>> appends onto an existing file with the same name.
> >>>
> >>>
> >>> On Tue, 30 Nov 2021, Linux for blind general discussion wrote:
> >>>
> >>>> Hi all,
> >>>>
> >>>>
> >>>> I still have a few things I need to fix, but as the subject states, I
> >>>> don't
> >>>> know how to copy the output from a terminal so I can ask for help from
> >>>> the
> >>>> relevant mailing lists/forums.
> >>>>
> >>>>
> >>>> I am using Mate-Terminal with Orca in Fedora Mate Compiz 35. I know you
> >>>> can
> >>>> copy text off a console using speakup, but I am not in a console, now am
> >>>> I?
> >>>>
> >>>>
> >>>> If anyone has any advice, I'd be appreciative. If there is a way, for
> >>>> example
> >>>> to pype the output from a command to a text file, for example if I type
> >>>>
> >>>>
> >>>> $ ./startwin.sh
> >>>>
> >>>> Which is how I would start my qemu Windows VM, can I pype the output to a
> >>>> text
> >>>> file in '~/'?
> >>>>
> >>>>
> >>>
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

