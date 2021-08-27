Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 219443F9E0D
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 19:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630085646;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tiyGLR4zjxfaWOsGtBSshZ9QC/ElbvtLhJgN+cMfMFg=;
	b=LohC7YF7udpq9YZwBsZgJKHJgVrtn1bViAWyUxsFNj0nt9MtLZe6D8i7aX9xHwNFAzmMDQ
	+jNHcFb615SXKFpXEgutV5zR5mj7U3sUnNKC1BuMRcvujK7gb2j8gE93KUvEBtSVo3E8Rc
	LwZFLzoQNhGFgmAKK+GDK1G+mEJCOnk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-526-wenf-wr0MdaTvZRgiVy4aQ-1; Fri, 27 Aug 2021 13:34:04 -0400
X-MC-Unique: wenf-wr0MdaTvZRgiVy4aQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 25A441026200;
	Fri, 27 Aug 2021 17:34:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E148C100EB3D;
	Fri, 27 Aug 2021 17:33:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 294B94BB7C;
	Fri, 27 Aug 2021 17:33:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RHXraL010387 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 13:33:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9C8DF216029E; Fri, 27 Aug 2021 17:33:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97DEA216028F
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:33:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8FAE18A01A9
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:33:49 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-416-1ld77oakM5ub7GC5W2KeOA-1; Fri, 27 Aug 2021 13:33:47 -0400
X-MC-Unique: 1ld77oakM5ub7GC5W2KeOA-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4Gx6JV4f5sz8tQY
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:33:46 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id weZ7raiRMzOJ for <blinux-list@redhat.com>;
	Fri, 27 Aug 2021 17:33:45 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4Gx6JT3V4Hz8tQW
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:33:45 +0000 (UTC)
Message-ID: <20210827.173350.505.3@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Update on speech/media sounds
Date: Fri, 27 Aug 2021 12:33:50 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.11.2108271954080.61306@debian.work>
References: <20210827.164855.951.1@[192.168.1.100]>
	<alpine.DEB.2.11.2108271954080.61306@debian.work>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17RHXraL010387
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I don't know if the archlinux espeakup package has this variable in use. Would be very helpful if they implemented that.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Fri, 27 Aug 2021 19:58:34 +0300 (IDT)
Subject: Re: Update on speech/media sounds

> On Fri, 27 Aug 2021, Linux for blind general discussion wrote:
> 
> > I wrote an email here earlier asking about setting a USB card for speech and having my media playback come through the onboard sound card. There does not really seem to be a reliable way of doing this without pulse.
> 
> Apologies, I don't think I saw the original question.
> 
> I've not needed to use Pulse.
> 
> Assuming you are using speakup with espeak and espeakup, you can use the 
> ALSA_CARD environment variable to tell espeakup where to play audio.
> 
> Debian takes this one step further by having it definable in 
> /etc/default/espeakup
> 
> Here's what it says:
> 
> # To choose audio output on another sound card, uncomment this and set as
> # appropriate (either a card number or a card name as seen in CARD= alsa
> # output).
> #
> # export ALSA_CARD=0
> 
> I have used this successfully on a multi-card machine, though not with 
> USB.
> 
> Note that I've also had issues using some USB cards which do not support 
> the sampling rate that espeak expects to use.
> 
> HTH,
> Geoff.
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

