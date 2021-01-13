Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5797C2F52BC
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 19:55:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610564124;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SPGKdCw7BY3nIYnAXKoXxdfbV0fxzeOd5xfY18f1uds=;
	b=C4CoPT5PkMGCCGc8ZmuL5Nm84aR54Q9/8VR+FKyP8WpUW3Wkj58Tn+WToSJKko3J3oCxlz
	aW/6ra+aSHGNd/nOT9oTXxxgj0LCsV493wAwMZrG+TAtsbSay9kG129QKBFMeN35TAon8M
	4IUKIpxyBGE1J032rjLx+wnuHxOZTGY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-334-6UlOdJUJM5mOBCKGorLM0w-1; Wed, 13 Jan 2021 13:55:22 -0500
X-MC-Unique: 6UlOdJUJM5mOBCKGorLM0w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B55E107ACF7;
	Wed, 13 Jan 2021 18:55:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 152415D9DD;
	Wed, 13 Jan 2021 18:55:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC3ED4A7C6;
	Wed, 13 Jan 2021 18:55:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10DItEDN014741 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 13:55:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2DF592166B2C; Wed, 13 Jan 2021 18:55:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28F182166B2A
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 18:55:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EC2B811E76
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 18:55:12 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-233-7hM1_QLBMv6NG3DRWBP8Vg-1; Wed, 13 Jan 2021 13:55:09 -0500
X-MC-Unique: 7hM1_QLBMv6NG3DRWBP8Vg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DGGpj3D4fzJfs
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 13:55:09 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DGGpj2mv1zcbc; Wed, 13 Jan 2021 13:55:09 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DGGpj2Z7yzcbV
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 13:55:09 -0500 (EST)
Date: Wed, 13 Jan 2021 13:55:09 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Fwd: Does anyone on here read code in braille?
In-Reply-To: <007b01d6e9ce$0a27e5d0$1e77b170$@yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2101131353340.25393@panix1.panix.com>
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>
	<A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
	<alpine.DEB.2.22.394.2101130842170.2197@precision-M2800>
	<007b01d6e9ce$0a27e5d0$1e77b170$@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10DItEDN014741
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QW5vdGhlciByZWFzb24gdG8gYXZvaWQgY29udHJhY3RlZCBicmFpbGxlIGlzIGlmIHlvdSBhcmUg
YXNrZWQgdG8gY29kZSAKc29tZSBhcHBsaWNhdGlvbiB3aGVyZSBzcGFjaW5nIG11c3QgbGluZSB1
cCBleGFjdGx5IGNvbnRyYWN0ZWQgYnJhaWxsZSAKd2lsbCBkaXN0b3J0IHlvdXIgc3BhY2luZyB3
aGVyZSBjb21wdXRlciBicmFpbGxlIHdpbGwgZGlzdG9ydCBmYXIgbGVzcy4KCgoKT24gV2VkLCAx
MyBKYW4gMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4g
SSdtIHN0aWxsIGxlYXJuaW5nIGJyYWlsbGUganVzdCBmb3IgdGhpcyBwdXJwb3NlLiAgSSBoYXZl
IGFuIG9sZCBQYWMgTWF0ZSA0MCBjZWxsIC4KPgo+IEFzIEknbSBzdGlsbCB3b3JraW5nIG9uIGdy
YWRlIDEgVVMsIGNhbiBhbnlvbmUgc3VnZ2VzdHMgd2hhdCBvdXRwdXQgZm9ybWF0IHdvcmtzIGJl
dHRlcj8gIEkgYXNzdW1lICJjb21wdXRlciBicmFpbGxlIiBidXQgSSBhbSB3b25kZXJpbmcgaWYg
Y29udHJhY3RlZCBicmFpbGxlIHdvdWxkIGhlbHAgd2l0aCB0aGUgbG9uZ2VyIGxpbmVzIG9mIGNv
ZGUuLi4gIEFueSB0aXBzIG9uIGhvdyB0byBkZXZlbG9wIGJldHRlciBicmFpbGxlIHNraWxscyB3
b3VsZCBiZSBhcHByZWNpYXRlZCB0b28gYXMgSSdtIHNlbGYtdGVhY2hpbmcuCj4KPiAJRGFuCj4K
Pgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogYmxpbnV4LWxpc3QtYm91bmNl
c0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBP
ZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4gU2VudDogV2VkbmVzZGF5LCBK
YW51YXJ5IDEzLCAyMDIxIDk6NDUgQU0KPiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPiBTdWJqZWN0OiBSZTogRndkOiBEb2Vz
IGFueW9uZSBvbiBoZXJlIHJlYWQgY29kZSBpbiBicmFpbGxlPwo+Cj4gSSB1c2UgYnJhaWxsZSBl
eGNsdXNpdmVseSAob3IgdHJ5IHRvIGFueXdheSkgb24gbGludXggYW5kIHdpbmRvd3MuICBJIHVz
ZSBlaXRoZXIgYW4gNDAgb3IgODAgY2VsbCBvbmUgbGluZSBkaXNwbGF5IGRlcGVuZGluZyBvbiBk
ZXNrIHNwYWNlLiAgWWVzIHRoZXkgYXJlIGV4cGVuc2l2ZSBidXQgZm9yIGNvZGUgSSBmaW5kIHRo
ZW0gaW5kaXNwZW5zaWJsZS4gIEVzcGVjaWFsbHkgaWYgeW91IGFyZSB3b3JraW5nIHdpdGggY29k
ZSB0aGF0IHVzZXMgbG90cyBvZiBzaG9ydCBuYW1lcy4KPgo+IFRvbQo+Cj4KPiBPbiBXZWQsIDEz
IEphbiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4+
Cj4+Cj4+IEFzaGxleQo+Pgo+PiBCZWdpbiBmb3J3YXJkZWQgbWVzc2FnZToKPj4KPj4+IEZyb206
IEFzaGxleSBCcmVnZXIgPGFicmVnZXJAaXZ5dGVjaC5lZHU+Cj4+PiBEYXRlOiBKYW51YXJ5IDEz
LCAyMDIxIGF0IDEyOjM1OjE5IEFNIENTVAo+Pj4gVG86IEFzaGxleSBCcmVnZXIgPGFzaGJyZWdl
ckB5YWhvby5jb20+Cj4+PiBTdWJqZWN0OiBGd2Q6IERvZXMgYW55b25lIG9uIGhlcmUgcmVhZCBj
b2RlIGluIGJyYWlsbGU/Cj4+PiAKPj4+IO+7vwo+Pj4gCj4+PiBBc2hsZXkKPj4+IAo+Pj4gQmVn
aW4gZm9yd2FyZGVkIG1lc3NhZ2U6Cj4+PiAKPj4+PiBGcm9tOiBBc2hsZXkgQnJlZ2VyIDxhYnJl
Z2VyQGl2eXRlY2guZWR1Pgo+Pj4+IERhdGU6IEphbnVhcnkgMTMsIDIwMjEgYXQgMTI6MjU6MTEg
QU0gQ1NUCj4+Pj4gVG86IExpbnV4IDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+Pj4+IFN1Ympl
Y3Q6IERvZXMgYW55b25lIG9uIGhlcmUgcmVhZCBjb2RlIGluIGJyYWlsbGU/Cj4+Pj4gCj4+Pj4g
77u/SGkgZ3V5cyBJIHdhcyB3b25kZXJpbmcgaWYgYW55b25lIG9uIGhlcmUgcmVhZHMgY29kZSBp
biBicmFpbGxlPyBJZiBzbyBkbyB5b3UgcmVhZCBpdCBsaW5lIGJ5IGxpbmUgb3IgYXJlIHlvdSBh
YmxlIHRvIHJlYWQgbXVsdGlwbGUgbGluZXMgYXQgb25jZT8gQW5kIHdoYXQgZGlzcGxheXMgZG8g
eW91IHVzZSBmb3IgcmVhZGluZyBjb2RlPwo+Pj4+IAo+Pj4+IAo+Pj4+IEFzaGxleQo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

