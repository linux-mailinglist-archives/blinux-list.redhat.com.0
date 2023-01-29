Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E189667FBE9
	for <lists+blinux-list@lfdr.de>; Sun, 29 Jan 2023 01:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674950430;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZZVq9tkw8jbxC6m6Aw6hSZohMJMD29JMSpRsQhMpvb4=;
	b=dlBbmJqu6XN6a68vweevsHawMFaf+5DMgcup0vHo/mpFQFPs1okTnJiSL9ameVTFCsXPDX
	fYDt89Lrojv68CfiIaqJNKVkJP07Vrk/3V/LNCgZuElMA4IABzrW4HcjcwOmzltBEHpE0t
	Mh0kRzzS99BRtK31e0vL2KVH0zzts2s=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-166-RjixxN4DNA-fIfLQwvppxQ-1; Sat, 28 Jan 2023 19:00:29 -0500
X-MC-Unique: RjixxN4DNA-fIfLQwvppxQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE9B3380407E;
	Sun, 29 Jan 2023 00:00:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0123D2026D68;
	Sun, 29 Jan 2023 00:00:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 98BEA19465A2;
	Sun, 29 Jan 2023 00:00:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 28 Jan 2023 19:00:11 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: new version of jenux
In-Reply-To: <mailman.2070.1674948364.8172.blinux-list@redhat.com>
References: <mailman.1526.1674764282.8176.blinux-list@redhat.com>
 <mailman.2016.1674794167.8169.blinux-list@redhat.com>
 <mailman.2185.1674833954.8170.blinux-list@redhat.com>
 <mailman.2140.1674936360.8171.blinux-list@redhat.com>
 <mailman.2057.1674937819.8173.blinux-list@redhat.com>
 <mailman.2070.1674948364.8172.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2291.1674950425.8170.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgd29ya2VkIGZvciBtZSB0b28gaGVyZSBlYXJsaWVyIHRvZGF5LgoKCkp1ZGUgPGpkYXNoaWVs
