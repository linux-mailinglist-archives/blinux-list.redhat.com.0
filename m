Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CC645928F
	for <lists+blinux-list@lfdr.de>; Mon, 22 Nov 2021 17:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637596843;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1sM/WAJxWKWy5mT5Uoh5pW2MD5Zinzthidqke1I41OA=;
	b=VcgvmWe0Ut+BCPNiit1s4LuYp8aG+Tlr66ULOP44zPs+RlmODX0ubqUgbEVRC5TQKmRIOf
	65/BBHOjD25W3YZFtRcdmBZyqE3BRgqf2gBUORBVLKJ+1iidseN42EY1o258xDG2IjaTrw
	k4X926lKeoLMopzgHQT2Arw9YnlVc5g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-142-CzXLyaeUOminZ02TX5_H-w-1; Mon, 22 Nov 2021 11:00:37 -0500
X-MC-Unique: CzXLyaeUOminZ02TX5_H-w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8310C101F7A5;
	Mon, 22 Nov 2021 16:00:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 03CF55D6BA;
	Mon, 22 Nov 2021 16:00:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AB3DF1832E84;
	Mon, 22 Nov 2021 16:00:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AMG0Qnq022955 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Nov 2021 11:00:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 36FBC2024CB8; Mon, 22 Nov 2021 16:00:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CA562026D6B
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 16:00:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28379106655E
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 16:00:21 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-242-TKBqgyDLOaq1OtCwJKG1AA-1; Mon, 22 Nov 2021 11:00:10 -0500
X-MC-Unique: TKBqgyDLOaq1OtCwJKG1AA-1
Received: by mail-wm1-f41.google.com with SMTP id
	77-20020a1c0450000000b0033123de3425so17270162wme.0
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 08:00:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=GcF4oQzwURb8XjrzLH3i5Q+P13oHa+/cTaEh2fLl79o=;
	b=4gi6gCtfI6NL4FN2NFkmWfN7PT7L/ycA8yrrOeVmn/MK493bJ8HaXHEcMXIitfozXH
	JsRroelnz6ZXAzpnq8VBd3VB3Z+8EbfqmmG1HMNSBuhyz4cSuTNEbfKRrxd1LpVceYbd
	X213+OBm3o2RJ9i1EtHjUn+t9kW9UVlJwnww2LpJIXym3DJ6FvAMsrX4tFuQCYGcIX7p
	gOwnv8cKQ7nEeIUhui65k2kCInO0ybnEOEUlodieH5PqzinzzrJ5IDLsmrDssOL2ZEo5
	ZC0456evfBnH0N+TMJ6seoZjLyvntpEvhjQ7JnyBQMKbfhJBYwvmfJ+eJWkTKSk2qoYx
	/w4Q==
X-Gm-Message-State: AOAM532z2A37J3J4y6uXOf931Ut/JntBACzqBWaZJ30EAbfY68EA9C1h
	9U7TmUo7S2yTiUPx1V6Wpz8PTydonxio0w==
X-Google-Smtp-Source: ABdhPJzVuim2jb6K+q6ANQWoJUTptQaB/dlAPO7f0sVtM/JdINPPnFYHViZgO1MSUVrPF8CSvnas6w==
X-Received: by 2002:a05:600c:154f:: with SMTP id
	f15mr30889308wmg.86.1637596808868; 
	Mon, 22 Nov 2021 08:00:08 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	u15sm11411812wmq.13.2021.11.22.08.00.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 22 Nov 2021 08:00:08 -0800 (PST)
Message-ID: <b179062f-1d63-293f-745e-11b11c1e511f@gmail.com>
Date: Mon, 22 Nov 2021 16:00:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
In-Reply-To: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

There's one that's CLI based that springs to mine


yt-dlp

As for GUI based, not sure at all, all the ones I've run across are CLI 
but work very well. IIRC the one you mentioned uses Youtube-DL. You want 
something that uses yt-dlp since youtube-dl hasn't been updated for a 
long, long time

On 11/22/21 15:50, Linux for blind general discussion wrote:
> Hello friends,
>
> I am wondering if there are good applications for downloading from 
> youtube that works well with linux! I am looking for something similar 
> to Ponte's media downloader which works well with windows screen 
> readers. Is there such an app?
>
> The second application I am hoping to find is a good weather app. I 
> tried to the weather on the terminal and did not like it at all. So, I 
> am hoping to find a better alternative that works on the gui.
>
> Cheers,
>
> Ibrahim
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

