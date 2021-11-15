Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D44C04515F3
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 22:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637010111;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9xhEtLdwmrn4jeCxeNMBdfRmyvWLRRlxolF8zf6WOjM=;
	b=g+U7IFnA/C33Zl5BHKGWOyKQShoGsQEd4BXkuRYDBjmeDFlEma1Ogenm1up5/q9LfVLCIS
	5n+nvPVbRFnLphvBGv/dGXUhabuWqlPv/JtIM23FcS23b+yXjN7M3GQ1oHlKORj6q5HjiU
	UoZ2ExJK9vOtNORjHpWWi+YGRzXZXNg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-277-VBaRjrYeOsy5CelujqnAOA-1; Mon, 15 Nov 2021 16:01:48 -0500
X-MC-Unique: VBaRjrYeOsy5CelujqnAOA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5752287D545;
	Mon, 15 Nov 2021 21:01:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3AA3D19723;
	Mon, 15 Nov 2021 21:01:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C086A4EA2A;
	Mon, 15 Nov 2021 21:01:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFL1aXT020952 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 16:01:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2D3051121315; Mon, 15 Nov 2021 21:01:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 27C991121319
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 21:01:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 303C280A0AF
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 21:01:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-500-0Yfluwt9OtetIpFdUqWeFQ-1; Mon, 15 Nov 2021 16:01:31 -0500
X-MC-Unique: 0Yfluwt9OtetIpFdUqWeFQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HtM7H0FlVz3js3
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 16:01:31 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HtM7H0X7lzcbc; Mon, 15 Nov 2021 16:01:31 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HtM7H0CmBzcbP
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 16:01:31 -0500 (EST)
Date: Mon, 15 Nov 2021 16:01:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Gui vs. cli software
In-Reply-To: <a0539f37-ed62-2fa0-d3ad-3568f0936ac2@seznam.cz>
Message-ID: <alpine.NEB.2.23.451.2111151600130.15392@panix1.panix.com>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
	<6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
	<CAM+Q2c7PzGGQ7rY_FUWtcxiSOxfGJH_bVbjtZ6DMRZpjF2_v3A@mail.gmail.com>
	<a0539f37-ed62-2fa0-d3ad-3568f0936ac2@seznam.cz>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

There have always been more command line packages than g.u.i. packages how
else could command line packages have ever been where you go to get under
the hood?


On Mon, 15 Nov 2021, Linux for blind general discussion wrote:

> Hello,
>
> if there will be more cli than gui apps, I am afraid of the end of Orca
> development. If all people will have cli only, gui can be less accessible.
> That's only my opinion, I am not saying I am 100% correct.
>
> Vojta.
>
> Dne 15. 11. 21 v 19:21 Linux for blind general discussion napsal(a):
> > You ever heard the saying, "the command line makes difficult tasks
> > easy and impossible tasks merely difficult"?" There is a lot of truth
> > to that. Often I can, w/a few keystrokes, relatively speaking,
> > accomplish in minutes what it would take hours for a GUI to
> > accomplish, assuming it could do so at all, which is not always
> > accurate.
> >
> > Of course I'm saying there should be accessible GUI apps for those who
> > wish to use them. But even in century 21, there are still many cases
> > where the cli is more powerful. Yeah, there are exceptions, but for
> > the most part it holds true.
> >
> > On 11/15/21, Linux for blind general discussion <blinux-list@redhat.com>
> > wrote:
> >> Hello,
> >>
> >> I prefer gui apps, because is 21st century, not time of first computers.
> >> If we want linux will more popular, it must have more gui apps. I agree,
> >> cli is better for older and slow computers or if you want work without
> >> spinning computer ventilators, but learn with gui is in my oppinion
> >> easier than cli.
> >>
> >> Take care.
> >>
> >> Best regards
> >>
> >> Vojta.
> >>
> >> Dne 15. 11. 21 v 18:59 Linux for blind general discussion napsal(a):
> >>>
> >>> The topic of using gui vs. cli came up recently.  My view is the cli
> >>> allows much more individual control over software functions.  The gui is
> >>> oftn limited to what the developer decides is best for you as to function
> >>> and individual control.  The gui was originally sold as an easier
> >>> way to use computers; which meant in practice the developer trying to
> >>> guess how users might want to use it at the cost of greater individual
> >>> control.
> >>>
> >>> Menu driven cli software is the obvious middle ground for ease of learning
> >>> and using programs, which could easily use mouse input.  The
> >>> developer could have a default setup for ease of beginner use.  But it was
> >>> at the time not the new sexy flash bang eye candy which graphics
> >>> allowed.
> >>>
> >>>
> >>>    -- ent- XR
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

