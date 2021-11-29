Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1C146239F
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:45:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638222317;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fzkZ2Gtj4nIO6vfost2mtb2IbvoTUGEVa7mwsI6NzrQ=;
	b=JbeiFoNI015rkYNWX/Ye+0Mr6YaGiwmccSz4LTctWlOFwv934dokfEYevtE/eGWrLZi9RR
	0ZXqxmIvZkM365q2Z78BE8tD8RgeJmiu7hYKApMhaOxvI+eK1Y6e0aZumJBI1+lGSk8sGR
	th8NXRbaMAUN252chYJV29XUQVIBRZE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-197-x_B-T-Q7PG6iHeHxk_zmQA-1; Mon, 29 Nov 2021 16:45:13 -0500
X-MC-Unique: x_B-T-Q7PG6iHeHxk_zmQA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C0BB10247A6;
	Mon, 29 Nov 2021 21:45:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CAD6E79451;
	Mon, 29 Nov 2021 21:45:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 666361809C89;
	Mon, 29 Nov 2021 21:45:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATLivSL010928 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:44:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AE9E5112131B; Mon, 29 Nov 2021 21:44:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E9011121319
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:44:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2A5280158D
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:44:53 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-233-DPBh1PgtO_aJFrmNMUYHOQ-1; Mon, 29 Nov 2021 16:44:51 -0500
X-MC-Unique: DPBh1PgtO_aJFrmNMUYHOQ-1
Received: by mail-wr1-f49.google.com with SMTP id u1so39790919wru.13
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 13:44:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=D8wafFjp32zILR5eRWtji+EAZACaoOUelyuBxKQ5eWA=;
	b=eyT27xawBFLm76oLfQBcZE2ZNSmXsRZaaNo4LwBAg7nGCJJ38Em+Pa6nKMkKt8T4s5
	ny3AzK8gBeuzS+n5DaTAuyVvEvLIDDSXyIAs+cx34Uj8C/lFS4HP+Z8hdS/h2lU5I5Wz
	N92vb616dxzBhG1Xm8vtlMEefMSseSHBkXBuyOj69bmVreaXbnrzm2H+OlKMwftXov6m
	Yw+R37y/Bv7jVD7CF7jcr22f2pohIqF/zwaMaoi4STBjQoQgd+2vEWVT8ly6xPT/+Lh2
	ninNwLRsuC/V6HW21/Pnsy1uU66UvYi5+QxY0jbIZKXV7QEsGMMi/ThNiupAQUU5ZHUr
	FY6g==
X-Gm-Message-State: AOAM530VzkrvTbOcV7d0O0f4l9RC97BNa+8pXopXaeb9LQYb/yfZqq4n
	JK9iMtQbu1zlydG4kRgfJL38xmacAdLBag==
X-Google-Smtp-Source: ABdhPJw+F0V0wOgnml6I9SahcQct1gm+//WlGDyjgfPokMvB51CbXLLEnu/hmIFpDDRLl1nSzj5ufQ==
X-Received: by 2002:adf:f80f:: with SMTP id s15mr36439517wrp.542.1638222289771;
	Mon, 29 Nov 2021 13:44:49 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	r8sm18691904wrz.43.2021.11.29.13.44.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 13:44:49 -0800 (PST)
Message-ID: <c9ee3ff2-1cd4-29c4-4a8f-0444becae477@gmail.com>
Date: Mon, 29 Nov 2021 21:45:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Pipewire and Orca and audio
To: blinux-list@redhat.com
References: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
	<08ca01d7e569$5cb7dfc0$16279f40$@gmail.com>
In-Reply-To: <08ca01d7e569$5cb7dfc0$16279f40$@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Not fedora related, but on Arch doing sudo pacman -S pipewire 
pipewire-pulse wireplumber pipewire-jack gets those packages installed, 
but even when starting them up (under qemu that is), doesn't get Orca 
talking, even after a syscontrol --user enable and syscontrol --user 
restart for the pipewire and pipewire-pulse packages. It's the same deal 
with pipewire-media-session as well. In other words, running into the 
same issue with a quick and dirty startx loaded Arch system, whereas iff 
I mask or remove the above packages and drop back to Pulseaudio, it 
works fine, and yes, Orca was set up in the configs to run correctly 
with pipewire, yet no speech or anything was happening until I went back 
to Pulse

On 11/29/21 21:37, Linux for blind general discussion wrote:
> Hi,
>
> Interesting.  I have a fresh install of Fedora mate and my install went
> without a hitch, but after doing an update to my system, I had speech at
> login, but not at the desktop.  On another machine with Fedora work-station,
> speech works fine.  I am wondering if pipewirer is the problem.
>
> Matthew
>
>
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Monday, November 29, 2021 6:45 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>; Linux for
> blind general discussion <blinux-list@redhat.com>
> Subject: Pipewire and Orca and audio
>
> So I'm convinced now Pipewire is doing something funky on
> qemu/Virtualbox. I've spun up a quick and dirty Arch system running Mate
> via startx. Pulse works fine but the moment I redo the install with
> Pipewire, Orca keels over.
>
> So is there anything special I need to do in order to get Pipewire to
> play nice? I did sudo pacman -S pipewire pipewire-pulse wireplumber and
> am trying to go with a Pipewire and Wireplumber setup. All other audio,
> like YT vids, works fine, Orca just comes out as a garbled mess, so it
> looks at least to me like Pulse works better on my system.
>
> Anyone else run into this with Arch or other distros using Pipewire and
> fiure out a solution? There's not much online really about it, just
> articles on oh it's a bug, or oh replace Pulse with Pipewire
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

