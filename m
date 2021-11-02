Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D173442B7D
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 11:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635848207;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pAgy5hMLyLUWde+SRVuXrQ5S4s5LbwSfgJuTp6bCqnM=;
	b=N7fhJoedJxdUg5Gz2poauqH5YxsTyTDquProME99lVbIYber+A8wSlSbfgSQjkLHDZMKqr
	L+FX6Gry0I4DOnn7fQG/9WZa6jkix+A8HSMObjAoblepMwvSwRAWlaGX6XI9+IklVp0Dg8
	ifLu7EjQpRcQ2Xp2FRn762HCF9Cq+8Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-pNGQRsGlN8a-tlK8pd4-ww-1; Tue, 02 Nov 2021 06:16:45 -0400
X-MC-Unique: pNGQRsGlN8a-tlK8pd4-ww-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C08E100C665;
	Tue,  2 Nov 2021 10:16:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D318368D7D;
	Tue,  2 Nov 2021 10:16:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 82B024EA2A;
	Tue,  2 Nov 2021 10:16:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A2ABIMp029539 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 06:11:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B03B52166B26; Tue,  2 Nov 2021 10:11:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB4AA2166B25
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 10:11:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D7764899ECB
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 10:11:15 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-427-H0Sigd0XPyKUSU9BuLl0Nw-1; Tue, 02 Nov 2021 06:11:14 -0400
X-MC-Unique: H0Sigd0XPyKUSU9BuLl0Nw-1
Received: by mail-wm1-f41.google.com with SMTP id
	67-20020a1c1946000000b0030d4c90fa87so1652275wmz.2
	for <blinux-list@redhat.com>; Tue, 02 Nov 2021 03:11:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=jFS50xjB++xJgltUvj5XYNR5TaCjgTa5jdOnykXTzi8=;
	b=piuXlM7cDsYmesOYRhnftCSfiaFSoMlSeeTYrWgLJiGWvFDi5T029wU47LqaAwrNGA
	bgN6et/Y0XuunZflfjB5vIsSVED8IM+rYZJJdP90SQzxiywapJEcBfrN249qqfUpMQWO
	bSkaJlWmd/2A31J64YIjecUsY9lZ1zlbaW+1gbDSBD5xy4Ew4vTfwfvJaaWzEVVYbQ8p
	EdrcihrRuYrNew3lj1337rzMQ/MgiTVuOhbyyR2jDnUlMD6OIs4SR6mYLszgeYZbBCGq
	xw5THT68hkIFhvcaOKN3XzIL2+3uOLCB6iF0p2XZLIZTPyYAe0kOaq3E9/Y1XVWQ9t28
	2+hQ==
X-Gm-Message-State: AOAM533DJrX+tzLUH1qbjfAiS21NjT92nKjxkhbvV8BlHGqFmjwksSV4
	04xlB+sW9JPSbHZqOArEURTK25dLgFA4uQ==
X-Google-Smtp-Source: ABdhPJyLHuE+7RvIGSIdIg25OilEBDUi+4kR0sg/VoHCwiR/feoO112NthOOq3ri3ewnX5mdSRQ/xQ==
X-Received: by 2002:a1c:48e:: with SMTP id 136mr5860338wme.21.1635847872649;
	Tue, 02 Nov 2021 03:11:12 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.199.66])
	by smtp.gmail.com with ESMTPSA id
	h17sm1981583wmb.44.2021.11.02.03.11.11 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 02 Nov 2021 03:11:11 -0700 (PDT)
Message-ID: <4273e9e1-ce0a-cbfe-97bc-fe4b8bbced91@gmail.com>
Date: Tue, 2 Nov 2021 10:11:18 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <20211102083235.nuzcsnnrrr2kxyno@begin>
	<A7152642-00C7-4A24-B993-9235211645D9@linux-a11y.org>
