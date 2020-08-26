Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id EF0DC2525AD
	for <lists+blinux-list@lfdr.de>; Wed, 26 Aug 2020 05:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598410869;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r1T+2oADn/RUYFCc43qoYPXmnIYCk+nfWKCWtM5nuIs=;
	b=FvrrwOYkyq102wCVJDxeci/Om7Gyu9Gd2a+Cz5Juop7mT19SPWV0DG9QrUh5HwiE7dWTus
	buoaRH9TBR99KwjcZCAnJ+KOQPErAaFWKeLbw+IQaLOO6CKF1xrNWffu+aS9E2lPAGNCKI
	9y9Yr9FyfWZTw7moAqBvfx7ZxWdwlZo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-IrFMz5T9NYO9fY7QRg8Hmg-1; Tue, 25 Aug 2020 23:01:07 -0400
X-MC-Unique: IrFMz5T9NYO9fY7QRg8Hmg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A9218030B7;
	Wed, 26 Aug 2020 03:01:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63E115D9E4;
	Wed, 26 Aug 2020 03:00:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B0B3F668E0;
	Wed, 26 Aug 2020 03:00:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07Q30eOO025392 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Aug 2020 23:00:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 51A632166BA4; Wed, 26 Aug 2020 03:00:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F94B2166BA0
	for <blinux-list@redhat.com>; Wed, 26 Aug 2020 03:00:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05D4718AE948
	for <blinux-list@redhat.com>; Wed, 26 Aug 2020 03:00:38 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-21-6K-iWcKjOlaUP9qtOYhMvQ-1; Tue, 25 Aug 2020 23:00:35 -0400
X-MC-Unique: 6K-iWcKjOlaUP9qtOYhMvQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BbrFv0tsDzZJB
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 23:00:35 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BbrFv0kFSzcbW; Tue, 25 Aug 2020 23:00:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BbrFv0HwjzcbV
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 23:00:34 -0400 (EDT)
Date: Tue, 25 Aug 2020 23:00:34 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: tried accessible coconut
In-Reply-To: <CAO2sX32zY8fraBaxNamf2f83y4d2F_OBMNVf6ruUKDC_GYi93g@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2008252259200.29637@panix1.panix.com>
References: <alpine.NEB.2.23.451.2008251743310.9959@panix1.panix.com>
	<CAO2sX32zY8fraBaxNamf2f83y4d2F_OBMNVf6ruUKDC_GYi93g@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You can make things like that happen with Fedora, and even with a
monitor connected and operating if a mouse wasn't on the system back in
redhat 5.0 the system wouldn't work.

On Tue, 25 Aug 2020, Linux for blind general discussion wrote:

> Date: Tue, 25 Aug 2020 18:13:26
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: tried accessible coconut
>
> That's odd... I've never used accessible Coconut, and I've really only
> tried Knoppix and Debian for x86 and Raspbian on the Raspberry Pi when
> it comes to trying to set a Linux System up with speech, but I've
> never had an issue with something refusing to boot or a screenreader
> failing to launch because of no monitor being connected.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