IGF0IHBhbml4IGRvdCBjb20+CiJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluIGRl
ZmVuc2Ugb2YgbGliZXJ0eToKIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1
c2UgaW4gdGhhdCBvcmRlci4iCi1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQoKLgoKT24g
U2F0LCAyOCBKYW4gMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKCj4gU3RyYW5nZSwgbm90IGhlcmUuwqAgT25seSB0aGF0IG9uZSB0aW1lIGl0IHdvcmtlZC4K
Pgo+IE1pa2UuCj4KPiBPbiAxLzI4LzIwMjMgMTozMCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+IEkgd29ya3MgZm9yIG1lIG5vdy4KPiA+Cj4gPiBDaGVl
cnMsCj4gPiBEaWRpZXIKPiA+Cj4gPiBMZSAyOC8wMS8yMDIzID8gMjE6MDUsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSA/Y3JpdMKgOgo+ID4+IEkgdHJpZWQgdG8gYWNjZXNz
IGl0LCBhbmQgZ2V0IHRoaXMuCj4gPj4KPiA+PiBTZWN1cmUgQ29ubmVjdGlvbiBGYWlsZWQKPiA+
PiBBbiBlcnJvciBvY2N1cnJlZCBkdXJpbmcgYSBjb25uZWN0aW9uIHRvIG5hc2hjZW50cmFsLmR1
Y2tkbnMub3JnLiBTU0wKPiA+PiByZWNlaXZlZCBhCj4gPj4gcmVjb3JkIHRoYXQgZXhjZWVkZWQg
dGhlIG1heGltdW0gcGVybWlzc2libGUgbGVuZ3RoLgo+ID4+IEVycm9yIGNvZGU6IFNTTF9FUlJP
Ul9SWF9SRUNPUkRfVE9PX0xPTkcKPiA+Pgo+ID4+IEl0IGRpZCB3b3JrIG9uIHRoZSBkYXkgeW91
IHNlbnQgdGhhdCBlbWFpbCB0aG91Z2gsIEkgd29uZGVyIHdoYXQgaGFwcGVuZWQuCj4gPj4gTWlr
ZS4KPiA+Pgo+ID4+IE9uIDEvMjcvMjAyMyA4OjM5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+PiBodHRwczovL25hc2hjZW50cmFsLmR1Y2tkbnMub3Jn
L3Byb2plY3RzLwo+ID4+PiBUaGUgSmVudXggc3R1ZmYgaXMgYXQgdGhlIHRvcCBvZiB0aGUgcGFn
ZSBhbmQgaGUgaGFzIG1hbnkgbW9yZSBwcm9qZWN0cyBvbgo+ID4+PiB0aGF0IHBhZ2UgdG9vLsKg
IFRoZSBwYWdlIG1vc3QgZGVmaW5pdGVseSBleGlzdHMuCj4gPj4+Cj4gPj4+Cj4gPj4+Cj4gPj4+
IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0
byBiZSB1c2VkIGluCj4gPj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPiA+Pj4gwqAgc29hcCwgYmFs
bG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPiA+Pj4gLUVk
IEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4gPj4+Cj4gPj4+IC4KPiA+Pj4KPiA+Pj4gT24g
VGh1LCAyNiBKYW4gMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiA+Pj4KPiA+Pj4+IERvIHlvdSBoYXZlIHRoZSBsaW5rIHRvIGRvd25sb2FkIEplbnV4P8Kg
IEkgZG9uJ3Qga25vdyBpZiBoaXMgc2l0ZSBleGlzdHMKPiA+Pj4+IGFueW1vcmUsIGF0IGxlYXN0
IEkgY291bGRuJ3QgZ2V0IHRvIGl0IGZyb20gZ29vZ2xlLgo+ID4+Pj4KPiA+Pj4+IE1pa2UuCj4g
Pj4+Pgo+ID4+Pj4gT24gMS8yNi8yMDIzIDE6MTcgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+Pj4gSSBhbHJlYWR5IHNlbnQgdGhpcyBpbmZvIHRvIGRh
bmllbCBuYXNoLsKgIFdoYXQgaGFwcGVucyBvbiBhIHBlbmd1aW4gcHJvCj4gPj4+Pj4gMTEKPiA+
Pj4+PiBjb21wdXRlciB3aGVuIGJvb3RpbmcgdGhpcyBqZW51eCBpbnN0YWxsZXIgaXMgaXQgYm9v
dHMgdG8gYSBwb2ludCB0aGVuIGEKPiA+Pj4+PiBtZXNzYWdlIGNvbWVzIHVwIHNheWluZyBwcmVz
cyBhbnkga2V5IHRvIHN0b3Agc3lzdGVtIHJlc3RvcmF0aW9uLsKgIEF0Cj4gPj4+Pj4gdGhpcwo+
ID4+Pj4+IHBvaW50IGl0IGRvZXNuJ3QgbWF0dGVyIHdoYXQga2V5IGlzIHByZXNzZWQsIHRoZSBz
eXN0ZW0gcmVib290cyBhbmQKPiA+Pj4+PiBjb250aW51ZXMgZG9pbmcgdGhlIHNhbWUgdGhpbmcg
b24gYWxsIGZ1cnRoZXIgYm9vdHMuwqAgSSBuZWVkZWQgc2lnaHRlZAo+ID4+Pj4+IGhlbHAgdG8g
c2VlIHRoaXMgc2luY2UgdGhpcyBkb2Vzbid0IGRvIGFueSB0YWxraW5nLgo+ID4+Pj4+Cj4gPj4+
Pj4KPiA+Pj4+Pgo+ID4+Pj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVy
ZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluCj4gPj4+Pj4gZGVmZW5zZSBvZiBsaWJlcnR5
Ogo+ID4+Pj4+IMKgwqAgc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBp
biB0aGF0IG9yZGVyLiIKPiA+Pj4+PiAtRWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPiA+
Pj4+Pgo+ID4+Pj4+IC4KPiA+Pj4+Pgo+ID4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pgo+ID4+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+
Pj4KPiA+Pj4+Cj4gPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPiA+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiA+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

