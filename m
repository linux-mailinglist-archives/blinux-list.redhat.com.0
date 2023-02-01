Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7376867AB
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 14:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675259674;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tIrY/VpHbimTunEaBpVkq5tr9W497mNemSkXTVLILKY=;
	b=ZxSUGbgmEODbhdGgPKmGulzGNhw5nHYKoB1zzgnJKpNF5+R6KNqwi+ohAHOlZAZFaR+Nod
	YpIITH2w9CaUIeLQkLeD1HSPk286CUCNX1hya2sLfWjI2mqfMWxmtNDcvLyttoITJf6jhL
	jYLlq6DH0DBt3C/tMf3k3i7+ioGBsVc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-573-PsrSAJREOQ668UqeqDVS5g-1; Wed, 01 Feb 2023 08:54:31 -0500
X-MC-Unique: PsrSAJREOQ668UqeqDVS5g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 169851C08962;
	Wed,  1 Feb 2023 13:54:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 64A46112132C;
	Wed,  1 Feb 2023 13:54:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0540019465B2;
	Wed,  1 Feb 2023 13:54:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 08:54:24 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Strange Arch linux arm issue with espeakup
In-Reply-To: <mailman.3734.1675257487.8172.blinux-list@redhat.com>
References: <mailman.3734.1675257487.8172.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3559.1675259667.8173.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Have you tried:
amixer set Master 100% unmute



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Wed, 1 Feb 2023, Linux for blind general discussion wrote:

> Hi,
>
>
> I've been having a strange issue with Arch linux arm when installed using
> Asahi on an m1 macbook air.
>
>
> When installed, I connect my Android phone to use as a personal hotspot,
> because network configuration is not completed in the install. I then install
> both alsa-utils and espeakup after doing a macman -Syu. They seem to install
> fine, and then I set the Master volume to 100% with:
>
> amixer set Master 100
>
> This seems to work fine. Then I enable espeakup with:
>
> #systemctl enable espeakup.service
>
> After this, I reboot, and this is where the problem happens.
>
> Espeakup reads the first login prompt, including the kernel version and host
> name. But then, beyond that point, reads nothing, no matter what I do. Logging
> in correctly results in no speech, the same when entering an incorrect
> username and password.
>
>
> Once logged in, doing:
>
> say test
>
> and:
>
> espeak test
>
> and also:
>
> espeak-ng test
>
> all result in the word "test" being read by espeak.
>
>
> This is about as much detail as I can provide, being unable to use the system
> beyond that point. Any advice anyone has to solve this problem would be very
> much appreciated.
>
>
> Thank you for reading,
>
> Aaron
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

