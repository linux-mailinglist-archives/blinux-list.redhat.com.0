Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CC660498F
	for <lists+blinux-list@lfdr.de>; Wed, 19 Oct 2022 16:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666190622;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+UrHm3KeagoaZlcBdU1IX0KvWs30UoZCTznFyZqimzA=;
	b=bCswY5jqeX74FEFKW/HqeA5iHDHvdz3vcbNjnhg26oCo+RaO55O0/ZPSokvoz6GpUErOMj
	v6dwfdQTJfL/+RO5PceNHz5NdMAhTfgCdcjp+CTmNv2Zxo0x25ueLG6vTyaiiDd2ZyQfpl
	SYPMjqJLdf2hklms/GGmwKxEgSIEUNs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-227-cL1z4SYCOAifhvqT5dml6Q-1; Wed, 19 Oct 2022 10:43:39 -0400
X-MC-Unique: cL1z4SYCOAifhvqT5dml6Q-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EBEE985CE0A;
	Wed, 19 Oct 2022 14:43:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5383F401D29;
	Wed, 19 Oct 2022 14:43:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A9F4819465A3;
	Wed, 19 Oct 2022 14:43:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 19 Oct 2022 15:15:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Konsole progress/any good alternatives?
To: blinux-list@redhat.com
References: <mailman.1338.1666188109.3004.blinux-list@redhat.com>
 <mailman.1343.1666188601.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.1343.1666188601.3004.blinux-list@redhat.com>
Message-ID: <mailman.1273.1666190612.3009.blinux-list@redhat.com>
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

