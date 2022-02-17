Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D7F4BA424
	for <lists+blinux-list@lfdr.de>; Thu, 17 Feb 2022 16:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645111190;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=672jSZt4KVxYh0DTf7snSTLY1EVeGuJ/gK0s0KCDKG0=;
	b=OoaqXhf3EbB5imbHYn7qTvokr/Ox8tvNNNSxvPTtLh1R1uKM2UADJ+53lgQkxgpReKYzHZ
	wTzy/MSckXnGRaW8xlHFRvJQeWQ0AzBA6Aw3EwJyQSSr3v5ImsNHqf6NFXzlXyG/eEGJT2
	Iqhkn/Xo+WMcXKa9vCWeZXACe6zfKOA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-594-qMFlb6J_OS-BAD4IaKi1GQ-1; Thu, 17 Feb 2022 10:19:45 -0500
X-MC-Unique: qMFlb6J_OS-BAD4IaKi1GQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 52D2B363A6;
	Thu, 17 Feb 2022 15:19:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E23812BCDB;
	Thu, 17 Feb 2022 15:19:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5B7E94CA93;
	Thu, 17 Feb 2022 15:19:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21HFF1iI014480 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 17 Feb 2022 10:15:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7F7FB15230A7; Thu, 17 Feb 2022 15:15:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BB0F15230A2
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 15:15:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60757802E5C
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 15:15:01 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-607-jpUX6TqbOByfiCCAZZpJYg-1; Thu, 17 Feb 2022 10:14:59 -0500
X-MC-Unique: jpUX6TqbOByfiCCAZZpJYg-1
Received: by mail-qk1-f178.google.com with SMTP id v5so2588960qkj.4
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 07:14:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=qLjM6g8TIhTCazlQBKqZWFmBlq6UJ9a1RyEWTuykNcw=;
	b=zBu4lwPFaV5KNHhIxwKopN14AIlGzBP4KxW6VRyeEWlXy0JasUud8bmipAdgK6+jQI
	Afae8keWR1OLgbTHvekY59KpxXp5lGXyFMzP0FgNAAEgBzCyqh4YzZ5RkDrEb20yRLvr
	yWEBjwcJEtQNJRPOuHUwsd/RBooZaNvG1ma1/mNQujoLzuuXbtm9cT0QiFXYrO7M/O4o
	TpZaUEZ/JZz3XuieOnoU4blbsprpiUH4Wxc1mz2fQF0aAfKEM2PDJuwPAPBRvDVW4QT2
	7TUgPGAWDUiYqFlOtiHFQnzojfB0T1jjivGWKXRPyAldoCoMEc++o7vtS0eTa7ZEWZyB
	Q2uw==
X-Gm-Message-State: AOAM532iOHEmPeGckshKzjVU0KiTBSMFjZOFaRW3p77m4VHLW5rvsZED
	sdH7sPkLki0WSslmpCjU0uYeBW+wXpmLqQ==
X-Google-Smtp-Source: ABdhPJwbNczoZ+tBQ9t2RJQkLCRybUwjwWvEafrkIm8M/uVn2M4qxxUJQpHu8lZqRC5LoVRD18Agdg==
X-Received: by 2002:ae9:f019:0:b0:608:374d:d345 with SMTP id
	l25-20020ae9f019000000b00608374dd345mr1866546qkg.412.1645110898794;
	Thu, 17 Feb 2022 07:14:58 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420:6ff4:cc64:5422:2d4d?
	([2601:192:4c80:1420:6ff4:cc64:5422:2d4d])
	by smtp.gmail.com with ESMTPSA id
	s4sm21264620qko.113.2022.02.17.07.14.58 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 17 Feb 2022 07:14:58 -0800 (PST)
Message-ID: <1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
Date: Thu, 17 Feb 2022 10:14:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Accessibility of installing Distros?
To: blinux-list@redhat.com
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
In-Reply-To: <BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VHJpc3F1ZWwgd2lsbCBpbnN0YWxsLCB3aGV0aGVyIHlvdSBoYXZlIHRoZSBmcmVlIHdpZmkgb3Ig
bm90LCBpbiB0aGUgCmxhdHRlciBjYXNlLCBpdCBqdXN0IHdvbid0IHdvcmssIGJ1dCB5b3VyIGV0
aGVybmV0IHdpbGwuwqAgWWVwOyBBcmNoIGFuZCAKSmVudG9vIGFyZSB0aGUgdG91Z2ggb25lcy4K
CgpDaGVlcnMsCgoKRGF2ZQoKCgpPbiAyLzE3LzIyIDA0OjM2LCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEFsc28sIGFzIEkgc2FpZCwgVHJpc3F1ZWwgYWxzbyBp
bnN0YWxsZWQgb24gdGhpcyBzeXN0ZW0gd2l0aG91dCBjb21wbGFpbmluZyBhdCBhbGwuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

