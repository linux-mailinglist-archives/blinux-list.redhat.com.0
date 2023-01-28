Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A455567FBD1
	for <lists+blinux-list@lfdr.de>; Sun, 29 Jan 2023 00:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674948380;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ijf/1oK2qkYZoFDgt5Yb7KpdYoD5q5XM/WI2p9jyb3Q=;
	b=SkgatWa5vVILa+zPJ9orZHM9NLi2Fot39ProO6xvcl2LoKKvfjYA61yFBEVJHNOtsl1EHD
	UjdGjy2tqHILQNjBRnWBw2itQ123bu5NJEiGzczHvhUbJre7UIDszL1POBwwLG/LTLpYhV
	ifd7AqwWmFx+Ui6epOhyILsYHk2rGq0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-BvVy7hOZMaeAcHTI5-br0w-1; Sat, 28 Jan 2023 18:26:16 -0500
X-MC-Unique: BvVy7hOZMaeAcHTI5-br0w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79BD385A588;
	Sat, 28 Jan 2023 23:26:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8614F40C200C;
	Sat, 28 Jan 2023 23:26:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CB8841946595;
	Sat, 28 Jan 2023 23:26:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 28 Jan 2023 16:25:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: new version of jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1526.1674764282.8176.blinux-list@redhat.com>
 <mailman.2016.1674794167.8169.blinux-list@redhat.com>
 <mailman.2185.1674833954.8170.blinux-list@redhat.com>
 <mailman.2140.1674936360.8171.blinux-list@redhat.com>
 <mailman.2057.1674937819.8173.blinux-list@redhat.com>
In-Reply-To: <mailman.2057.1674937819.8173.blinux-list@redhat.com>
Message-ID: <mailman.2070.1674948364.8172.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U3RyYW5nZSwgbm90IGhlcmUuwqAgT25seSB0aGF0IG9uZSB0aW1lIGl0IHdvcmtlZC4KCk1pa2Uu
CgpPbiAxLzI4LzIwMjMgMTozMCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBJIHdvcmtzIGZvciBtZSBub3cuCj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4KPiBM
ZSAyOC8wMS8yMDIzIMOgIDIxOjA1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IGEgw6ljcml0wqA6Cj4+IEkgdHJpZWQgdG8gYWNjZXNzIGl0LCBhbmQgZ2V0IHRoaXMuCj4+Cj4+
IFNlY3VyZSBDb25uZWN0aW9uIEZhaWxlZAo+PiBBbiBlcnJvciBvY2N1cnJlZCBkdXJpbmcgYSBj
b25uZWN0aW9uIHRvIG5hc2hjZW50cmFsLmR1Y2tkbnMub3JnLiBTU0wgcmVjZWl2ZWQgYQo+PiBy
ZWNvcmQgdGhhdCBleGNlZWRlZCB0aGUgbWF4aW11bSBwZXJtaXNzaWJsZSBsZW5ndGguCj4+IEVy
cm9yIGNvZGU6IFNTTF9FUlJPUl9SWF9SRUNPUkRfVE9PX0xPTkcKPj4KPj4gSXQgZGlkIHdvcmsg
b24gdGhlIGRheSB5b3Ugc2VudCB0aGF0IGVtYWlsIHRob3VnaCwgSSB3b25kZXIgd2hhdCBoYXBw
ZW5lZC4KPj4gTWlrZS4KPj4KPj4gT24gMS8yNy8yMDIzIDg6MzkgQU0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBodHRwczovL25hc2hjZW50cmFsLmR1Y2tk
bnMub3JnL3Byb2plY3RzLwo+Pj4gVGhlIEplbnV4IHN0dWZmIGlzIGF0IHRoZSB0b3Agb2YgdGhl
IHBhZ2UgYW5kIGhlIGhhcyBtYW55IG1vcmUgcHJvamVjdHMgb24KPj4+IHRoYXQgcGFnZSB0b28u
wqAgVGhlIHBhZ2UgbW9zdCBkZWZpbml0ZWx5IGV4aXN0cy4KPj4+Cj4+Pgo+Pj4KPj4+IEp1ZGUg
PGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1
c2VkIGluCj4+PiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+PiAgwqAgc29hcCwgYmFsbG90LCBqdXJ5
LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPj4+IC1FZCBIb3dkZXJzaGVs
dCAoQXV0aG9yLCAxOTQwKQo+Pj4KPj4+IC4KPj4+Cj4+PiBPbiBUaHUsIDI2IEphbiAyMDIzLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4KPj4+PiBEbyB5b3Ug
aGF2ZSB0aGUgbGluayB0byBkb3dubG9hZCBKZW51eD/CoCBJIGRvbid0IGtub3cgaWYgaGlzIHNp
dGUgZXhpc3RzCj4+Pj4gYW55bW9yZSwgYXQgbGVhc3QgSSBjb3VsZG4ndCBnZXQgdG8gaXQgZnJv
bSBnb29nbGUuCj4+Pj4KPj4+PiBNaWtlLgo+Pj4+Cj4+Pj4gT24gMS8yNi8yMDIzIDE6MTcgUE0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+IEkgYWxyZWFk
eSBzZW50IHRoaXMgaW5mbyB0byBkYW5pZWwgbmFzaC7CoCBXaGF0IGhhcHBlbnMgb24gYSBwZW5n
dWluIHBybyAxMQo+Pj4+PiBjb21wdXRlciB3aGVuIGJvb3RpbmcgdGhpcyBqZW51eCBpbnN0YWxs
ZXIgaXMgaXQgYm9vdHMgdG8gYSBwb2ludCB0aGVuIGEKPj4+Pj4gbWVzc2FnZSBjb21lcyB1cCBz
YXlpbmcgcHJlc3MgYW55IGtleSB0byBzdG9wIHN5c3RlbSByZXN0b3JhdGlvbi7CoCBBdCB0aGlz
Cj4+Pj4+IHBvaW50IGl0IGRvZXNuJ3QgbWF0dGVyIHdoYXQga2V5IGlzIHByZXNzZWQsIHRoZSBz
eXN0ZW0gcmVib290cyBhbmQKPj4+Pj4gY29udGludWVzIGRvaW5nIHRoZSBzYW1lIHRoaW5nIG9u
IGFsbCBmdXJ0aGVyIGJvb3RzLsKgIEkgbmVlZGVkIHNpZ2h0ZWQKPj4+Pj4gaGVscCB0byBzZWUg
dGhpcyBzaW5jZSB0aGlzIGRvZXNuJ3QgZG8gYW55IHRhbGtpbmcuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+
Cj4+Pj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBi
b3hlcyB0byBiZSB1c2VkIGluCj4+Pj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4+Pj4gIMKgwqAg
c29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIK
Pj4+Pj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4+Pj4+Cj4+Pj4+IC4KPj4+Pj4K
Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pgo+Pj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

