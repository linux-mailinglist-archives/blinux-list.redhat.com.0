Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EA38C5E7C79
	for <lists+blinux-list@lfdr.de>; Fri, 23 Sep 2022 16:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663941838;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fF7AMl1MFwvN4pe38Ah7ZM3ICv+eKv9E9UQAVeI3hOQ=;
	b=IU5bKllKpeHMDp/9GSSvGfnkkUhh+Pr+WSTPAiltT6juYon4BaYTgsgUVDzhWgGwUKo3AM
	E8ZZsGKaNjSL1xUK3TDqQZvHHzF+As3APk/Og4+309VYmeJ42dNtkSXLZwe01CJzPqrOOE
	ihjxuZ1/dNf4Za6m/QOKGNcxqgcN02c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-0V10ij9hMruJFlo4dUROzQ-1; Fri, 23 Sep 2022 10:03:55 -0400
X-MC-Unique: 0V10ij9hMruJFlo4dUROzQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90DA1811E87;
	Fri, 23 Sep 2022 14:03:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C5478140EBF5;
	Fri, 23 Sep 2022 14:03:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 287EF1946A54;
	Fri, 23 Sep 2022 14:03:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 23 Sep 2022 17:03:16 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: F 105 crashing, anyone else?
References: <mailman.1902.1663760173.6083.blinux-list@redhat.com>
 <mailman.2208.1663795326.6077.blinux-list@redhat.com>
 <mailman.2117.1663928851.6074.blinux-list@redhat.com>
 <mailman.2704.1663934841.6082.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.2704.1663934841.6082.blinux-list@redhat.com>
User-Agent: NeoMutt/20220429
Message-ID: <mailman.2740.1663941829.6082.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

b24gQXJjaCBMaW51eCB3ZSBhcHBsaWVkIHBhdGNoIGZyb20gdGhpcyBidWcgcmVwb3J0WzFdCgpm
b3Igb3RoZXIgZGlzdHJpYnV0aW9ucyBmZiAxMDUuMSB3aXRoIHRoaXMgZml4IHNob3VsZCBiZSBy
ZWxlYXNlZCB0b2RheQpvciB0b21vcnJvdwoKWzFdIGh0dHBzOi8vYnVnemlsbGEubW96aWxsYS5v
cmcvc2hvd19idWcuY2dpP2lkPTE3ODY2MzgKCk9uIEZyaSwgU2VwIDIzLCAyMDIyIGF0IDEyOjAw
OjE1UE0gKzAwMDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
VG8gbWUsIGl0IHNlZW1zIG1vcmUgbGlrZSB0aGUgdGVuZGVuY3kgdG8gY3Jhc2ggdmFyaWVzLgo+
IAo+IFNvbWV0aW1lcywgSSBjYW4gYWN0aXZhdGUgdGhlIHNhdmUgbGluayBvbiBhIHBhZ2UgZmV3
IHRpbWVzIGluIGEgcm93LAo+IGFuZCB0aGUgYnJvd3NlciBjcmFzaGVzIGV2ZXJ5IHRpbWUuCj4g
Cj4gQW5kIHNvbWV0aW1lcywgdGhlIHNhbWUgbGluayBjYXVzZXMgbm8gdHJvdWJsZSwgYW5kIHRo
ZSB3aG9sZSBicm93c2luZwo+IGlzIGEgY29udGludW91cyBleHBlcmllbmNlLgo+IAo+IAo+IEJl
c3QgcmVnYXJkcwo+IAo+IAo+IFJhc3Rpc2xhdgo+IAo+IAo+IETFiGEgMjMuIDkuIDIwMjIgbyAx
MjoyNyBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+ID4g
Tm90IHN1cmUgaG93IG9yIHdoeSwgYnV0IGl0IGFwcGFyZW50bHkgZml4ZWQgaXRzZWxmIGFuZCBJ
IGRpZG4ndCBzcHkgYQo+ID4gRkYgdXBkYXRlIGluIHBhY21hbidzIGxpc3Qgb2YgdGhpbmdzIGl0
IHVwZGF0ZWQsIHRob3VnaCBJJ20gc3RpbGwgdHJ5aW5nCj4gPiB0byB3b3JrIG91dCB3aHkgaXQg
Y3Jhc2hlZCBzbyBtdWNoIHRvIGJlZ2luIHdpdGgKPiA+Cj4gPgo+ID4KPiA+IE9uIDkvMjEvMjIg
MjI6MTIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4gWWVz
LCBVYnVudHUgTWF0ZSAyMi4wNCA2NC1iaXQsIEZpcmVmb3ggMTA1IGZyb20gTW96aWxsYSBwcGEu
Cj4gPj4KPiA+PiBJIHVzZWQgMTA0IGJlZm9yZSBhbmQgZG9uJ3QgcmVtZW1iZXIgaXQgY3Jhc2hp
bmcgb24gbXkgc3lzdGVtLCBidXQgMTA1Cj4gPj4gY3Jhc2hlcyBxdWl0ZSBmcmVxdWVudGx5Lgo+
ID4+Cj4gPj4KPiA+PiBFaXRoZXIgYWZ0ZXIgYWN0aXZhdGluZyBhIGxpbmssIHdoZW4gdGhlIG5l
dyBwYWdlIGlzIGxvYWRlZCwgb3IgZXZlbgo+ID4+IG9uLXBhZ2UgbmF2aWdhdGlvbiBjYW4gY2F1
c2UgY3Jhc2hlcyBoZXJlIGFuZCB0aGVyZS4KPiA+Pgo+ID4+Cj4gPj4gQmVzdCByZWdhcmRzCj4g
Pj4KPiA+Pgo+ID4+IFJhc3Rpc2xhdgo+ID4+Cj4gPj4KPiA+PiBExYhhIDIxLiA5LiAyMDIyIG8g
MTM6MzUgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToKPiA+
Pj4gSXMgaXQganVzdCBtZSwgb3IgaXMgRkYgMTA1LjAgY3Jhc2hpbmcgbW9yZSB0aGFuIDEwNC5Y
IHVzZWQgdG8/Cj4gPj4+Cj4gPj4+Cj4gPj4+IE9wZW4gYSBwcml2YXRlIHdpbmRvdyBhbmQgdHlw
ZSBpbiBhIFVSTCwgY3Jhc2gKPiA+Pj4KPiA+Pj4KPiA+Pj4gVHJ5IGdvaW5nIHRvIGEgVVJMIGlu
IHRoZSBtYWluIHdpbmRvdz8gQ3Jhc2gKPiA+Pj4KPiA+Pj4KPiA+Pj4gQ3VycmVudGx5IGNvbXBp
bGluZyBGRiBFU1IgdG8gc2VlIGlmIHRoaXMgZml4ZXMgaXQuIFRoZSBvbmx5IHRoaW5ncyBpbgo+
ID4+PiB0aGUgY3Jhc2ggbG9nIGFyZSBzaWdzZWcgYW5kIHNpZyBmYXVsdHMgd2hpY2ggYXJlIG5v
dCBoZWxwZnVsLCB0aGUKPiA+Pj4gY29uc29sZSBvbmx5IGdpdmVzIG1lIGEgY2hhbm5lbCBlcnJv
ciB0byB3b3JrIHdpdGgKPiA+Pj4KPiA+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiA+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0CgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

