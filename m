Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D290A67A9B0
	for <lists+blinux-list@lfdr.de>; Wed, 25 Jan 2023 05:45:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674621908;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pn6YGDBiShf5TNKWthYLa6Asw7xMm4DIrYOaxFEy2Tk=;
	b=T7bxAF5bUTIt7zuSK2x8ga7+8VBEjzUMcW3mKMx3NV9bKDIg4Re28yjMKTOs6Zpb4QHm2w
	VKdElMjYlSBf9K3s1EqCToRRuC4TthlGEiwJbs+mC3vEnpvCenyVWSs1+stIw7Ta+EgxXw
	cb84P9jY9jfniqmA2ZaWbFrxJQ9FngE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-159-rkmJbIgqPU63QfxJ5pN0wA-1; Tue, 24 Jan 2023 23:45:06 -0500
X-MC-Unique: rkmJbIgqPU63QfxJ5pN0wA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD1231C08788;
	Wed, 25 Jan 2023 04:45:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A5136492C18;
	Wed, 25 Jan 2023 04:45:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 66C431946597;
	Wed, 25 Jan 2023 04:45:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 24 Jan 2023 23:44:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: new version of jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.286.1674235413.8169.blinux-list@redhat.com>
 <mailman.358.1674274777.8176.blinux-list@redhat.com>
 <mailman.397.1674314804.8168.blinux-list@redhat.com>
 <mailman.400.1674322782.8168.blinux-list@redhat.com>
 <mailman.410.1674327069.8170.blinux-list@redhat.com>
 <mailman.504.1674407856.8170.blinux-list@redhat.com>
