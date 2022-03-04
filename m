Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA3D4CDC27
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 19:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646417895;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BkKd3D5kdF8j5XupymTvkHlP9vt5uHvG7i+OSyyDRH4=;
	b=YdxFRuDcf4DYERoPg3uSgdHqm3ztVueTpC15VaVLo2JxLkGGvmt4xrArLhPupq+cwbTx9u
	/KJJWzCDtOC0bDeaUo3News37Y8f41FHJX4+84hUm8udhyAeWR3kum9N94dGk6z39hqC5K
	uM0fnMTBFXLbyG+Y9X5YeV6/VMuVWWw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-564-ARd51zgqMt-IQ4XCysKrcA-1; Fri, 04 Mar 2022 13:18:11 -0500
X-MC-Unique: ARd51zgqMt-IQ4XCysKrcA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E91651091DA2;
	Fri,  4 Mar 2022 18:18:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0A16841DD;
	Fri,  4 Mar 2022 18:18:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C99E537A0;
	Fri,  4 Mar 2022 18:18:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224II2tY028970 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 13:18:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0F0E4400D3C9; Fri,  4 Mar 2022 18:18:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AEF44010FC8
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:18:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E35BC2A59548
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:18:01 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-556-qjkhDZ8eM4iEK5VeY5cEOA-1; Fri, 04 Mar 2022 13:18:00 -0500
X-MC-Unique: qjkhDZ8eM4iEK5VeY5cEOA-1
Received: by mail-wr1-f48.google.com with SMTP id x15so13841986wru.13
	for <blinux-list@redhat.com>; Fri, 04 Mar 2022 10:18:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=kpMpxnyOvuUgu/11Bht0qDy5sjJN6R9jEBbeVU4qy6Q=;
	b=GsRssSFJfAqwcXpTpD4UqiFu0LVUBzrauw4wahvL8yGdz3idMO+m2Iv0f+mJv+b8JY
	KNiTBafvbVYeSgl/2mMt15b91OAk3RC2swoNob8n9wnMGghoft48F5HoV+t2iI5frrQ6
	s7qhDYBEPSS/CvrTa9uhcxUwC3UQEL4dlGla8rmu9vABeWToD0Yq0pHs840GxILw45J2
	6XlZvC5+E/zrer2JM9LJXalAwsHZTercx3Y7tR/5/T8dXStTZrP9JthPBViNSpUGzLpG
	LxXhSgSdGndansbv54jyXiFmhIAY2FYyFIOnGq5+rXApZpy0ghq0seamWZMrEflQXMHc
	Zx3A==
X-Gm-Message-State: AOAM531CHsuAlcSFhjSvFmMsbc8sAkX2TOaRf7ZWYeNpGfBz6EKyUmtx
	HOzkRO/jvU5dochMr7mOl7ZNYqmF/82LLQ==
