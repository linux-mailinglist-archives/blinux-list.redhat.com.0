Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E34B74BC4D3
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 03:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645237597;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/Gbat6qKikGIZpRwhVn6WJD6+Z1E3DF4q+YGlhMTXKY=;
	b=TI6yGjTVK1ApzmFdO9NKVQHX/fOKKJWYrpKrWYBDmjum8gaf2abbM7ina3dlHG92Lm4Jg9
	YxEmprsqRg72IHg2MTLJ5igcc1wYsbKcCnNrAHsd+wRjEcrVvQEgvt8yAJAOUM4c8hmsoz
	umW8jWjKgJsE64bokGW/IsygITpwt2w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-459-mayQKEGnN0SzBM-Hc--9vg-1; Fri, 18 Feb 2022 21:26:32 -0500
X-MC-Unique: mayQKEGnN0SzBM-Hc--9vg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E17EF81424E;
	Sat, 19 Feb 2022 02:26:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C115452FC;
	Sat, 19 Feb 2022 02:26:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B401B1809C87;
	Sat, 19 Feb 2022 02:26:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21J2Joqs027576 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 21:19:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A6A8B40FF414; Sat, 19 Feb 2022 02:19:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A27D340FF40D
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 02:19:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A1EE801E8D
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 02:19:50 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
	[209.85.219.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-624-_HEqV-vxPmuvWkzuBjkbQA-1; Fri, 18 Feb 2022 21:19:48 -0500
X-MC-Unique: _HEqV-vxPmuvWkzuBjkbQA-1
Received: by mail-yb1-f178.google.com with SMTP id j12so22929671ybh.8
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 18:19:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=LUF6dZLEvT8Hjh8jSoj0GdyZB6tlYcbYqmyN051NQ4E=;
	b=4Qu5IYk7ZyPLlJAvv5rSgJLuxkHCi8cL64w/sVjhi0jehsIjYdlWMtz+OZeGDQK1QP
	DFnKGyWmtVec1Ho5UW5Qf3hMFyJ6VmmiPdvUwbq2V1eplKbF5DHunYTKBlp9JhXXzwBj
	jcZ2IE7FbxVlJf7VG17fm23rug6vyCQ1t+Z/kt9V+2o1GZbWv7MaIcIeYFRCxsuba98t
	zfe2FWq5+5xyVT45aMA0LOLGOBCxxVsjPM8Zm3eVBIkC6MCbVc7MPxKMf9gwSN+BhDk5
	wliqEE8P4wgiTJkrM7cN1G1bkBilEOl0rPtRIXf1zx1C6/vjsWKH2mbYCTIht0Yaaq/9
	Z3eQ==
X-Gm-Message-State: AOAM530cFRezZIuiUm1GWkiKq5Izrk/0dUtQt/iIdrCQObt4KucUghkG
	78TxVqUGNeCmGdIhCvezlUINgS/FQfBAM6x7upAs9t7n2KU=
X-Google-Smtp-Source: ABdhPJwZy+PORX9qhMxTDyDBNoyS4XDWMELrXLkL0j3HRQIO07HGpZSEOLNlX7wWOQWpPCJFqN6rVVJZ9hfdO7iD6Zw=
X-Received: by 2002:a25:3d81:0:b0:621:17fd:362c with SMTP id
	k123-20020a253d81000000b0062117fd362cmr10386024yba.559.1645237187453;
	Fri, 18 Feb 2022 18:19:47 -0800 (PST)
MIME-Version: 1.0
References: <CABKqQvG=xfVhpLGgJeR1-+HbtNUrzc=U2UbPDqjfLbuWYYax0w@mail.gmail.com>
	<CAGJxbF43Nd1NA70dWmt7=2qBQL3EE+Hwz4SwqHehodx1+54sMg@mail.gmail.com>
	<CABKqQvHw7SB44FhQTMEvns7ME+dTfaNjxvTPoZF-fq3HGB3cVw@mail.gmail.com>
In-Reply-To: <CABKqQvHw7SB44FhQTMEvns7ME+dTfaNjxvTPoZF-fq3HGB3cVw@mail.gmail.com>
Date: Fri, 18 Feb 2022 20:19:35 -0600
Message-ID: <CAGJxbF5433=utEGgxZEAJ0KpDEwv1+QnmS+B66bDr7QB_tY4ew@mail.gmail.com>
Subject: Re: Simple code editor that is better than Jedit?
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yes, I'm pretty sure it has a debugger as well.
Devin Prater
r.d.t.prater@gmail.com




On Fri, Feb 18, 2022 at 5:24 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> What about like stepping through code and observing values, without
> relying on print statements?
>
> On 2/18/22, Linux for blind general discussion <blinux-list@redhat.com>
> wrote:
> > VS Code can do much of that, except code folding. Only Emacs with
> Emacspeak
> > can do that accessibly.
> > Devin Prater
> > r.d.t.prater@gmail.com
> >
> >
> >
> >
> > On Fri, Feb 18, 2022 at 2:42 PM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> >> Emacs made a mess of things last time I tried installing emacs and
> >> emacspeak.
> >>
> >> Anyway, I just need a few things, like the ability to jump to function
> >> or class definitions, or pull them up as a list and move around my
> >> program like that.
> >>
> >> Are there any simple, accessible code editors?
> >>
> >>
> >> Amanda[0]
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
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

