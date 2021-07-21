Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D568B3D0A37
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 10:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626854618;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VWtwW3k+Rgyin+0LqJvQxNAJ1jqjjZ0YMJvJFphA9Nk=;
	b=O/WdLPnwryweA5UXNj2TtxWmySPimAZsQh5aaXWytNiR2Qzlj+/r9bUnKdEH+HpZz++uuj
	8OIhdJGSNcfjU3irirEZpRpI1HUeaP1lt3iaY0usTVUJSgLuhtN1E+WVmwZ8bqAqTowWhd
	tlFv2HZIb4+4KRVWeeJTFfMduITRjrI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-439-ZJt4DgwkPs2RBWJTl7OeCg-1; Wed, 21 Jul 2021 04:03:37 -0400
X-MC-Unique: ZJt4DgwkPs2RBWJTl7OeCg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 403A8192D785;
	Wed, 21 Jul 2021 08:03:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4C4319C79;
	Wed, 21 Jul 2021 08:03:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CCA0C4BB7B;
	Wed, 21 Jul 2021 08:03:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16L835Cm016654 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 04:03:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6180B205FABF; Wed, 21 Jul 2021 08:03:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B34D205FAB8
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 08:03:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF9A11078461
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 08:03:02 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
	[209.85.218.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-61-lqmMdh0qN6uhOTvKB9NKwA-1; Wed, 21 Jul 2021 04:03:00 -0400
X-MC-Unique: lqmMdh0qN6uhOTvKB9NKwA-1
Received: by mail-ej1-f48.google.com with SMTP id qb4so1850559ejc.11
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 01:03:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=DbLUS53ihGBWm1AzMM2r6gbVBrVHrnWGBvyiERa1IdI=;
	b=A2mG4xbkk5A3csVzuv8c43Q8pmWFis9tfrmVLapRTjcG1y16rUFDLYotTB9Rtxaok4
	/C5SPsWLb3EwbI5b0rSSW50KUyEiQuS2MR64IuYpBCVxowkjm6VVmNGwxENbdr68XEVF
	cBgH3pUEg5Z4Lz0d3/ZiIBvunQq6wwLqNszvesARs8e1ax7vXliXQuvyuxVsqoNSDnJ8
	HFYSadU4l8ZeMD/LFi9xO8Nc/3QD6iX0HprqLaQqI6MXFcA+eF/UI3A/XAvo+sz2aF2s
	dssAu0B96595Qr+iusWjB51/gxCdD1eNfc7/NlDxEBDKhGMlrN+eN4rHlQhi4UihMpbd
	8R7A==
X-Gm-Message-State: AOAM5319LjvHuP2RiZLP9FOJI4lR9MGJ2Ygi/GJ5vEcGcyazUgJLU6w3
	krU+ihwx7IBnUgVobhjUa4tBLVQrgFfslQ==
X-Google-Smtp-Source: ABdhPJxPfjefsNY57iQq2kwJFBzBfbR7RON79M7hEn9OubDAAWer980xsyhbUzTr+bUW7ZkngmVbpw==
X-Received: by 2002:a17:906:4e52:: with SMTP id
	g18mr37763955ejw.214.1626854579118; 
	Wed, 21 Jul 2021 01:02:59 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id i6sm8813335edt.28.2021.07.21.01.02.57
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 01:02:58 -0700 (PDT)
Subject: Re: Thunderbird on Slint
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ec2eb69c-aade-21c0-bc11-5d462376cd65@gmail.com>
	<0a32310f-3412-ea9d-0354-d9f7a94f91fd@slint.fr>
Message-ID: <136968e6-9e34-f9c3-910f-95924cfd76a1@gmail.com>
Date: Wed, 21 Jul 2021 10:02:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0a32310f-3412-ea9d-0354-d9f7a94f91fd@slint.fr>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIERpZGllciwKCgpNdWNoIGFwcHJlY2lhdGVkLgoKCkFzIEkgdG9sZCBteSB3aWZlIGEg
ZmV3IG1pbnV0ZXMgYWdvLCBJIHdvdWxkIGluc3RhbGwgdGhpcyBvbiBiYXJlIG1ldGFsLCAKaWYg
SSBoYWQgYW55IGF2YWlsYWJsZS4KCgpXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpT
ZW50IHVzaW5nIFRodW5kZXJiaXJkIGZyb20gU2xpbnQKCk9uIDcvMjEvMjEgOTo1NyBBTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBCcmFuZHQsCj4KPiBz
aG9ydCBhbnN3ZXI6Cj4gaHR0cDovL3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTQu
Mi4xL3Rlc3RpbmcvUkVBRE1FCj4KPiBEaXNjYXJkIHRoZSBjb21tZW50IGFib3V0IFNwZWVjaCBE
aXNwYXRjaGVyLCBhIGZhaXJseSByZWNlbnQKPiBvbmUgaXPCoMKgwqDCoCBhbHJlYWR5IGluIFNs
aW50Lgo+Cj4gTW9yZToKPiBodHRwczovL3NsaW50LmZyL2RvYy8KPgo+IENoZWVycywKPiBEaWRp
ZXIKPiAtLSAKPiBEaWRpZXIgU3BhaWVyCj4KPiBMZSAyMS8wNy8yMDIxIMOgIDA4OjUzLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIGFsbCwKPj4K
Pj4KPj4gSSBqdXN0IGNoZWNrZWQgdGhlIHZlcnNpb24gb2YgVGh1bmRlcmJpcmQgaW4gc2xpbnQs
IGFuZCBJIHNhdyBpdCBpcyAKPj4gYWJvdXQgMTAgdmVyc2lvbnMgb3V0IG9mIGRhdGUuIElzIHRo
ZXJlIGEgd2F5IHRvIGdldCBhIG5ld2VyIHZlcnNpb24gCj4+IG9mIHRoZSBzb2Z0d2FyZT8gSSBr
bm93LCBJIGNhbiBwcm9iYWJseSBnZXQgaXQgZnJvbSBnaXRodWIsIGJ1dCBJIAo+PiBtdXN0IGFk
bWl0LCBpdCBpcyBub3QgbXkgZmF2b3JpdGUgd2F5IG9mIGluc3RhbGxpbmcgc29mdHdhcmUuCj4+
Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