In-Reply-To: <mailman.504.1674407856.8170.blinux-list@redhat.com>
Message-ID: <mailman.972.1674621903.8169.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U3RhcGxlcyBoYXMgZ29vZCBwcmljZXMgb24gdXNiIHN0aWNrcyBoYXZlIGF1Z2h0IGZyb20gdGhl
cmUgbWFueSB0aW1lcy4KCk9uIDEvMjIvMjMgMTI6MTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4gSGVsbG8sCj4KPiBpcyBzb21lIHdheSB0byBydW4gSmVudXgg
b24gUmFzcGJlcnJ5IFBpIDRCIG9yIDQwMD8KPgo+IFRoYW5rcy4KPgo+IEJlc3QgcmVnYXJkcwo+
Cj4gVm9qdGEuCj4KPiBEbmUgMjEuIDAxLiAyMyB2IDE5OjUxIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gbmFwc2FsKGEpOgo+PiBEYW5pZWwgbmFzaCBoYXMgYmVlbiBhd2FyZSBv
ZiB0aGlzIHByb2JsZW0gZm9yIGFsbCBmb3VyIGZhaWxpbmcgCj4+IGlzb3MuwqAgSGUKPj4gc3Vn
Z2VzdGVkIEkgdGFrZSBhY3Rpb25zIEkgdGhvdWdodCBxdWl0ZSByaXNreSB3aXRoIHJlZ2FyZCB0
byB1ZWZpIG9uIAo+PiB0aGUKPj4gc2luZ2xlIGNvbXB1dGVyIEkgaGF2ZS7CoCBJIHRvb2sgc29t
ZSBvZiB0aG9zZSBhY3Rpb25zIGFuZCB0aG9zZSBhY3Rpb25zCj4+IGZhaWxlZCB0byBzb2x2ZSB0
aGlzIHByb2JsZW0uwqAgTWljcm9zb2Z0IGlzIGJ1cnJpZWQgZGVlcCBpbiB0aGUgCj4+IG1pZGRs
ZSBvZgo+PiB0aGlzIG1lc3MgYXMgb3JpZ2luYXRvciBvZiB1ZWZpIGFuZCBEYW5pZWwgTmFzaCBn
b3QgdGhlIHVlZmkgY29kZSBmcm9tCj4+IGZlZG9yYS7CoCBIZSBtYXkgaGF2ZSBkb25lIHRoaW5n
cyB0byB0aGUgY29kZSBhcyBpdCB3ZW50IGludG8gamVudXggdGhhdAo+PiBicm9rZSB0aGluZ3Mg
YnV0IEkgY2FuJ3Qgc2F5IGZvciBzdXJlIHNpbmNlIEkgd2Fzbid0IGxvb2tpbmcgb3ZlciBoaXMK
Pj4gc2hvdWxkZXIuwqAgSWYgSSBjYW4gZ2V0IGEgYmUgbXkgZXllcyB2b2x1bnRlZXIgdG8gdGVs
bCBtZSBhbnkgZXJyb3IKPj4gbWVzc2FnZXMgdGhhdCBjb21lIHVwIGFzIHRoaXMgZmFpbGVkIGlz
byBib290cyBJJ2xsIGdldCB0aG9zZSB0byBEYW5pZWwKPj4gTmFzaCBhbmQgdGhlbiB3ZSBtYXkg
aGF2ZSBsb2NhdGVkIG9uZSBvZiBoaXMgcHJvYmxlbXMuCj4+Cj4+Cj4+Cj4+IEp1ZGUgPGpkYXNo
aWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGlu
Cj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4gwqAgc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1t
by4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3Is
IDE5NDApCj4+Cj4+IC4KPj4KPj4gT24gU2F0LCAyMSBKYW4gMjAyMywgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4KPj4+IEhpIEp1ZGQuwqAgSGF2ZSB5b3UgcmVw
b3J0ZWQgdGhpcyB0byBEYW5pZWwgTmFzaD/CoCBJIHRoaW5rIGhlIGlzIHRoZSAKPj4+IGpldXgg
ZGV2ZWxvcGVyLsKgIFlvdSBtaWdodCB3YW50IHRvIGxldCBoaW0ga25vdyB3aGF0IGlzIGdvaW5n
IG9uIHNvIAo+Pj4gaGUgY2FuIHRyYWNrIGl0IGRvd24uwqAgVGhhbmtzLgo+Pj4KPj4+IE1hdHRo
ZXcKPj4+Cj4+Pgo+Pj4KPj4+PiBPbiBKYW4gMjEsIDIwMjMsIGF0IDEwOjI2IEFNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIAo+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29t
PiB3cm90ZToKPj4+Pgo+Pj4+IFlvdSBoYXZlIHRvIGluc3RhbGwgdGhlIHZlcnNpb24gdG8gZmlu
ZCBvdXQuwqAgT24gdGhlIGN1cnJlbnQgZXF1aXBtZW50Cj4+Pj4gdGhhdCdzIG5vdCBwb3NzaWJs
ZS7CoCBTb21ldGltZSB0aGlzIHdlZWtlbmQgSSdsbCBzZWUgaWYgYmUgbXkgZXllcyBjYW4KPj4+
PiBnaXZlIG1lIGluZm9ybWF0aW9uIGFib3V0IHdoYXQgY29tZXMgdXAgb24gdGhlIHNjcmVlbiBi
ZWZvcmUgamVudXggCj4+Pj4gZmFpbHMKPj4+PiB0byBzcGVhayBhbmQgcmVib290cy7CoCBJJ20g
Y3VyaW91cyBpZiBhbnkgY29tcHV0ZXIgb3RoZXIgdGhhbiB0aGUgCj4+Pj4gYXV0aG9yJ3MKPj4+
PiBjYW4gaW5zdGFsbCB0aGlzIG9yIHRoZSBsYXN0IHRocmVlIHZlcnNpb25zIG9mIGplbnV4IHdo
aWNoIGlzIG15IAo+Pj4+IHJlYXNvbgo+Pj4+IGZvciBwb3N0aW5nIGhlcmUuCj4+Pj4KPj4+Pgo+
Pj4+Cj4+Pj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3Vy
IGJveGVzIHRvIGJlIHVzZWQgaW4KPj4+PiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+Pj4gc29hcCwg
YmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPj4+PiAt
RWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPj4+Pgo+Pj4+IC4KPj4+Pgo+Pj4+IE9uIEZy
aSwgMjAgSmFuIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+Pj4KPj4+Pj4gd2hhdCBpcyBuZXcgaW4gdGhlIGxhdGVzdCB2ZXJzaW9uPwo+Pj4+Pgo+Pj4+
PiBPbiAxLzIwLzIwMjMgOToyMyBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPj4+Pj4+IE5vdCByZWFkeSBmb3IgZG93bmxvYWQuwqAgVGhlIHNoYTUxMnN1bSBm
aWxlIHVwIG9uIHRoZSB3ZWJzaXRlIHRvIAo+Pj4+Pj4gY2hlY2sgdGhlCj4+Pj4+PiBpc28ncyBp
bnRlZ3JpdHkgZG9lc24ndCBtYXRjaC7CoCBUaGlzIG9uZSBwcm9iYWJseSB3b24ndCBoYXZlIGFu
eSAKPj4+Pj4+IGFiaWxpdHkKPj4+Pj4+IHRvIGluc3RhbGwgb24gdGhpbmtwZW5ndWluIGNvbXB1
dGVycyBlaXRoZXIgc2luY2UgdGhlIGxhc3QgdGhyZWUgCj4+Pj4+PiBpc29zIGFsc28KPj4+Pj4+
IGZhaWxlZCBidXQgSSdsbCBjaGVjayBpdCBvdXQganVzdCB0byBtYWtlIHN1cmUgdGhlIGxvb3Np
bmcgc3RyZWFrIAo+Pj4+Pj4gcmVtYWlucwo+Pj4+Pj4gdW5icm9rZW4uCj4+Pj4+Pgo+Pj4+Pj4K
Pj4+Pj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+Cj4+Pj4+PiAiVGhlcmUgYXJl
IGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+Pj4+PiDCoCBz
b2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+
Pj4+Pj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4+Pj4+Pgo+Pj4+Pj4gLgo+Pj4+
Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pgo+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Cj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

