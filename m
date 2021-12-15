Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB70475219
	for <lists+blinux-list@lfdr.de>; Wed, 15 Dec 2021 06:32:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639546336;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/swNkOPpExZ8e7GfN9HksmQqc/XAOsECcH1yPyW3oLI=;
	b=g2d/tAvGTED+WdF7fTZ/nY0CBEBIjKSRGjusXhARkHonGndWkfPXF/9ohKq7n0ZYDFFz8B
	obAgYmIt/aiFhltoWRWeOr4Iu5DMh9ZDHU112ypvsZZ0YUjkAnEWI7EIRSZl1lPj7waW/I
	i8LmU5VZsgrLcmAH0oECv5t4AVVqp9E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-86-VOJh3Q-tPNGte0LvHImqXw-1; Wed, 15 Dec 2021 00:32:12 -0500
X-MC-Unique: VOJh3Q-tPNGte0LvHImqXw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80634801AAB;
	Wed, 15 Dec 2021 05:32:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A410685EFE;
	Wed, 15 Dec 2021 05:32:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 46BB81809CB8;
	Wed, 15 Dec 2021 05:32:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BF5Vovr001449 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 15 Dec 2021 00:31:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 94315C23DC9; Wed, 15 Dec 2021 05:31:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FF62C23DC8
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 05:31:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76822800B21
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 05:31:50 +0000 (UTC)
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-5-UlZgBBkSNfmci9oypwl39g-1; Wed, 15 Dec 2021 00:31:48 -0500
X-MC-Unique: UlZgBBkSNfmci9oypwl39g-1
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id B409116C2FA
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 00:31:46 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id ACC7E16C2F9
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 00:31:46 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.171.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 5E2F416C2F8
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 00:31:43 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.94.2)
	(envelope-from <joelz@pobox.com>) id 1mxMt3-0007iN-4m
	for blinux-list@redhat.com; Tue, 14 Dec 2021 19:31:33 -1000
Date: Tue, 14 Dec 2021 19:31:33 -1000
To: blinux-list@redhat.com
Subject: Re: Ignoring hard wrapping when doing copy and paste.
Message-ID: <20211215053133.4zsc2je2ew7jkjxl@sprite>
References: <CAO2sX33xFEVcratw7R8jfbHY5v7LtCGkHbj3u91fXWTdBsnp4w@mail.gmail.com>
	<20211211191419.48ec5612@bigbox.attlocal.net>
	<CAO2sX31nGP6-=DgsvRCoTBwRtfP=pALKcnuvWPfy6o=9ccE_NQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX31nGP6-=DgsvRCoTBwRtfP=pALKcnuvWPfy6o=9ccE_NQ@mail.gmail.com>
X-Pobox-Relay-ID: 4992E792-5D68-11EC-8DF2-F327CE9DA9D6-04347428!pb-smtp20.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

You're correct you need to run a xterm or similar under X to
select text and copy to paste buffer.

> Tried installing xsel, but it gave me a can't open display error.
> Granted, my stripped down xserver is running on tty1 and I tried
> running it from the console on tty4, which might be the problem if
> it's designed for being used in a terminal emulator for copying to and
> from graphical applications running on the same xserver as the
> terminal emulator instead of copying between an xserver and the
> console.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

