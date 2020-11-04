Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9FCC62A5B2B
	for <lists+blinux-list@lfdr.de>; Wed,  4 Nov 2020 01:47:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604450837;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qcz5URbSP+hXUKsp2bmq36DbYyN+TpuLZ7Kdi9gaZLI=;
	b=VJNZg3fbMYO1Ko2+rvmGEPQ+VSIl1gzBJ2AWO7G4h47M3lkB0IGto0yBz/P2ZjmSpczWdc
	zVknTpD7UyV41Iy/93A7fSMxnaWXsLrs2SHFM6Nz1GZSDIcKwtTFq25+v+zSQomzKlafQP
	No/J619+V1SkA/vhnfV4spUd9LQV8pA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-569-K8t2Yx7KMomV3o1pW6Sv9A-1; Tue, 03 Nov 2020 19:47:15 -0500
X-MC-Unique: K8t2Yx7KMomV3o1pW6Sv9A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC3101007468;
	Wed,  4 Nov 2020 00:47:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E17C6EF6A;
	Wed,  4 Nov 2020 00:47:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F4A5180B658;
	Wed,  4 Nov 2020 00:47:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A40kwIh006369 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 19:46:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 90F721016D9F; Wed,  4 Nov 2020 00:46:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CDD31134CD0
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 00:46:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75428800969
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 00:46:56 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-285-ZBhVFJ1dOlu8Bu3a4Fe6Vg-1; Tue, 03 Nov 2020 19:46:54 -0500
X-MC-Unique: ZBhVFJ1dOlu8Bu3a4Fe6Vg-1
Received: by mail-ot1-f52.google.com with SMTP id g19so8367044otp.13
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 16:46:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=P9ss9/KE1eYbKICHuK+uIq8WcL9ttL0P+7dU8Bsrtgw=;
	b=X5eokx/T0q9/a5iMg87UVKI0XKXuUJ653OzYIRhOzSJ1caEN2bx+b0rjhMmmtI0IVr
	VUl6s/NOm90nmxH3ML1Fb+ZfRtW+jlTf4i6LPPs8iNslQG3VNT44CMXgkxkcYSmNoX0i
	EcHIZmZKqu0RmmZiPJ8mrU2z6zldbTQeZ2woKC/LMYQ9+O0Z/QO6y1O10k3jZqajAAbq
	2AbS1YuGgt+k+3OyooNj/Zi+PYVv8WSrecwLsHZms1HzzdVE4c88X5We9Shs/Fv8GBaD
	cnA6Ujxyj8e598gsYJLTM/ZmgL7A2kJRog9jWdb3regKHYw/aB6Gb31fDTNOzD0bjJv2
	xTkg==
X-Gm-Message-State: AOAM532xxxIx7mz7znV8gfz11ebQQzAifjtJJNJ6tEZ65mhsUXaOCZu/
	1k35A39M6JyImNurCiVGHjYrBxf8WzhK+A==
X-Google-Smtp-Source: ABdhPJxLqV5xQfNrYPKTCYlA1/ysx7A7RDKc7EGKzB+zZtPUWyuBrn9sQab2g5FUHI3Ue/Ic1QDMAw==
X-Received: by 2002:a9d:4d83:: with SMTP id u3mr13104587otk.283.1604450813067; 
	Tue, 03 Nov 2020 16:46:53 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:8c7f:b214:116c:ac94?
	([2601:3c2:8200:9360:8c7f:b214:116c:ac94])
	by smtp.gmail.com with ESMTPSA id s189sm86877oig.46.2020.11.03.16.46.51
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Nov 2020 16:46:52 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: arch linux and broadcom
Date: Tue, 3 Nov 2020 18:46:50 -0600
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
Message-Id: <3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A40kwIh006369
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIHlldCBhbm90aGVyIGlkZWEuClNpbmNlIHRoaXMgbWFjaGluZSBvbiB3aGljaCBJIHdh
bnQgdG8gcHV0IGFyY2ggcnVucyB1YnVudHUsIGNvdWxkIEkgdXNlIHVidW50dSB0byBmaW5kIHdo
YXQgaGFyZHdhcmUgYW5kL29yIGRyaXZlciBJIHdvdWxkIG5lZWQgd2l0aCBhcmNoPwoKPiBPbiBO
b3YgMywgMjAyMCwgYXQgMjo0MiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gdG8gc2VlLCB3aGV0aGVyIHlv
dSBuZWVkIGRyaXZlcnMgb3Igbm90IGkgbmVlZCB0byBsb29rIGF0IHlvdXIgbHMtcGNpIG91dHB1
dC4KPiBvciB5b3UgY2FuIHByb3ZpZGUgeW91ciBtb2RlbCBpZiBpdCdzIGEgbGFwdG9wLgo+IAo+
IDAzLjExLjIwMjAgMjM6MDQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g0L/Q
uNGI0LXRgjoKPj4gSSB3ZW50IHRoZXJlLCBidXQgZmFpbGVkIHRvIHVuZGVyc3RhbmQgbXVjaC4g
IEl0IHdhcyBzdWdnZXN0ZWQgb25lIGNvdWxkIGdvIGdldCBkcml2ZXJzLCBidXQgaG93IG1pZ2h0
IHRoaXMgYmUgZG9uZSBpZiB0aGUgbWFjaGluZSBjYW5ub3QgZ2V0IG9uIHRoZSBuZXQ/Cj4+IAo+
Pj4gT24gTm92IDMsIDIwMjAsIGF0IDI6MDIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4gCj4+PiBoZWxsbyBj
YW4geW91IHByb3ZpZGUgbHMtcGNpIG91dHB1dC4KPj4+IGRpZCB5b3UgbG9vayBvbiB0aGUgYXJj
aHdpa2k/Cj4+PiAKPj4+IDAzLjExLjIwMjAgMjI6NTMsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24g0L/QuNGI0LXRgjoKPj4+PiBJIGdvdCBhcmNoIG9uIGEgdXNiIHN0aWNrLgo+
Pj4+IEFmdGVyIGJvb3RpbmcgYW5kIHVzaW5nIGFycm93IGRvd24sIHRoZW4gZW50ZXIsIGFyY2gg
Y2FtZSB1cCB0YWxraW5nLgo+Pj4+IEJ1dCBldmVuIHRob3VnaCB0aGVyZSBpcyBhbiBldGhlcm5l
dCBjYWJsZSwgSSBjYW5ub3QgZ2V0IG9uIHRoZSBuZXQuCj4+Pj4gTmV2ZXIgaXMgdGhpcyBhIHBy
b2JsZW0gd2l0aCB1YnVudHUgb3IgcG9wIG9zIG9yIHdpdGggZmVkb3JhLgo+Pj4+IEFueW9uZSBh
d2FyZSBvZiBhIHdheSBvZiBnZXR0aW5nIG9uIHRoZSBuZXQ/Cj4+Pj4gSSBhbHNvIGhhdmUgYSB1
IHMgYiB3aXJlbGVzcyB3aWZpIGFkYXB0b3IsIGJ1dCB3aXRoIGFyY2gsIG5vdCBzdXJlIHdoYXQg
dG8gZG8uCj4+Pj4gCj4+Pj4gCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Pj4gCj4+PiAtLSAKPj4+IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+
Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4g
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBz
Oi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IC0tIAo+
IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

