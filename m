Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 90B23228CBC
	for <lists+blinux-list@lfdr.de>; Wed, 22 Jul 2020 01:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595374499;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3Y2l9AQyZnij32Y03QMG0AD3VqEVRHBdDlkWzodSRyw=;
	b=SSyIIPlpFsj6RZKZ5ycII4mrGYJSSGk1GEbJPN2nuc437bGO21g1rzsuc6D6roCKoxLL0O
	yUmbh4h+6JHPngTPkBfF5IPhKv1/OFfzFHfH5FVyJzHTiiOSvt2199sUEJXofnqKOKrOmT
	jKfLsjgwmuzksybRR+L0GxXifGPo+rE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-4gB3d80AOEOEDmTzXU9taw-1; Tue, 21 Jul 2020 19:34:57 -0400
X-MC-Unique: 4gB3d80AOEOEDmTzXU9taw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74367106B244;
	Tue, 21 Jul 2020 23:34:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 591271010403;
	Tue, 21 Jul 2020 23:34:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C6F75730DA;
	Tue, 21 Jul 2020 23:34:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06LNXK7f024724 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 19:33:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 43285103D82A; Tue, 21 Jul 2020 23:33:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EFDA115FF24
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 23:33:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CB631012444
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 23:33:18 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-276-CkcutmhhN6Ct2ZynncS1NQ-1; Tue, 21 Jul 2020 19:33:15 -0400
X-MC-Unique: CkcutmhhN6Ct2ZynncS1NQ-1
Received: by mail-oi1-f174.google.com with SMTP id t4so229457oij.9
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 16:33:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=Vzp5T5GsVl09boKHI8NHYsNWzb8H+TIx3JU7/F2WIRg=;
	b=VRcJAoANpN6G9R3ZdhbJ8qQJSvdFy23Us1NePa0eyRf+GIn+dY5em1BIEFRIAmlx8R
	e3EFY0LtG3AxZaKDYC3dLvl2cq5TTB3bEjXhr+hk/el/5hzAH+vnrFRh6zGKRJBFEpRF
	rec996uaiJXRXP89Et4IMIvGy4U2u6OsE4IA87F4GHpHK6eeLNEhW9zYVzeByFswBEdM
	IOxqaMlkvcQVDpCwpyDqpJWoEcN6uLDXqA7pntYXhEnpTKZFOUrzQCKs8zrwWS/opcxw
	oHZe9cL+t7TzJTiXPZiCtG9p0TvYZZ01SaLiJnlsgCdBDqIvcRO7jT9eQKE94oUAWc0a
	R8Lg==
X-Gm-Message-State: AOAM533wnEAPpDS0XLyFOhNtjgp31IkwMxm55kg9Ru/dpHI+AHuwFx2M
	Z31LY/XQXWsLad4saBRtSCdtJ9RciAc=
X-Google-Smtp-Source: ABdhPJw9MG9NWmkfTRVvc+nrrb5zTjibvR34kBq5BVRLeP9LOpT/MXVSEyH59vRd4cA1FBAV43a38A==
X-Received: by 2002:aca:518f:: with SMTP id f137mr4813027oib.86.1595374395058; 
	Tue, 21 Jul 2020 16:33:15 -0700 (PDT)
Received: from DESKTOPIOCCUEU (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49]) by smtp.gmail.com with ESMTPSA id
	r131sm4972860oif.33.2020.07.21.16.33.14 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Jul 2020 16:33:14 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
In-Reply-To: <015301d65fa8$16604280$4320c780$@yahoo.com>
Subject: RE: installing speakup on RHEL 7/8
Date: Tue, 21 Jul 2020 18:33:11 -0500
Message-ID: <005c01d65fb7$4cb802f0$e62808d0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQNc5jLN+mdFGYYu0fUGJnDrgEEZpQIekfAKAdo7VQoCE/LScqXVO8wg
Content-Language: en-us
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I doubt you're the only person, but I'm guessing that the issue you'll run
into is that RHEL is a server distribution and Speakup is a desktop package.

--
Christopher (AKA CJ)
Chaltain at Gmail

> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Tuesday, July 21, 2020 4:44 PM
> To: blinux-list@redhat.com
> Subject: RE: installing speakup on RHEL 7/8
> 
> 
> Thanks Janina for the info, I wonder if anyone we can ask inside Red hat
to shed
> some light on this topic, as I am unable to find any contact info for
their
> accessibility team.
> 
> I imagine I can't be the only one out there who is trying to use speakup
with
> RHEL, or am I?
> 
> --David
> 
> 
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Saturday, July 18, 2020 4:07 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: installing speakup on RHEL 7/8
> 
> When he was still alive, Bill Acker routinely built Fedora kernels that
included
> Speakup, both before and after Speakup became part of staging.
> I know for a fact that Bill tried, and never succeeded at building Speakup
into
> RHEL. Now Bill's been gone for a few years, but I've no reason to believe
the
> environment has suddenly become Speakup friendly, sorry to say.
> 
> No, I don't recall what the block was/were.
> 
> I know that's not what you wanted to hear, but it's the best answer I can
provide
> and I don't believe you're going to find very much different info.
> I'll be happy to be proven wrong, of course.
> 
> It'll be interesting to see what RHEL does when Speakup finally becomes a
first
> class kernel citizen. If I understand the situation correctly, that should
come
> fairly soon.
> 
> Best,
> 
> Janina
> 
> Linux for blind general discussion writes:
> >
> >
> > Hi there -
> >
> >
> >
> > I am getting a workstation at work that will be running RHEL 7 or 8.
> > From what I understand, speakup is not a package in yum, but it is now
> > part of the kernel staging tree.
> >
> >
> >
> > Does anyone have instructions on how to get speakup installed and
> > running on RHEL 7 or 8 using software speech?
> >
> >
> >
> > Any help appreciated, thank you very much in advance
> >
> >
> >
> > --David
> >
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> 
> --
> 
> Janina Sajka
> https://linkedin.com/in/jsajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

