Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 177FC4695E0
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 13:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638794603;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bSijJ6GStoVxRwmkOtYNOVWeP8BhVpr2Y2D942L5qxU=;
	b=K8q5TuWEo8iXYF1gkKXCrLztlSAiHZK3Ib+NzqQa2MplH2ryQluzDZRi/O1Jc7IupVwCKg
	drrl1TNM3vv1eSlADy25ETO8zVdhTMLtkWoBQCyhQtuqGBMCqLIIDvYe+o7Uej7xHle192
	M3JLA/cJv0cMmZ63jM/rcj1dNwj4jvk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-281-SYujhP-cO56RyizHBx3M2A-1; Mon, 06 Dec 2021 07:43:19 -0500
X-MC-Unique: SYujhP-cO56RyizHBx3M2A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA93F83DD23;
	Mon,  6 Dec 2021 12:43:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D9E845D6D;
	Mon,  6 Dec 2021 12:43:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D7AF34BB7C;
	Mon,  6 Dec 2021 12:43:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B6Cgtc2012180 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 07:42:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9E4A0C15E74; Mon,  6 Dec 2021 12:42:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 99E72C15E72
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 12:42:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80BB01064E69
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 12:42:55 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-330-WwBAREGGMvWF9HIUp2BroQ-1; Mon, 06 Dec 2021 07:42:53 -0500
X-MC-Unique: WwBAREGGMvWF9HIUp2BroQ-1
Received: by mail-qt1-f182.google.com with SMTP id p19so10541279qtw.12
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 04:42:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=w/kXHb8CNdaB24MqVUCd9Uo05Ro+yo73prf/pH+t61A=;
	b=vNqJX7RQYPX7qaHjH6fqRGe3PQ20Uv61ibaUubMJBVo4aRgxm8ugPTIqW7UcaSl+bA
	yjA740IKNccNYcjljop8hEBMCmistqFu6xZb4YoRfaTh9WBy+kf4th4Dduulrvfkjr4N
	odWINxRHWaJnnCuba+J+T51bQgEf+RfSTCXBLaS2mHoQzMHPZjKcY62WvU53ucwmF1H+
	/rk2r+NJCSIHvAPZRJG2TVIQu/8RJHZb6nRbSIZJ2PxZ+ov0LRzr87z9/nBOCjHMv2bJ
	W31u059AdBqytpn1GKasUOYa587/mo+xeqR0tSgnuQMBbdPXzbTLfhj2useH1G4B3Hjj
	h4TQ==
X-Gm-Message-State: AOAM533RjQWa0C01EVLLUajRLMDniAAoyhPYuWs1DwR8HNpI6hjCJDjv
	zcPxVzndp/VOA5LQX7T/+Vg7WahCQFg=
X-Google-Smtp-Source: ABdhPJy5+EOK+8BV5Fhm8a3u3CuCCcEQVzoq4VzcRGdTghTJyWwahGtNxT5ooa7XC/JyppCj3wM0HQ==
X-Received: by 2002:a05:622a:1790:: with SMTP id
	s16mr38762162qtk.634.1638794573318; 
	Mon, 06 Dec 2021 04:42:53 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id
	l22sm2529880qki.135.2021.12.06.04.42.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 06 Dec 2021 04:42:53 -0800 (PST)
Message-ID: <e9503aaa-86d5-e5fa-0abf-dc1a951ae425@gmail.com>
Date: Mon, 6 Dec 2021 07:42:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
In-Reply-To: <CAPo=n--jv0xUAfGGYb3y16Rc4JkZphD7ySapij_dBZgWnY=ywQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I think you're pretty much spot on about webkit-gtk from what I'm seeing 
here. I was told by Evolution developers that webkit-gtk was responsible 
for random paragraphs not being spoken when reading email, so it's 
logical that it may have trouble browsing as well.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

