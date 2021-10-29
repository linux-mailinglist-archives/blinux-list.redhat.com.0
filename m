Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 661E2440196
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 19:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635530217;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JhRnJQfp5/tWrXis6V4+gl5JJEH67so5oQHH3WGIUrY=;
	b=DXKdly3m8AK7/ChCwQA1CvBZoThwDqPXDr+fJJsVHvweOLovh35EisHNwIzKbnodKtGblZ
	YnC2f8M5ANHV421G0n4JydZ1P55fWQEc5p5gaFQEo2TPXM6RVvvceX7swVrclSGlCMK88M
	6gUo9yWqT43S05PTG/HO8hoYsjezTC4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-541-3hAzMY9QPLqoCOxdZhMhVQ-1; Fri, 29 Oct 2021 13:56:55 -0400
X-MC-Unique: 3hAzMY9QPLqoCOxdZhMhVQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F2835721F;
	Fri, 29 Oct 2021 17:56:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEB135DF56;
	Fri, 29 Oct 2021 17:56:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CE1AC1806D03;
	Fri, 29 Oct 2021 17:56:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19THp5FN001462 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 13:51:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ACED4400F3F3; Fri, 29 Oct 2021 17:51:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A8745400F3E5
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 17:51:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8DB8D185A794
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 17:51:05 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-55-JDXbzPW9OlSRLeR2fSw3Kg-1; Fri, 29 Oct 2021 13:51:03 -0400
X-MC-Unique: JDXbzPW9OlSRLeR2fSw3Kg-1
Received: by mail-qk1-f176.google.com with SMTP id a132so9043298qkg.0
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 10:51:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=LLSbavZnO4hex4476xuWHZVc39k2O0OqRxm9r+iZPSU=;
	b=Rqj402hzWX13M+G0Ok5yUdTvSkwcIHeiP3UdwhdCUSLQbAmydvB5mHyOfNnoZDgAOn
	WK1+vDr8cPELtkqJt5JjI64F9hUy8Y6TdgaXlCT9A8o4/lpMajVzYBRQkeBzlTYB12ZU
	BEbU9B9tbD/45/0BG3exieHovhgHp1in3kXdhOlcTEaaUArHh3O3osjimGCDpnGrkQ4T
	TS5neBfKAnnJNfrT/eYL8eKVYWedXN48KPhcD+vdkRUzn9SIs4evPPAmjUTg2cDc09Pm
	727PQXqUFAtw3EgPSJSmiWvWGxXWIrXOTf3JMXWy5tR3piByEx3FTJP0V3z6ESAaPMyA
	JbnA==
X-Gm-Message-State: AOAM5323jDty5o+wdC/CNd4F48egridVon5w92ZvfEvGDUI2VjsSvQiT
	acBBn/ERI3pUsOBcMUtS3Akh4vPcHSC8GA==
X-Google-Smtp-Source: ABdhPJw8XotV50JSYGo7RpuqGxO77ten3OYkzdkrTszLOBINwEm/+pa7t2vb5gkHaY34vkjLDVebTw==
X-Received: by 2002:a05:620a:1999:: with SMTP id
	bm25mr10417705qkb.40.1635529863232; 
	Fri, 29 Oct 2021 10:51:03 -0700 (PDT)
Received: from smtpclient.apple ([2601:c8:300:2f6:3cd6:da99:7526:291a])
	by smtp.gmail.com with ESMTPSA id
	s17sm5126353qtw.95.2021.10.29.10.51.02 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 29 Oct 2021 10:51:03 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Accessible Coconut speech at startup
Date: Fri, 29 Oct 2021 13:51:01 -0400
Message-Id: <F9A34440-26A3-40BA-8916-B47339117C16@gmail.com>
References: <A28FA6FD-D263-49A8-A589-54154D864D34@gmail.com>
In-Reply-To: <A28FA6FD-D263-49A8-A589-54154D864D34@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19THp5FN001462
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHJlc3MgYWx0IHBsdXMgRjEuCkRvIHlvdSBoZWFyIHNwZWVjaD8KSWYgbm90LCBwcmVzcyBlc2Nh
cGUuClByZXNzIGFsdCBwbHVzIEYyClR5cGUgCm9yY2EKUHJlc3MgZW50ZXIuClRoaXMgc2hvdWxk
IGZpeCBpdC4KCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMToy
NSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gCj4g77u/SXMgdGhlcmUgYSBzdGVwIGJ5IHN0ZXAgdHV0b3JpYWwg
b24gaG93IHRvIHN0YXJ0Pwo+IEkgZG93bmxvYWRlZCB0aGUgYWNjZXNzaWJsZSBjb2NvbnV0IGlz
byBhbmQgcHV0IGl0IG9uIGEgYm9vdGFibGUgdXNiIGRyaXZlLiBJIHdhcyBhYmxlIHRvIGJvb3Qg
dGhlIG1hY2hpbmUgZnJvbSB0aGUgdXNiLCBidXQgdGhlcmUgd2FzIG5vIHNwZWVjaCB0byBndWlk
ZSBtZS4gSSB3YXMgYWJsZSB0byBjb25maXJtIHRoYXQgSSBpbmRlZWQgYm9vdGVkIGZyb20gdXNi
IHdpdGggYWNjZXNzaWJsZSBjb2NvbnV0IGJ5IHVzaW5nIG15IGlQaG9uZSBjYW1lcmEuIEkgaGF2
ZSBubyBpZGVhIGhvdyB0byBnZXQgdGhlIHNwZWVjaCBnb2luZy4gU28gcGxlYXNlIGlmIHlvdSBo
YXZlIGEgdHV0b3JpYWwsIHNlbmQgaXQgbXkgd2F5Lgo+IElicmFoaW0KPiAKPiBTZW50IGZyb20g
bXkgaVBob25lCj4gCj4+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTA6MjkgQU0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+
PiAKPj4g77u/SGVsbG8sCj4+IFdoZW4gdXNpbmcgdGhlIGxpdmUgQ0QsIFRoZSBzY3JlZW5yZWFk
ZXIgc3RhcnRlZCBhdCBib290Lgo+PiBCdXQgYSAgYWZ0ZXIgSSBpbnN0YWxsZWQgaXQsIEkgZ2V0
IG5vIHNjcmVlbnJlYWRlciBhdCBzdGFydHVwLgo+PiBBbGwgc2V0dGluZ3MgYXMgZmFyIGFzIEkg
a25vdyBhcmUgY29ycmVjdC4KPj4gVGhlIG9ubHkgd2F5IHRvIGdldCBzcGVlY2ggaXMgdG8gZ28g
dG8gdGhlIHJ1biB3aW5kb3cgd2l0aCAKPj4gQWx0K0YyCj4+IFRoZW4gdHlwZSAKPj4gb3JjYQo+
PiBBbmQgcHJlc3MgZW50ZXIuCj4+IEkgcmVpbnN0YWxsZWQgbGludXggYW5kIGdvdCB0aGUgc2Ft
ZSByZXN1bHQuCj4+IEFzIEkgd2FzIGRvaW5nIHRoZSBpbnN0YWxsLCBJIGNoZWNrZWQgdGhlIGJv
eCB0byBnZXQgdXBkYXRlcyBkdXJpbmcgdGhlIGluc3RhbGwuIENvdWxkIHRoaXMgYmUgdGhlIGNh
dXNlIG9mIG15IHRyb3VibGU/Cj4+IAo+PiBUaGFua3MsCj4+IFJvYgo+PiAKPj4gCj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4gCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