VGhhdCdzIHdoZXJlIEkgZ290IHVwIHRvIHdpdGggdGhlIGRpc2N1c3Npb24gb24gdGhlIGlzc3Vl
LCBzZXR0aW5nIHRoZSAKcm9sZS4gSSdtIG5vdCBzdXJlIGlmIHRoYXQncyBkb25lIGluIGEgcmVj
ZW50IGdpdCBjb21taXQgd2l0aCAKS29uc29sZS1naXQgaG93ZXZlciwgb3IgZXZlbiB3aGVyZSBJ
J2Qgc3RhcnQgbG9va2luZyBmb3IgdGhlIHJpZ2h0IHBhcnRzIAp0byBldmVuIHN0YXJ0IG9uIHRo
aXMgb25lLgoKCkknbSBzZWVpbmcgb24gbXkgZW5kLCBib3RoIEtvbnNvbGUgMjIuMDggYW5kIEtv
bnNvbGUtZ2l0IHJlYWQgbXkgZW50ZXJlZCAKY29tbWFuZHMsIGxpa2UgSSBzYWlkIGJ1dCBub3Qg
dGhlIG91dHB1dC4gV2hlcmUgd291bGQgSSByZWFkIHVwIG9uIHdoYXQgCmV4YWN0bHkgdGhlIHRl
cm1pbmFsIHJvbGUgZG9lcyBhcyBmYXIgYXMgQVRLIGFuZCBob3cgaXQgaW50ZXJhY3RzIHdpdGgg
T3JjYT8KCgpPbiAxMC8xOS8yMiAxNTowOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiBIb3dkeSwKPgo+IEtvbnNvbGUgZG9lcyBub3QgaGF2ZSBhIGNhcmV0IChp
dHMgYW4gdGV4dCBjb25zb2xlIHdoYXQgaXMgbWFkZSBmb3IgaW50ZXJhY3RpbmcpLgo+Cj4gTmFo
IGlzc3VlIGhlcmUgaXMgc29tZSBidWcuIEkgc2VlIGV2ZW50cyBhbmQgdGV4dCBpbiBhY2NlcmNp
c2VyLiBNYXliZSB3cm9uZyBhY2Nlc3NpYmlsaXR5IHJvbGUgb3Igc29tZXRoaW5nLgo+Cj4gQ2hl
ZXJzIGNocnlzCj4KPiBWb24gbWVpbmVtIGlQaG9uZSBnZXNlbmRldAo+Cj4+IEFtIDE5LjEwLjIw
MjIgdW0gMTY6MDMgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4KPj4g77u/SnVzdCB0b29rIGEgbG9vayB0aHJvdWdo
IEtvbnNvbGUncyBrZXlib2FyZCBzaG9ydGN1dHMuIEkgZGlkbid0IHNlZSBhbnl0aGluZyBsaXN0
ZWQgZm9yIGNhcmV0IGJyb3dzaW5nLCBhbmQgaGl0dGluZyBGNyBvbiBteSBBcmNoIGJveCBkaWRu
J3QgZG8gYSB0aGluZy4gSXQgcmVhZHMgd2hhdCBJJ20gdHlwaW5nIGluIGhvd2V2ZXIsIG5vdCB0
aGUgb3V0cHV0IHNvIHNvbWV0aGluZyBpcyBiZWluZyBwaWNrZWQgdXAgYnkgT3JjYQo+Pgo+Pgo+
Pgo+Pgo+Pgo+Pgo+Pj4gT24gMTAvMTkvMjIgMTQ6MjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBJIHRoaW5rIGY3IHRvZ2dsZXMgY2FyZXQgYnJvd3Npbmcg
YW5kIG9yY2EgaGFzIGNhcmV0IGJyb3dzaW5nIG9mZiBieQo+Pj4gZGVmYXVsdC4KPj4+Cj4+Pgo+
Pj4KPj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBi
b3hlcyB0byBiZSB1c2VkIGluCj4+PiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+PiAgIHNvYXAsIGJh
bGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4+PiAtRWQg
SG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPj4+Cj4+PiAuCj4+Pgo+Pj4+IE9uIFdlZCwgMTkg
T2N0IDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4K
Pj4+PiBJJ3ZlIG5vIGNsdWUgd2hlcmUgdG8gc3RhcnQgb3IgdGhlIHNtYXJ0cyB0byBnZXQgYW55
d2hlcmUgd2l0aCBpdCBhdCBhbGwsIG15Cj4+Pj4ga25vd2xlZGdlIG9mIGhvdyB0aGluZ3MgaW50
ZXJhY3Qgd2l0aCBPcmNhIHN0YXJ0cyBhbmQgZW5kcyB3aXRoIC4uaXMgZXhwb3NlZAo+Pj4+IHRv
IE9yY2EsIHBhc3QgdGhhdCBJJ3ZlIHplcm8gY2x1ZSBob3cgdG8gZ2V0IGFueXRoaW5nIHRvIHNw
ZWFrIHRvL3dpdGgvdmlhCj4+Pj4gT3JjYSBhdCBhbGwuIEkga25vdyB3aGF0IHNob3VsZCBiZSBo
YXBwZW5pbmcsIHN1cmUsIGJ1dC4uLgo+Pj4+Cj4+Pj4KPj4+PiBPbiAxMC8xOS8yMiAxMzozNCwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZTpIb3dkeSwKPj4+Pj4ganVz
dCBkaWQgYSBxdWljayBsb29rIGludG8gYWNjZXJjaXNlci4gc2VlbXMgdGhhdCB0aGUgdGVybWlu
YWwgY29udGVudCBpcwo+Pj4+PiBhbHJlYWR5IGV4cG9zZWQgdG8gQVQuIFNvIHRoZXJlIGlzIGF0
IGxlYXN0IHNvbWV0aGluZyBpbiBwbGFjZS4gbWF5YmUgYQo+Pj4+PiBmb2N1cyBpcyBtaXNzaW5n
IG9yIHNpbWlsYXIuCj4+Pj4+Cj4+Pj4+IGNoZWVycyBjaHJ5cwo+Pj4+Pgo+Pj4+PiBBbSAxOS4x
MC4yMiB1bSAxNDoyNSBzY2hyaWViIGNocnlzOgo+Pj4+Pj4gSG93ZHksCj4+Pj4+Pgo+Pj4+Pj4g
d2VsbCB5b3UgY2FuIHVzZSBhbnkgdGVybWluYWwgZW11bGF0b3IuIGdub21lLXRlcm1pbmFsLCBt
YXRlLXRlcm1pbmFsLAo+Pj4+Pj4gbHh0ZXJtaW5hbCAoaSB0aGluayB0aG9zZSBhcmUgYWxsIGJh
c2VkIG9uIFZURSkKPj4+Pj4+IGZvciBLb25zb2xlLCB0aGUgaXNzdWUgaXMgdHJhY2tlZCBoZXJl
Lgo+Pj4+Pj4gaHR0cHM6Ly9waGFicmljYXRvci5rZGUub3JnL1QxMDA5OQo+Pj4+Pj4gY3VycmVu
dGx5IHdpdGhvdXQgaHVnZSBwcm9ncmVzcy4gZGVidWdnaW5nIGlzIHJlcXVpcmVkLiBtYXliZSB5
b3Ugd2FubmEKPj4+Pj4+IHN0ZXAgaW4gOik/Cj4+Pj4+Pgo+Pj4+Pj4gQ2hlZXJzIGNocnlzCj4+
Pj4+PiBBbSAxOS4xMC4yMiB1bSAxMjo0NCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb246Cj4+Pj4+Pj4gSnVzdCBjaGVja2luZyB0byBzZWUgaWYgdGhlcmUncyBiZWVu
IGFueSBtb3ZlbWVudCBvbiBLb25zb2xlIHlldCwgb3IgaWYKPj4+Pj4+PiBub3Qgd2hhdCBhIGdv
b2QgYWx0ZXJuYXRpdmUgd291bGQgYmUgdGhhdCB3b3JrcyBuaWNlbHkgd2l0aCBLREU/IEkgbGlr
ZQo+Pj4+Pj4+IGx4dGVybWluYWwsIGJ1dCBJJ20gYWZ0ZXIgc29tZXRoaW5nIHdpdGggbW9yZSBl
YXR1cmVzIGFuZCB0aGF0IHdvcmtzCj4+Pj4+Pj4gbmljZWx5IHdpdGggUGxhc21hCj4+Pj4+Pj4K
Pj4+Pj4+PiBIb3BpbmcgZm9yIEtvbnNvbGUgdG8gd29yayB3aXRoIE9yY2Egc2luY2UgS0RFIDUu
MjYuMTEncyBmaXhlZCBhIGZldwo+Pj4+Pj4+IG5hZ2dpbmcgaXNzdWVzIHdpdGggdGhlIGRlc2t0
b3AuIEkndmUgbm90IHNlZW4gYSBuZXcgdmVyc2lvbiBsYW5kIGluCj4+Pj4+Pj4gQXJjaCdzIHJl
cG9zIG9yIEtvbnNvbGUgYXQgYWxsLCBhbnkgcmVwbyBhbmQgSSdtIHVuc3VyZSBpZiBLb25zb2xl
LWdpdCBoYXMKPj4+Pj4+PiBhbnkgaW1wcm92ZW1lbnRzIGFzIGZhciBhcyBPcmNhIGdvZXMKPj4+
Pj4+Pgo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pgo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

