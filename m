Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF6967E9AB
	for <lists+blinux-list@lfdr.de>; Fri, 27 Jan 2023 16:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674833960;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fJPOfmroWrsFbuMu6b/D0CbB007fvuJRD3DygNlJnU0=;
	b=JLdsFfstkF7kf5TSoG3vRGKY3KOAy24vyk42q3Qi9xgo0cB7m+8c7H5uWYkw9g/XkxCMb0
	Txpz0ENP56Htb/M/Lsy/mHh8MALvqwAAlzUjKJEvt5CkP/vIHbcJlMoZigOgma/fyfqpQt
	Ss30zc0IoxxgZvMhMzFc60c3emdrokE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-84-kYBTls8mOy2D57bzcjirRA-1; Fri, 27 Jan 2023 10:39:16 -0500
X-MC-Unique: kYBTls8mOy2D57bzcjirRA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B61929ABA17;
	Fri, 27 Jan 2023 15:39:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1368F40C2064;
	Fri, 27 Jan 2023 15:39:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9CC7A19465A2;
	Fri, 27 Jan 2023 15:39:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 27 Jan 2023 10:39:11 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: new version of jenux
In-Reply-To: <mailman.2016.1674794167.8169.blinux-list@redhat.com>
References: <mailman.1526.1674764282.8176.blinux-list@redhat.com>
 <mailman.2016.1674794167.8169.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2185.1674833954.8170.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

aHR0cHM6Ly9uYXNoY2VudHJhbC5kdWNrZG5zLm9yZy9wcm9qZWN0cy8KVGhlIEplbnV4IHN0dWZm
IGlzIGF0IHRoZSB0b3Agb2YgdGhlIHBhZ2UgYW5kIGhlIGhhcyBtYW55IG1vcmUgcHJvamVjdHMg
b24KdGhhdCBwYWdlIHRvby4gIFRoZSBwYWdlIG1vc3QgZGVmaW5pdGVseSBleGlzdHMuCgoKCkp1
ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBi
ZSB1c2VkIGluCmRlZmVuc2Ugb2YgbGliZXJ0eToKIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFt
bW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCi1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAx
OTQwKQoKLgoKT24gVGh1LCAyNiBKYW4gMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKCj4gRG8geW91IGhhdmUgdGhlIGxpbmsgdG8gZG93bmxvYWQgSmVudXg/
wqAgSSBkb24ndCBrbm93IGlmIGhpcyBzaXRlIGV4aXN0cwo+IGFueW1vcmUsIGF0IGxlYXN0IEkg
Y291bGRuJ3QgZ2V0IHRvIGl0IGZyb20gZ29vZ2xlLgo+Cj4gTWlrZS4KPgo+IE9uIDEvMjYvMjAy
MyAxOjE3IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4g
SSBhbHJlYWR5IHNlbnQgdGhpcyBpbmZvIHRvIGRhbmllbCBuYXNoLiAgV2hhdCBoYXBwZW5zIG9u
IGEgcGVuZ3VpbiBwcm8gMTEKPiA+IGNvbXB1dGVyIHdoZW4gYm9vdGluZyB0aGlzIGplbnV4IGlu
c3RhbGxlciBpcyBpdCBib290cyB0byBhIHBvaW50IHRoZW4gYQo+ID4gbWVzc2FnZSBjb21lcyB1
cCBzYXlpbmcgcHJlc3MgYW55IGtleSB0byBzdG9wIHN5c3RlbSByZXN0b3JhdGlvbi4gIEF0IHRo
aXMKPiA+IHBvaW50IGl0IGRvZXNuJ3QgbWF0dGVyIHdoYXQga2V5IGlzIHByZXNzZWQsIHRoZSBz
eXN0ZW0gcmVib290cyBhbmQKPiA+IGNvbnRpbnVlcyBkb2luZyB0aGUgc2FtZSB0aGluZyBvbiBh
bGwgZnVydGhlciBib290cy4gIEkgbmVlZGVkIHNpZ2h0ZWQKPiA+IGhlbHAgdG8gc2VlIHRoaXMg
c2luY2UgdGhpcyBkb2Vzbid0IGRvIGFueSB0YWxraW5nLgo+ID4KPiA+Cj4gPgo+ID4gSnVkZSA8
amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVz
ZWQgaW4KPiA+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPiA+ICAgc29hcCwgYmFsbG90LCBqdXJ5LCBh
bmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPiA+IC1FZCBIb3dkZXJzaGVsdCAo
QXV0aG9yLCAxOTQwKQo+ID4KPiA+IC4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

