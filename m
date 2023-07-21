Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 283D875CBCC
	for <lists+blinux-list@lfdr.de>; Fri, 21 Jul 2023 17:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689953566;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iRQqczWyjMEE2WmlrdCXTf0DF2O7yEhLGy0Df6Delac=;
	b=LIwoiz7l8GMsQsYpqs/M68G3gXMYR2m8QmgP8vuPa6Pn4hcSQMMhlmFbCQj1CbxI/DoZZY
	IxZWObhf84jiN/Yc+6ZRHSOJCQRZ3pxU6iot8AXmLFQoAnMi8MiXxjZglabCFW/GcyVSld
	TgBgaUJlpUjXgJQNxvh8XcoRb3m0grE=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-324-gLcMLMcyMFO8-hNI8S_lTQ-1; Fri, 21 Jul 2023 11:32:43 -0400
X-MC-Unique: gLcMLMcyMFO8-hNI8S_lTQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B24A81C0419E;
	Fri, 21 Jul 2023 15:27:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0FCE540D2839;
	Fri, 21 Jul 2023 15:27:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8B5291946A6E;
	Fri, 21 Jul 2023 15:27:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Mint Installation?
Thread-Topic: Mint Installation?
Thread-Index: Adm6T80FF7YXeQtkS6STbJ1Y1scbUgA44uuAAATYX4AAJWyOgAACoz+g
Date: Fri, 21 Jul 2023 15:27:23 +0000
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1762.1689875729.687819.blinux-list@redhat.com>
 <mailman.1705.1689884060.687816.blinux-list@redhat.com>
 <mailman.1831.1689948344.687816.blinux-list@redhat.com>
