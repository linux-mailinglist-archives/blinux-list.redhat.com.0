Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A43FD463F7D
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 21:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638305594;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WM6eybFk94fIPduS1/op4FKIBFd+5RO/essaAsBxGKM=;
	b=ERLKD5RHsAPV/4qKf3xKDjxixA16sCtCWT4fzwWtsDtWPXn5bFmTrOn9tmn9dEzql4hoCl
	2BuuxsoA92PBis74MGxib2kFL7YovAdSJwAIW0HwkGOIm7WDw7d9v3Xiu44tridFlCc0m3
	/EGQ9CCb9SRSatNMtRip157+XrvI+Nw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-288-fuv6-LEXPmOKPWz4jhiVSg-1; Tue, 30 Nov 2021 15:53:12 -0500
X-MC-Unique: fuv6-LEXPmOKPWz4jhiVSg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A22DA1927804;
	Tue, 30 Nov 2021 20:53:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BBA65E24E;
	Tue, 30 Nov 2021 20:53:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C6B581809C8A;
	Tue, 30 Nov 2021 20:53:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUKi0RF027341 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 15:44:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DD16BC08F3B; Tue, 30 Nov 2021 20:43:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D91A9C08F26
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:43:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF787185A7B2
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:43:59 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-259-tOTdRjJXP-yyZrlFheMZ3g-1; Tue, 30 Nov 2021 15:43:57 -0500
X-MC-Unique: tOTdRjJXP-yyZrlFheMZ3g-1
Received: by mail-ed1-f46.google.com with SMTP id l25so91863352eda.11
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 12:43:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=GZLZgEG9W8UxjCmZ0EVFuUgVI9i9bAxHwrAv4c7CWF4=;
	b=WcTwGBTCPSbq3m+sZ+RRVfQ27qiEdTK2SieTidoD7zRWlennw3LZpZg6LmbtbQlHKQ
	+jk4EEC4iwmY3jrz0T0Ok4qUwwtVFAPOpWz8OU9MIngpQDmztySUPNVZif+T9Yzns9Vg
	NUvt+1fZm1F+nzauc5kMflNjp+sKQv4yf51Lv/N0mzZ6nqf1OblbYjL5wCefvgC5QNcN
	uwkptxL+9pwe1BFrKi0K6/IBRTYpE4wZnLck0e4r55qJmCQ7SXOx/GiJyam9rh0ra1Xj
	Bv5e+7sYp6Hhbz6s5GrooXORu/kjAW+LoITSk+n7mEDdKSw8eeTFaYfVWY1q2JXens6X
	z4Zw==
X-Gm-Message-State: AOAM533q3LXb1kYIB7+Re9957feGDZ6yMytOyOxY6dvVVZLG4XBKjj5R
	IR9G0aQK6QaG63CVXOrP/JrZKLStdh7J7g==
X-Google-Smtp-Source: ABdhPJyP7AnPUV5KPrYL8Zffx8AR643LVX+3YQgNlrAj40LQMaZFH0W4+8TYa5pTYxbELRmkfHWBgg==
X-Received: by 2002:a05:6402:8:: with SMTP id d8mr1899088edu.61.1638305036303; 
	Tue, 30 Nov 2021 12:43:56 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	x7sm14096346edd.28.2021.11.30.12.43.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 12:43:55 -0800 (PST)
Message-ID: <cc6c7abc-5b3e-5d19-2b20-e50f9409b703@gmail.com>
Date: Tue, 30 Nov 2021 22:43:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: My qemu error
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
	<a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
	<478b6e46-5ca1-266a-695b-6f8119e207fa@slint.fr>
