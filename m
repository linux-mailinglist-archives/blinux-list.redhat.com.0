Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CFD46992D
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 15:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638801574;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OVQG5ht768YNf4T66gL6AdRgV4WLueJRATSvwLYc6ho=;
	b=KHeOPNvB5EiHRR/umkBrmiPtTpNq73OFJw9GInupgup13AJi9x5OQYE4ujSsGxwM6RJNCd
	wvsVJAm0Qzpv/XX8FROCq9NxHGpjlhuLReSMxNuRN2xB99j5PPllPVCTFYD1fM2M/JOzDv
	ZD5HDq6+qFe1UESESTl2QkbjnZnXL9s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-156-B4dgjwe3MK6tgYGGpDhiDw-1; Mon, 06 Dec 2021 09:39:31 -0500
X-MC-Unique: B4dgjwe3MK6tgYGGpDhiDw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8410464083;
	Mon,  6 Dec 2021 14:39:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECCA445D6C;
	Mon,  6 Dec 2021 14:39:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5CAF24BB7C;
	Mon,  6 Dec 2021 14:39:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B6EdBB5023870 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 09:39:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4271E2026D67; Mon,  6 Dec 2021 14:39:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E3392026D69
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 14:39:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6ACBF1D65EE1
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 14:39:08 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-491-xL-8F0lsNaar0xkELDy5Zw-1; Mon, 06 Dec 2021 09:39:06 -0500
X-MC-Unique: xL-8F0lsNaar0xkELDy5Zw-1
Received: by mail-wm1-f42.google.com with SMTP id
	i8-20020a7bc948000000b0030db7b70b6bso10580219wml.1
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 06:39:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=TSbnd/0zjy8MxjT/8c8D0QqXtKxV+tnSOPuBzbPe4OA=;
	b=NSbyBXPaWcFIoqbNuGwbk/mPy4A3PTDFQZlGUOcQpY4a3/3ZmqoEDj0bljNcsD6981
	yDNLMPXoqXtMntbx4VKl2cyJGacDJysTYx5Vvc+p/zdmm//m6HfcAWwF7mL0Rjj6/swr
	ArfODPWGulvBY4nrlqzl6dlCLms0shJLtqE7+GXaELg1lETGeoD4ZdzK3bJMokL8J1vA
	ReZN7o6PUVtIRRJpOKXtD+wOJ7kaXujQnbJJVeDKPZFJUr3XU8IEuaqgnFJAKBJXAuMz
	f10h9UtqFVBCoX9ppiCfnyQGDOVF9KUqYHprvfuoeG/+a9F6l8jeJOUwCQrblpyN7vRa
	KgrQ==
X-Gm-Message-State: AOAM533iOs8czYSZRyOpuUWwHAkBowsfNqX2pp71O32F3FQhCZ7nEPvK
	uXofWcy2AQdZkmI1BVLRlAK6mdXeska+yA==
X-Google-Smtp-Source: ABdhPJyo1ol5cpB1DBLVEryB+O7c469Ru4aoo+xj/oJUnrMpa90I0XzX6K8/m9R7YXAHB0DmZXxUaw==
X-Received: by 2002:a1c:f60a:: with SMTP id w10mr39811163wmc.53.1638801545336; 
	Mon, 06 Dec 2021 06:39:05 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id x4sm13402612wmi.3.2021.12.06.06.39.04
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 06 Dec 2021 06:39:04 -0800 (PST)
Message-ID: <7f515825-d9ca-c954-924a-945902c4e68a@gmail.com>
Date: Mon, 6 Dec 2021 14:39:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: blinux-list@redhat.com
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
	<b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
	<47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
	<alpine.NEB.2.23.451.2112051228080.13531@panix1.panix.com>
	<88b763bc-c035-735f-0efe-dea5f26182d6@gmail.com>
	<459ce7d5-11e4-8707-77f8-0a4c46bb8899@gmail.com>
	<9098b35b-4f3d-0455-2a46-472e3d924cab@gmail.com>
	<CAPo=n--jv0xUAfGGYb3y16Rc4JkZphD7ySapij_dBZgWnY=ywQ@mail.gmail.com>
	<e9503aaa-86d5-e5fa-0abf-dc1a951ae425@gmail.com>
In-Reply-To: <e9503aaa-86d5-e5fa-0abf-dc1a951ae425@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

My only gripe with Seamonkey mail is there's no reply to list option, 
and it's a hassle to set Gmail up as far as the servers go. Is there an 
easier way of importing Gmail accounts to Seamonkey mail I'm not aware 
of aside from first installing THunderbird and importing from there?

I've been poking at lightweight browsers but most of the known ones 
don't work with Orca, talking about stuff like qtbrowser and Falcon, 
things that always come up on lists of lightweight browsers, along with 
Gnome-Web and Midori. Seamonkey never shows up on those lists unfortunately.



On 12/6/21 12:42, Linux for blind general discussion wrote:
> I think you're pretty much spot on about webkit-gtk from what I'm 
> seeing here. I was told by Evolution developers that webkit-gtk was 
> responsible for random paragraphs not being spoken when reading email, 
> so it's logical that it may have trouble browsing as well.
>
> ~Kyle
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