X-Google-Smtp-Source: ABdhPJypGsovvFJfscVzFbW4nrh0umrq459RIJ4fu0E5k0B1bmVWCu2s8+48H3MqNQjWqEAVlADQig==
X-Received: by 2002:adf:e6cd:0:b0:1ef:db24:7ad1 with SMTP id
	y13-20020adfe6cd000000b001efdb247ad1mr17315037wrm.233.1646417878514;
	Fri, 04 Mar 2022 10:17:58 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id
	t5-20020adff045000000b001f0684c3404sm2847603wro.11.2022.03.04.10.17.57
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 04 Mar 2022 10:17:57 -0800 (PST)
Message-ID: <9c284d34-9e1c-a3ac-72fc-ba0c041877ec@gmail.com>
Date: Fri, 4 Mar 2022 18:18:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<Pine.LNX.4.64.2203041303520.273578@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2203041303520.273578@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U3VyZSwgYnV0IHJlZGFjdGVkIG15IGdtYWlsIGZyb20gaXQKClRoZSBlbWFpbCBpcyBoZXJlIHdp
dGggbXkgZ21haWwgcmVkYWN0ZWQuLi50aGlzIGlzIHdoYXQgR29vZ2xlIHNlbnQgbWUuIApTZWVt
cyBsaWtlIHRoZXkgaGF2ZSBhIHZlcnksIHZlcnkgYnJvYWQgaWRlYSBvZiB3aGF0ICdsZXNzIHNl
Y3VyZScgCm1lYW5zLiBJIGxpa2UgY2hlY2tpbmcgbXkgZW1haWwgaW4gYSB0ZXJtaW5hbCB0aGFu
a3MuLi4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKR29vZ2xl
Ck9uIDMwIE1heSwgeW91IG1heSBsb3NlIGFjY2VzcyB0byBhcHBzIHRoYXQgYXJlIHVzaW5nIGxl
c3Mgc2VjdXJlIApzaWduLWluIHRlY2hub2xvZ3kKIMKgwqAgwqA8Z21haWzCoCBhZGRyZXNzIHJl
ZGFjdGVkPgpUbyBoZWxwIGtlZXAgeW91ciBhY2NvdW50IHNlY3VyZSwgR29vZ2xlIHdpbGwgbm8g
bG9uZ2VyIHN1cHBvcnQgdGhlIHVzZSAKb2YgdGhpcmQtcGFydHkgYXBwcyBvciBkZXZpY2VzIHdo
aWNoIGFzayB5b3UgdG8gc2lnbiBpbiB0byB5b3VyIEdvb2dsZSAKQWNjb3VudCB1c2luZyBvbmx5
IHlvdXIgdXNlcm5hbWUgYW5kIHBhc3N3b3JkLiBJbnN0ZWFkLCB5b3XigJlsbCBuZWVkIHRvIApz
aWduIGluIHVzaW5nIFNpZ24gaW4gd2l0aCBHb29nbGUgb3Igb3RoZXIgbW9yZSBzZWN1cmUgdGVj
aG5vbG9naWVzLCAKbGlrZSBPQXV0aCAyLjAuIExlYXJuIG1vcmVXaGF0IGRvIHlvdSBuZWVkIHRv
IGRvPwoKRW1haWwgc29mdHdhcmUsIGxpa2UgT3V0bG9vayAyMDE2IG9yIGVhcmxpZXIsIGhhcyBs
ZXNzIHNlY3VyZSBhY2Nlc3MgdG8gCnlvdXIgR21haWwuIFN3aXRjaCB0byBPZmZpY2UgMzY1LCBP
dXRsb29rIDIwMTkgb3IgbmV3ZXIsIG9yIGFueSBvdGhlciAKZW1haWwgc29mdHdhcmUgd2hlcmUg
eW91IGNhbiBzaWduIGluIHVzaW5nIFNpZ24gaW4gd2l0aCBHb29nbGUuCkxlYXJuIG1vcmUKWW91
IHJlY2VpdmVkIHRoaXMgZW1haWwgdG8gbGV0IHlvdSBrbm93IGFib3V0IGltcG9ydGFudCBjaGFu
Z2VzIHRvIHlvdXIgCkdvb2dsZSBBY2NvdW50IGFuZCBzZXJ2aWNlcy4KwqkgMjAyMiBHb29nbGUg
TExDLCAxNjAwIEFtcGhpdGhlYXRyZSBQYXJrd2F5LCBNb3VudGFpbiBWaWV3LCBDQSA5NDA0Mywg
VVNBCgpUaGF0J3MgdGhlIGVtYWlsIEkgZ290LiBJIHB1dCB0aGUgZGFzaGVzIGluIHRvIG1hcmsg
dGhlIHN0YXJ0IG9mIGl0LiBJIApkaWQgYSBxdWljayBzZWFyY2ggYW5kIGZvdW5kIE11dHQgYXBw
YXJlbnRseSBoYXMgYSB3YXkgdG8gaGFuZGxlIApPYXV0aDIuMCBzdHVmZiBidXQgaXQncyBhIHBh
aW4gdG8gc2V0IHVwLCBhbm5veWluZ2x5IGFuZCBicm9rZSBtYWpvcmx5IAp3aGVuIEkgdHJpZWQg
aXQKCgoKT24gMy80LzIyIDE4OjA0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+IFdvdWxkIHlvdSBiZSBjb21mb3J0YWJsZSBzaGFyaW5nIHRoYXQgZW1haWwgd2l0
aCB0aGUgbGlzdD8KPiBLYXJlbgo+Cj4KPgo+IE9uIEZyaSwgNCBNYXIgMjAyMiwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+PiBJIGp1c3QgZ290IHRoaXMgaW4g
bXkgaW5ib3ggc2F5aW5nIGZyb20gMzAgTWF5LCBJIHdvbid0IGJlIGFibGUgdG8KPj4gc2ltcGx5
IHNpZ24gaW4gd2l0aCBhIHVzZXJuYW1lL3Bhc3N3b3JkLgo+Pgo+PiBTbyBkb2VzIHRoYXQgbWVh
biBmb3IgdGhpbmdzIGxpa2UgcmNsb25lLCBNdXR0LCBldGMgSSdsbCBuZWVkIHRvIGRvIGFwcAo+
PiBzcGVjaWZpYyBwYXNzd29yZHMgb3Igc2V0IHVwIE9hdXRoIDIuMD8KPj4KPj4gV2hpY2ggbGVh
ZHMgbWUgdG8gbXkgbmV4dCBxdWVzdGlvbi4uLgo+Pgo+PiBJcyB0aGVyZSBhbnl0aGluZyB0ZXJt
aW5hbCBiYXNlZCB0aGF0J3MgbGlrZSBtdXR0L3JjbG9uZSB0aGF0IHN1cHBvcnRzCj4+IE9hdXRo
IDIuMCBhbHJlYWR5IHNvIEkgY2FuIGJlIGFoZWFkIG9mIHRoaXM/Cj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

