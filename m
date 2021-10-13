Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 227FE42C15C
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 15:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634131508;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NB0R6FqDCEX1u9k+XQxSqOBGH2O2V8qJ84uZ/L+d3fg=;
	b=OqDTjLJSBdG7FJ6/9hjytWKqbWVu2mk4mLX7VNk92qUJdKEZAlWdzMqKtIUTDx/SwvYNvl
	SC6qZdKFgT8QTnJI54tfrhvq+fywUyS8w6i7dVj12cMCohxvoaP95uqkZR7AFSsMnIdUdO
	Pru6yLAfl5ywlZT3vPouDqc1BOplmvQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-532-kE_Vl2R0OB-gsSDlisMrPQ-1; Wed, 13 Oct 2021 09:25:04 -0400
X-MC-Unique: kE_Vl2R0OB-gsSDlisMrPQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 893BE5074B;
	Wed, 13 Oct 2021 13:25:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABE7D5DA60;
	Wed, 13 Oct 2021 13:24:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E26C4EA29;
	Wed, 13 Oct 2021 13:24:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DDOndo010376 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 09:24:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A5EAD63ADD; Wed, 13 Oct 2021 13:24:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0BB263536
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:24:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0530800B28
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:24:46 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
	[209.85.219.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-383-eA8iIYiuNBO5DtD6Pe9d5w-1; Wed, 13 Oct 2021 09:24:44 -0400
X-MC-Unique: eA8iIYiuNBO5DtD6Pe9d5w-1
Received: by mail-yb1-f171.google.com with SMTP id n65so6379405ybb.7
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 06:24:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=zjBjVPdX6FODO7jXjBmNu9kIPjGsX2v98ehxsSwAXbg=;
	b=GHZkD1S+WF4rKppKemiyQ2MM92FIA5KA8G/in9/rws7E2pKD2o7SIzVmUXcLyhUwGp
	XP6eV39AvRR9dFyUQCuRJ3G0IklucrYsHy7FHXy3HRbYMLw/sLY394gzLTLNGupbsLS3
	P2hP3vTWEWkpqgFqn6hFlAuSVM5YQNTLM3ODKpjONrG9SKBBsWVMxiMjFt2cv+x+xr/r
	R6VuaFA8nnU8B27rjh2ax3/llcb6r0cUh6KAWwvF11cYfYLJL/EmC6YyQeA4zs/79LpJ
	s9i2Se6tc95ewOVzVTb174NcEFRMVFVAiNvppcxIOYLTAnE8C8hG3Q8q5lx4M/TQcYVr
	ZYVQ==
X-Gm-Message-State: AOAM531dxComPw4fUkWJf9OvjxolRvhcTJ8BkUWhd6vml+/wrJkHxc05
	eM6t9OTbor4fDCjJdT4OMKUW7qH/VMLUKD6coIiFclyPVwk=
X-Google-Smtp-Source: ABdhPJwOrzMAAbLyaHM+F26XQ4oMNAEHe6beMWOXyDjee+UAxor0qZeWVXdGgNoUVdYqDnsOlcr8nAonARZY3g2Fn7c=
X-Received: by 2002:a5b:145:: with SMTP id c5mr35569829ybp.60.1634131483926;
	Wed, 13 Oct 2021 06:24:43 -0700 (PDT)
MIME-Version: 1.0
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<41D44D20-F41D-4D2D-B3CE-3F00567522EC@gmail.com>
	<25040872-3042-4567-9052-D9FA44B55880@gmail.com>
In-Reply-To: <25040872-3042-4567-9052-D9FA44B55880@gmail.com>
Date: Wed, 13 Oct 2021 08:24:32 -0500
Message-ID: <CAGJxbF7g7n_wd6EAMSh+vm_kkdfurQZ+X=7-4em2XObQCxcXww@mail.gmail.com>
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: Linux for blind general discussion <blinux-list@redhat.com>
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

Have you tried pressing Alt + F2, typing orca, and pressing Enter?
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Wed, Oct 13, 2021 at 5:49 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> I installed fedora mate 34, and had orca and logged in.
> But after logging in, I could not get orca to work.
> Using be my eyes, someone said mute was not pressed.
> Volume was up.
> So not found the problem yet.
>
> > On Oct 12, 2021, at 6:20 PM, Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> >
> > Hi,
> >
> > Has anyone had problems with audio with the latest fedora 34 or even the
> 35 beta.  There was a bug which someone reported something that had to do
> with also, but perhaps this is fixed now?  I will have to give it a look
> and see if it is fixed or not.
> >
> > Matthew
> >
> >
> >
> >> On Oct 12, 2021, at 8:12 AM, Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> >>
> >> A huge +1 for Fedora MATE. I have it running on two computers here, one
> is not mine, and it works great. Orca comes with it, and you can run a full
> install after pressing alt+f2 to open the run window and then entering the
> word orca. Wifi generally works out of the box, though the NetworkManager
> applet that controls it doesn't tell you what it is. Still, you can just
> hold the alt and control keys and double tap the tab key to get to the top
> panel, then shift tab past the toggle button and press the enter key to
> bring up the menu that has your wifi connections. There's not much more to
> tell other than it's a great OS, not just for learning, but for daily use,
> and one of the computers in the house that is running it is even being used
> for gaming and live streaming. If you need to dig deeper into the guts of
> the system, it allows for that as well. I for one highly recommend the
> Fedora MATE spin.
> >>
> >> ~Kyle
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >
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
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

