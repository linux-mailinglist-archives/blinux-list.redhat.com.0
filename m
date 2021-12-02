Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E187F466D90
	for <lists+blinux-list@lfdr.de>; Fri,  3 Dec 2021 00:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638487221;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bPHuY0J04x45H+//iWKVaim2I9l9KpGuEc6F6v5a10Q=;
	b=NMIveYtuU+/Qly7TGHyuiwLuq0ZoKtdr3vqiy9ZjpPVnKkXYbEzHXrSdCZMQVspeFJolDI
	n+e31h0bZFTtdVugkaAmkELPwgGqhMIZikzz7DUoFvhAVd8XrFkb14PfM9FgehlfWz6oKX
	k6HoG6yEEeDD1fyPQ7HsimvWWUqfD/A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-322-jySzai3BOOuYcxl6L3z9Mw-1; Thu, 02 Dec 2021 18:20:01 -0500
X-MC-Unique: jySzai3BOOuYcxl6L3z9Mw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D31B61006AA1;
	Thu,  2 Dec 2021 23:19:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4D5119811;
	Thu,  2 Dec 2021 23:19:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 505131809C81;
	Thu,  2 Dec 2021 23:19:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2NJlkM018368 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 18:19:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1A3D4492C3B; Thu,  2 Dec 2021 23:19:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 159B8492C38
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:19:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFB108001EA
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:19:46 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-248-rBIN_sS_N4aDVkcEaJswtA-1; Thu, 02 Dec 2021 18:19:45 -0500
X-MC-Unique: rBIN_sS_N4aDVkcEaJswtA-1
Received: by mail-pj1-f49.google.com with SMTP id
	p18-20020a17090ad31200b001a78bb52876so3710567pju.3
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 15:19:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=PrecCGN8YRtcU5j7HeycJFq/cXaIPq1k8qmNevKL0y0=;
	b=ZUYk93Cod5FcAd+T1EfRIKrIds2bxU4LRtvzpivBNigYTUsYbiWAwkWvb/gPuzrqog
	hk/oEYVXgkAjeLParB1seeVI4ItZZgqmm7txZIkfVRbjUI4Se7Ef6pFObdV0ubBpuvw/
	FkI+PhfNg8lBgai8XjZzpgC7WAE5FaincFduqB7hdwBJJuLmnRPMkBlSgqTimz8Bkdm8
	oukHTi8RzRqBubxzAVptpp9UXzltGnjA3BNg1Z+rAI85vyobUTwEQKqt92SYzQBEqqlP
	Lh8Cj0JG9PBOUHARaepBbjAl2dKmJUp4Po1bzEoxu6zMX31Y0CwI/PlpRYUAzZKnSM5n
	8z4w==
X-Gm-Message-State: AOAM530/uxSLdcjMbpUDSgeOxek8W1hmA2UhLkIRu1jX5+m3po9GaUbu
	RDOimi7auRMhb/X9Po6tFv0Upnc901Izp4BfI4cp3NoJ
X-Google-Smtp-Source: ABdhPJy5Q5LYWwa5nxXWNsCaR6ORkmIWcerqIJnzDvW5JdFn0Z9tNArBiHe0Ya3ntIZ/5MfawpiGr/N4hgzuMWOKabg=
X-Received: by 2002:a17:902:ce8c:b0:141:d218:954 with SMTP id
	f12-20020a170902ce8c00b00141d2180954mr18262302plg.1.1638487184020;
	Thu, 02 Dec 2021 15:19:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:518:0:0:0:0 with HTTP; Thu, 2 Dec 2021 15:19:43
	-0800 (PST)
In-Reply-To: <alpine.NEB.2.23.451.2112021754500.1114@panix1.panix.com>
References: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
	<CAM+Q2c7ZodTV6ZbYN2tFsiQ_iG6NzfcdoC77VWytuN5sePmJMA@mail.gmail.com>
	<alpine.NEB.2.23.451.2112021754500.1114@panix1.panix.com>
Date: Thu, 2 Dec 2021 16:19:43 -0700
Message-ID: <CAM+Q2c4=PEy_XE12cGOOWqQKonqO5rBEvxK_i9eaBoCv6+o_QA@mail.gmail.com>
Subject: Re: Help booting live disk
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

He says it's a new machine.

On 12/2/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Depending on the date of the bios on a machine booting from usb sticks is
> possible on the newer hardware and not supported on the older hardware.
> I've never heard of a flash bios update adding this support but it may be
> possible.  My amd machine has an outdated bios on it but even with that it
> boots from usb sticks.  The older computer I had built in 2008 was too old
> for usb stick booting to work.
>
>
> On Thu, 2 Dec 2021, Linux for blind general discussion wrote:
>
>> Rob, you're either going to have to go into bios to change some
>> settings in order to boot from a USB stick (for which you'll need
>> sighted assistance), or, sometimes, if you're lucky, you can press a
>> key like escape as the machine is starting to go into a boot menu
>> (that doesn't speak) from which you can select your desired boot
>> drive. You'll need to consult your computer's manual to see if in fact
>> that facility exists. That too is problematic, because sometimes you
>> get it right and others you don't. This is not standardized at all, so
>> you'll really need to consult your computer's manual on how to
>> accomplish this.
>>
>> On 12/2/21, Linux for blind general discussion <blinux-list@redhat.com>
>> wrote:
>> > Hi,
>> > I was so excited to receive my new Laptop.
>> > But I can?t get it to boot from USB, or from the external USB DVD
>> > drive.
>> > It always boot to Windows.
>> > Is there anything I can do, or do I need sighted help?
>> > Here are the specs.
>> > Gateway 14.1" Ultra Slim Notebook,
>> > FHD, Intel Core i5-1135G7, Quad Core,
>> > 16GB RAM, 512GB SSD, Tuned by THX Audio,
>> >  Fingerprint Scanner, 1.0MP Webcam, HDMI, Cortana, Windows 10 Home
>> >
>> > Thanks,
>> > Rob
>> >
>> >
>> > _______________________________________________
>> > Blinux-list mailing list
>> > Blinux-list@redhat.com
>> > https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
>> --
>> Subscribe to a WordPress for Newbies Mailing List by sending a message
>> to:
>> wp4newbs-request@freelists.org with 'subscribe' in the Subject field OR
>> by
>> visiting the list page at http://www.freelists.org/list/wp4newbs
>> & check out my sites at www.brightstarsweb.com &
>> www.mysitesbeenhacked.com
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>


-- 
Subscribe to a WordPress for Newbies Mailing List by sending a message to:
wp4newbs-request@freelists.org with 'subscribe' in the Subject field OR by
visiting the list page at http://www.freelists.org/list/wp4newbs
& check out my sites at www.brightstarsweb.com & www.mysitesbeenhacked.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

