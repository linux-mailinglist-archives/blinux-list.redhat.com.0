Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FAC6F0B0F
	for <lists+blinux-list@lfdr.de>; Thu, 27 Apr 2023 19:40:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682617211;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ytXJkKzpKq78T03gDb3Kk4o0I7O7am9wROn/dNBNugs=;
	b=GBGG1xH28DsXrYC2IVOgKlcqNVpu4GtJqTUGAc225IsjtQi7v4CVRk9xROYKIa0eQoLYBv
	ACT3d56nuAoBOx0rjC9/LH0OZ97cUjDdFNrAkFl2yPys/Fm21ghloFaEUQt0UeLHE+xbUH
	tvWzfv6iXs0bsALwO20kKjonzFfxmxk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-610-ETM3WmnhO0ePsmrMy5USjw-1; Thu, 27 Apr 2023 13:40:06 -0400
X-MC-Unique: ETM3WmnhO0ePsmrMy5USjw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D4205280BC80;
	Thu, 27 Apr 2023 17:40:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A8232492C13;
	Thu, 27 Apr 2023 17:40:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2A4171946A52;
	Thu, 27 Apr 2023 17:40:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Apr 2023 13:40:00 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Configuring terminal and referencing username in bash scripts.
In-Reply-To: <mailman.1865.1682604061.2351824.blinux-list@redhat.com>
References: <mailman.1671.1682536977.2351823.blinux-list@redhat.com>
 <mailman.1865.1682604061.2351824.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2039.1682617204.2351820.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgdGhlIHNjcmlwdCBpcyBpbiB0aGUgaG9tZSBkaXJlY3Rvcnkgb2YgdGhlIHVzZXIsIC4vc2Ny
