Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E60DF442628
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 04:47:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635824866;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=w5Br4TS61BR6rh97XL2rSt3jjEM3j3eKqVaG3kScbsk=;
	b=NHZTKXOOzSbHkvZZmv0/lcs31dOwpQcYVhczsjMW7IJPREpLE5fDzAcoJyMpK1m3euz2mz
	WndT68lWNmAq8zMbWpbFIst7W5p95hh8IOgE/zxN/d1EcwtCyTxiWPEEz01igirbftoxtf
	vpppNw+pFR7Optqx0ffV3AIqxfc7H8Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-4HLiJ5iiN7SrVz7qwl41Zw-1; Mon, 01 Nov 2021 23:47:39 -0400
X-MC-Unique: 4HLiJ5iiN7SrVz7qwl41Zw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 67152806688;
	Tue,  2 Nov 2021 03:47:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB1BE641AA;
	Tue,  2 Nov 2021 03:47:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1D20C1806D03;
	Tue,  2 Nov 2021 03:47:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A23baBN024191 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 1 Nov 2021 23:37:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0780C40D1B9E; Tue,  2 Nov 2021 03:37:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 036B140D1B9D
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 03:37:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DC523899EC1
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 03:37:35 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com
	[209.85.219.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-29-vllyI65rO6-3rLPpC55b0w-1; Mon, 01 Nov 2021 23:37:34 -0400
X-MC-Unique: vllyI65rO6-3rLPpC55b0w-1
Received: by mail-yb1-f179.google.com with SMTP id 131so38165162ybc.7
	for <blinux-list@redhat.com>; Mon, 01 Nov 2021 20:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=1dIlOsHrGaJX8yPBhxd1d3O1Fblu/E86gR4LvcN1hUs=;
	b=d4UDtlfTvOhqBYKdA9nfSM3eQbiAjCpBhebY87Xq+ZWjgudTzia+UPfhAHwrUbZCma
	oEjela3g79ZAEoP9p1hXBP2NPfY2FSIh4GbSRJgwUeMRnVctXludQQhNlwe0GCc32IFZ
	1ow3iEEA/zYzcK+y2sPPWDpXibWLnBwyDl3nolB3+nELkkv3l4mPrKM8CChvMhDMgexb
	as6sx7KIXJ4sZKuLVsC5Fq7hG6C+CHPJEHlaxtrFLCzc5gB1nabVuv44diqx4QNRKLFD
	1Xj/nOjXD1hVl+EN8K20ZjOs/En4lVzEIEtYOPhpzpXPMNLb9pqLJwy5HE0/x2IJ4E8z
	zTig==
X-Gm-Message-State: AOAM5323Ye3p/Auo69w8yzK2aBoXUs60CNJpskOUZHD44ZhsHzgaQJ42
	L40uOWYyN8dFNW6j9wW6aO86yCkPwjDbGlx3Z6WP1UB6gJw=
X-Google-Smtp-Source: ABdhPJxzMr2hCY4x3z1m6hAhq+TKAWHrcsnCF0e1JIuiAOA9/p4RYzytsxgPGce+8j9qbPyM+/9Fq5VpFgVnwqPypFg=
X-Received: by 2002:a25:5003:: with SMTP id e3mr24429564ybb.482.1635824253327; 
	Mon, 01 Nov 2021 20:37:33 -0700 (PDT)
MIME-Version: 1.0
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
In-Reply-To: <e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
Date: Mon, 1 Nov 2021 22:37:22 -0500
Message-ID: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Known by you. But that's far from scientific. Does Orca have object
navigation? No flat review is not the same thing. That's just one thing.
The issues with focus mode and quick navigation keys moving me around a
page while I type into a text box made me not trust the tool, and I
couldn't reproduce it well enough to make a bug report out of it. Also if
blind programmers see a screen reader that plows forward with updates in
functionality and support with a sensible, to, yes, current NVDA users, way
of doing things, they'll jump on. And that's what we need most; more blind
programmers willing to use and contribute to Linux, thus bringing on more
of the blind community. If Orca feels the sting of competition, then
perhaps things will get better.

Also, I can't remember which, but other the Orca dev or someone on Mastodon
reviewing Orca's code said that, I believe the Terminal-access code is
"black magic". That doesn't bode well for the rest of Orca. I know, there
may not be another way to get at Terminal text, but if this new screen
reader takes advantage of GTK 4 from the start, there may just be easier
ways of doing things. And I'm not saying Orca is bad. It manages to mostly
keep up on a Chromebook running Linux out of a container so Orca knows
nothing about windows management, states, and changes. But look. Say we
were all on Windows and using JAWS. We'd been using JAWS for the last 10
years and it works and it does what you need it to do. And then comes NVDA,
the new kid on the block, developed in this new fnagled Python language
that's supposed to be for kids and slow as my brain. But then what do you
know; ten years later, Microsoft is testing accessibility not with JAWS,
not with Narrator, but with NVDA. All forms of sighted devs and designers
are testing Windows stuff with NVDA. Now, the cool thing is that Orca is
open source, so Igdrasyl (I know I misspelled it", can take the good from
Orca and learn from both it and NVDA's good design.
Devin Prater
r.d.t.prater@gmail.com




On Mon, Nov 1, 2021 at 9:48 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> OK yes, choice is always good. But they're certainly not helping their
> case by saying that we should jump on their bandwagon because the
> existing choice is so piss poor as to be almost unusable, which is known
> to be an outright lie.
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

