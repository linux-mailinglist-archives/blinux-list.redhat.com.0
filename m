Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EBA543E8A37
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 08:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628663342;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+Q5CshHUhlaBuSiGYb1jt08Enw8Y4MykpWnWxuHoGqg=;
	b=IXNc82hNPINBKTcliA3p8vBEriiEw2rpUDPhX30odyt1HTH62JO03WZeYy+5CoE9QZo2Ry
	l9YvRk4Vni6TEWuYaHoSIcsIQWerjpx2C1BGmRwGflicI500PxJ1bSCTZTEougRB0xvMFv
	lb87VzbWwdORRUBVIqQ/j1j9CDzxwQY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-CduvP0FSPkGSsea-96DKmQ-1; Wed, 11 Aug 2021 02:29:01 -0400
X-MC-Unique: CduvP0FSPkGSsea-96DKmQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 29AB3106F6EA;
	Wed, 11 Aug 2021 06:28:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 776746E0B7;
	Wed, 11 Aug 2021 06:28:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BBAB9181A0F2;
	Wed, 11 Aug 2021 06:28:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17B6PbwB003824 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Aug 2021 02:25:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B9225200E578; Wed, 11 Aug 2021 06:25:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B442D200A6FC
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 06:25:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F8871857F03
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 06:25:34 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
	[209.85.216.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-386-xIHqM1g8OiyEZsJ2WpSIGg-1; Wed, 11 Aug 2021 02:25:32 -0400
X-MC-Unique: xIHqM1g8OiyEZsJ2WpSIGg-1
Received: by mail-pj1-f52.google.com with SMTP id oa17so1822724pjb.1
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 23:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ydFSlo343cCLiuYhKkFkd/bgqodPfsWOd9cNQ5skBQc=;
	b=ex7KiU1TJRQjsjKECVb9u0+ue7A6HYTmW0lnXKl9bnns1EUtAFJ6ry1VeTvqYCZEvN
	C7rzL/6In0NKbElODQetrBZrM54gDXHdVPgZ9PTYwSh1H9eSc4Jt8FA1GkDHbRkvuI5z
	rE1OBPE910ng5tlZZcyGqFrKd1ZHibsCPzKgcgGevESVOAodTzJIv11LQI+90K9PVWRZ
	Q3WHXEnbk7v1LiQgkytVPIDiS4EEAepUwfxNRFld3EdgD+EN/Hc+wlbnpaLdz8Zm3jU4
	A9uNvAk/z0zaRyxI33UNLbUTKrtLEdKI7F5fmmdqkZhJqXVDiPkIwWmofYzmjsb+HYi/
	6iTg==
X-Gm-Message-State: AOAM532WPHCZkof2CyOgmiPJy/flhmM5hHGe8BEt/kw5R8zlzwdWPYfb
	UzvKEIB3diOvypHfc8HHEwkIXv5uYL2xzA==
X-Google-Smtp-Source: ABdhPJxJyWIEORdUpGO7vDGPf0msSSWMBsKtqCy0OdfmNfmhE8fWmUbcY/HP6cdlLY5SWVbOqP5kSw==
X-Received: by 2002:a17:90a:6b42:: with SMTP id
	x2mr35550886pjl.39.1628663130822; 
	Tue, 10 Aug 2021 23:25:30 -0700 (PDT)
Received: from ?IPv6:2601:501:100:cb70:d9c2:d1c3:58ff:28e5?
	([2601:501:100:cb70:d9c2:d1c3:58ff:28e5])
	by smtp.gmail.com with ESMTPSA id
	20sm32965169pgg.36.2021.08.10.23.25.30 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Aug 2021 23:25:30 -0700 (PDT)
Subject: Re: I can't answer to someone anonymous (was: Re: Help, I need a
	Windows VM for my work)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
	<f791451d-27c3-b6df-2294-4346caed0107@gmail.com>
	<6016bdff-564b-90a3-836b-b2d82a124f0b@slint.fr>
Message-ID: <6cc6f82b-c166-59b0-506c-51a75e805ecc@gmail.com>
Date: Tue, 10 Aug 2021 23:25:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6016bdff-564b-90a3-836b-b2d82a124f0b@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

aXRzCgpIYW5rIFNtaXRoCgpoYW5rLnNtaXRoOTY2QGdtYWlsLmNvbQoKCk9uIDgvMTAvMjAyMSAx
MTowNCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIZWxs
bywKPgo+IFNldmVyYWwgbWVzc2FnZXMgaGF2ZSBiZWVuIHNlbnQgdG8gdGhlIGxpc3QsIHF1b3Rl
ZCBiZWxvdywgYnV0IEkgZG9uJ3QgCj4ga25vdyBieQo+IHdob20gYXMgdGhpcyBsaXN0IGhpZGVz
IHRoZSBzZW5kZXIncyBuYW1lIGFuZCBlbWFpbCBhZGRyZXNzLgo+Cj4gU28sIGlmIHlvdSB3YW50
IGFuIGFuc3dlciBmcm9tIG1lLCBwbGVhc2UgaW5kaWNhdGUgeW91ciBuYW1lIGFuZCBlbWFpbCAK
PiBhZGRyZXNzCj4gaW4gdGhlIGJvZHkgb2YgeW91ciBtZXNzYWdlLCBhcyBJIGFtIGRvaW5nIGlu
IHRoaXMgb25lIGtub3dpbmcgdGhhdCAKPiAoZG90KSBpcyB0bwo+IGJlIHJlcGxhY2VkIGJ5IC4g
YW5kIChhdCkgYnkgQCBhbmQvb3Igc2VuZCBhbHNvIHlvdXIgbWVzc2FnZXMgdG8gbXkgZW1haWwK
PiBhZGRyZXNzIEkgYmVsb3cuCj4KPiBJIGNhbid0IHNlbmQgcHJpdmF0ZWx5IHNvbWV0aGluZyB0
byBzb21lb25lIHdob3NlIEkgZG9uJ3Qga25vdyB0aGUgZW1haWwKPiBhZGRyZXNzIQo+Cj4gRGlk
aWVyCj4gRGlkaWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIKPiBkaWRpZXIgKGF0KSBzbGlu
dCAoZG90KSBmcgo+Cj4gTGUgMTEvMDgvMjAyMSDDoCAwNTowMSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBob3cgZG8geW91IGdldCBjb250cm9sIHRv
IHRoZSB2bSBmcm9tIHRoZSBob3N0Pwo+Cj4gPiBhbHNvIEkgZGlkbid0IHNlZSB0aGUgc2NyaXB0
IGF0dGFjaGVkIGNhbiB5b3UgcmVzZW5kIGl0IHRvIG1lIHBsZWFzZT8KPiA+IE9uIDgvMTAvMjAy
MSA2OjU5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4g
PiBjYW4geW91IHNlbmQgcHJpdmF0ZWx5IHBsZWFzZSBpdCBkaWRuJ3QgYXR0YWNoCj4KPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

