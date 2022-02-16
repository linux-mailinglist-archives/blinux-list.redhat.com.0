Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1294B8895
	for <lists+blinux-list@lfdr.de>; Wed, 16 Feb 2022 14:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645017232;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XFOpmQTLbRnVk7tFsSSq2ZpRuMzAhe5plm8q7xk23Pk=;
	b=HCtyGObqR4+KkJ2qRN74xRdxnxmK2LBztqCzcTzkUY9+UjCJs/i8BNG4Aq5popdt9DIzi9
	RQgTGItrrfTsQfSOrcrISK43og1Sp23DxZbdQSJH13Yh1TIqwuzv1V1JpChoDXupDazYfh
	9vV0LcMcOhGewwHEQJ/tkgMqJInJetw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-612-rZcv_Qp5P8G1ClSwQRP-6w-1; Wed, 16 Feb 2022 08:13:49 -0500
X-MC-Unique: rZcv_Qp5P8G1ClSwQRP-6w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8CDDD1853022;
	Wed, 16 Feb 2022 13:13:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 393F36FAF5;
	Wed, 16 Feb 2022 13:13:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 493AE4BB7B;
	Wed, 16 Feb 2022 13:13:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21GDDYfD028289 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Feb 2022 08:13:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B679814582F5; Wed, 16 Feb 2022 13:13:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B291014582F1
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 13:13:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 962E03C01C0B
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 13:13:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-217-icVSzlW4NUaK9AuXJvJIrw-1; Wed, 16 Feb 2022 08:13:32 -0500
X-MC-Unique: icVSzlW4NUaK9AuXJvJIrw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JzJLN3VC4z2wnQ
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 08:13:32 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JzJLN32DYzcbc; Wed, 16 Feb 2022 08:13:32 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JzJLN2hrlzcbC
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 08:13:32 -0500 (EST)
Date: Wed, 16 Feb 2022 08:13:32 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
Message-ID: <c31eb4b2-6edc-9957-ca8e-669d263064@panix.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Debian doesn't provide a non-free iso it provides an unofficial iso.  The
unofficial iso debian provides is for extra firmware support.  So far as I
know debuan doesn't provide a firmware iso.


On Wed, 16 Feb 2022, Linux for blind general discussion wrote:

> Question regarding Debuan,
>
> Is it, like Debian, only free software, or do they also provide a non-free
> Iso?
>
> Standard Debian doesn't install on my hardware due to non-free Wi-Fi drivers
> being required. Which is rather strange, since both Trisquel and Fedora, both
> shipping with only free software install just fine.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Slint console using Alpine
>
> On Tue, 15 Feb 2022, Linux for blind general discussion wrote:
>
> > Date: Tue, 15 Feb 2022 15:41:32 -0500
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Subject: Re: Accessibility of installing Distros?
> >
> > A debian spin without systemd.  debuan.org for any interested.
> >
> >
> > On Tue, 15 Feb 2022, Linux for blind general discussion wrote:
> >
> >> Never heard of this one.
> >>
> >> Warm regards,
> >>
> >> Brandt Steenkamp
> >>
> >> Sent from my MacBook Air
> >>
> >> Contact:
> >>
> >> Phone: +27 (0)60 525 9181 <tel://+27605259181>
> >>
> >> Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
> >>
> >> Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
> >>
> >>
> >>
> >>
> >>> On 15 Feb 2022, at 21:54, Linux for blind general discussion
> >>> <blinux-list@redhat.com> wrote:
> >>>
> >>> I forgot Devuan, or, would you just consider that a Debian spin?
> >>>
> >>>
> >>>
> >>> On 2/15/22 14:47, Linux for blind general discussion wrote:
> >>>> What other options do we, the Blind Linux users have? And, no, I really
> >>>> don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible Coconut,
> >>>> etc.)
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
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

