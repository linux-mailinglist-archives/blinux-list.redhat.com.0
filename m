Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB2146D939
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 18:06:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638983198;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tLNWJhOCpOJ0gGjTDFRWGywZ/jsVW6WP74asfPUY+LI=;
	b=BhFMV84Vy9Zd5bVYSR+lS1XYxZizpZQaqtP5l77VO1tjZdDXHvj4kurTF4RYTCz5Sd7E9k
	n7UYv7jrOYg4L0L3f6TaS9ygb4Vsu69q7bwel6ntgGafYJs85ZlPCAtSThJXCA2yN0Mia1
	eXnBPOHBKoXwc2KykN+vWxaoXvx86IE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-470-V7HeZUhGNxi6bJBnNO6qDQ-1; Wed, 08 Dec 2021 12:06:35 -0500
X-MC-Unique: V7HeZUhGNxi6bJBnNO6qDQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9096A363A5;
	Wed,  8 Dec 2021 17:06:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 012CF10016F4;
	Wed,  8 Dec 2021 17:06:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44A094BB7C;
	Wed,  8 Dec 2021 17:06:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8H6GgJ008943 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 12:06:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 51449C08094; Wed,  8 Dec 2021 17:06:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C982C19145
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 17:06:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 335CC2BD19F6
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 17:06:16 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-290-WjoH5SefMWmShZJik-0LyA-1; Wed, 08 Dec 2021 12:06:14 -0500
X-MC-Unique: WjoH5SefMWmShZJik-0LyA-1
Received: by mail-wr1-f54.google.com with SMTP id q3so5239217wru.5
	for <blinux-list@redhat.com>; Wed, 08 Dec 2021 09:06:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=jiuth3DgOTkX/W6qntk2vjdsocqxZ6PxKxXNbr2skKk=;
	b=llVapVB9KYWFdYdzoXZUcskuAg6TYPvLDB/+eFS8Q+TRFMhFegf3dgasBCXtIjy/tN
	rjH7FaU8WlBPP1Az3lr3EBQXDCUuy01GFkcZbwYobfV3VAEsTrN7PLLiqNpRSviicY9u
	N2jAxOwNOlalCmnfO87SJQcZ3hiw5cV56SiCL12hxsEpFRuwzGJ8tqkRhkK1s945RA6l
	ZSHRWJ9qQNOR/hnUFLElRFam8XEIwiyb0+W9xUJqGOKva+sXvMukpf6S8coqzBNHgPu3
	5iFVWaJzpXx7cuOkORX2Wr62KIh2rIEVmTZbsAsOLuw8b8g2JIHnp8e2yM16UGBcJC0x
	A3pg==
X-Gm-Message-State: AOAM5323JgiUlTLwrRhwcFStpOtSBi/FyKzw8M7BrOIvpxyQ0IwM6Sus
	tSixTVfeEKpz1OUytCiG/TyOgJ9ElG1HnBQx
X-Google-Smtp-Source: ABdhPJwL0Ntf90rqu4TJ67Pzv2fZqC84MhGqqWToEq3t21WVF/WxsVLpIFD7KqbfgUTSojbdJT+zqg==
X-Received: by 2002:a05:6000:10c7:: with SMTP id
	b7mr60939977wrx.160.1638983173015; 
	Wed, 08 Dec 2021 09:06:13 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id
	p12sm3273325wro.33.2021.12.08.09.06.11 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 08 Dec 2021 09:06:12 -0800 (PST)
Message-ID: <c4c57a82-3fa1-71f3-ac32-6d5dfdc02887@gmail.com>
Date: Wed, 8 Dec 2021 17:06:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Other lightweight WM?
To: blinux-list@redhat.com
References: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
	<CAO2sX30eL2BGnmLU2JqWS8epCwW+gTP2cG5nZ2YHM=0zJCXSkQ@mail.gmail.com>
	<e6a251f6-5a33-b88c-6bc4-b26dabcc4d9d@gmail.com>
	<CAO2sX32V3Qw88EgrBFWTTr7WaVkusPC6bfgYTqyfwk-jbw0ioQ@mail.gmail.com>
	<5235dc4b-a473-d903-4cf4-d849d8b1aab3@gmail.com>
	<2c3a935e-00dc-598c-062d-d478fd26b54f@gmail.com>
In-Reply-To: <2c3a935e-00dc-598c-062d-d478fd26b54f@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It does, which is good but I'm wondering if there's anything like dmenu 
that's Orca-friendly or not? I'd go with Brisk but that doesn't much 
like my setup and only seems to work in very very specific situations sadly

On 12/8/21 13:09, Linux for blind general discussion wrote:
> Jwm and flwm are only window managers. You need a menu or desktop 
> application to be used as a launcher, which is part of what Strychnine 
> provides. The benefit of Ratpoison over window managers like flwm or 
> jwm seems to be the programmable key shortcuts that can launch 
> applications.
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

