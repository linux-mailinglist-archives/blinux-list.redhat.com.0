Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECB649D970
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 04:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643254834;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CAxAihrMSnHJaGCML01+pOgNEnM0mTt7vj/mjTIfQLo=;
	b=YxpfZpIPScjW5bEvmGbKZi++6xXM2fhQ2j1xAwa8QSPrSd72tfUWbHjInbg/JGa3UFuSqt
	2uIfZGXCZj0lMNJ/CdcxVTjWA2twLw79wU6makjGWKJM2bkc38j9IwObgjKU8JBrsxMHsJ
	iDtio/sClxZHPkWO/f/DaKdWfv5k0oc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-675-gOGyZjeUP5WXSnUpjLOh_A-1; Wed, 26 Jan 2022 22:40:31 -0500
X-MC-Unique: gOGyZjeUP5WXSnUpjLOh_A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BC4B839A43;
	Thu, 27 Jan 2022 03:40:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 649CC610A8;
	Thu, 27 Jan 2022 03:40:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4475E1806D1C;
	Thu, 27 Jan 2022 03:40:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R3dNBD020712 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 22:39:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 47D5EC1914A; Thu, 27 Jan 2022 03:39:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43EDFC07F3F
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:39:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28ECC811E76
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:39:23 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-633-5Oi9n-9PPny1iaSxERu5sg-1; Wed, 26 Jan 2022 22:39:21 -0500
X-MC-Unique: 5Oi9n-9PPny1iaSxERu5sg-1
Received: by mail-qt1-f177.google.com with SMTP id i4so1535109qtr.0
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 19:39:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=PkL1YFYPr6W9c4mhE2WqY0gGf13mPL7xdmA2fMHOLAY=;
	b=iKNmUR7F9kG12XFHiDPEDYLD9QufpipD9KPoqEBFJGt8jBf/Dp7bZ3q4pSlWJnOLjj
	vYWmawKzsRzSlZcypxyp4pAeOwC8ZfOPpG/dTwne8m96P4v8wbcLblxM5+rq8Milys/B
	P2HwkoauORWC/Y/7K6nOZtzZMcEZSXrEabsxr8giJgYk0e7cJfashWe0DSQrGSHJsBDr
	EPHZMpgivJeAqtAcizpR+bt2Gbj7KNuggTTKZ6uFZ5qWaxjiNPqKxkLzcz1l3U8VYgr1
	JRvfJrphfHznft1sRr0LFc+DCsEx/CTmXVhMgbnCohWN7AFYq8B/GEU8hSdD+Ri3fh83
	r9uQ==
X-Gm-Message-State: AOAM533VK3A5yh6ApEfP+Y6YXqtb+1rFoeSY6jMsqfqWxPDswQpwC6hu
	4R/A/UrzKycSzlSjHCU/v7eYXxAWpxbA6kPbXtOO07Ta
X-Google-Smtp-Source: ABdhPJyg/One45cM5r2E93fu4W8BoPCSj10xj/idrU1r/Mz2zrGJV0R30X/rIYZmgGkwvrtMdQrDaRpY0uiDtoApzEY=
X-Received: by 2002:ac8:7d0a:: with SMTP id g10mr1329585qtb.635.1643254761032; 
	Wed, 26 Jan 2022 19:39:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Wed, 26 Jan 2022 19:39:20
	-0800 (PST)
In-Reply-To: <Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
References: <cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
Date: Thu, 27 Jan 2022 03:39:20 +0000
Message-ID: <CAO2sX3318R2XnUpkUwekxVwx0iOPV=8sr19N1YUywr3bcyGPWQ@mail.gmail.com>
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Initial Disclaimer: Ubuntu 5.10 was the first Linux Distro I used
seriously, though I did play around with other distros prior to that.
I believe it was around Ubuntu 6.06 or 6.10 that I switched to running
Linux 24/7 instead of dual booting with Windows XP. While I've been
visually impaired my whole life and blind in my right eye since
infancy, I didn't go blind in my left eye until 2012, when I was 25,
and by then, I had switched from Ubuntu to Debian and gone through
most of the major Desktop Environments of the day.

I have a computer science degree and can write my own terminal
applications in C++, so maybe I'm  biased, but in my experience,
setting up a fresh install of Linux is much easier than setting up a
fresh install of Windows, or at least it was back when I could see and
based on installs of Windows 2000, XP, and 7... Admittedly, most
Windows users never have to do a fresh install of Windows themselves
while most Linux users do have to install Linux themselves and I have
never attempted a blind install of Windows, though I'd rank the blind
installs of Linux I've done as easier than the sighted installs I did
of Windows.

When I first switched to Linux, it was for many of the usual reasons,
didn't want to deal with Microsoft, wanted to avoid proprietary
software, wanted to dodge the majority of malware, wanted something
that would use fewer system resources, it was the geeky thing to do,
etc. I had long since ditched the usual Windows Applications in favor
of the cross platform FOSS standards like Firefox, OpenOffice, and VLC
and had always been more interested in console and handheld gaming
than PC gaming, and what Windows-only applications I did have
attachment to ran fine in Wine, so I didn't have too rocky a
transition, and probably would have ditched Windows sooner except it
was my freshman year at university and instead of having a television
in my dorm room, I had an external TV card connected to my laptop.
Once I made the switch, I fell in love with Apt and how it allowed me
to just select software from a list and upgrade all installed software
all at once instead of having to manually install every piece of
software I use and having to manually upgrade each application
individually.

By the time I went blind, I had been a full time Linux user for so
long that Windows Accessibility never crossed my mind., though there
was a few months between when my vision got too bad for just making
the fonts as big as possible to work and when I got a usable screen
reader working, and admittedly, the distro I'm using comes preloaded
with a lot of stuff I don't use, so a clean install invovles a lot of
removing unwanted packages, but it gives me a live DVD I can refresh
when there's a new release, boots up talking, and which I can install
to hard drive and the only thing I need sighted assistence for with a
new computer is fixing the boot order. Plus, the same disc serves as
both install and rescue disc.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

