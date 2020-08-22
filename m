Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id BCA1824E9CA
	for <lists+blinux-list@lfdr.de>; Sat, 22 Aug 2020 22:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598128358;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sqACs08A4QoHeED3P4eitdCRHcctJONNN4OUI+O8JMM=;
	b=RPSM0qZjWAza8wqm68VqBSuOmfWno5Lqit5UKWGRhTn73Pv94wCGrdj4wtyI3/D5j72V18
	YcTeHJRG9qOk8V4cT83HK+dVTCYW4RbNfqVwcF2SKkAjBdJBdkbq8E4gWy2yAgFPMO5/S6
	K1iHUB7UdmuQXdPInp78EMYjh6R9kcs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-1VWJyRzaPQC13HTt088jIA-1; Sat, 22 Aug 2020 16:32:36 -0400
X-MC-Unique: 1VWJyRzaPQC13HTt088jIA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 009D0186A575;
	Sat, 22 Aug 2020 20:32:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05D027E581;
	Sat, 22 Aug 2020 20:32:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AB6AC9A021;
	Sat, 22 Aug 2020 20:32:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07MKWNYI008611 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Aug 2020 16:32:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 12DFE2166BA2; Sat, 22 Aug 2020 20:32:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E5652166B27
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 20:32:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B508C8EB55D
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 20:32:20 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-348-cCD1U3utMdO4wm3JL5q7xw-1; Sat, 22 Aug 2020 16:32:18 -0400
X-MC-Unique: cCD1U3utMdO4wm3JL5q7xw-1
Received: by mail-qk1-f179.google.com with SMTP id x69so4326356qkb.1
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 13:32:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=PBBphCK+8rzLDmY8rjBj3eBuskSNq/nB4oaYLYY9xOE=;
	b=uQ25WUz2bThxsO0dp3c0DId9YHPNUx9DDaJxRa7jNk83qh8RsTdQGuXsTK+vDqmmOW
	+b0Mt+s9rQiQbB1S81OYP/h0funWYOBBvxDs2dQyAg+eDC+P7X/9/89pUwarbu+qS3DF
	Ye/uzJuV9kopnjg+LY3TsBNeOPvCTKforQZ1XoEKGd6z2qxR992auz6o9JqAf4+/cnAT
	3TitsL4d2tKRtemL5bQl+JC7hZbu5pTTz2tm+yK74xLKB4Jem3lhQPZQ+1VIkGJv6M3e
	IHiow++WzqMBeWj1Ev3yAWBMTJeDdiPUEjI/4X/RlocuzFeVS4HXe3jU14lkLKu1kqTI
	eH3Q==
X-Gm-Message-State: AOAM533fhlvn54Wl4o/SotZSYiF5LJUlG1XAVVchdbKn+BBZvDISjpo1
	rWUQFxziF5cTqLtB+MbTVMG/hfNyp5JRbHEFjviP58cp2mE=
X-Google-Smtp-Source: ABdhPJzGXfNmZ0rDNEaoz/bVxqXV3WBZS9AvkjciwsIjgFpjSpOFI/1/JFumU83zLM7zlbrxcyAMOOnWk+NVD0wQ8Tg=
X-Received: by 2002:ae9:e507:: with SMTP id w7mr7616050qkf.264.1598128337893; 
	Sat, 22 Aug 2020 13:32:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e807:0:0:0:0:0 with HTTP; Sat, 22 Aug 2020 13:32:17
	-0700 (PDT)
In-Reply-To: <84912de8-c295-2f6f-632b-db2758036b33@gmail.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
	<84912de8-c295-2f6f-632b-db2758036b33@gmail.com>
Date: Sat, 22 Aug 2020 20:32:17 +0000
Message-ID: <CAO2sX33kb1ATFngpmstxikP7KU5+TEmCtAyikuDCi7fan2mUkg@mail.gmail.com>
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, there are some hardcore distributions that favor compiling most
packages locally(Gentoo comes to mind), but they generally wouldn't
get brought up in a thread talking about beginner recommendations.

Generally, compiling from source is only necessary if you're
interested in helping to beta test new versions of software or you
want to run something your distro doesn't have a native package for,
and even then, you can often find pre-compiled binary packages for
most major distributions from the application's website.

Yes, compiling newer versions yourself is one option if you go with a
distribution that puts stability over being up-to-date such as Debian
Testing, Ubuntu LTS, and other LTS editions and need a newer version
of certain software than is provided by the distro, but there are
other options(such as backports or switching to Debian testing or the
STS version of a distro that has both LTS and STS releases.

-Jeffery

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

