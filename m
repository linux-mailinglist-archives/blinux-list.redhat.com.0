Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C97C967FADC
	for <lists+blinux-list@lfdr.de>; Sat, 28 Jan 2023 21:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674937825;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P1YKCXDHCwsgV0aui5JuvrZqEM999Gio17zS/S6WJso=;
	b=NgZoG2cb1DyMrGPL5Yq1HgdQS0RzSv/iQylHdu0Gczx43srY3NkP/3mgI3F3xCo5PjFVuO
	akmVVJ4vGyzHRYKEkiQDWHWtKB46sEWxN+JSZctuk6XRsT+PGMIrnsZLvaJQmdC1avuVOu
	5UdgN+Og7ZPjJco5wJkd7KhtFmczpMo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-648-CZ7pqXqTNc-PKeUlpcVnAQ-1; Sat, 28 Jan 2023 15:30:22 -0500
X-MC-Unique: CZ7pqXqTNc-PKeUlpcVnAQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF36D3806713;
	Sat, 28 Jan 2023 20:30:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DBB611121314;
	Sat, 28 Jan 2023 20:30:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 624B61946595;
	Sat, 28 Jan 2023 20:30:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 28 Jan 2023 21:30:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: new version of jenux
To: blinux-list@redhat.com
References: <mailman.1526.1674764282.8176.blinux-list@redhat.com>
 <mailman.2016.1674794167.8169.blinux-list@redhat.com>
 <mailman.2185.1674833954.8170.blinux-list@redhat.com>
 <mailman.2140.1674936360.8171.blinux-list@redhat.com>
In-Reply-To: <mailman.2140.1674936360.8171.blinux-list@redhat.com>
Message-ID: <mailman.2057.1674937819.8173.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3b3JrcyBmb3IgbWUgbm93LgoKQ2hlZXJzLApEaWRpZXIKCkxlIDI4LzAxLzIwMjMgw6AgMjE6
MDUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBJIHRy
aWVkIHRvIGFjY2VzcyBpdCwgYW5kIGdldCB0aGlzLgo+IAo+IFNlY3VyZSBDb25uZWN0aW9uIEZh
aWxlZAo+IEFuIGVycm9yIG9jY3VycmVkIGR1cmluZyBhIGNvbm5lY3Rpb24gdG8gbmFzaGNlbnRy
YWwuZHVja2Rucy5vcmcuIFNTTCByZWNlaXZlZCBhCj4gcmVjb3JkIHRoYXQgZXhjZWVkZWQgdGhl
IG1heGltdW0gcGVybWlzc2libGUgbGVuZ3RoLgo+IEVycm9yIGNvZGU6IFNTTF9FUlJPUl9SWF9S
RUNPUkRfVE9PX0xPTkcKPiAKPiBJdCBkaWQgd29yayBvbiB0aGUgZGF5IHlvdSBzZW50IHRoYXQg
ZW1haWwgdGhvdWdoLCBJIHdvbmRlciB3aGF0IGhhcHBlbmVkLgo+IE1pa2UuCj4gCj4gT24gMS8y
Ny8yMDIzIDg6MzkgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+IGh0dHBzOi8vbmFzaGNlbnRyYWwuZHVja2Rucy5vcmcvcHJvamVjdHMvCj4+IFRoZSBKZW51
eCBzdHVmZiBpcyBhdCB0aGUgdG9wIG9mIHRoZSBwYWdlIGFuZCBoZSBoYXMgbWFueSBtb3JlIHBy
b2plY3RzIG9uCj4+IHRoYXQgcGFnZSB0b28uwqAgVGhlIHBhZ2UgbW9zdCBkZWZpbml0ZWx5IGV4
aXN0cy4KPj4KPj4KPj4KPj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJl
IGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPj4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+PiDC
oCBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIu
Igo+PiAtRWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPj4KPj4gLgo+Pgo+PiBPbiBUaHUs
IDI2IEphbiAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
Pgo+Pj4gRG8geW91IGhhdmUgdGhlIGxpbmsgdG8gZG93bmxvYWQgSmVudXg/wqAgSSBkb24ndCBr
bm93IGlmIGhpcyBzaXRlIGV4aXN0cwo+Pj4gYW55bW9yZSwgYXQgbGVhc3QgSSBjb3VsZG4ndCBn
ZXQgdG8gaXQgZnJvbSBnb29nbGUuCj4+Pgo+Pj4gTWlrZS4KPj4+Cj4+PiBPbiAxLzI2LzIwMjMg
MToxNyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBJ
IGFscmVhZHkgc2VudCB0aGlzIGluZm8gdG8gZGFuaWVsIG5hc2guwqAgV2hhdCBoYXBwZW5zIG9u
IGEgcGVuZ3VpbiBwcm8gMTEKPj4+PiBjb21wdXRlciB3aGVuIGJvb3RpbmcgdGhpcyBqZW51eCBp
bnN0YWxsZXIgaXMgaXQgYm9vdHMgdG8gYSBwb2ludCB0aGVuIGEKPj4+PiBtZXNzYWdlIGNvbWVz
IHVwIHNheWluZyBwcmVzcyBhbnkga2V5IHRvIHN0b3Agc3lzdGVtIHJlc3RvcmF0aW9uLsKgIEF0
IHRoaXMKPj4+PiBwb2ludCBpdCBkb2Vzbid0IG1hdHRlciB3aGF0IGtleSBpcyBwcmVzc2VkLCB0
aGUgc3lzdGVtIHJlYm9vdHMgYW5kCj4+Pj4gY29udGludWVzIGRvaW5nIHRoZSBzYW1lIHRoaW5n
IG9uIGFsbCBmdXJ0aGVyIGJvb3RzLsKgIEkgbmVlZGVkIHNpZ2h0ZWQKPj4+PiBoZWxwIHRvIHNl
ZSB0aGlzIHNpbmNlIHRoaXMgZG9lc24ndCBkbyBhbnkgdGFsa2luZy4KPj4+Pgo+Pj4+Cj4+Pj4K
Pj4+PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94
ZXMgdG8gYmUgdXNlZCBpbgo+Pj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4+PiDCoMKgIHNvYXAs
IGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4+Pj4g
LUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4+Pj4KPj4+PiAuCj4+Pj4KPj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+
Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