aXB0LnNoIHNob3VsZCBkbwppdC4gIFRoZSB0ZXJtaW5hbCBoYXMgbWVudXMgYWNjZXNzaWJsZSB3
aXRoIHRoZSBzdXBlciBrZXkgdGhlbiB1c2UgYXJyb3dzCnRvIG5hdmlnYXRlIGFuZCBlbnRlciB0
byBhY3RpdmF0ZS4KCgotLSBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUg
YXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgpkZWZlbnNlIG9mIGxpYmVydHk6IHNvYXAsIGJh
bGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdApvcmRlci4iIEVkIEhvd2Rl
cnNoZWx0IDE5NDAuCgpPbiBUaHUsIDI3IEFwciAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgoKPiDCoMKgwqAgSWYgaXQgdXNlcyBNYXRlIHRlcm1pbmFsLCB0
aGUgLmJhc2hfcHJvZmlsZSBkb2Vzbid0IGdldCByZWFkIGJ5IGRlZmF1bHQuwqAKPiBZb3UgY291
bGQgcHV0IHRoZW0gaW4gLmJhc2hyYyBhbmQgaXQgc2hvdWxkIHJlYWQgdGhlbSB3aGVuIHRoZSB0
ZXJtaW5hbCBpcwo+IG9wZW5lZC7CoCBJIHRoaW5rIC5iYXNocmMgaXMgcmVhZCBldmVyeSB0aW1l
IGEgc2hlbGwgaXMgaW52b2tlZCwgc28gdGhhdCBpcwo+IHNvbWV0aGluZyB0byBiZSBhd2FyZSBv
Zi4KPgo+IFlvdSBjYW4gYWxzbyBoYXZlIE1hdGUgdGVybWluYWwgaW52b2tlIGEgc2NyaXB0IGZv
ciB5b3UsIGJ1dCBJJ3ZlIG5ldmVyIGRvbmUKPiB0aGF0LsKgIFR5cGUgbWFuIG1hdGUtdGVybWlu
YWwuCj4KPgo+Cj4KPiA+IE9rYXksIHNvIEkndmUgYmVlbiB1c2luZyBhIH4vLmJhc2hfcHJvZmls
ZSBmaWxlIHdpdGggdGhlIGZvbGxvd2luZyBjb250ZW50czoKPiA+Cj4gPiBybSAtZiB+Ly5iYXNo
X2hpc3RvcnkKPiA+IGV4cG9ydCBQUzE9JyQodHR5IHwgc2VkICdzI14vZGV2L3R0eSMjJylcJCcK
PiA+IGV4cG9ydCBQQVRIPX4vUHJvZ3JhbW1pbmcvYmFzaC1zY3JpcHRzOiRQQVRICj4gPgo+ID4g
VG8gY2xlYXIgdGhlIGNvbW1hbmQgaGlzdG9yeSBmcm9tIHRoZSBwcmV2aW91cyBzZXNzaW9uLCBj
aGFuZ2UgdGhlCj4gPiBwcm9tcHQgdG8gc29tZXRoaW5nIGV4dHJlbWVseSBzaG9ydCBpbnN0ZWFk
IG9mIHRoZSBkZWZhdWx0IHVzZXJAaG9zdAo+ID4gL3BhdGgvdG8vd29ya2luZy9kaXJlY3Rvcnks
IGFuZCB0byBhZGQgdGhlIGRpcmVjdG9yeSB3aGVyZSBJIHN0b3JlIG15Cj4gPiBiYXNoIHNjcmlw
dHMgdG8gbXkgcGF0aC4KPiA+Cj4gPiBJdCB3b3JrcyB3aGVuIGxvZ2dpbmcgaW50byB0aGUgY29u
c29sZSwgYnV0IEkgcmVjZW50bHkgYm91Z2h0IGEgbmV3Cj4gPiBkZXNrdG9wIGFuZCBkZWNpZGVk
IHRvIGdpdmUgcnVubmluZyBhIGZ1bGwgZGVza3RvcCBhIGdvIHNpbmNlIEknbSBubwo+ID4gbG9u
Z2VyIHJ1bm5pbmcgYSAxMi15ZWFyLW9sZCBDUFUgd2l0aCA0R0Igb2YgUkFNLCBhbmQgd2hpY2hl
dmVyCj4gPiB0ZXJtaW5hbCBlbXVsYXRvciBEZWJpYW4gTWF0ZSB1c2VzIGJ5IGRlZmF1bHQgaXMg
Y2xlYXJseSBpZ25vcmluZwo+ID4gfi8uYmFzaF9wcm9maWxlLgo+ID4KPiA+IFNvIGlzIHRoZXJl
IHNvbWV3aGVyZSBJIGNhbiBwdXQgdGhlIGFib3ZlIGxpbmVzIHNvIHRoZXknbGwgYmVzb3VyY2Vk
Cj4gPiBib3RoIHdoZW4gbG9nZ2luZyBpbnRvIGEgdGV4dC1vbmx5IGNvbnNvbGUgYW5kIHdoZW4g
bGF1bmNoaW5nIGEKPiA+IHRlcm1pbmFsIGVtdWxhdG9yPwo+ID4KPiA+IEFsc28sIEkgaGF2ZSBz
b21lIHNjcmlwdHMgdG8gYXV0b21hdGUgc3NoaW5nIGludG8gc29tZSByZW1vdGUgaG9zdHMgb3IK
PiA+IG1vdW50aW5nIHRoZSByZW1vdGUgZmlsZXN5c3RlbXMgbG9jYWxseSwgYW5kIHBhcnQgb2Yg
aXQgaW52b2x2ZXMKPiA+IGNyZWF0aW5nIGEgbW91bnR0dCBwb2ludCB0aGF0IG5lZWRzIHRvIGJl
IGNob3duIHRvIG15IHVzZXIuIElzIHRoZXJlIGEKPiA+IHNoZWxsIHZhcmlhYmxlIEkgY2FuIHVz
ZSB0byBtYWtlIHRoZXNlIHNjcmlwdHMgd29yayBmb3IgYW55IHVzZXIKPiA+IGluc3RlYWQgb2Yg
bmVlZGluZyB0byBlZGl0IHRoZSBzY3JpcHQgdG8gdXNlIHRoZSBuYW1lIG9mIHRoZSB1c2VyIEkn
bQo+ID4gbG9nZ2VkIGluIGFzPwo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

