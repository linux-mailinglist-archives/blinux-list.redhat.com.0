Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D87E7468C87
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 19:08:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638727738;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YHL+osuy9Rt8+yccixQlzr6h/5aBEhSJonkxtqs9vf4=;
	b=jJ6vE7TFMH2MPmr9XdEIF1K6ZltgTcXj0cDpOCFBus6PHrK/LoKNvnn81SbZ1r3QbZGW5J
	F11OYuzgk2mInT7FwYFt7JEi3Bl8ym/f3lU7LwOQKDw16MVbwL4VvKcKxtgQGxfYAoDJC6
	OFBbwTtLAgm6MP5cq5nq1jcrtQJBG+k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-88-O8mTyp3bMgKr0sna0clByg-1; Sun, 05 Dec 2021 13:08:55 -0500
X-MC-Unique: O8mTyp3bMgKr0sna0clByg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD74C1006AA1;
	Sun,  5 Dec 2021 18:08:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 104225C1C5;
	Sun,  5 Dec 2021 18:08:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E0974BB7B;
	Sun,  5 Dec 2021 18:08:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5I4Ps2014157 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 13:04:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EC5A92026D69; Sun,  5 Dec 2021 18:04:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7FFD2026D67
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 18:04:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E57B78027FB
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 18:04:21 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-449-yoH9uWStOc6UdTm_1mTbAw-1; Sun, 05 Dec 2021 13:04:20 -0500
X-MC-Unique: yoH9uWStOc6UdTm_1mTbAw-1
Received: by mail-qt1-f170.google.com with SMTP id z9so8758225qtj.9
	for <blinux-list@redhat.com>; Sun, 05 Dec 2021 10:04:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=HB2OYFveWEmRWfGIGzWgjmtzOCIU8xaysXBEW7qmoyk=;
	b=5U2xp5GjVzNAMvO/lDDNQjCDvBhguQYfKX193VkKpKmxnHmrFOMk0T1eOVw8YENmb+
	RFCtGSOEWV0BUQEmaS926EurxFUHZ6NnAoRUOAepJ2PmSUrX+VqGWXZl52lasfUNG0zX
	XbG2fCgwIReo9EDfSWejOeyXf6zRpCxkbhvT2u+RHMMqCSa6mZHC/9V5U+NNTMMfRMbI
	PZefu3WoUseec+5L7gEDbfcaY6kkHuP3yNC757oCEwZCBrfiJLX10Yf8ONmJN2iMfwiK
	ZybDxaC+y1rTMsojDtprQQlr65p0CXY+F4hZezLo23ZU8sWDFlVxc1v/Ja6yVOuOtFqd
	xmmQ==
X-Gm-Message-State: AOAM5314B1Id0MX1hj9x6qSTXH1DRavrAZ/wmVGTbmn/YJ9HYWTtL2wJ
	ehTsXu07rb2hzzfmyEG6hBf9SNW7JkA=
X-Google-Smtp-Source: ABdhPJz7NRKeHiC0QqHK1D2h1Yyc82BrvV+I49epDxSpkDmhbw/3ixnF8bH5GuQ2mDpAr2ZihhgxYg==
X-Received: by 2002:ac8:5f4a:: with SMTP id y10mr33388707qta.139.1638727459511;
	Sun, 05 Dec 2021 10:04:19 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id s7sm6536132qta.31.2021.12.05.10.04.18
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Dec 2021 10:04:19 -0800 (PST)
Message-ID: <88b763bc-c035-735f-0efe-dea5f26182d6@gmail.com>
Date: Sun, 5 Dec 2021 13:04:18 -0500
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
In-Reply-To: <alpine.NEB.2.23.451.2112051228080.13531@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RGlsbG8gZ2l2ZXMgbWUgbm8gc3BlZWNoIGF0IGFsbCBoZXJlLCBhbmQgZXZlbiB0YWIgc2F5cyBu
b3RoaW5nLiBBcyBJIApyZWNhbGwsIEkndmUgdHJpZWQgZGlsbG8gc2V2ZXJhbCB0aW1lcyBvbiB2
YXJpb3VzIGRpc3RyaWJ1dGlvbnMsIGFuZCBhdCAKbm8gdGltZSBoYXZlIEkgYmVlbiBhYmxlIHRv
IGdldCBpdCBzcGVha2luZy4gT24gdGhlIG90aGVyIGhhbmQsIEkgZG8gCnN0aWxsIHNlZW0gdG8g
aGF2ZSBmYWlybHkgZ29vZCBsdWNrIHdpdGggTWlkb3JpLCB3aGljaCBpcyBhYm91dCB0aGUgCmZh
c3Rlc3QgYW5kIG1vc3QgbGlnaHR3ZWlnaHQgYnJvd3NlciB0aGF0IHdvcmtzIHdpdGggT3JjYSB0
aGF0IEkga25vdy4gCkl0IHNlZW1zIHRvIGhhdmUgc29tZSBnbGl0Y2hlcywgZXNwZWNpYWxseSBw
bGFjZXMgd2hlcmUgaXQgZ2V0cyBzdHVjaywgCmJ1dCBpdCBkb2VzIG1vc3RseSB3b3JrIE9LLsKg
IEhhdmluZyBzYWlkIHRoaXMsIFNlYW1vbmtleSwgd2hpY2ggeW91IAppbmRpY2F0ZWQgeW91IGFs
cmVhZHkgaGF2ZSwgaXMgYWJsZSB0byByZXBsYWNlIGJvdGggRmlyZWZveCBhbmQgClRodW5kZXJi
aXJkLCBhbmQgeW91IGNhbiBzdGFydCBpdCBhcyBlaXRoZXIgYW4gZW1haWwgYXBwbGljYXRpb24g
dXNpbmcgCnRoZSBjb21tYW5kIGxpbmUKCnNlYW1vbmtleSAtLW1haWwKCm9yIGFzIGEgYnJvd3Nl
ciBqdXN0IGJ5IHJ1bm5pbmcgaXQgd2l0aG91dCBhbnkgZmxhZ3Mgb3Igd2l0aCBhIFVSTC4gSSdt
IApub3Qgc3VyZSBpdCdzIGFueSBsaWdodGVyIHRoYW4gRmlyZWZveCB3aGVuIGl0IHJ1bnMgYXMg
YSBicm93c2VyLCBidXQgaXQgCmNlcnRhaW5seSBkb2VzIGFwcGVhciB0byBiZSBsaWdodGVyIHRo
YW4gVGh1bmRlcmJpcmQgd2hlbiB1c2VkIHRvIHJlYWQgCmFuZCB3cml0ZSBlbWFpbC4KCn5LeWxl
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