In-Reply-To: <mailman.1831.1689948344.687816.blinux-list@redhat.com>
Accept-Language: en-US
MIME-Version: 1.0
Message-ID: <mailman.1852.1689953247.687816.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R29vZCBtb3JuaW5nLA0KSWYgSSBkbyBjaGFuZ2UgbXkgV2luZG93IG1hbmFnZXIsIHRoYXQgZG8g
eW91IHJlY29tbWVuZCBJIHN3aXRjaCB0bz8NClJpZ2h0IG5vdywgSeKAmW0gYWN0dWFsbHkgaW4g
YSBzaXR1YXRpb24gd2hlcmUgYSB0ZXh0LWJhc2VkIGxvZ2luIHByb21wdCBjb21lcyB1cCwgcmF0
aGVyIHRoYW4gdGhlIG9uZSB3aGljaCBpcyBhY2Nlc3NpYmxlIHdpdGggT3JjYS4NClRoaXMgaXMg
YmVjYXVzZSB3ZSBoYWQgYSBodWdlIHN0b3JtIGNvbWUgdGhyb3VnaCBsYXN0IG5pZ2h0Lg0KVGhh
bmtmdWxseSB0aG91Z2gsIHdlIGRpZG7igJl0IGhhdmUgYW55IHNpZ25pZmljYW50IGRhbWFnZSB0
byBvdXIgcHJvcGVydHksIG90aGVyIHRoYW4gYSBmZXcgdHJlZXMgdGlsdGVkLg0KSSBsZWZ0IG15
IExpbnV4IG1hY2hpbmUgb24gZHVyaW5nIHRoZSBzdG9ybSAmIHByb2JhYmx5IHNob3VsZG4ndCBo
YXZlLg0KSSBhbHNvIGRpZG7igJl0IGhhdmUgaXQgcGx1Z2dlZCBpbnRvIGEgVVBTLg0KVGhhbmtz
LA0KSmVzc2ljYSBEYWlsDQogDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBC
bGludXgtbGlzdCA8YmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tPiBPbiBCZWhhbGYgT2Yg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbg0KU2VudDogRnJpZGF5LCBKdWx5IDIx
LCAyMDIzIDEwOjA2DQpUbzogYmxpbnV4LWxpc3RAcmVkaGF0LmNvbQ0KU3ViamVjdDogUmU6IE1p
bnQgSW5zdGFsbGF0aW9uPw0KDQogwqDCoMKgIElmIHlvdSBhcmUgcnVubmluZyBNYXRlLCBzb21l
dGltZXMgdGhlIE1hcmNvIHByb2Nlc3MgYmVjb21lcyBodW5nLCB3aGljaCBjYXVzZXMgT1JDQSB0
byBzZWVtIGh1bmcuwqAgSWYgeW91IHByZXNzIE9SQ0Erc3BhY2Ugb3IgdHJ5IG1vdmluZyB0aGUg
bW91c2UsIGl0IG1heSBnZXQgeW91IG91dCBvZiB0aGUgc2l0dWF0aW9uLsKgIEknbSBub3QgcnVu
bmluZyBNaW50LCBidXQgaXQgaGFwcGVucyBvbiBEZWJpYW4gYW5kIFVidW50dSwgYW5kIE1pbnQg
aXMgZGVyaXZlZCBmcm9tIFVidW50dS7CoCBBIG1vcmUgcGVybWFuZW50IGZpeCBpcyB0byBjaGFu
Z2UgdG8gdGhlIExpZ2h0ZG0gd2luZG93IG1hbmFnZXIsIGJ1dCBpdCBpc24ndCBhIGdvb2QgbG9u
Zy10ZXJtIHNvbHV0aW9uLi4NCg0KDQoNCg0KDQpPbiA3LzIwLzIzIDE2OjE0LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOg0KPiBIaSwNCj4gT2NjYXNpb25hbGx5LCBJ
4oCZbGwgZXhwZXJpZW5jZSBPcmNhIGxvY2tpbmcgdXAuDQo+IFdoZW4gdGhpcyBoYXBwZW5zLCBz
b21ldGltZXMsIGl0J3Mgb25seSBmb3IgYSBmZXcgc2Vjb25kcyAmIG90aGVyIHRpbWVzLCBJIGhh
dmUgdG8gd2FpdCBhcyBsb25nIGFzIDUgb3IgMTAgbWludXRlcy4NCj4gVGhpcyBjYW4gaGFwcGVu
IHdpdGggYW55IGFwcC4NCj4gSG93IGNhbiBJIHByZXZlbnQgdGhpcz8NCj4gSeKAmW0gd29ya2lu
ZyB3aXRoIGEgRGVsbCBwcmVjaXNpb24gNDgwMCB3aGljaCBoYXMgMTZHQiBvZiByYW0gJiBhIDFU
QiBTU0QuDQo+IFNvLCBiYXNlZCBvbiB0aGF0LCB3aGF0IGRvIHlvdSB0aGluayB3b3VsZCBjYXVz
ZSB0aGVzZSBpc3N1ZXM/DQo+DQo+DQo+PiBPbiBKdWwgMjAsIDIwMjMsIGF0IDEzOjU1LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToNCj4+DQo+PiBKZXNzaWNhLA0KPj4NCj4+IEkganVzdCByZWNlbnRseSBpbnN0YWxsIG1p
bnQgMjEuMiBvbiBhIGxhcHRvcCBhbmQgc28gZmFyIGkgbG92ZSBpdCBhcyB3ZWxsLg0KPj4NCj4+
IFJvZG5leQ0KPj4NCj4+DQo+PiBPbiA3LzE5LzIwMjMgMDk6NDgsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6DQo+Pj4gSGVsbG8sDQo+Pj4gSSBhbSBhIGh1Z2UgZmFu
IG9mIHBvZGNhc3RzIQ0KPj4+IEknZCBsb3ZlIHRvIGNoZWNrIG91dCB0aGlzIHByb2dyYW0gYnV0
IGJlZm9yZSBJIHByb2NlZWQsIEknZCBsaWtlIHRvIGtub3cgaWYgaXQnbGwgd29yayBvbiBMaW51
eCBNaW4/DQo+Pj4gSSBqdXN0IHVwZ3JhZGVkIHRvIE1pbnQgMjEuMiBsYXN0IG5pZ2h0ICYgYW0g
bG92aW5nIGl0IHNvIGZhci4NCj4+Pg0KPj4+DQo+Pj4gVGhhbmtzLA0KPj4+IEplc3NpY2EgRGFp
bA0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdA0KPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQ0KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA0K
Pj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0DQo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20NCj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0DQpCbGludXgtbGlzdEByZWRoYXQuY29tDQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