In-Reply-To: <478b6e46-5ca1-266a-695b-6f8119e207fa@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QXMgSSBzdGF0ZWQsIEknbSBydW5uaW5nIEZlZG9yYSBNYXRlIENvbXBpeiAzNSBhdCB0aGUgbW9t
ZW50LCBhbmQKCiR1bmFtZSAtcgoKZ2l2ZXMgbWUgdGhlIGZvbGxvd2luZy4KCjUuMTUuNS0yMDAu
ZmMzNS54ODZfNjQKCgpXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZyb20g
dGhlIEZlZG9yYSBtYWNoaW5lLCB1c2luZyBUaHVuZGVyYmlyZAoKT24gMjAyMS8xMS8zMCAyMDow
MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBQUyBpbnN0ZWFk
IG9mOgo+IC9ib290L2NvbmZpZy1nZW5lcmljLTUuMTQuMTMKPiBwbGVhc2UgcmVhZDoKPiAvYm9v
dC9jb25maWctZ2VuZXJpYy01LjEzLjEzCj4KPiBPVCBCb3RoIHRoZSA1LjEzIGFuZCA1LjE0IGhh
dmUgYmVlbiBkZWNsYXJlZCBFbmQgb2YgTGlmZSwgSSB3aWxsIAo+IHByb3ZpZGUgYQo+IDUuMTUu
eiB3aGVuIEkgd2lsbCB0aGluayB0aGlzIGJyYW5jaCBpcyBzdGFibGUgZW5vdWdoLgo+Cj4gRGlk
aWVyCj4KPiBMZSAzMC8xMS8yMDIxIMOgIDE4OjQ5LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIEJyYW5kdCwKPj4gYW5zd2VycyBpbmxpbmUKPj4K
Pj4gTGUgMzAvMTEvMjAyMSDDoCAxMzo1NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiBhIMOpY3JpdMKgOgo+Pj4gcWVtdS1zeXN0ZW0teDg2XzY0OiB3YXJuaW5nOiAnLXNvdW5k
aHcgaGRhJyBpcyBkZXByZWNhdGVkLCBwbGVhc2UgCj4+PiB1c2UgJy1kZXZpY2UgaW50ZWwtaGRh
IC1kZXZpY2UgaGRhLWR1cGxleCcgaW5zdGVhZAo+Pj4gYXVkaW86IERldmljZSBoZGE6IGF1ZGlv
ZGV2IGRlZmF1bHQgcGFyYW1ldGVyIGlzIGRlcHJlY2F0ZWQsIHBsZWFzZSAKPj4+IHNwZWNpZnkg
YXVkaW9kZXY9cGEKPj4+IGF1ZGlvOiBEZXZpY2UgaGRhOiBhdWRpb2RldiBkZWZhdWx0IHBhcmFt
ZXRlciBpcyBkZXByZWNhdGVkLCBwbGVhc2UgCj4+PiBzcGVjaWZ5IGF1ZGlvZGV2PXBhCj4+Pgo+
PiBJbiB0aGUgY29tbWFuZCByZW1vdmUKPj4gLXNvdW5kaHcgaGRhCj4+IHdoaWNoIGlzIHJlZHVu
ZGFudCB3aXRoCj4+IC1kZXZpY2UgaW50ZWwtaGRhIC1kZXZpY2UgaGRhLWR1cGxleAo+PiBhbmQg
cHJvYmFseSByZXBjYWNlCj4+IC0tYXVkaW9kZXYgcGEKPj4gYnk6Cj4+IC0tYXVkaW9kZXY9cGFo
b3dldmVyLCBtYXliZSB0aGlzIHdob2xlIHN0dWZmIGlzIG5vdCAKPj4gbmVjZXNzYXJ5Oi1hdWRp
b2RldiBwYSxpZD1wYSxvdXQubWl4aW5nLWVuZ2luZT1vZmYsb3V0LmxhdGVuY3k9MjAwMDAKPj4g
SSBkb24ndCBoYXZlIGl0Lgo+Pgo+PiDCoD7CoCBrbm93IGl0IGRvZXMgd29yayB1bmRlciBTbGlu
dCwgYnV0IG5vdCB1bmRlciBGZWRvcmEsIEFyY2ggb3IgVWJ1bnR1Lgo+Pgo+PiBNYXliZSB0aGUg
a2VybmVsIHlvdSBhcmUgcnVubmluZyBpbiBGZWRvcmEsIEFyY2ggb3IgVWJ1bnR1IGRvZXMgbm90
IAo+PiBoYXZlIGEKPj4gcHJvcGVyIGNvbmZpZ3VyYXRpb24gZm9yIEtWTSwgcmVhZDoKPj4gaHR0
cHM6Ly93d3cubGludXgta3ZtLm9yZy9wYWdlL1R1bmluZ19LZXJuZWwKPj4KPj4gSW4gU2xpbnQg
dGhlIGtlcm5lbCBjb25maWd1cmF0aW9uIGlzIGZvdW5kIGluIG9uZSBvZiB0aGVzZSBmaWxlczoK
Pj4gL2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xNC4xNC54NjQKPj4gL2Jvb3QvY29uZmlnLWdlbmVy
aWMtNS4xNC4xMwo+PiBUaGVzZSBjb21tYW5kczoKPj4gY2F0IC9wcm9jL2NtZGxpbmUKPj4gdW5h
bWUgLXIKPj4gdGVsbCB5b3Ugd2hpY2gga2VybmVsIGlzIHJ1bm5pbmcsIHNvIHlvdSBrbm93IGhv
dyBpdCBpcyBjb25maWd1cmVkLgo+Pgo+PiBBbHNvLCB0aGVyZSBjb3VsZCBiZSBhbiBpc3N1ZSB3
aXRoIHlvdXIgcWVtdSB2ZXJzaW9uLgo+Pgo+PiBJbiBTbGludCBhdCB0aW1lIG9mIHdyaXRpbmc6
Cj4+IGRhbmNlW35dJCBxZW11LXN5c3RlbS14ODZfNjQgLS12ZXJzaW9uCj4+IFFFTVUgZW11bGF0
b3IgdmVyc2lvbiA2LjAuMAo+PiBDb3B5cmlnaHQgKGMpIDIwMDMtMjAyMSBGYWJyaWNlIEJlbGxh
cmQgYW5kIHRoZSBRRU1VIFByb2plY3QgZGV2ZWxvcGVycwo+Pgo+PiBDaGVlcnMsCj4+IERpZGll
cgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

