Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id D550E14FBBF
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 06:34:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580621675;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ns7UY2uUcQJOn/AsNMV96alhRMF5ePELUM3/UjlbGUs=;
	b=OIHjP2i2moMB/Cejq7tWZf2YYW+BZaslCCkLusSumcSgbH68KdLsLATAI4LhYP5n6o6HMM
	OKh3eIUw54IZR9rZ69BRxp6bnHXLpvs+PkZsjfJJGDSsg+QsnbekFAtB5PF7W6biGTN/R8
	WvawPjBWdrvjPHHbaLROxw23EmLH+mU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-9FX3VTR3M36nO-Ju3hNGtw-1; Sun, 02 Feb 2020 00:34:33 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 428AA13E2;
	Sun,  2 Feb 2020 05:34:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFD7F77931;
	Sun,  2 Feb 2020 05:34:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B1B1485CEE;
	Sun,  2 Feb 2020 05:34:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0125YPJ5013989 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Feb 2020 00:34:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 426D52093CEA; Sun,  2 Feb 2020 05:34:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D6382093CDD
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 05:34:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C2A31019808
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 05:34:23 +0000 (UTC)
Received: from mail-yw1-f47.google.com (mail-yw1-f47.google.com
	[209.85.161.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-94-VrfwuVpeOqyhNCP0soB1Ww-1; Sun, 02 Feb 2020 00:34:19 -0500
Received: by mail-yw1-f47.google.com with SMTP id b186so9897037ywc.1
	for <blinux-list@redhat.com>; Sat, 01 Feb 2020 21:34:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=ps1/jBp67eWKgbVwNMETZWErnl0z4Nm3k/kOBcXvOf4=;
	b=NjegHskxCbTWkurFyJZiC5b9+W7saQ0FZmMG5VYPCQp13XTCx+NmdNp/zjg1dXpLuW
	D4dSG3pb5cv3ptMOWJMaERsPYybo5YRTV3x/9saOTmkFIJftxHsj8EC+s8rmlHeYljhB
	CW1A4SQV6cSXBwmxKGYygg1+TsH7x9FXaeoUJ+ohA/yNktHq7l5a7clNGRfsvXRmY7EC
	PvnDbDqOsfbzhaEOQikCzx2GlSUOXljunUxQHDk0xTXntdwcMmE9o3UXQAaJe35QE12I
	CHIGYWfMgYpmsm78mNKJQvSgZXQ/mJwx+SB8F/pDrKIeNzWdGJU1QjSmAmQid2LwNpnW
	lC5Q==
X-Gm-Message-State: APjAAAWacZEk9UI/dsW7JRwO2xOzXzB+wRB7fjIk2tS4OOau19d5rqHl
	3fw8H1O88qQis5hIplJ/rH1tOSVOXQ4=
X-Google-Smtp-Source: APXvYqzajxJKFRBpBSdfvTHmgpXdFrYB58MPxEr8NySv3JPpHdDQubIsLzdjyewKeVLhX0IoSsHrMA==
X-Received: by 2002:a81:4e0d:: with SMTP id c13mr11675801ywb.448.1580621658765;
	Sat, 01 Feb 2020 21:34:18 -0800 (PST)
Received: from [192.168.1.118] (24-220-234-87-dynamic.midco.net.
	[24.220.234.87]) by smtp.gmail.com with ESMTPSA id
	m138sm6474833ywd.56.2020.02.01.21.34.17 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 01 Feb 2020 21:34:18 -0800 (PST)
Message-ID: <20200202.053250.708.97@[192.168.1.118]>
To: blinux-list@redhat.com
Subject: Re: A Live Boot Image for the Mac that Talks
Date: Sat, 01 Feb 2020 23:32:50 -0600
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2002020031250.19173@panix1.panix.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
	<10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
	<E1iy5Fq-0006fl-BN@wb5agz>
	<CAO2sX32EXpxci1Y3q2Jch+Z75vdUx-cRQS2=dxdOOtBLiqY-yQ@mail.gmail.com>
	<alpine.NEB.2.21.2002020031250.19173@panix1.panix.com>
X-MC-Unique: VrfwuVpeOqyhNCP0soB1Ww-1
X-MC-Unique: 9FX3VTR3M36nO-Ju3hNGtw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0125YPJ5013989
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

There was a cd image floating around that you could use to pass things on to a USB. The vinux project hosted it.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 2 Feb 2020 00:32:54 -0500
Subject: Re: A Live Boot Image for the Mac that Talks

> Older machines wouldn't have that capability.  One computer I have can
> do it and the other computer cannot.  The difference is the flash bios
> in each of the machines.  One permits it and the other does not.
> 
> On Sun, 2 Feb 2020, Linux for blind general discussion wrote:
> 
> > Date: Sat, 1 Feb 2020 22:04:36
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: blinux-list@redhat.com
> > Subject: Re: A Live Boot Image for the Mac that Talks
> >
> > I don't have any experience with Macs or writing bootable images to
> > USB sticks(I just burn isos to DVD using wodim when I need to make a
> > new Linux disc), but my first two thoughts are:
> >
> > 1. Perhaps the Mac's bios isn't configured to allow booting from USB
> > media. I know I've had to get sighted assistance to fix the bios boot
> > order on every laptop and desktop I've acquired since going blind
> > before I could boot installation media to install Linux... I even had
> > to do it for a netbook that came pre-loaded with Ubuntu if memory
> > serves.
> >
> > 2. I could be wrong, but I believe the files needed for making a
> > CD/DVD bootable and making a USB stick bootable are different. If so,
> > even a properly written iso might not result in a bootable USB stick
> > if the iso only includes the files needed for booting from CD/DVD.
> > Again, no experience with making bootable USB sticks, so I might be
> > horribly mistaken.
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
> 
> -- 
> 
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

