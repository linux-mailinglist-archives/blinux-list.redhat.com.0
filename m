Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7045F40112A
	for <lists+blinux-list@lfdr.de>; Sun,  5 Sep 2021 20:30:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630866606;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=50mq610LgSe03FvOpNPV4JiU0K1jJIO8p5XnvXtMVB8=;
	b=IkYEyj1eZGGM5L7dGKVUldrB/bhyvjZoljWXgApnsPFnEZEwzWwdceA8MtTZqeMxOrS8IC
	tU4CU0gtr0TkDiyHtldHaDDZTEYtO9KRkGL03uYv43CfcMiHjwF7gojUMMLJI5aHsCV7wN
	GQbgOxc0mo5LFj1wn/h+RTjbdw4kvnU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-ztP4syNHNaKsqAYClufpLw-1; Sun, 05 Sep 2021 14:30:04 -0400
X-MC-Unique: ztP4syNHNaKsqAYClufpLw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1824802935;
	Sun,  5 Sep 2021 18:30:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C82160BF4;
	Sun,  5 Sep 2021 18:29:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 638981C97;
	Sun,  5 Sep 2021 18:29:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 185IToaW007471 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Sep 2021 14:29:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 72C5221686B7; Sun,  5 Sep 2021 18:29:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CAFD2167D67
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 18:29:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C01C1800141
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 18:29:47 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
	[209.85.219.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-66-EHqRfyKrO7OXYHDCcssxsQ-1; Sun, 05 Sep 2021 14:29:45 -0400
X-MC-Unique: EHqRfyKrO7OXYHDCcssxsQ-1
Received: by mail-yb1-f175.google.com with SMTP id v17so8976821ybs.9
	for <blinux-list@redhat.com>; Sun, 05 Sep 2021 11:29:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=EAeje+0tc2bBPpTE/wbnS3mcX/icOwsYPHrezt0bb6k=;
	b=Mv7bZs0r6BbIPYGtZK7OUTPPIP4RRwwB1t5CjTkJD93QCGMriju7k/GSpxKJTH27gJ
	cFwcpVs97NZ6/awLpB4/DRoC8RB8+oKCgGoGqA6Lm8j3tvGXEjfV8bYdAZU6/1UQvy/r
	aq0ifaW7xAvGHanV8qS50zyeysN25zY+5CVU6Ghis4SdDr0s08TXP1x0IF+UczZB+4t/
	wnx2v5CRh/ZPHc1qRj6AknDR6lz60U/txmx97HTpNYhBWq0EHYcT0dSSrR+ll8sUUfdx
	gdR8MCpVtTB1yKzLihLI7WYkQzWh39ecxIkCcJ1ncDzsXHxa4bLAxk+Zn3G3J05mIEd6
	neow==
X-Gm-Message-State: AOAM533AeulcqRR2alySS12TMTkzcBDsjt30M4WOQNMUb8+JFtqsLplo
	rrnjMTGuDjL6X3M6EzfL28KGcMlZTl7ZQG0OXhXjH6gfERA=
X-Google-Smtp-Source: ABdhPJyd2TJ0Tl9D3jMYqlLuZZCQxVufWtYcGVwU0uT2O9CMg/uAIaQcIhr3n8BNhnRQtT3MMoKMzHrYtNLWMnX+Vv4=
X-Received: by 2002:a05:6902:100c:: with SMTP id
	w12mr3153746ybt.47.1630866584729; 
	Sun, 05 Sep 2021 11:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <e532d780-aba9-1a5b-64f6-880ade71e38b@gmail.com>
	<18C382B6-0C05-4660-8ED0-29BCA802BACF@gmail.com>
	<83cfe362-91fe-b36c-cbc3-f4055cfb888e@gmail.com>
	<alpine.NEB.2.23.451.2109051343190.23445@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2109051343190.23445@panix1.panix.com>
Date: Sun, 5 Sep 2021 14:29:33 -0400
Message-ID: <CAGz84JJ1Aww6=rZxMD3fvZijuZvKjo6LVoBoHwo7CPXeRmPu1w@mail.gmail.com>
Subject: Re: No GNOME Terminal on Jenux?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'd consider that if I had a running terminal; this seems not to be the case
or, is that '-e' option to be used in a console?


Thanks,


Dave




On Sun, Sep 5, 2021 at 1:44 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Have you tried fenrir -e yet?
>
>
> On Sun, 5 Sep 2021, Linux for blind general discussion wrote:
>
> > Thank you!  Must be something in the way Arch built GNOME.  It's pretty
> hard
> > to maintain a system without a working terminal.
> >
> >
> >
> > Cheers,
> >
> >
> >
> > Dave
> >
> >
> >
> >
> > Sent from Slint GNU/Linux.  https://slint.fr/doc/HandBook.html for info
> >
> > On 9/5/21 1:27 PM, Linux for blind general discussion wrote:
> > > I think this is a general prob;em in arch as I have run into the same
> > > problem and have not found a work around for this.  Thanks.
> > >
> > > Matthew
> > >
> > >
> > >
> > >> On Sep 5, 2021, at 12:33 PM, Linux for blind general discussion
> > >> <blinux-list@redhat.com> wrote:
> > >>
> > >> Greetings!
> > >>
> > >>
> > >> I installed Jenux with GNOME, and find that the resulting system has
> no
> > >> usable GnOME terminal.  Whether I try starting it with,
> "gnome-terminal",
> > >> in the 'run' dialogue, or select it from the overview, nothing
> happens.  I
> > >> also tried getting a talking console on tty2, and find that such
> consoles
> > >> don't speak.  How can I get a talking terminal or console on this
> system,
> > >> besides reinstalling and choosing Mate?
> > >>
> > >>
> > >>
> > >> Thanks,
> > >>
> > >>
> > >>
> > >> Dave
> > >>
> > >>
> > >>
> > >>
> > >> --
> > >> Sent from Slint GNU/Linux.  https://slint.fr/doc/HandBook.html for
> info
> > >>
> > >> _______________________________________________
> > >> Blinux-list mailing list
> > >> Blinux-list@redhat.com
> > >> https://listman.redhat.com/mailman/listinfo/blinux-list
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
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