In-Reply-To: <A7152642-00C7-4A24-B993-9235211645D9@linux-a11y.org>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SnVzdCBnb2luZyB0byBjaGltZSBpbiBhbmQgc2F5IHRoYXQgdGhlIHRlYW0gYWNrbm93bGVkZ2Ug
aXQncyBhIApwcm90b3R5cGUgYnV0IEkndmUgcXVlc3Rpb25zIGFib3UgdCB3aGF0IHRoZXkncmUg
ZG9pbmcvaG93IHRoZXkgYXJlIApnb2luZyB0byBnZXQgdGhlcmU6CgpTdGFydCBoZXJlIHdpdGgg
dGhpcyB0b3BpYywgYW5kIGxldCdzIGNvbXBhcmUgcXVlc3Rpb25zIHNoYWxsIHdlPwoKCmh0dHBz
Oi8vZm9ydW0uYXVkaW9nYW1lcy5uZXQvcG9zdC82NzUwNzEvI3A2NzUwNzEKCgpUaGF0IHBvc3Qg
YW5zd2VycyBhIHdoeSBkbyB0aGV5IHVzZSBob21lIGdyb3duIGJpbmRpbmdzIHF1ZXN0aW9uLCBi
dXQgCnRoZSB3aG9sZSB0b3BpYyBpcyB3b3J0aCBhIHJlYWQgdGhvdWdoLgoKT24gMTEvMi8yMSAw
OToyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIZWxsbywK
Pgo+IHdlbGwsIGEgcXVpY2sgbG9vayBpbnRvIHRoZSBjb2RlIHNob3dzIHRoYXQgdGhpcyBpcyBj
dXJlbnRseSBmYXIgYXdheSBmcm9tIGJlaW5nIGEgc2NyZWVucmVhZGVyIGJ1dCBtb3JlIGEgdmVy
eSBlYXJseSBwcm90b3R5cGluZy4gTGV0cyBzZWUgd2hhdCBoYXBwZW5zLgo+Cj4KPgo+PiBBbSAw
Mi4xMS4yMDIxIHVtIDA5OjQxIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+Cj4+IO+7v0hlbGxvLAo+Pgo+Pj4gQWNj
ZXNzaWJpbGl0eSBvbiBMaW51eCBoYXMgaGlzdG9yaWNhbGx5IGJlZW4gdW5kZXItZGV2ZWxvcGVk
LCB1bmRlci1tYWludGFpbmVkLAo+PiBBbmQgdGh1cyBsZXQncyBzcGxpdCB0aGUgZWZmb3J0IGlu
c3RlYWQgb2Ygam9pbmluZz8gRXcuCj4+Cj4+PiBNZW1iZXJzIG9mIHRoZSBSdXN0IGNvbW11bml0
eSBhcmUgcmVpbXBsZW1lbnRpbmcgYSBudW1iZXIgb2YgQy1iYXNlZCBwcm9ncmFtcywgbWFraW5n
IHRoZSBhcmd1bWVudCB0aGF0IHRoZXkgY2FuIGltcHJvdmUgb24gdGhlIGN1cnJlbnQgc3RhdGUg
b2YgdGhlIGFydC4KPj4gVGhhdCBpcyByaWdodCBmb3IgdmFyaW91cyBDLWJhc2VkIHByb2dyYW1z
IHRoYXQgYXJlIGEgcGFpbiB0byBtYWludGFpbgo+PiBiZWNhdXNlIG9mIEMuIE9yY2EgaXMgbm90
IGEgcGFpbiB0byBtYWludGFpbiBiZWNhdXNlIG9mIFB5dGhvbiwgaXQncyBhCj4+IHBhaW4gdG8g
ZGV2ZWxvcCBiZWNhdXNlIHRoZSBwcm9ibGVtIGl0c2VsZiBpcyBjb21wbGV4LiBSZXdyaXRpbmcg
aW4gUnVzdAo+PiB3b24ndCBjaGFuZ2UgdGhhdC4KPj4KPj4+IE9uIHRoZSBvdGhlciBoYW5kLCBj
aG9pY2VzIGFyZSBnb29kLgo+PiBDaG9pY2VzIGFyZSBnb29kIHdoZW4gdGhlcmUgYXJlIGVub3Vn
aCBwZW9wbGUgdG8gd29yayBvbiB0aGUgdmFyaW91cwo+PiBjaG9pY2VzLiBTcGxpdCB0aGUgY29t
bXVuaXR5LCBhbmQgaW5zdGVhZCBvZiBoYXZpbmcgb25lIGdvb2Qgc29mdHdhcmUsCj4+IHlvdSBo
YXZlIHR3byBwb29yIHNvZnR3YXJlLgo+Pgo+Pj4gbm90IGEgdHJlbWVuZG91cyBhbW91bnQgb2Yg
ZGV2ZWxvcG1lbnQgb2NjdXJyaW5nIG9uIGVpdGhlci4KPj4gVGhhdCdzIGp1c3QgYSBtYXR0ZXIg
b2YgcGVvcGxlIGpvaW5pbmcgaW4uCj4+Cj4+PiBEb2VzIE9yY2EgaGF2ZSBvYmplY3QgbmF2aWdh
dGlvbj8gTm8gZmxhdCByZXZpZXcgaXMgbm90IHRoZSBzYW1lIHRoaW5nLgo+PiBXaGVyZSBpcyB0
aGUgZmVhdHVyZSByZXF1ZXN0IGZvciBvYmplY3QgbmF2aWdhdGlvbj8gIFdoZXJlIGlzIHRoZSBw
dWxsCj4+IHJlcXVlc3QgdG8gcHJvcG9zZSBhbiBpbXBsZW1lbnRhdGlvbj8KPj4KPj4+IEFsc28s
IEkgY2FuJ3QgcmVtZW1iZXIgd2hpY2gsIGJ1dCBvdGhlciB0aGUgT3JjYSBkZXYgb3Igc29tZW9u
ZSBvbiBNYXN0b2Rvbgo+Pj4gcmV2aWV3aW5nIE9yY2EncyBjb2RlIHNhaWQgdGhhdCwgSSBiZWxp
ZXZlIHRoZSBUZXJtaW5hbC1hY2Nlc3MgY29kZSBpcwo+Pj4gImJsYWNrIG1hZ2ljIi4KPj4gRm9y
IHRlcm1pbmFsIGFjY2VzcywgaXQnbGwgYmUgbXVjaCBtb3JlIGludGVyZXN0aW5nIHRvIHJ1biBi
cmx0dHksIHdoaWNoCj4+IGhhcyBkZWNhZGVzIG9mIGV4cGVyaWVuY2UuCj4+Cj4+IGJybHR0eSAt
YiBiYSAteCBhMiAtTgo+Pgo+PiBOb3RlIHRoYXQgdGhlICJibGFjayBtYWdpYyIgaW5zZXJ0ZWQg
aW4gT3JjYSBpcyBtb3N0IG9mdGVuIGJlY2F1c2UgaXQncwo+PiB0aGUgYXBwbGljYXRpb24gaXRz
ZWxmIHdoaWNoIGV4cG9zZXMgYm9ndXMgaW5mb3JtYXRpb24uCj4+Cj4+IFNhbXVlbAo+Pgo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

