Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id DEC1020985E
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 04:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593050663;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+0cD2BHN3OPnqPrhNhp3RB75Ur1H9RhkE8Zn6oywmSw=;
	b=PjZ01/EaGwk3oDTVrL4eBs8NDAhYMm+mkYSlAo7BCfZw2ngsuC+6P1QZaY1whnjioUHnt3
	Qbk6AwX6mbX2lkIAkODpM1k0jr4bJ24vXzT/xmpWo8VnZ2S3UuPRKnt9xdHFocK3ZNQ9wl
	Uyc4S5Y+xzYNwt3glhq39WCvncqLaxQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-q_ZID05YOOCQ549lOui0Og-1; Wed, 24 Jun 2020 22:04:21 -0400
X-MC-Unique: q_ZID05YOOCQ549lOui0Og-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3D57804003;
	Thu, 25 Jun 2020 02:04:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 537351010428;
	Thu, 25 Jun 2020 02:04:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7365F180954D;
	Thu, 25 Jun 2020 02:04:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05P24BjR030252 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 22:04:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 899092014DFA; Thu, 25 Jun 2020 02:04:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 84DEA20182A3
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 02:04:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A523101A525
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 02:04:09 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-21-n7CLzUKEOZqqpEhFKf43Lg-1; Wed, 24 Jun 2020 22:04:07 -0400
X-MC-Unique: n7CLzUKEOZqqpEhFKf43Lg-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 49sjxL1Z47z27Qq
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 02:04:06 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id FI0oaeeuP3Ar for <blinux-list@redhat.com>;
	Thu, 25 Jun 2020 02:03:33 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 49sjwj5WYTz27Qp
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 02:03:33 +0000 (UTC)
Message-ID: <20200625.020317.644.1@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Re: Prospects for an accessible and open version of Android?
Date: Wed, 24 Jun 2020 21:03:17 -0500
MIME-Version: 1.0
In-Reply-To: <1923b675-b168-1ad9-0dce-e1176022dae3@gmail.com>
References: <EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
	<20200624.130638.725.17@[192.168.1.130]>
	<1923b675-b168-1ad9-0dce-e1176022dae3@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05P24BjR030252
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

My original point shtill shtands though.
Once you did get the optical drive set, you rarely unplugged it, so it therefore remained set. Whereas flash dries come and flash drives go, and you almost always have to reset it again.
Rob
----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Wed, 24 Jun 2020 21:44:00 -0400
Subject: Re: Prospects for an accessible and open version of Android?

> Many times BIOS implementations also put optical drive boot after hdd as 
> well, so I found it equally hit or miss. There really was no standard 
> for this stuff, and UEFI made things even worse.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

