Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB206049A1
	for <lists+blinux-list@lfdr.de>; Wed, 19 Oct 2022 16:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666190832;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VHxG37tO75GuLc3jvfyTLbK1Hyi0CAqPybl6lXjJSAg=;
	b=c7wmW5khFBU50Kxvq66YSj+ZNlmIhk7MULvLevQF5Mpb/4tz4MoOvOLUGObvI9Ri4mVXEs
	fmgO3eH5WHr937LuiFANrZNkcQnMGSMV11L1LKTpMUd/oIh6jKRr1s8aOb0ZuHCdglww1s
	CKx5VJ7emwFfdWlMzrO2JUq1nV/IdKk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-607-nm2dwGspPw2uLob_IgqJeg-1; Wed, 19 Oct 2022 10:47:08 -0400
X-MC-Unique: nm2dwGspPw2uLob_IgqJeg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 40F4787B2C5;
	Wed, 19 Oct 2022 14:47:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D6BA7215CDAE;
	Wed, 19 Oct 2022 14:47:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 712AE19465A3;
	Wed, 19 Oct 2022 14:47:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 19 Oct 2022 15:23:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Konsole progress/any good alternatives?
To: blinux-list@redhat.com
References: <mailman.1338.1666188109.3004.blinux-list@redhat.com>
 <mailman.1343.1666188601.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.1343.1666188601.3004.blinux-list@redhat.com>
