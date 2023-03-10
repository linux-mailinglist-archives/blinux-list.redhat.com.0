Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF966B4C2B
	for <lists+blinux-list@lfdr.de>; Fri, 10 Mar 2023 17:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678464530;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xS05TvHgLjdURaxl/HkOcZoVvWm6YiVxG3mO548BiRo=;
	b=KlH/zLwnYixg0e97+J2HwNJ5SheTrG6YqApsQ6DnCsasdajIUwhwKw3UlRDG4mVPrj20Qn
	Z5SqhoZwELLlq6ZEj+BS+270I0de32XQvzIFNeA4ym2vwRahQ/oR8rcPv7BMOEBnY2oTlS
	gy2wIaJ0QVWIDF97ds9RaV0zIG9FoUc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-375-5z1M2CEJN9yiQnk3DugMbA-1; Fri, 10 Mar 2023 11:08:48 -0500
X-MC-Unique: 5z1M2CEJN9yiQnk3DugMbA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9674E8030D0;
	Fri, 10 Mar 2023 16:08:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2E62AC15BAE;
	Fri, 10 Mar 2023 16:08:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B3B0D1946A66;
	Fri, 10 Mar 2023 16:08:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Mar 2023 16:08:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: XFCE a11Y specific tweaks?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
 <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
 <mailman.2342.1678458650.1521161.blinux-list@redhat.com>
 <mailman.2251.1678458737.1521165.blinux-list@redhat.com>
In-Reply-To: <mailman.2251.1678458737.1521165.blinux-list@redhat.com>
Message-ID: <mailman.2566.1678464519.1521163.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2hhdCBkbyB5b3UgbWVhbiBxdWl0IHNhdmluZz8KCk9uIDEwLzAzLzIwMjMgMTQ6MzIsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSXQgZG9lcywgYXMgYSBwbGVh
c2FudCBzdXJwcmlzZS4KPgo+Cj4gTm93IGlmIGl0J2QgcXVpdCByYW5kb21seSBzYXZpbmcgbXkg
c2Vzc2lvbnMsIHRoYXQnZCBoZWxwLiBJJ3ZlIGEgbWluZCAKPiB0byBqdXN0IHN0YXJ0IGJydXRl
IGZvcmNpbmcgdGhhdCBvbmUuIEkgbGlrZSB3aGF0IFhGQ0UgaXMgZ29pbmcgZm9yLCAKPiBpdCdz
IGFic29sdXRlbHkgbGlnaHQgYW5kIGdvb2QgZm9yIG15IGxvdyBwb3dlciBtYWNoaW5lCj4KPiBP
biAzLzEwLzIzIDE0OjMwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+PiB5ZXMgYW5kIGhhcyBmb3Igc29tZSB0aW1lIGJ5IG5vdy7CoCBJIHVzZWQgaXQgYSBjb3Vw
bGUgeWVhcnMgYWdvLgo+Pgo+Pgo+Pgo+PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29t
PiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+PiBkZWZlbnNlIG9mIGxpYmVy
dHk6Cj4+IMKgIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhh
dCBvcmRlci4iCj4+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+Pgo+PiAuCj4+Cj4+
IE9uIEZyaSwgMTAgTWFyIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+Cj4+PiBEb2VzIG9yY2Egd29yayB3aXRoIHggZiBjIGUgbm93Pwo+Pj4KPj4+PiBP
biBNYXIgMTAsIDIwMjMsIGF0IDAyOjE3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIAo+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IFF1aWNr
IHF1ZXN0aW9uLiBJJ3ZlIHB1dCBYRkNFwqAgb24gYW4gQXJjaCBpbnN0YWxsIG9uIGFuIG9sZCBs
YXB0b3AsIAo+Pj4+IHNpbmNlIGl0J3Mgb25lIHRoYXQgdGFrZXMgdXAgdGhlIGxlYXN0IHNwYWNl
IG91dCBvZiBhbGwgZGVza3RvcHMgCj4+Pj4gYW5kIGlzIGxpZ2h0d2VpZ2h0Lgo+Pj4+Cj4+Pj4K
Pj4+PiBTbyB3aGF0IGFyZSBzb21lIHN1Z2dlc3RlZCB0aGluZ3MgSSBzaG91bGQgZG8gZnJvbSBh
biBBMTFZIAo+Pj4+IHN0YW5kcG9pbnQ/IEknbSBzZXR0aW5nIHVwIHNob3J0Y3V0cyBmb3IgdGhp
bmdzIGxpa2UgRmlyZWZveCBvciAKPj4+PiBUaHVuZGVyYmlyZCwgYW4gc28gb24uIEkndmUgY2hl
Y2tlZCB0aGUgYm94IGZvciBhc3Npc3RpdmUgdGVjaCwgCj4+Pj4gSSd2ZSBzZXQgbXkgLmJhc2hy
YyB1cCBjb3JyZWN0bHkuCj4+Pj4KPj4+Pgo+Pj4+IFNvIHdoYXQgWEZDRSBzcGVjaWZpYyB0aGlu
Z3MgZG8gcGVvcGxlIHN1Z2dlc3Q/IEknbSBzdGFydGluZyB0byAKPj4+PiBsaWtlIFhGQ0Ugbm93
IEkndmUgZ290IHRoZSBoYW5nIG9mIGl0IGEgbGl0dGxlLCBqdXN0IHdvbmRlcmluZyB3aGF0IAo+
Pj4+IEExMVkgdGhpbmdzIEkgbmVlZCB0byBkbyBpbiBvcmRlciB0byBnZXQgdGhlIGxhc3QgZmV3
IGtpbmtzIG91dCBvZiBpdAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPj4+Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

