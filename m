Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 658F9453A5B
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 20:44:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637091892;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W7QWcEnycDsEpy+E1hEtIEPjntMuZ5/cSc19Uq8Kubw=;
	b=JzDjVqb6aQAywOKrOehJ4lybVQm7vLTeomHMPIYLdXccXf8Fk4/OT2AohqKNq3Dcswd+Aa
	OJlpMAcOGOwPTCE9LuMIeFzMa26/RDdoqhP3wMHmv9IW1o96dMOAxYehCLnEd9HwGQLIB7
	YWTBUj/lvvR+6bXcRyQB/pzrNmTtQL4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-e4zMz5lNN-ejy3u_fzEeYQ-1; Tue, 16 Nov 2021 14:44:48 -0500
X-MC-Unique: e4zMz5lNN-ejy3u_fzEeYQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 760F8100B3BB;
	Tue, 16 Nov 2021 19:44:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C7975BAE6;
	Tue, 16 Nov 2021 19:44:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 87F8B1819AC1;
	Tue, 16 Nov 2021 19:44:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGJiEp3002206 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 14:44:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EEFFF4047272; Tue, 16 Nov 2021 19:44:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB7AD404727D
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 19:44:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D28AF811E78
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 19:44:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-537-VX95Nyf6Oke_OilZcsiyxA-1; Tue, 16 Nov 2021 14:44:11 -0500
X-MC-Unique: VX95Nyf6Oke_OilZcsiyxA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HtxMZ39xDz49RB
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 14:44:10 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HtxMZ2bhfzcbc; Tue, 16 Nov 2021 14:44:10 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HtxMZ2GQFzcbP
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 14:44:10 -0500 (EST)
Date: Tue, 16 Nov 2021 14:44:10 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Gui vs. cli software
In-Reply-To: <85856f94-b8c5-6584-42ab-b72476121a@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111161442250.19099@panix1.panix.com>
References: <85856f94-b8c5-6584-42ab-b72476121a@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Have you tried using xenity on your scripts?  If so, does xenity allow you
to pipe?  If xenity works you'll have a g.u.i. script available.


On Tue, 16 Nov 2021, Linux for blind general discussion wrote:

>
>
> I use a gui for specific tasks.  In general; using key commands with it requires at least 3 times as many key inputs to perform what a cli
> program does with one key command.  Another advanttage is that I often combine a number of programs/utillities in a shell script or alias so
> the combination works like a custom designed single program.  This often uses the output of one as the input of another in one single process;
> something almost impossible in a gui setup.
>
> For example, I have a script which grabs specific text content of a web page that tallies corona virus cases etc. and presents only that from
> the cli as speech output.  It strings three programs and utilities in a row to get this result.  The output of each is passed on to the next
> to get that and only that text from the web page total content.
>
> On Mon, 15 Nov 2021, Linux for blind general discussion wrote:
>
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
> > On 11/15/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > > Hello,
> > >
> > > I prefer gui apps, because is 21st century, not time of first computers.
> > > If we want linux will more popular, it must have more gui apps. I agree,
> > > cli is better for older and slow computers or if you want work without
> > > spinning computer ventilators, but learn with gui is in my oppinion
> > > easier than cli.
> > >
> > > Take care.
> > >
> > > Best regards
> > >
> > > Vojta.
> > >
> > > Dne 15. 11. 21 v 18:59 Linux for blind general discussion napsal(a):
> > >>
> > >> The topic of using gui vs. cli came up recently.  My view is the cli
> > >> allows much more individual control over software functions.  The gui is
> > >> oftn limited to what the developer decides is best for you as to function
> > >> and individual control.  The gui was originally sold as an easier
> > >> way to use computers; which meant in practice the developer trying to
> > >> guess how users might want to use it at the cost of greater individual
> > >> control.
> > >>
> > >> Menu driven cli software is the obvious middle ground for ease of learning
> > >> and using programs, which could easily use mouse input.  The
> > >> developer could have a default setup for ease of beginner use.  But it was
> > >> at the time not the new sexy flash bang eye candy which graphics
> > >> allowed.
> > >>
> > >>
> > >>   -- ent- XR
> > >>
> > >> _______________________________________________
> > >> Blinux-list mailing list
> > >> Blinux-list@redhat.com
> > >> https://listman.redhat.com/mailman/listinfo/blinux-list
> > >>
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> >
> >
> >
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

