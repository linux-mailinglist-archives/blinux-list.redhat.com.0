Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C66133D1EE9
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 09:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626938663;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KHv9mb0ja7J1dRD9M81SraMbUJutsire4at9vR1Q2M4=;
	b=I0caKr1ZeUuz4N84I9uN5BRVe6q3iiqQyw+uXC+p1fdrdSr+kPLfICzWz/5z//fzwvwq4r
	lxUDXiCVtm4N4esU5ivZf0LwuvRepmOZLayur4fPMAj4h3/jnxX0DEkh/kh/bHupDfFDki
	hzwHmATvjMW8rc+Syoaz87f8Di/nlMc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-RvP_gsi5O4y72Q7QaYXaAg-1; Thu, 22 Jul 2021 03:24:22 -0400
X-MC-Unique: RvP_gsi5O4y72Q7QaYXaAg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AEA88CC833;
	Thu, 22 Jul 2021 07:24:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAFB860C5F;
	Thu, 22 Jul 2021 07:24:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A06CD4BB7B;
	Thu, 22 Jul 2021 07:24:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16M7O3eA006227 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 03:24:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0A2282077FB1; Thu, 22 Jul 2021 07:24:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0511C208DD8D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 07:24:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D0018007B1
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 07:24:00 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-215-AeWorui5PuutmRwJ7hggPA-1; Thu, 22 Jul 2021 03:23:57 -0400
X-MC-Unique: AeWorui5PuutmRwJ7hggPA-1
Received: by mail-qk1-f179.google.com with SMTP id a80so4531421qkg.11
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 00:23:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ekagmlnL7D8RTXDFIBuzpEtNGVTrDypAAHqglTPauuI=;
	b=lDpWMOJPQgM/b7zdK4RfQdNIJZkL1Y4VeeAoNHF3/Hgbsjd3EiUJ21t0pRVMV8tGa7
	31Ai9d0sl40IVZnhC/jD84Lpzt2TQBSCxJjpcx8Wfp6LUESbOHaCUMtzM0z0aR74euF7
	I+3abJOBbxl3j5ET/9l57A1nFXchJhxhCORgm++qF7Y7VOowWhSktYtXLFqNWj0gSokq
	iJ3B96f/3NlkO+os/0fkl6eszLDGYxDVa6uqvZPutgt9ywSFbD9btC4G8QfiWNX3zLAd
	ZBkeSdoSzVIF/+wr7/N7OFNLFkQB/FXb0Zu940YNxjPg5rQuewTq6+rpDLy7BeXopDuU
	oFqg==
X-Gm-Message-State: AOAM532M+F5kLK6Za6mykuThnHAbzave/4FBQ7SHPvuZSkl0dr9vvykD
	tctoitMRD2AtevOMmK1OldceIFV3RpiPrg1e7c/HD84Y
X-Google-Smtp-Source: ABdhPJwO76qDj/kTgnw5+Sr4J2+lo01z257TwngaAqsGFFQuhnfUFlr6B2i/BvxO29d/SjEYBpkRfUnsZv03XW14MaU=
X-Received: by 2002:a05:620a:7e4:: with SMTP id
	k4mr11139028qkk.328.1626938636541; 
	Thu, 22 Jul 2021 00:23:56 -0700 (PDT)
MIME-Version: 1.0
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
	<1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
In-Reply-To: <1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
Date: Thu, 22 Jul 2021 09:23:40 +0000
Message-ID: <CAD_4ddTnvv4kF06R03YFvYyRvusp+Z3Vkwhe7T2eNFDJfRT+Ew@mail.gmail.com>
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

Hello there,

I am having sort of the same problem here on arch: I installed the latest
google-chrome from the AUR, and well, no matter what I do, it doesn't start.
Does it happen to you on Solus as well?
For me electron apps work without a hitch though, and vanilla Chromium
works just fine.
Best regards.
francisco.

On Wed, Jul 21, 2021 at 7:29 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Just tested. That didn't do a thing. It's as if Chromium's not even
> showing as running within Solus. Which is amazingly odd even with the
> right flags. I've not tried making a flags.conf yetet (that's next on my
> list), but I swear there were settings I needed in config files or to
> export via a terminal however?
>
> On 7/21/21 7:49 PM, Linux for blind general discussion wrote:
> > When Chromium stuff breaks like that, hit Insert + H, then F2 to bring
> up a
> > GTK dialog. Doesn't matter, just close it. Something breaks with focus
> when
> > stuff like that happens.
> > Devin Prater
> > r.d.t.prater@gmail.com
> > gemini://tilde.pink/~devinprater/
> >
> >
> >
> > On Wed, Jul 21, 2021 at 12:03 PM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> >> So, grabbed Solus 4.3 and ran into a few weird oddities with Mate.
> >> Nothing insanely deal breaking, bar one or two things...
> >>
> >>
> >> 1. For some reaso, the Mate DE doesn't have the orca shortcut set. This
> >> isn't really an issue since alt+f2 and Orca takes care of it.
> >>
> >>
> >> However...
> >>
> >>
> >> 2. Chromium doesn't seem to respect flags set. And it breaks the
> >> installed system to the point where it's locked up when quitting a
> >> Chromium app
> >>
> >>
> >>
> >> 3. After upgrading, Firefox lost the browse/focus mde messages
> >>
> >>
> >> So is it just me using Solus 4.3 here and anyone got any ideas, and no
> >> 'use another distro' is not a valid answer. I've already suffered one
> >> borked system due to Ubuntu being inane today and the terminal suddenly
> >> not being a thing mid version upgrade, so...
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