Message-ID: <mailman.1226.1666190823.3010.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
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
T3JjYS4KCkFsc28sIGFyZSB0aGUgaW5wdXQgYW5kIG91dHB1dCBhcmVhcyBvZiBLb25zb2xlIHVz
aW5nIGRpZmZlcmVudCBzZXR0aW5ncyAKYXMgZmFyIGFzIEFUL09yY2EgZ29lcz8gSSdtIGp1c3Qg
dHJ5aW5nIHRvIGZpZ3VyZSBvdXQgd2h5IE9yY2EgcmVhZHMgCm9uZSwgYnV0IG5vdCB0aGUgb3Ro
ZXIgZXZlbiB3aXRoIHRoZSBpbmNvcnJlY3Qgcm9sZQoKCgpPbiAxMC8xOS8yMiAxNTowOSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIb3dkeSwKPgo+IEtvbnNv
bGUgZG9lcyBub3QgaGF2ZSBhIGNhcmV0IChpdHMgYW4gdGV4dCBjb25zb2xlIHdoYXQgaXMgbWFk
ZSBmb3IgaW50ZXJhY3RpbmcpLgo+Cj4gTmFoIGlzc3VlIGhlcmUgaXMgc29tZSBidWcuIEkgc2Vl
IGV2ZW50cyBhbmQgdGV4dCBpbiBhY2NlcmNpc2VyLiBNYXliZSB3cm9uZyBhY2Nlc3NpYmlsaXR5
IHJvbGUgb3Igc29tZXRoaW5nLgo+Cj4gQ2hlZXJzIGNocnlzCj4KPiBWb24gbWVpbmVtIGlQaG9u
ZSBnZXNlbmRldAo+Cj4+IEFtIDE5LjEwLjIwMjIgdW0gMTY6MDMgc2NocmllYiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4KPj4g
77u/SnVzdCB0b29rIGEgbG9vayB0aHJvdWdoIEtvbnNvbGUncyBrZXlib2FyZCBzaG9ydGN1dHMu
IEkgZGlkbid0IHNlZSBhbnl0aGluZyBsaXN0ZWQgZm9yIGNhcmV0IGJyb3dzaW5nLCBhbmQgaGl0
dGluZyBGNyBvbiBteSBBcmNoIGJveCBkaWRuJ3QgZG8gYSB0aGluZy4gSXQgcmVhZHMgd2hhdCBJ
J20gdHlwaW5nIGluIGhvd2V2ZXIsIG5vdCB0aGUgb3V0cHV0IHNvIHNvbWV0aGluZyBpcyBiZWlu
ZyBwaWNrZWQgdXAgYnkgT3JjYQo+Pgo+Pgo+Pgo+Pgo+Pgo+Pgo+Pj4gT24gMTAvMTkvMjIgMTQ6
MjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBJIHRoaW5r
IGY3IHRvZ2dsZXMgY2FyZXQgYnJvd3NpbmcgYW5kIG9yY2EgaGFzIGNhcmV0IGJyb3dzaW5nIG9m
ZiBieQo+Pj4gZGVmYXVsdC4KPj4+Cj4+Pgo+Pj4KPj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4
IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluCj4+PiBkZWZlbnNl
IG9mIGxpYmVydHk6Cj4+PiAgIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1
c2UgaW4gdGhhdCBvcmRlci4iCj4+PiAtRWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPj4+
Cj4+PiAuCj4+Pgo+Pj4+IE9uIFdlZCwgMTkgT2N0IDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4KPj4+PiBJJ3ZlIG5vIGNsdWUgd2hlcmUgdG8gc3Rh
cnQgb3IgdGhlIHNtYXJ0cyB0byBnZXQgYW55d2hlcmUgd2l0aCBpdCBhdCBhbGwsIG15Cj4+Pj4g
a25vd2xlZGdlIG9mIGhvdyB0aGluZ3MgaW50ZXJhY3Qgd2l0aCBPcmNhIHN0YXJ0cyBhbmQgZW5k
cyB3aXRoIC4uaXMgZXhwb3NlZAo+Pj4+IHRvIE9yY2EsIHBhc3QgdGhhdCBJJ3ZlIHplcm8gY2x1
ZSBob3cgdG8gZ2V0IGFueXRoaW5nIHRvIHNwZWFrIHRvL3dpdGgvdmlhCj4+Pj4gT3JjYSBhdCBh
bGwuIEkga25vdyB3aGF0IHNob3VsZCBiZSBoYXBwZW5pbmcsIHN1cmUsIGJ1dC4uLgo+Pj4+Cj4+
Pj4KPj4+PiBPbiAxMC8xOS8yMiAxMzozNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZTpIb3dkeSwKPj4+Pj4ganVzdCBkaWQgYSBxdWljayBsb29rIGludG8gYWNjZXJj
aXNlci4gc2VlbXMgdGhhdCB0aGUgdGVybWluYWwgY29udGVudCBpcwo+Pj4+PiBhbHJlYWR5IGV4
cG9zZWQgdG8gQVQuIFNvIHRoZXJlIGlzIGF0IGxlYXN0IHNvbWV0aGluZyBpbiBwbGFjZS4gbWF5
YmUgYQo+Pj4+PiBmb2N1cyBpcyBtaXNzaW5nIG9yIHNpbWlsYXIuCj4+Pj4+Cj4+Pj4+IGNoZWVy
cyBjaHJ5cwo+Pj4+Pgo+Pj4+PiBBbSAxOS4xMC4yMiB1bSAxNDoyNSBzY2hyaWViIGNocnlzOgo+
Pj4+Pj4gSG93ZHksCj4+Pj4+Pgo+Pj4+Pj4gd2VsbCB5b3UgY2FuIHVzZSBhbnkgdGVybWluYWwg
ZW11bGF0b3IuIGdub21lLXRlcm1pbmFsLCBtYXRlLXRlcm1pbmFsLAo+Pj4+Pj4gbHh0ZXJtaW5h
bCAoaSB0aGluayB0aG9zZSBhcmUgYWxsIGJhc2VkIG9uIFZURSkKPj4+Pj4+IGZvciBLb25zb2xl
LCB0aGUgaXNzdWUgaXMgdHJhY2tlZCBoZXJlLgo+Pj4+Pj4gaHR0cHM6Ly9waGFicmljYXRvci5r
ZGUub3JnL1QxMDA5OQo+Pj4+Pj4gY3VycmVudGx5IHdpdGhvdXQgaHVnZSBwcm9ncmVzcy4gZGVi
dWdnaW5nIGlzIHJlcXVpcmVkLiBtYXliZSB5b3Ugd2FubmEKPj4+Pj4+IHN0ZXAgaW4gOik/Cj4+
Pj4+Pgo+Pj4+Pj4gQ2hlZXJzIGNocnlzCj4+Pj4+PiBBbSAxOS4xMC4yMiB1bSAxMjo0NCBzY2hy
aWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+Pj4+Pj4gSnVzdCBjaGVj
a2luZyB0byBzZWUgaWYgdGhlcmUncyBiZWVuIGFueSBtb3ZlbWVudCBvbiBLb25zb2xlIHlldCwg
b3IgaWYKPj4+Pj4+PiBub3Qgd2hhdCBhIGdvb2QgYWx0ZXJuYXRpdmUgd291bGQgYmUgdGhhdCB3
b3JrcyBuaWNlbHkgd2l0aCBLREU/IEkgbGlrZQo+Pj4+Pj4+IGx4dGVybWluYWwsIGJ1dCBJJ20g
YWZ0ZXIgc29tZXRoaW5nIHdpdGggbW9yZSBlYXR1cmVzIGFuZCB0aGF0IHdvcmtzCj4+Pj4+Pj4g
bmljZWx5IHdpdGggUGxhc21hCj4+Pj4+Pj4KPj4+Pj4+PiBIb3BpbmcgZm9yIEtvbnNvbGUgdG8g
d29yayB3aXRoIE9yY2Egc2luY2UgS0RFIDUuMjYuMTEncyBmaXhlZCBhIGZldwo+Pj4+Pj4+IG5h
Z2dpbmcgaXNzdWVzIHdpdGggdGhlIGRlc2t0b3AuIEkndmUgbm90IHNlZW4gYSBuZXcgdmVyc2lv
biBsYW5kIGluCj4+Pj4+Pj4gQXJjaCdzIHJlcG9zIG9yIEtvbnNvbGUgYXQgYWxsLCBhbnkgcmVw
byBhbmQgSSdtIHVuc3VyZSBpZiBLb25zb2xlLWdpdCBoYXMKPj4+Pj4+PiBhbnkgaW1wcm92ZW1l
bnRzIGFzIGZhciBhcyBPcmNhIGdvZXMKPj4+Pj4+Pgo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pgo+Pj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

