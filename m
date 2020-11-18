Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0162E2B8330
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 18:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605721171;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aSG8FdVYLpLvKYTnSWOM68maQVtEFG6KQW00sK/sDjQ=;
	b=IYKOSG1YZwY//4vw2lwKLtWadFvSEDLf8uUFXoPNhRTk1o3KYsgGOHR5AO3npEweZ16XW5
	xm2lCdPuc6iz8uEf8/5aczEG3jkcbfdIPzkVUsIomYwimdEeCf5A2XNkfPLYY+YedbunDW
	fYLw9edI3QXCic28gFKY306nn/xytMs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-agWArD1GMW-adZ-qG_tYJA-1; Wed, 18 Nov 2020 12:39:28 -0500
X-MC-Unique: agWArD1GMW-adZ-qG_tYJA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 15DD81005D4E;
	Wed, 18 Nov 2020 17:39:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3E205D9D5;
	Wed, 18 Nov 2020 17:39:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD4B386C01;
	Wed, 18 Nov 2020 17:39:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AIHdLhZ004255 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 12:39:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 900C594628; Wed, 18 Nov 2020 17:39:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89F3B9462B
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:39:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14B7F8007D9
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:39:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-479-FpYG1vXtN1O7Hrikxoa9fQ-1; Wed, 18 Nov 2020 12:39:14 -0500
X-MC-Unique: FpYG1vXtN1O7Hrikxoa9fQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Cbqmy3rkJz1M3H
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 12:39:14 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Cbqmy3Rlgzcbc; Wed, 18 Nov 2020 12:39:14 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Cbqmy3Nt3zcbW
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 12:39:14 -0500 (EST)
Date: Wed, 18 Nov 2020 12:39:14 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: as I suspected
In-Reply-To: <175d9abee88.276e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2011181238390.25416@panix1.panix.com>
References: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
	<CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
	<CAJKfDDG3bJqAjidbnyOouUo4kD8OKNkxiZe1cqzd4T-ATe-7Kw@mail.gmail.com>
	<alpine.NEB.2.23.451.2011172101190.5885@panix1.panix.com>
	<175d9abee88.276e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

You start with the old releases so you have a stable base on which to
work.

On Wed, 18 Nov 2020, Linux for blind general discussion wrote:

> Date: Tue, 17 Nov 2020 23:45:25
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: as I suspected
>
> but only old android releases
>
>
> Den 18 november 2020 03:03:46 skrev Linux for blind general discussion
> <blinux-list@redhat.com>:
>
> > It's not based on a distribution.  See when you get the iso going, you
> > have a choice of what's called jenux which is based on blackarch but you
> > can also install android and if you do that at the end of a successful
> > installation talkback will be reading your screen for you.
> >
> > On Tue, 17 Nov 2020, Linux for blind general discussion wrote:
> >
> >> Date: Tue, 17 Nov 2020 19:51:33
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: blinux-list <blinux-list@redhat.com>
> >> Subject: Re: as I suspected
> >>
> >> Jenux is based on which distribution???
> >>
> >> Le mar. 17 nov. 2020 19:36, Linux for blind general discussion <
> >> blinux-list@redhat.com> a ?crit :
> >>
> >> > Daniel Nash, the maintainer of Jenux, is a good friend of mine and he
> >> > always seems to make sure that things stay updated. His dedication to the
> >> > Linux operating system and to his user base has not been equaled in the
> >> > space of visually impaired Linux distributions, at least in my opinion.
> >> >
> >> > On Tue, Nov 17, 2020, 11:48 AM Linux for blind general discussion <
> >> > blinux-list@redhat.com> wrote:
> >> >
> >> > > A new iso was released.
> >> > > https://nashcentral.duckdns.org/projects/Jenux-2020.11.16-dual.iso
> >> > > for Jenux.
> >> > >
> >> > >
> >> > > --
> >> > > United States has 633 Billionaires with only 10 doing any annual
> >> > > significant giving.
> >> > >
> >> > > _______________________________________________
> >> > > Blinux-list mailing list
> >> > > Blinux-list@redhat.com
> >> > > https://www.redhat.com/mailman/listinfo/blinux-list
> >> > >
> >> > >
> >> > _______________________________________________
> >> > Blinux-list mailing list
> >> > Blinux-list@redhat.com
> >> > https://www.redhat.com/mailman/listinfo/blinux-list
> >> >
> >> >
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >
> > --
> > United States has 633 Billionaires with only 10 doing any annual
> > significant giving.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

