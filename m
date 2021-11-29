Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DB5462406
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 23:11:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638223910;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aVOb0irGM4RfSfBgJovNRLh+JbeXc2LFlKkPajirV9Q=;
	b=ZmbelLnSq/E7g4O89AJ87Ps14nN9NZEgkBocNNlPZQODjFVSXV39FQB8omCOccpkcpHvv1
	/9DcLG3YcBTm0hE9FSjJpNgpqc4f0nnprhFmEaLr6OOo8xKZITRHYgYQcsHbXKNJ3XYbm/
	lv0IkJv5auRE5RfWDO/YGKbpW80GrvM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-478-YP-kRb8kOPS0IvzM_pX81w-1; Mon, 29 Nov 2021 17:11:46 -0500
X-MC-Unique: YP-kRb8kOPS0IvzM_pX81w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4907C64092;
	Mon, 29 Nov 2021 22:11:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 312C85C22B;
	Mon, 29 Nov 2021 22:11:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3CD081809C81;
	Mon, 29 Nov 2021 22:11:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATM9Qcu012653 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 17:09:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A30AD2166B26; Mon, 29 Nov 2021 22:09:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C41B2166B2F
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:09:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76E3785A5BE
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:09:23 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-422-JYIRqNUiNqSBwapmT4V3tQ-1; Mon, 29 Nov 2021 17:09:21 -0500
X-MC-Unique: JYIRqNUiNqSBwapmT4V3tQ-1
Received: by mail-qv1-f42.google.com with SMTP id jo22so15976948qvb.13
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 14:09:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=JBrJfLrsXmrpHLxtd8Vgt7WYmgEzerRXohxHyw3CnsU=;
	b=TSaWxTZsn+WHauMi2YbnmRLBWAXoNefRDRf4PQLcG8t2N8Ruf8eGrs5F5SK9spdPq8
	YSmMqCl0oTkRk/Fwu421SQSDJ0xEDFe9WLlRsLo43imS1jkefsQtVidsSa7EoykncoAs
	wd4h7Ezu9yq8NQJZskSNajeYcutGPWubYRWRu2VvYGXRj+XqiaA8zPC4bn6/AImISjcW
	IliMfsRJ0RYZ5mn2KoMp21HJK9tYXq0Jzumk4iIUVk41oCUZdvWsPyG6O8huB7eoYJ2P
	eAN7ksl3Z2mh2H1MhS4TU5/wsYp4KAaa3TXzQCocHUARunDpYoiw199xy9L1QgRVx1ga
	JOGw==
X-Gm-Message-State: AOAM5335U+XymOb5h20kkzQGsYY3r7GJS8Is9VvdXlkTEOEZPRcZ8R5c
	8bDZPH5fi8SdFKcqANe2fqqy1XWKQsI=
X-Google-Smtp-Source: ABdhPJy+WK5dqs+FKQ3EPpagKY9TpT4ZpyrIxEjoQDpv4YoEOC5SGu3ssbximRVBiP1FllsTvAa3FQ==
X-Received: by 2002:a05:6214:e65:: with SMTP id
	jz5mr34132731qvb.116.1638223761255; 
	Mon, 29 Nov 2021 14:09:21 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id w9sm9124039qko.71.2021.11.29.14.09.20
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 14:09:21 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
Message-ID: <1cdf07ee-291f-9616-915f-03f757ca649d@gmail.com>
Date: Mon, 29 Nov 2021 17:09:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Wow I didn't know about Micro. Just used it for about 30 seconds, and it's 
already far better than any other terminal editor I've ever tried. Just gotta 
get rid of the numbers it's chattering every time I move the cursor up or down. 
I'm definitely putting this one on my servers.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

