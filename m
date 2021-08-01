Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1B8183DCDD5
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 22:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627851452;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R6BUwgXAlOPkpZCPIE/wWn4eKvE5YfU9za1gLxJ5fXE=;
	b=UC8qQhu0oxi8HTo52/yTwidzR7VdBpJyD6BzBliFKyRpptAbk7q7ijdEgAp/Q3RBoR7uyA
	tLDBnQvdtu1KYCMQX1TZfPxb1t+RQ4O94vLBn5kyDG4Ph5roCWNJx/CqY50jqX+nZfQpcC
	ECAw5MZeavwNgtiGLUp84JluUebMDZg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-lkZWweahM0m4ZzWA35jFPQ-1; Sun, 01 Aug 2021 16:57:30 -0400
X-MC-Unique: lkZWweahM0m4ZzWA35jFPQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8EBE610066E5;
	Sun,  1 Aug 2021 20:57:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CAD1E2854D;
	Sun,  1 Aug 2021 20:57:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7EC2B180BAB0;
	Sun,  1 Aug 2021 20:57:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 171Kt6vk022613 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Aug 2021 16:55:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 78D8D2023A14; Sun,  1 Aug 2021 20:55:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 74A52201AC79
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 20:55:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03857185A7A4
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 20:55:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-395-oLBfB1XOPAadwyXBTRknCg-1; Sun, 01 Aug 2021 16:55:00 -0400
X-MC-Unique: oLBfB1XOPAadwyXBTRknCg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GdD0h3b7Xz3qnM
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 16:55:00 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GdD0h2jKSzcbc; Sun,  1 Aug 2021 16:55:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GdD0h2PDszcbP
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 16:55:00 -0400 (EDT)
Date: Sun, 1 Aug 2021 16:55:00 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: I'm cured of clear archlinux installs
In-Reply-To: <D28B6FA8-3AC3-4031-B230-3437923E242B@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108011651380.6857@panix1.panix.com>
References: <alpine.NEB.2.23.451.2107312319020.3719@panix1.panix.com>
	<D28B6FA8-3AC3-4031-B230-3437923E242B@gmail.com>
MIME-Version: 1.0
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

Not so advanced users can get into archlinux using Jenux.  The problems
with Jenux are speech rate set at maximum; fixable in
/etc/fenrirscreenreadeer/settings/settings.conf use of zsh for bash users,
and the shell prompt is way too busy.  It's not even necessary to do a
base install in Jenux since desktops are available.


On Sun, 1 Aug 2021, Linux for blind general discussion wrote:

> I believe that Arch is for *advanced* Linux users. Those who are pushing Arch on those who aren?t ready for it just don?t seem to get how much more advanced into Linux they are compared to other users. I?d say try Fedora if you want something like a rolling release with many contributors.
> Devin Prater
> r.d.t.prater@gmail.com
>
> Https://devinprater.flounder.online
>
> > On Jul 31, 2021, at 10:24 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > alsa doesn't work post-install; espeak-ng and espeak-ng-espeak conflict
> > with espeak which would normally not be a problem except spd-conf part of
> > speech-dispatcher can't run and set alsa as default output with pulseaudio
> > on the system.  If I were to use pulseaudio as output for
> > speech-dispatcher and maybe get espeak-ng up and working pulseaudio blocks
> > all media players.
> > What's worse no documentation in archwiki for how to install espeak-ng
> > that's readable in English.
> > I might be able to get jenux running espeak-ng, that's my next project.
> >
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

