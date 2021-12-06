Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F80468FF6
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 06:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638766979;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AVJCspN2aggSL3QTve9cvwoWnw/72GAB7VNRrpx99Ig=;
	b=QpBSE+y7l/spZJG+fJjmit/WNnr7B+HrPHaGr79eMZagluVR+7uVKuqMXsBYFZCWSOu0Wv
	YGUyZ4r/jNzsbjqZmH7sC0gcWY11liv/R2HZ62ghF3tlej7xOAUemn1wysnJWx0x/i9Jgh
	1Of3eQJ7KjDwDAdyGzP4vEz3h1IH6xU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-577-itMKo2foMnCwAZF5x5sZ5Q-1; Mon, 06 Dec 2021 00:02:56 -0500
X-MC-Unique: itMKo2foMnCwAZF5x5sZ5Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A905835B47;
	Mon,  6 Dec 2021 05:02:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 714701B42C;
	Mon,  6 Dec 2021 05:02:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 267151809CB8;
	Mon,  6 Dec 2021 05:02:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B652TFm028671 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 00:02:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DFEC7401E3C; Mon,  6 Dec 2021 05:02:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC6C6401E25
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 05:02:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C13BD380670B
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 05:02:29 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-329-UIvgizV1NoyeTQv39CG7zQ-1; Mon, 06 Dec 2021 00:02:28 -0500
X-MC-Unique: UIvgizV1NoyeTQv39CG7zQ-1
Received: by mail-qk1-f175.google.com with SMTP id 193so10032365qkh.10
	for <blinux-list@redhat.com>; Sun, 05 Dec 2021 21:02:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=1vMl6Oo15dhDAXxMMtzpToPQ4qJx7nZR553JuLtf3DU=;
	b=RJK9zEjH/PhVZPkJVT6YdD1Fw9+w5SMp7IsrpoBmfAJHLqbsbb6J91vm7AAaWCTrZJ
	JKjTIZnbS2gx+2nAoK7WimkYhqh0yAmYKldjF0RmTvHO8DLHWn3qfhv0gq6nnnkL3R6Q
	XO+vgAr7nKlhfrM+d6kI1YRcwC1sCSmkY9wefwiGz3/vAFwImoLiT7lrCKvKFFfbIMI3
	RwrM+8sC7ElJ4YTRa1HKYmZzJlrNTzJAr6svag8CQDCa1/oct35zYAYRH9yQS/JiBQkP
	EOtrJZWltGya0N+wAnws90+nBZ9cfkrdlnadJTnK8eUgYy5EZETQYHlCYo54tD3FKYhW
	cwVg==
X-Gm-Message-State: AOAM531vSCumQxbzB9OYMVaY/dYW95MhVboGdbh4vwfEo/blaohNf1Tf
	LrVBH5+bht+uNSSRmJhmKvsLyk0tkLc=
X-Google-Smtp-Source: ABdhPJwFdfiJrG/JYcH0LNmUZ7xfkCFG6PiwiaW4r4O8O89Es4JypnValCdvmAGMj5A6inq5PCiNnQ==
X-Received: by 2002:a05:620a:d58:: with SMTP id
	o24mr29439034qkl.517.1638766947337; 
	Sun, 05 Dec 2021 21:02:27 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id
	l15sm7100906qtx.77.2021.12.05.21.02.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Dec 2021 21:02:27 -0800 (PST)
Message-ID: <9098b35b-4f3d-0455-2a46-472e3d924cab@gmail.com>
Date: Mon, 6 Dec 2021 00:02:26 -0500
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
In-Reply-To: <459ce7d5-11e4-8707-77f8-0a4c46bb8899@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

Here it just ... kinda ... works. It's not that great, but it is 
working. You will need to press f7 to enable the browsing cursor, but 
that should be all you need to do.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

