Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AF446CFA8
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 10:04:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638954255;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LryrBcd5QBCEj6QRgnGDiJgZB4A/KyA8jlEsOD3NPgQ=;
	b=ZKYyax9bUwSgwUtHnx0Yb6539qubaHuWcSMSvfGEVknXsUxaiJtSD3UdxO23JRYdPbSK9l
	Sl37C/yEcuVidc+SsBYJjtt7wZPVoHDm9CXxswPb8RyWwtar50mQUkDiWoHmAFIV6gYMbY
	1CdtUFgm2JK1QfOJhBhIBUrnbXiHp/w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-9gDWL74fNgqVwOEe5pVBuw-1; Wed, 08 Dec 2021 04:04:14 -0500
X-MC-Unique: 9gDWL74fNgqVwOEe5pVBuw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8AA6100CCC0;
	Wed,  8 Dec 2021 09:04:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C02E960657;
	Wed,  8 Dec 2021 09:04:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EFDEC1809CB8;
	Wed,  8 Dec 2021 09:04:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B893pSj005702 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 04:03:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A80944010FDD; Wed,  8 Dec 2021 09:03:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2F2340149B1
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 09:03:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A8DD3D2CE84
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 09:03:51 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-15-gP0uc2LmOpC9rPdP8EQFvQ-1; Wed, 08 Dec 2021 04:03:49 -0500
X-MC-Unique: gP0uc2LmOpC9rPdP8EQFvQ-1
Received: by mail-wr1-f41.google.com with SMTP id o13so2756491wrs.12
	for <blinux-list@redhat.com>; Wed, 08 Dec 2021 01:03:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=QA7ngWn0ufpV3LQQ8u6dneNFRNYJeFJOBqmCzCXZM3E=;
	b=A80Jqg0BJeZiR+FjbZPRSH9v3RfJMKdw7/xC7AfFD+WRCHOQbkExP4u7WQdeiPvBz0
	aomhq7kMHy8okQ85ckZolMluiKrEQrbP+P8r/Md0GWTy3n7aUISJC38o+SqpnlLRc+V8
	JX9N+MPBYi0TUpa4DgHzdS8MDrluGGIui3LtGlUrZjojO5+AxMiE8Mk4wSnhjfGOsXXY
	bVL4O0emj1/xicqSDNUvMjanBdhjLvPcAOxqWrZ8gprRZM8Y1KlK4SrLa+1vQ0jZzSJQ
	aAsddyVaRu9VC+XZr2N5lfkAcjQKijTywLD0/38/irPcmLVWgQEcryYEwlKWUnKY2Ap6
	Rd3Q==
X-Gm-Message-State: AOAM5305siziCaV5mFpABMhrxgh4euB5JgyZ9MaqwOjdZ1iDVUOT9PUh
	lFS+rLcYZ0lDcrUAorZOpLezhj4qwZ8aVV0u
X-Google-Smtp-Source: ABdhPJwj+ji1IIUi3F0PolOv1TzEwRqjKlm0i82Y+w3v2VaJIiCNML0lPEUPnT/ilSC+HBS4yGcohw==
X-Received: by 2002:adf:e391:: with SMTP id e17mr57161183wrm.613.1638954228463;
	Wed, 08 Dec 2021 01:03:48 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id 38sm2309889wrc.1.2021.12.08.01.03.47
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 08 Dec 2021 01:03:48 -0800 (PST)
Message-ID: <5235dc4b-a473-d903-4cf4-d849d8b1aab3@gmail.com>
Date: Wed, 8 Dec 2021 09:04:12 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Other lightweight WM?
To: blinux-list@redhat.com
References: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
	<CAO2sX30eL2BGnmLU2JqWS8epCwW+gTP2cG5nZ2YHM=0zJCXSkQ@mail.gmail.com>
	<e6a251f6-5a33-b88c-6bc4-b26dabcc4d9d@gmail.com>
	<CAO2sX32V3Qw88EgrBFWTTr7WaVkusPC6bfgYTqyfwk-jbw0ioQ@mail.gmail.com>
In-Reply-To: <CAO2sX32V3Qw88EgrBFWTTr7WaVkusPC6bfgYTqyfwk-jbw0ioQ@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

JWM looks interesting, but I'm not aware of anything like Strychnine to 
get it to play nice with Orca....unless it already does out of the box 
and I'm missing that?

On 12/7/21 23:47, Linux for blind general discussion wrote:
> According to Aptitude, jwm is 351k uncompressed while flwm is only
> 124k. Flwm also has fewer dependencies, though admittedly, most of
> jwm's dependencies are already installed on my system(probably
> depended on by xserver-xorg-core, Firefox-esr, or Orca either directly
> or indirectly), though switching to jwm would require me to install a
> terminal emulator.
>
> And ctrl+Q to quit Firefox works in flwm, but I'm pretty sure that's
> an application level hotkey, not a window manager level hotkey. Not
> that I ever use it deliberately(my preferred means of closing Firefox
> is using ctrl+w on the last tab, I mainly use ctrl+delete for getting
> a count of open tabs via the You have n tabs open are you sure you
> want to quit dialog it triggers when I have multiple tabs open, which
> ctrl+q use to bypass.
>
> No clue on flwm's RAM usage, but considering that Firefox and Orca are
> a behemoth and a leviathan respectively, it's probably insignificant
> by comparison... I'll admit my system does slow down sometimes if I
> try loading pages in Firefox that are either really long or lousy with
> excessive amounts of JavaScript, but then again, my system only has
> 4GB of Ram and all of my internal drives are platter-based.
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

