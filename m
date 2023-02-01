Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 82163686F08
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 20:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675280421;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gtXlNygyyyNKDYCNiusbUqKX7csy/Qc14ulDwpZqvFU=;
	b=M1DCDw8xpu99xsgra+o/yL2lB3u3v4BP9M2FQY54Feea+ZICsYw2MC4eXJ5KN15yazYXNE
	X/Ti4PEZSsNidg2f1eW2UNqmC+Cls1dVeNE9rKxBkghAPRN50p8xQnW8n5QFM2HyvNFWlB
	f/5ZKoID44P9SFunmZfFi3vepKBuBfE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-Ew2mXykjP965Miq_kUOnhw-1; Wed, 01 Feb 2023 14:40:17 -0500
X-MC-Unique: Ew2mXykjP965Miq_kUOnhw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F2DF858F09;
	Wed,  1 Feb 2023 19:40:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 71020C15BA0;
	Wed,  1 Feb 2023 19:40:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DA33119465B7;
	Wed,  1 Feb 2023 19:40:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 14:40:09 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Attempting to boot Jenux in a vm.
In-Reply-To: <mailman.3798.1675276956.8172.blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
 <mailman.3890.1675275574.8169.blinux-list@redhat.com>
 <mailman.3798.1675276956.8172.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3805.1675280413.8172.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hlY2sgd2hhdCB0aGUgdm0gdW5kZXJzdGFuZHMgYXMgeW91ciBob3N0IHNvdW5kIGNhcmQuICBJ
dCBtYXkgZGlmZmVyIGZyb20Kd2hhdCB5b3UgZXhwZWN0IGFuZCB0aGUgdm0gbmVlZHMgdG8gaGF2
ZSBpdCBzZXQgdW5tdXRlZC4KCgoKSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRo
ZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KZGVmZW5zZSBvZiBsaWJlcnR5Ogogc29h
cCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKLUVk
IEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCgouCgpPbiBXZWQsIDEgRmViIDIwMjMsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IERvIHlvdSBtZWFuIHdoZW4g
bWFraW5nIHRoZSB2bT/CoCBJIHRvbGQgaXQgdG8gdXNlIHRoZSBob3N0IHNvdW5kIGNhcmQsIGFu
ZCBJCj4gYWxzbyB0cmllZCBjaGFuZ2luZyBpdCBmcm9tIHRoZSBzZXR0aW5ncy7CoCBPciBkbyB5
b3UgbWVhbiBzb21ldGhpbmcgZWxzZT/CoCBBbnkKPiBvdGhlciB2bXMgSSBoYXZlIGNvbWUgdXAg
d2l0aCBzb3VuZCBhbHJlYWR5Lgo+Cj4gTWlrZS4KPgo+Cj4gT24gMi8xLzIwMjMgMTE6MTkgQU0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPiBEaWQgeW91IHBy
b3Zpc2lvbiB5b3VyIHZtIGZvciBzb3VuZD8gIElmIHRoaXMgaXMgdGhlIGZpcnN0IGRpc3RybyB5
b3UKPiA+IHRyaWVkIHRoaXMgd2F5IHRoYXQgbWF5IG5lZWQgZG9pbmcuCj4gPgo+ID4KPiA+Cj4g
PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMg
dG8gYmUgdXNlZCBpbgo+ID4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+ID4gICBzb2FwLCBiYWxsb3Qs
IGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+ID4gLUVkIEhvd2Rl
cnNoZWx0IChBdXRob3IsIDE5NDApCj4gPgo+ID4gLgo+ID4KPiA+IE9uIFdlZCwgMSBGZWIgMjAy
MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Cj4gPj4gSGV5
IGFsbCwKPiA+Pgo+ID4+IEp1c3QgcHVsbGVkIGRvd24gdGhlIGxhdGVzdCBKZW51eCB0byBnaXZl
IGl0IGEgdHJ5LCBidXQgZm9yIHNvbWUgcmVhc29uIEkKPiA+PiBjYW5ub3QgZ2V0IGFueSBzcGVl
Y2ggb3V0IG9mIGl0LsKgIEkgaGVhciB0aGUgYmVlcHMgd2hlbiB0aGUgVk0gYm9vdHMgdXAsIEkK
PiA+PiBjYW4KPiA+PiBvY3Igd2l0aCBudmRhIGFuZCBzZWUgc2VsZi10ZXN0IHJlcXVlc3RlZCwg
cGxlYXNlIHdhaXQsIGFuZCBhZnRlciBhIHdoaWxlCj4gPj4gdGhlCj4gPj4gbWVudSBjb21lcyB1
cC7CoCBJIGNhbiBhbHNvIHNlZSB0aGF0IHRocm91Z2ggb2NyLCBidXQgSSBnZXQgbm8gc3BlZWNo
IHdoZW4KPiA+PiBpbnNpZGUgdGhlIHZtLiBJJ3ZlIGNoZWNrZWQgdG8gbWFrZSBzdXJlIHRoZSBz
b3VuZCBjYXJkcyBhcmUgY29ycmVjdCwKPiA+PiBhbnlvbmUKPiA+PiBoYXZlIGFueXRoaW5nIGVs
c2UgSSBjYW4gdHJ5P8KgIEknbSBub3QgZmluZGluZyBhbnkgZG9jdW1lbnRhdGlvbiBhbnl3aGVy
ZSwKPiA+PiB3aGljaCBpcyB3aHkgSSdtIGFza2luZyBoZXJlLgo+ID4+Cj4gPj4gTWlrZS4KPiA+
Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiA+Pgo+ID4+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

