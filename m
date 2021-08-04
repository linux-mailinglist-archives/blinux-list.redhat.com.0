Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C80A03E0A6E
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 00:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628116385;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qSgw6aRbSkhI2MmsJ2G5ja3jvj1sKYLhhHooGNpD3YU=;
	b=gRnRo+QiBFUi4uBB9mdQ8J+Oc+UBiRnGq2YuTS5fzFiaOwvM6MRERcy/88naep1SBfddAC
	4IgZai6Dnnog+ZnD7LhesiEDSFveZ3qf3NjRhXJe8GpYnL1coZp7WCjJpInWlsTNV8Vo+I
	pYhNRmqpaCvR0qR6Aav26q/ElF49uXc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-595-t7f1jLssNJKupAnumHFDXg-1; Wed, 04 Aug 2021 18:33:04 -0400
X-MC-Unique: t7f1jLssNJKupAnumHFDXg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 318ED3639F;
	Wed,  4 Aug 2021 22:33:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED1FA19C44;
	Wed,  4 Aug 2021 22:32:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F37B34BB7B;
	Wed,  4 Aug 2021 22:32:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174MQoV9012030 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 18:26:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3426CD93DD; Wed,  4 Aug 2021 22:26:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E9D7F97D5
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:26:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B9D2185A7A4
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:26:47 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-24-q9XeSe2bM4mZ2b9hK2VDmA-1; Wed, 04 Aug 2021 18:26:45 -0400
X-MC-Unique: q9XeSe2bM4mZ2b9hK2VDmA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Gg5v83wQbz43gl
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 18:26:44 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Gg5v83djKzcbc; Wed,  4 Aug 2021 18:26:44 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Gg5v83YkqzcbP
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 18:26:44 -0400 (EDT)
Date: Wed, 4 Aug 2021 18:26:44 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Solus DE observations
In-Reply-To: <EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108041823280.8697@panix1.panix.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
	<EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

One good thing about this solus distro is that there's a games
specializing distro.  What will be interesting will be to find out how
many more g.u.i. games either become more accessible or become accessible
users can play on solus.  Most of the g.u.i. games available for Linux
have yet to get accessible unless huge changes have happened since I last
checked out the scene.


On Wed, 4 Aug 2021, Linux for blind general discussion wrote:

> If I remember, it was the mate edition, about a year and a half ago.
>
> > On Aug 4, 2021, at 12:30 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > Installing Mint was exactly like installing Ubuntu, as far as I recall.  Maybe you grabbed the Cinnamon edition last time?
> >
> >
> > Cheers,
> >
> >
> > Dave  H.
> >
> >
> >
> > Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
> >
> > On 8/4/21 7:05 AM, Linux for blind general discussion wrote:
> >> How was linux mint and orca during installing?
> >>
> >>> On Aug 3, 2021, at 9:23 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >>>
> >>> This message is coming from my Solus Mate installation.  Mate and the applications work as expected, with the exception of speech dispatcher.  All other audio sounds fine, but speech is a little choppy.  Also, I found that some packages aren't in the repos, namely LIOS and Chirp.  I don't know what the build experience is like in Solus, and have those packages in my Slint system. Speaking of Slint, have you considered it?
> >>>
> >>>
> >>> I have used Linux Mint Mate edition, and find that the accessibility works fine in the apps and on the desktop and menus.  I find that I have to use flat review on Mint Mate's bottom panel, and the battery  charge indicator doesn't seem to refresh properly.
> >>>
> >>>
> >>>
> >>> HTH,
> >>>
> >>>
> >>>
> >>> Dave  H.
> >>>
> >>>
> >>>
> >>>
> >>> Sent with Thunderbird and Solus GNU/Linux.
> >>>
> >>> On 8/3/21 10:13 PM, Linux for blind general discussion wrote:
> >>>> Dave, I have used gnome and mate with ubuntu.
> >>>> I thought of linux mint, and tried it, but orca would not work.
> >>>> Had you tried mint?
> >>>> As to Solus, is that workable?
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
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
>
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

