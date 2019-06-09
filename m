Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 616983A405
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2019 08:29:59 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 281FA309265A;
	Sun,  9 Jun 2019 06:29:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90D6D5D9C3;
	Sun,  9 Jun 2019 06:29:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C3A82C57C;
	Sun,  9 Jun 2019 06:29:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x596TT5Z007498 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 9 Jun 2019 02:29:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DC21860BEC; Sun,  9 Jun 2019 06:29:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx20.extmail.prod.ext.phx2.redhat.com
	[10.5.110.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6C5B60BE5
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 06:29:27 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
	[209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 133D6308624A
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 06:29:25 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id s27so3322155pgl.2
	for <blinux-list@redhat.com>; Sat, 08 Jun 2019 23:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=o2/bhFiWz/JM5BUrNoMkFcNyHkE8wRfypjAWnr/SQNo=;
	b=aA0yaouZuuRV6GgC7fPgUo6Syd7Z4d2m0brQNkeMTUoAgFFwdqXaxP84A+hRCtq1Ri
	yRLQ9aqdsGut8m0fOXpj/sONV4sq151JBBiDvy+kF6QitzgDC0ygELCQ3pNkuC8miz6j
	Lb/tgcfHJ4eM0B1pnE9cjW/84pUYflvy1s3qRCQItCkPF/tsIFzdZoVGDSZ9OenMAwKl
	2OzljKcew0esxlysS4c27mJ+BwIv2VpQ0YMkwdPj9rdtEYXE1Dyodvgc+VEJuKmedQCD
	4XOGZbO523obqtckHsZE/80LkgHvSYuG92yCaat9keUUvxfpXXpqSL6m67gr3GgeAoms
	15tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=o2/bhFiWz/JM5BUrNoMkFcNyHkE8wRfypjAWnr/SQNo=;
	b=GVwl0PdqHJbxWcGN28rzPLiKcuoi/3VbnorL/WfedLFG7AntETw1rU8ZH9BjZ0yGkG
	iIO7qFed1SUvtDmUoXjGmXGb+ABfsf09rqkIZaTdx3HWg74caVo97WQrAIlQflSEqkQE
	/hqUJgRgBOOpOwo0bXn+jxfCep5S2hYCwrp5eknU/AGGPqHnH28YrB6vB3T/Gb2X44dt
	DyvC6lyuqYS80xt4oUUsg/2j189TkGCAwesccNsoDaR+zqEYvsbmbaMT6Mcn2L/CxVpA
	WM1LOvArzm53fB4+r3JEs1JgXCTddOIMMFbAq3INCX3Qp54nXa6L1K8MQhUyx5vwlf9l
	BDLg==
X-Gm-Message-State: APjAAAVm2QjsK89EdY9rQRmUAbV+OEya0E6V5KDy8ilnO2IquGhJHaUz
	wtVpSfAngEVowEwt8qKWRgXFHd1h
X-Google-Smtp-Source: APXvYqwtGBmqL7iS5YU1P2/nPC/LY837F9A+5A3J/iCg9ZQ78n7nuO265U0nZUYRLr/XR+A3N+JzOw==
X-Received: by 2002:a17:90a:d983:: with SMTP id
	d3mr14544255pjv.88.1560061764031; 
	Sat, 08 Jun 2019 23:29:24 -0700 (PDT)
Received: from [192.168.1.181] ([67.230.224.68])
	by smtp.gmail.com with ESMTPSA id
	w62sm7239144pfw.132.2019.06.08.23.29.22 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 08 Jun 2019 23:29:23 -0700 (PDT)
Message-ID: <20190609.062826.894.17@[192.168.1.181]>
To: blinux-list@redhat.com
Subject: Re: Audio Recording
Date: Sun, 09 Jun 2019 01:28:26 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1906090212360.20043@panix1.panix.com>
References: <20190609.052602.869.15@[192.168.1.181]>
	<alpine.NEB.2.21.1906090142180.26372@panix1.panix.com>
	<20190609.055021.701.16@[192.168.1.181]>
	<alpine.NEB.2.21.1906090212360.20043@panix1.panix.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.49]);
	Sun, 09 Jun 2019 06:29:25 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]);
	Sun, 09 Jun 2019 06:29:25 +0000 (UTC) for IP:'209.85.215.180'
	DOMAIN:'mail-pg1-f180.google.com'
	HELO:'mail-pg1-f180.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.109  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.215.180 mail-pg1-f180.google.com 209.85.215.180
	mail-pg1-f180.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.49
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x596TT5Z007498
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Sun, 09 Jun 2019 06:29:57 +0000 (UTC)

Oh, it's arecord, with one A. Aplay's buddy.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 9 Jun 2019 02:14:31 -0400
Subject: Re: Audio Recording

> I think alsa-utils package has it but try apt-file search aarecord to
> see.  I'm on slint now so would have actually have run that command on
> debian for you myself.
> 
> On Sun, 9 Jun 2019, Linux for blind general discussion wrote:
> 
> > Date: Sun, 9 Jun 2019 01:50:21
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: blinux-list@redhat.com
> > Subject: Re: Audio Recording
> >
> > That program doesn't seem to be in the repos for debian.
> > Where do I find it?
> >
> >
> > ----- Original Message -----
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Date: Sun, 9 Jun 2019 01:43:51 -0400
> > Subject: Re: Audio Recording
> >
> > > On cli I'm using aarecord with some parameters so we don't record a .wav
> > > file since size is limited.  The wav file you can record you can use to
> > > verify your microphone's volume once you listen to the recording.
> > >
> > > On Sun, 9 Jun 2019, Linux for blind general discussion wrote:
> > >
> > > > Date: Sun, 9 Jun 2019 01:26:02
> > > > From: Linux for blind general discussion <blinux-list@redhat.com>
> > > > To: blinux-list@redhat.com
> > > > Subject: Audio Recording
> > > >
> > > > What are we using for audio recording on linux these days. In the gui. Is audacity still the best one from an a11y standpoint? How about CLI?
> > > > I'm interested in recording from line-in so I can archive some of my tapes.
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://www.redhat.com/mailman/listinfo/blinux-list
> > > >
> > >
> > > --
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> 
> -- 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
