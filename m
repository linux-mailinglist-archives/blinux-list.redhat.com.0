Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 541294260EB
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 02:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633651550;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E4icTBzB3D0+YwmhXPHDieCMmGbso+U2Y2Q4vTI38P0=;
	b=EevWzydON/c9INUyE89bcIcAxid0VUWP/276PEKvwHvhmqcCNnUerfY5tQPNDuGMgydxJS
	UyxlVD0n5xlBVbRCMhgRPWxK9WRRGAG3tO4A0hbw6arNYElZfCcWFbNsXiXMmLMieQCJ1y
	P+A+0hY8PL01BWzOdVGIYPTcOyRjpvU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-uMMv_cbxOK-QzWO2Z6QelQ-1; Thu, 07 Oct 2021 20:05:49 -0400
X-MC-Unique: uMMv_cbxOK-QzWO2Z6QelQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 56A7F81431C;
	Fri,  8 Oct 2021 00:05:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5DC76091B;
	Fri,  8 Oct 2021 00:05:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 46FF61800B8B;
	Fri,  8 Oct 2021 00:05:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19805eZU025076 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 20:05:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7F5F62026D69; Fri,  8 Oct 2021 00:05:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 74D762026D07
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:05:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C902F811E80
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:05:20 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-570-kGdnCOXJNoWGXXwA-bjv_w-1; Thu, 07 Oct 2021 20:05:17 -0400
X-MC-Unique: kGdnCOXJNoWGXXwA-bjv_w-1
Received: by mail-pj1-f49.google.com with SMTP id
	oa12-20020a17090b1bcc00b0019f715462a8so6473112pjb.3
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 17:05:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=NWhp1lMrcsUsPVlin5UFVk4a1NkJWNUoKQr0IFMXCXE=;
	b=kc57kXCLlcZDWNCqCIJZ+AUJNYkp3HyUA6k8Mkbp6k5sZ8NAiqYA6gc5ULOI9tVBp4
	FsMv00OIMYHXs/ooY6vvG63Yh9tUT0VMYI0ML3vHgONF00x+X68bFgM1xHqf5CxrH/DL
	4k6kFj6GqdHDekvUCWvaABBYEZf6QQu1ybRuCRLDycxccgjd51dPKMcaefn46wqHbmwS
	lS13sHAELr7j2SkRmda2GbGFjRArtyI+ZR9XKGr3U1ysANRHR52o59vvpnosoy+bG4jH
	AvwJq6BI2iWKzGGB3hPDT7LcD/T0uNAD8jv9aseXvd9fp/qryA+/SiGiqwP4Sv/iT7ar
	4m3g==
X-Gm-Message-State: AOAM533lu2yNtJhqOmzMjwAsSrwX2rSgMlRsC6O6N33wVGSodQ54RSi8
	FzoM7NXQB1SnzXJJrIOPHwJjUAGw3HY=
X-Google-Smtp-Source: ABdhPJzTDD3Cv6WivSobpYGtsCcGCdAoXbpH87udDoAy/CGIU9HRm215vIhQm8DZKUWtFjR0+8ZmKA==
X-Received: by 2002:a17:90b:4016:: with SMTP id
	ie22mr8761907pjb.29.1633651516240; 
	Thu, 07 Oct 2021 17:05:16 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id u74sm500266pfc.87.2021.10.07.17.05.15
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 17:05:15 -0700 (PDT)
Message-ID: <bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
Date: Thu, 7 Oct 2021 20:05:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Mate Desktop questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
In-Reply-To: <d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Isn't Linux Mint still based on Ubuntu? How did they fix the problem of 
having to log out and back in to get a talking installer that Ubuntu has 
yet to fix? Ubuntu 21.10 needs to take a page from the Linux Mint 
playbook to make their installer talk without having to go through the 
work-around logout login procedure to get it talking. I myself would 
look at Mint, but I'm not fond of the Debian base. That doesn't preclude 
my installation of this distro for others, as I have been known to 
install Ubuntu for its ease of use, although I'm more partial to Fedora 
Linux these days, especially since it includes flatpak out of the box, 
and snapd can be installed quite easily. I actually have a couple of 
snaps working here without any issues.


First, to get to the panel with the system tray, you usually hold down 
the alt and control keys and press the tab key repeatedly until you hear 
"top panel." But if I remember correctly, Mint has no top panel, only 
the bottom one, so your system tray is there. So if you never hear "top 
panel," just go to the bottom panel and you're good.


The sound issue is caused by a conflict between more than one user 
trying to access sound at the same time. The conflict appears to be a 
race condition where the first user's sound session doesn't get killed 
fast enough, so the second user is blocked from using the sound device. 
This usually is not a problem using Pulseaudio, but for some reason 
Pipewire still has this problem. I switched up mine on Arch and I see 
the same thing, even running a talking login screen and then logging in 
as my normal user on a single-user system. Again, I only saw this when I 
switched that system to pipewire and installed the pipewire-pulse or 
pipewire-pulseaudio package, so it sounds like this may be what Mint is 
doing. It should be possible to resolve the issue using regular 
pulseaudio. If pulseaudio is already installed and this problem is still 
occurring, I'm not sure where to look next, unless you can set up a 
session wrapper script that will kill the user's running pulseaudio when 
that user logs out, which should happen automatically, but may not be 
happening early enough. I hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

