Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3760A6C8DF3
	for <lists+blinux-list@lfdr.de>; Sat, 25 Mar 2023 13:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679746953;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hYoVnFouxkcCRdlBUA9UP820fhiy4EOvrxqlwokCG7o=;
	b=XT/zTQ2PSbwbl1BeYcu33wHUySrw2xXWD4eg8H6M2nSpExcQggG+3y7pUwjMrdRjt+NGaC
	yZXr6PdWlKBR6RiCh4PDn6BtMULuifK7DkSHbYJvQfWjAfPYcKYAIG29razov7CxU5GUyy
	PchVo89dFlUZdZseC5xQN6zTnPpWZ0k=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-115-3jHaOha5MhC6tA_Ak9-lpg-1; Sat, 25 Mar 2023 08:22:29 -0400
X-MC-Unique: 3jHaOha5MhC6tA_Ak9-lpg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6244980C8C2;
	Sat, 25 Mar 2023 12:22:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7457E492B0A;
	Sat, 25 Mar 2023 12:22:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E3FD11946A6A;
	Sat, 25 Mar 2023 12:22:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 26A3914C17AC
Date: Sat, 25 Mar 2023 13:14:48 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [stormux] CAVI courses for up coming semester (fwd)
References: <mailman.30.1679738867.2676483.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.30.1679738867.2676483.blinux-list@redhat.com>
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
Message-ID: <mailman.48.1679746943.2676488.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RXQgc3DDuHJzbcOlbDogU8Olbm4gc29tIExpdiDDhXNlIFNrZWlkZSwgaGFyIGh1biBnw6V0dCBm
b3J0ZXJlIGVubiBtZWcsIGVsbGVyIGhhciBodW4gZ8OldHQga29ydGVyZT8KCkxhcnMKCk9uIFNh
dCwgTWFyIDI1LCAyMDIzIGF0IDA2OjA3OjQzQU0gLTA0MDAsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4gCj4gLS0gCj4gSnVkZSA8amRhc2hpZWwgYXQgcGFu
aXggZG90IGNvbT4KPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbiBkZWZlbnNl
IG9mIGxpYmVydHk6Cj4gc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1vLgo+IFBsZWFzZSB1c2Ug
aW4gdGhhdCBvcmRlci4iCj4gRWQgSG93ZGVyc2hlbHQgMTk0MC4KPiAKPiAtLS0tLS0tLS0tIEZv
cndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLS0KPiBEYXRlOiBTYXQsIDI1IE1hciAyMDIzIDAxOjMz
OjAzCj4gRnJvbTogU3Rvcm0gRHJhZ29uIDxzdG9ybV9kcmFnb25AbGludXgtYTExeS5vcmc+Cj4g
UmVwbHktVG86IHN0b3JtdXhAZ3JvdXBzLmlvCj4gVG86IFN0b3JtdXggPHN0b3JtdXhAZ3JvdXBz
LmlvPgo+IFN1YmplY3Q6IFtzdG9ybXV4XSBDQVZJIGNvdXJzZXMgZm9yIHVwIGNvbWluZyBzZW1l
c3Rlcgo+IAo+IEhvd2R5IEFsbCwKPiAKPiBIZXJlIGlzIGFuIGV4Y2VycHQgZnJvbSB0aGUgcG9z
dCBhYm91dCB0aGUgbmV3IENBVkkgc2VtZXN0ZXIuCj4gCj4gVGhlIGJlbG93IENBVkkgQ291cnNl
IE9mZmVyaW5ncyBoYXZlIGJlZW4gc2VsZWN0ZWQgZm9yIHRoaXMgc2VtZXN0ZXIsCj4gc2VtZXN0
ZXIgMSAyMDIzLiAgVGhlIG5ld2x5IHN0cnVjdHVyZWQgY291cnNlIGxpc3QgZm9yIHNlbWVzdGVy
IDEgMjAyMwo+IHdpbGwgYmUgaW5jbHVzaXZlIG9mOgo+IC0gTGludXggRXNzZW50aWFscwo+IC0g
SVQgRXNzZW50aWFscyB2Nwo+IC0gUHl0aG9uIEVzc2VudGlhbHMKPiBUaGUgY291cnNlcyBsaXN0
ZWQgYWJvdmUgYXJlIHdoYXQgd2Ugd2lsbCBiZSBvZmZlcmluZyBhcyBvZiB0aGUgMTB0aAo+IEFw
cmlsIDIwMjMgdGhlc2UgY291cnNlcyB3aWxsIGhhdmUgZmVlJ3MgYXR0YWNoZWQgYW5kIHRoZSBj
b3N0IHRvCj4gcGFydGljaXBhdGUgaXMgJDEwMC4wMCBVUyBwZXIgY291cnNlIG9mZmVyaW5nLCB0
aGVzZSBmZWUncyBjYW4gYmUgd2FpdmVkCj4gYmFzZWQgb24gZmluYW5jaWFsIGhhcmRzaGlwIGFu
ZCBvbiBhIGNhc2UtYnktY2FzZSBiYXNpcy4gRnVydGhlcgo+IGluZm9ybWF0aW9uIGFib3V0IHRo
ZSBhYm92ZSBjb3Vyc2VzIGNhbiBiZSBnYWluZWQgdmlhIHRoZSBlbWFpbCBhZGRyZXNzCj4gcHJl
c2NyaWJlZCBiZWxvdy4KPiBJZiB5b3Ugd291bGQgbGlrZSB0byBwYXJ0aWNpcGF0ZSwgY291bGQg
eW91IHBsZWFzZSBzZW5kIGFuIGVtYWlsIHRvCj4gbmVpbC5oaW5lc0BjdXJ0aW4uZWR1LmF1LCB3
aXRoIHRoZSBjb3Vyc2UgeW91J2QgbGlrZSB0byBwYXJ0aWNpcGF0ZSBpbiwKPiB5b3VyIGZpcnN0
IGFuZCBsYXN0IG5hbWUgcGx1cyB5b3VyIGRhdGUgb2YgYmlydGggYW5kIGNvdW50cnkgb2Ygb3Jp
Z2luLgo+IFRoZSBkZWFkbGluZSBmb3IgcmVnaXN0ZXJpbmcgeW91ciBpbnRlcmVzdCBpbiBhbnkg
b2YgdGhlc2UgY291cnNlCj4gb2ZmZXJpbmdzIGlzIHRoZSAzcmQgQXByaWwgMjAyMy4gV2Ugd2ls
bCBiZSBpbiBjb250YWN0IGR1cmluZyB0aGUgd2Vlawo+IGNvbW1lbmNpbmcgdGhlIDNyZCBBcHJp
bCBvciBiZWZvcmVoYW5kIHRvIGNvbmZpcm0gdGhlIGNvdXJzZSBkZXRhaWxzIGFuZAo+IHlvdXIg
ZW5yb2xtZW50IGludG8gZWl0aGVyIG9mZmVyaW5nIHBsdXMgcGF5bWVudCBmb3IgYWNjZXNzLCBt
YW55IHRoYW5rcwo+IGluIGFkdmFuY2UuLi4KPiAKPiAKPiBBcyB5b3UgbWF5IG9yIG1heSBub3Qg
a25vdywgSSBhbSB0aGUgaW5zdHJ1Y3RvciBmb3IgdGhlIFB5dGhvbgo+IEVzc2VudGlhbHMgY2xh
c3MuCj4gCj4gVGhhbmtzLAo+IFN0b3JtCj4gCj4gLS0gCj4gPz8KPiBBY2Nlc3NpYmxlIGxvdyBj
b3N0IGNvbXB1dGVycyBmb3IgZXZlcnlvbmUhIGh0dHBzOi8vc3Rvcm11eC5vcmcKPiBTdG9ybXV4
IFNob3A6IGh0dHBzOi8vc3Rvcm11eC5vcmcvc2hvcC8KPiBHZXQgbXkgcHVibGljIFBHUCBrZXk6
IGdwZyAtLXJlY3Yta2V5IDQzRERDMTkzCj4gVGhlIGdyZWF0IHRoaW5nIGFib3V0IE9iamVjdCBP
cmllbnRlZCBjb2RlIGlzIHRoYXQgaXQgY2FuIG1ha2Ugc21hbGwsIHNpbXBsZQo+IHByb2JsZW1z
IGxvb2sgbGlrZSBsYXJnZSwgY29tcGxleCBvbmVzLgo+IAo+IFN1cHBvcnQgU3Rvcm11eDogaHR0
cHM6Ly9rby1maS5jb20vc3Rvcm11eAo+IAo+IAo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tCj4g
R3JvdXBzLmlvIExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwgbWVzc2FnZXMgc2VudCB0byB0aGlzIGdy
b3VwLgo+IFZpZXcvUmVwbHkgT25saW5lICgjMTk3Mik6IGh0dHBzOi8vZ3JvdXBzLmlvL2cvc3Rv
cm11eC9tZXNzYWdlLzE5NzIKPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vZ3JvdXBzLmlvL210
Lzk3ODM5MDg3LzExMTAyCj4gLT0tPS0KPiBEb25hdGlvbnM6IGh0dHBzOi8va28tZmkuY29tL3N0
b3JtdXgKPiBJbWFnZXM6IGh0dHBzOi8vc3Rvcm11eC5vcmcvZG93bmxvYWRzCj4gUmVwb3NpdG9y
eTogaHR0cHM6Ly9naXRsYWIuY29tL3N0b3JtdXgvc3Rvcm11eAo+IFdlYnNpdGU6IGh0dHBzOi8v
c3Rvcm11eC5vcmcKPiAtPS09LQo+IEdyb3VwIE93bmVyOiBzdG9ybXV4K293bmVyQGdyb3Vwcy5p
bwo+IFVuc3Vic2NyaWJlOiBodHRwczovL2dyb3Vwcy5pby9nL3N0b3JtdXgvbGVhdmUvOTc0NzAy
OC8xMTEwMi83ODQyOTI3NDUveHl6enkKPiBbamRhc2hpZWxAcGFuaXguY29tXQo+IC09LT0tPS09
LT0tPS09LT0tPS09LT0tCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

