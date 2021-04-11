Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B3BB435B5B3
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 16:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618151979;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WUJ9mxojuB9ZeuyMwbsMK+S3ZdCDnMSIYwD4jWq4w1c=;
	b=aYBAfgukjT2hy99+0FKbwg3bC4P9dnygLxQevmXz1XLCZcJnlX/JeKY5o4hyAa6HNWL9Yw
	lA0LWpYR643uUqxHHCNfq3BbuCv/1mvnStTu/eSN9C04OZrYy2YhmBsVviAMn6mhUxOaz6
	Uh7ILgf0u96y9x74ZJDpsEFf3voVe3o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-541-OZjouAG7NZ6sk90bpM51Ag-1; Sun, 11 Apr 2021 10:39:37 -0400
X-MC-Unique: OZjouAG7NZ6sk90bpM51Ag-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2AEA48030B5;
	Sun, 11 Apr 2021 14:39:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FB585D6D5;
	Sun, 11 Apr 2021 14:39:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6191C1806D16;
	Sun, 11 Apr 2021 14:39:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BEYja6032219 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 10:34:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3995642ADD; Sun, 11 Apr 2021 14:34:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3405C42ADC
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 14:34:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DC22B101A52C
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 14:34:42 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-418-BDUsbWTtO6mTplTnpk5VgA-1; Sun, 11 Apr 2021 10:34:40 -0400
X-MC-Unique: BDUsbWTtO6mTplTnpk5VgA-1
Received: by mail-qk1-f181.google.com with SMTP id e13so902071qkl.6
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 07:34:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=rOEKvrqC2Lg6tiSZvRDs0o25dU9xQ9NHHUk/8eXcH48=;
	b=gjAgJDQmqRyR5EZaXIPLEQIdWiIVY7tCB8ISolqJHLmQXJKRtt15kW7Az/pXUg0NBT
	J5geCwcTwmJRFgnunbD8jUKEj0sGpD7GxDeCR1CCfrG5k26REu2R9j2zY8x6nBytCraT
	sgqFQxmY4t4Mz32xLa2Wi+bUr1rR1Robs5nkqVGmYTpeTDgV+5thFhLcOVvzV2Z+kbNn
	mRD8nmK/6/NCjbOe1RQ+kdjI/Kg5QiGZZ8+qK1KT8ol+XgI1n9gXVTSNLFS6q+reLZ3x
	WaJFYuxilMs7DgeQT8+pMrONKu0zt2PLruIZnws4ehXIOJvx/vSXL0DmLYq9RGiypBHI
	fLNw==
X-Gm-Message-State: AOAM532XNkrBEQo4gEumxfaH0LkQ6Vwh0wL1Z4DLgPfU2xwT5fEF7r8g
	OGFGlKnPN+OYT4qtA6uoESNtotWsKgJ9rQ==
X-Google-Smtp-Source: ABdhPJz7KYyIx0xm10T+AIhfeJfrEDY1PgptsSsb2/pZFlL9JMWfJWkYcSvJ+BNZtzz8mTy0wT3Adw==
X-Received: by 2002:a05:620a:152f:: with SMTP id
	n15mr15477443qkk.129.1618151680097; 
	Sun, 11 Apr 2021 07:34:40 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:3c00::8d2c])
	by smtp.gmail.com with ESMTPSA id
	75sm5797872qkd.114.2021.04.11.07.34.38 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Apr 2021 07:34:39 -0700 (PDT)
Subject: Re: archlinux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2104111019030.6129@panix1.panix.com>
Message-ID: <a6cdc7cf-40fa-5e1b-b534-62476afb19e7@gmail.com>
Date: Sun, 11 Apr 2021 10:34:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2104111019030.6129@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QXJlIHlvdSBzdXJlIHRoZXkncmUgbm90IHVzaW5nIFN5c3RlbWQgQm9vdD/CoCBBdCBhbnkgcmF0
ZSwgdGhlcmUgaXMgbW9yZSAKdG8gc2V0dGluZyB1cCBncnViIHRoYW4ganVzdCBpbnN0YWxsaW5n
IGl0LsKgIE1heWJlIHlvdSBtaXNzZWQgc3RlcChzKSAKd2hpbGUgZm9sbG93aW5nIHRoZSBpbnN0
YWxsYXRpb24gZ3VpZGU/CgoKCi0tRGF2ZcKgIEguCgoKClNlbnQgZnJvbSBteSBMZW5vdm8gVGhp
bmtwYWQsIHJ1bm5pbmcgU2xpbnQgR05VL0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mcgoKT24gNC8x
MS8yMSAxMDoyMiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiBXaGF0IHJlcGxhY2VkIGdydWIgZm9yIGVmaSBib290IHN5c3RlbXM/Cj4gSSByYW4gYXJjaGlu
c3RhbGwgYW5kIHB1bGxlZCBpbiBlc3BlYWt1cCBhbmQgZGhjcGNkIGFuZCBhbHNhLXV0aWxzIGFu
ZCAKPiBlbmFibGVkIHRob3NlwqAgYW5kIHRoZSBzeXN0ZW0gd291bGRuJ3QgYm9vdCBhZnRlciB0
aGF0LsKgIFRoZSBvbmx5IHdheSAKPiBncnViIGNvdWxkIHJ1biB3YXMgd2l0aCAtLWJsb2NrIGFu
ZCB0aGF0IGJ5IGRlZmF1bHQgaXMgZGlzYWJsZWQgaW4gCj4gZ3J1YiBzaW5jZSBpdCdzIHVucmVs
aWFibGUuCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

