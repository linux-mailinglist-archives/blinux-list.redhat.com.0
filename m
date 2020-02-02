Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8B7A114FB4C
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 04:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580612697;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HPWjy/40rmtz1kTk/da+UmP/6W9hXYBnK5fIeGTTBAU=;
	b=dYHWaLZOQVAOszMNY+ink3m/sDMnEUiPq1ULRPN9+GSR3ZXV3V1wbaNB9tfa5hr9fwaLFJ
	0YaD8BocDtftRNXRgDHSEIITt3gYWlBp1WNAkHuBblyiKlAvPx0/2C92u46diL7vHZptAp
	BUuBQd3kRfwIidBu+8OJUnJnVqGiJnw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-128-F6gEMqjUMxyTLHRBDvTwbw-1; Sat, 01 Feb 2020 22:04:53 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2E28DB60;
	Sun,  2 Feb 2020 03:04:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A35D5C3FD;
	Sun,  2 Feb 2020 03:04:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 280C21809567;
	Sun,  2 Feb 2020 03:04:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01234fiJ010934 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Feb 2020 22:04:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7D032112131B; Sun,  2 Feb 2020 03:04:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78B4E10EE78D
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 03:04:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B86F985A33E
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 03:04:39 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-235-8PnQmq3oMhiMG_2E3zjMVw-1; Sat, 01 Feb 2020 22:04:37 -0500
Received: by mail-oi1-f178.google.com with SMTP id v19so11397865oic.12
	for <blinux-list@redhat.com>; Sat, 01 Feb 2020 19:04:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=KyDj0qKrQNMYfLx5HfqELLBeYOFUjk1QVTV7aiVpFmg=;
	b=HzSam9madOA3E2g2+13DD8RIiW0Nb7V6NtEPQ2Yb1y+2p2/NRwpilvoEwFSOy2HV4y
	0IcMYZkpwxAwJbDw1DMhjyxfQ2uH/VusQhZRGo6a2a+wMQ78qDuDwY4M2BtrLovpyQGj
	Dmxm3srcqokCeIDw0Bj2Qi5MAxgvE1tkO3mgz4PwfipmvPdvLHUcPgRdFxA9uCmRNONF
	VxN7rP5IJfWRaUgX22/AwqlqmBFHtM6rP/vlUYmznS+LdkhaUJRQHhNaCNHNWaPE3A1/
	voqONkb3an6DWgmhDEj/qnI7VmjNqzK5sJzgvfwzYr68AkslccPr7evVv7kqzYChNlHv
	bwDQ==
X-Gm-Message-State: APjAAAWe1Qb8uxUC7pgnbgjYeY22w4yaEQqmF/ZkByHz7/kl6kRJgTOx
	DiqJzz59VyFKFWcA56SYJGfl4nGtVAtl6i/dIIH9SA==
X-Google-Smtp-Source: APXvYqypM7R8dvPWUAptLAafQj8U76qQwdjeUXTqSj49heBKK31ljhy7CP5Ej9SwbKcBirHq0NgUwZoHUWARiyHoP74=
X-Received: by 2002:aca:be09:: with SMTP id o9mr7682906oif.177.1580612676731; 
	Sat, 01 Feb 2020 19:04:36 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:4d96:0:0:0:0:0 with HTTP;
	Sat, 1 Feb 2020 19:04:36 -0800 (PST)
In-Reply-To: <E1iy5Fq-0006fl-BN@wb5agz>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
	<10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
	<E1iy5Fq-0006fl-BN@wb5agz>
Date: Sun, 2 Feb 2020 03:04:36 +0000
Message-ID: <CAO2sX32EXpxci1Y3q2Jch+Z75vdUx-cRQS2=dxdOOtBLiqY-yQ@mail.gmail.com>
Subject: Re: A Live Boot Image for the Mac that Talks
To: blinux-list@redhat.com
X-MC-Unique: 8PnQmq3oMhiMG_2E3zjMVw-1
X-MC-Unique: F6gEMqjUMxyTLHRBDvTwbw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01234fiJ010934
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

I don't have any experience with Macs or writing bootable images to
USB sticks(I just burn isos to DVD using wodim when I need to make a
new Linux disc), but my first two thoughts are:

1. Perhaps the Mac's bios isn't configured to allow booting from USB
media. I know I've had to get sighted assistance to fix the bios boot
order on every laptop and desktop I've acquired since going blind
before I could boot installation media to install Linux... I even had
to do it for a netbook that came pre-loaded with Ubuntu if memory
serves.

2. I could be wrong, but I believe the files needed for making a
CD/DVD bootable and making a USB stick bootable are different. If so,
even a properly written iso might not result in a bootable USB stick
if the iso only includes the files needed for booting from CD/DVD.
Again, no experience with making bootable USB sticks, so I might be
horribly mistaken.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

