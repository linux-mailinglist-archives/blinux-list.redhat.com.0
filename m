Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 03BC11FB20C
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jun 2020 15:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592314041;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qTpwGXKdGGOs3x3QfDkt4nZYl/4irrdwLCtXxHwaBVc=;
	b=cZqjFEIFGR6E/I5I+Hf+1xbUw/9H650MA3ASwKMxXve2l6GhGtB6DFR5DU+kjbgV4bxUav
	H2o02odL70ypCYNKbvgCfw55j1f/2faqwt0ZBlpFSI1Q4Vi1ktn8LFzlmyCGpO+x00oxq/
	wpbHMzKOLU6mBddel3GGVOPRLf+rr+c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-386-Tt-C_xXTPvinKBlV9jcEuQ-1; Tue, 16 Jun 2020 09:27:18 -0400
X-MC-Unique: Tt-C_xXTPvinKBlV9jcEuQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E5F07835BA8;
	Tue, 16 Jun 2020 13:27:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 68C9C1001925;
	Tue, 16 Jun 2020 13:27:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12E991809547;
	Tue, 16 Jun 2020 13:27:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05GDQxNJ012678 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jun 2020 09:26:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5128910EE6D1; Tue, 16 Jun 2020 13:26:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BB6210EE6CB
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 13:26:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E0ED8316EF
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 13:26:56 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-374-3eMQpL0dNbiXsDQRh7LZJg-1; Tue, 16 Jun 2020 09:26:54 -0400
X-MC-Unique: 3eMQpL0dNbiXsDQRh7LZJg-1
Received: by mail-qk1-f180.google.com with SMTP id w3so19064108qkb.6
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 06:26:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=uDdlhQeO1hI+5BX+evhqHwPAGyx07P8YeqordFeaqTY=;
	b=qOn3k3h2vzgmaI+uMuiDdAS85TtrMB/XFNPXvSzyBHRj9jUJ8SO0tcMCvnDLnBK2CE
	iTvt+YejE8TsYXEKidRZTH/UVsEQ4CWKYQDtbw9yNNMZCKzZRfr/G/3UjyF28HEm3pcr
	nnrR57jvMeU1s5IaeD3svnmUsCI6GTP4j8JpVjmLAR7wvMwSQtruNea9rSA4n1Y5VSFk
	g/9esyqw/5KV4jANJyoEcV3w2V4EpPMoLNaKGKctzuBugBsvRxbEZVFCKOKky0E8jy4t
	4x8DXYEFjBE3fteFrnmEq0lS3xbn2lmzJe2OUxCkqpuRc8DrPt4KD82pl2BYZ3xycgCu
	RJ1w==
X-Gm-Message-State: AOAM531IqXU3gqn0DOG+XD8I6nM8d16cvGHIempglNGrzB1ikmPz2zh3
	u2WgUYy6SZpBMU4ZThyn59s3Qeuxn721gPLDnb258afq
X-Google-Smtp-Source: ABdhPJwkXUpmenkgqC/0RRXs5bzESeGQ2JpNq1hc/x3S4f08X6+U/gCJkbG4wNEtG8exaFHfU1pT8ORF3k9T8/5ttK8=
X-Received: by 2002:a37:b14:: with SMTP id 20mr20381602qkl.401.1592314013520; 
	Tue, 16 Jun 2020 06:26:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Tue, 16 Jun 2020 06:26:52
	-0700 (PDT)
In-Reply-To: <843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
Date: Tue, 16 Jun 2020 13:26:52 +0000
Message-ID: <CAO2sX31RY2cas9Bg6sURkAWAuLvohJ6TBux4SE-NxAmaMuVPqg@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

Part of me says you might be better off starting with a Raspberry Pi
if you want a more vanilla Linux/GNU experience on a pocket-sized
computer than what Android offers... unless there's some smartphones
out there that support replacing their stock Android with the ARM
version of more traditional distros.

The Raspberry Pi 3 makes a great command line-only with speech Linux
box, and there are reports of the 4GB ram version of the Pi 4 running
LXDE or Mate with Orca and still having resources to spare on
graphical applications.

Admittedly, I'm not aware of any good way of giving the Pi an internal
battery(I'm sure there's a hat for that, I just haven't found one),
and it might mean handling microSD cards more than one is comfortable
with(I wish the Raspberry Pi Foundation had stuck with full-sized SD
cards for their system drives or that there was a way to flash an SD
card while it's loaded in a Pi), but you also get 4 full-sized USB
ports for hooking up peripherals and the option ofconnecting to wired
networks via Ethernet.

If you do decide to go this route, I'd recommend

http://www.raspberryvi.org/stories/index.html

And the associated mailing list.

That said, the ability to tell Android's Java-based,
touchscreen-optimized GUI to take a hike and drop down to a Linux
console would be nice, almost as nice as full built-in physical
keyboards being a common option or having dual full-sized SD card
slots for expanded storage or devices being equipped with batteries
that actually have decent capacity and can be swapped out for a
charged spare when they do run low at an inconvenient time.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

