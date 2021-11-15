Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB18450E9C
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 19:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637000063;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mjEHhHDLvJFI/HDhYlBL4qz2V2DIEAoeM3Bj4WUJbmQ=;
	b=FZDeGbNJT3slBxPN0st6EqdHpoMKr+Qa/MnbzFHUdKrdVgpIbWvxCuH7/YvCLC10HysT/6
	pTc0G4zCqiUYWh5217oZ46AgikFFe+6dE2dV3wWIwBbJa3zoMTN7k49y9uCiTKdsWzshyZ
	7tatdtsAOKHJHqBH8iAsFQnqhNVvpcE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-42-M4xqkLtHM-GaoUkebP72-A-1; Mon, 15 Nov 2021 13:14:19 -0500
X-MC-Unique: M4xqkLtHM-GaoUkebP72-A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D578824F8B;
	Mon, 15 Nov 2021 18:14:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 539DE509FF;
	Mon, 15 Nov 2021 18:14:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B27E4A703;
	Mon, 15 Nov 2021 18:14:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFIE80I005493 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 13:14:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4CC91202696C; Mon, 15 Nov 2021 18:14:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4806E2026D46
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:14:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 471D8800141
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:14:04 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-289-3xD5sdW3Ox6_ss-bjVQXZg-1;
	Mon, 15 Nov 2021 13:14:02 -0500
X-MC-Unique: 3xD5sdW3Ox6_ss-bjVQXZg-1
Received: from email.seznam.cz
	by email-smtpc26a.ng.seznam.cz (email-smtpc26a.ng.seznam.cz
	[10.23.18.36]) id 15716e0a00e93d50149b9f16;
	Mon, 15 Nov 2021 19:14:01 +0100 (CET)
Received: from [192.168.1.174] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay20.ng.seznam.cz (Seznam SMTPD 1.3.128) with ESMTP;
	Mon, 15 Nov 2021 19:13:56 +0100 (CET)
Subject: Re: Gui vs. cli software
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
Message-ID: <6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
Date: Mon, 15 Nov 2021 19:13:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

I prefer gui apps, because is 21st century, not time of first computers. 
If we want linux will more popular, it must have more gui apps. I agree, 
cli is better for older and slow computers or if you want work without 
spinning computer ventilators, but learn with gui is in my oppinion 
easier than cli.

Take care.

Best regards

Vojta.

Dne 15. 11. 21 v 18:59 Linux for blind general discussion napsal(a):
> 
> The topic of using gui vs. cli came up recently.  My view is the cli allows much more individual control over software functions.  The gui is
> oftn limited to what the developer decides is best for you as to function and individual control.  The gui was originally sold as an easier
> way to use computers; which meant in practice the developer trying to guess how users might want to use it at the cost of greater individual
> control.
> 
> Menu driven cli software is the obvious middle ground for ease of learning and using programs, which could easily use mouse input.  The
> developer could have a default setup for ease of beginner use.  But it was at the time not the new sexy flash bang eye candy which graphics
> allowed.
> 
> 
>   -- ent- XR
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

