Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 96C3D209823
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 03:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593047780;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ufz3UTKp+WugWpfB/3HtVmZMQuEH9hxv3ClX9b+zPTM=;
	b=PkhJCz6/e8MFsUCiKEbYckoMlzchsGG4LahjL3VGsERehdcA1pFwgJmndXHzOlwsviQ8J4
	x+yB5A3M0dDMjhWGFBVE8bl3xi4akMjcMwD99EOO60eTV3yup9bU4otAFxxH02y5wy2z2m
	msIFyYXutCnhQqA3o7NisjfdmxBLCbM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-3EuzXLZ9Mzu1x139DFIPOQ-1; Wed, 24 Jun 2020 21:16:17 -0400
X-MC-Unique: 3EuzXLZ9Mzu1x139DFIPOQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 29A8810059A7;
	Thu, 25 Jun 2020 01:16:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 117F417B16;
	Thu, 25 Jun 2020 01:16:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C20C887593;
	Thu, 25 Jun 2020 01:16:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05P1G6bW026023 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 21:16:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9BF11F4D28; Thu, 25 Jun 2020 01:16:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91361176FF
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 01:16:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1ADF3101A525
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 01:16:04 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-446-AP1VQ3PFNpK9g_XVr7mlbw-1; Wed, 24 Jun 2020 21:16:01 -0400
X-MC-Unique: AP1VQ3PFNpK9g_XVr7mlbw-1
Received: by mail-qt1-f179.google.com with SMTP id v19so3377529qtq.10
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:16:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=42MOqX8M9Pk53sDNHo7RwMlRKEmVVh7MxB++WR7/TGM=;
	b=JhdqQM1e4USaLrWab2NgyyAejwk9RKekFD89RQZoe6MhZx3QCdqq8dFbJEZQiGrhto
	OzV94p3dujNLwXv3q6E+tItHu3mmDiCjzOmjXS+LJ9kN97aCMK2usV5YURXnC66GsQK5
	iJFEEmsKGsw/NC0ZhK0ZP67M1S3+3738VGjvxbVmsxVCEObsOj+X2ojwwzvaJDV1V8iK
	JJ8erySl47CaMuFu4NzJh6J0+oBZhgeSVDNX9ZXTtsefW5bhizGT8nsdhJQKe2lgTpOm
	Uu3ZIKjzQb4GXCSxQEBJYbJN1Nz8GyAkBZeTJO0j88g+aFvaC3UEVuZmRyecBlKqicPE
	sxng==
X-Gm-Message-State: AOAM5309dtiaZ/JBjqk3tRwWY5BHA26k4Z0S+dkWqXIpDQRBJLIzTyOS
	xVCkl88U3Vn8L1vJVr8g2hwlPZqpxIPNfupkuTADpXVK
X-Google-Smtp-Source: ABdhPJwSOIMsC1Ec3QVnIIoGg2ELBqZ676QjMLax1cmc6XVRbBBM77K2+bnHUdBglILQbtkXEJE8tFlHOiUSeUhLPP0=
X-Received: by 2002:ac8:320f:: with SMTP id x15mr4516020qta.6.1593047760639;
	Wed, 24 Jun 2020 18:16:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Wed, 24 Jun 2020 18:16:00
	-0700 (PDT)
In-Reply-To: <b57cf3a3-4587-197f-5026-342f6447a649@gmail.com>
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
	<Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
	<435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
	<Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
	<CAO2sX32BWM_Oxdme42Ok1_bG0Yok2hpAZDWSOoMM-tV3_bScBA@mail.gmail.com>
	<b57cf3a3-4587-197f-5026-342f6447a649@gmail.com>
Date: Thu, 25 Jun 2020 01:16:00 +0000
Message-ID: <CAO2sX32RQmBC-LT1fcTg0Koe+d2ur7xpmyOVLWEzNuHfhoe_Gw@mail.gmail.com>
Subject: Re: anonymity, threads, signatures, and confusion
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Rich pretty much read my mind earlier, I find the tiny size of microSD
make them hard to handle and way too easy to lose, and I've yet to
come across a device where I felt like the extra bulk to fit a
full-sized SD slot would harm the overall look and feel of the device.

Wouldn't be so bad if I could just install a card and then never touch
it except to replace it when it fails or I need to upgrade to a larger
capacity, but it seems like every device that I come across either
straight up doesn't allow access to the SD card by connecting the
device to my desktop over USB or the device doesn't act like USB mass
storage, making it easier to move stuff to/from the SD card by popping
it out of the device and into a card reader.

Fortunately, my portable media player has a full-sized SD slot and
works just fine with SDXC cards once formatted to fat32 on my desktop,
though I fear the day it eventually fails as the trends it defies have
only gotten more entrenched over the years I've had it.

-Jeff

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

