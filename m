Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B61FF4AEF76
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 11:42:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644403343;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L8a2CBNW7vqY/dZF1vadTpbkhBzUUPaizzS1rpzY8fc=;
	b=eB+Vx6xGZOACmUOfgnHSAoejdRArqYnMbxOPWIe2pO3brHJ8DNm4VpY1gEgvJqJIGpTUTQ
	LjoHOOHNHRj4SPUAWAFoGRPKNxtoqUpTC29DatMzyWNqmDFpUtYIbm7AI1LZLksUklOK6R
	Rn06F0YWNhx5KfDcsKm//INE0Ae2KGo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-602-2Zg95x4UPCKSAwHsdPopbQ-1; Wed, 09 Feb 2022 05:42:20 -0500
X-MC-Unique: 2Zg95x4UPCKSAwHsdPopbQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8E361006AA6;
	Wed,  9 Feb 2022 10:42:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 549DD66E2F;
	Wed,  9 Feb 2022 10:42:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 250141809C88;
	Wed,  9 Feb 2022 10:42:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219AgCTm030594 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 05:42:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 30E2B2166B1A; Wed,  9 Feb 2022 10:42:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CBCF2166B16
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:42:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 767C0802A6A
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:42:08 +0000 (UTC)
Received: from smtprelay08.ispgateway.de (smtprelay08.ispgateway.de
	[134.119.228.98]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-278-pgiQ7aY5PEq47NWJ375PYw-1; Wed, 09 Feb 2022 05:42:06 -0500
X-MC-Unique: pgiQ7aY5PEq47NWJ375PYw-1
Received: from [37.4.229.93] (helo=[192.168.178.110])
	by smtprelay08.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1nHkP3-0002Ru-Me
	for blinux-list@redhat.com; Wed, 09 Feb 2022 11:40:49 +0100
Message-ID: <95b092c6-91fa-5c95-5ae5-f2418892d8e8@linux-a11y.org>
Date: Wed, 9 Feb 2022 11:40:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
In-Reply-To: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHkgUmFzdGlzbGF2LAoKeWVhIENvcXVpIGlzIGF3c29tZS4gaXQgd2FzIGluaXRpYWwgcGFy
dCBvZiBtb3ppbGxhcyBUVFMgYW5kIFNUVCBlZmZvcnRzLgp3ZSByZWFsbHkgc2hvdWxkIGhhdmXC
oCBhbiBzcGVlY2gtZGlzcGF0Y2hlciBkcml2ZXIgZm9yIHRoYXQgOikuCgpieSB0aGUgd2F5LCBr
ZWVwIHVwIHlvdXIgZ3JlYXQgd29yayEgSnVzdCB0YWtlIGEgbG9vayBhdCB0aGUgQyMgCnNwZWVj
aC1kaXNwYXRjaGVyIGJpbmRpbmdzLgoKY2hlZXJzIGNocnlzCgpBbSAwOS4wMi4yMiB1bSAxMToy
NSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gSGVsbG8gZXZl
cnlvbmUsCj4KPiBtYXkgYmUgSSd2ZSBkaXNjb3ZlcmVkIEFtZXJpY2EsIGJ1dCB5ZXN0ZXJkYXkg
SSBtb3N0bHkgcmFuZG9tbHkgY2FtZSBhY3Jvc3M6Cj4KPiBodHRwczovL2Vyb2dvbC5naXRodWIu
aW8vZGRjLXNhbXBsZXMvCj4KPgo+IEFuZCB0aGUgdm9pY2UgaGFzIGNvbXBsZXRlbHkgYmxldyBt
eSBtaW5kIQo+Cj4gTGlrZSwgSSBrbmV3IHRoZSBUVFMgYXJlYSBoYXMgYWR2YW5jZWQgc2lnbmlm
aWNhbnRseSBpbiB0aGUgcmVjZW50Cj4geWVhcnMsIGJ1dCBJIHRob3VnaHQgdGhlIG5ldyBuZXVy
YWwgdm9pY2VzIGFyZSBtb3N0bHkgY2xvc2VkIGZlYXR1cmVzIG9mCj4gY29tcGFuaWVzIGxpa2Ug
R29vZ2xlIG9yIE1pY3Jvc29mdC4KPgo+IEkgaGFkIG5vIGlkZWEgd2UgaGFkIHNvbWV0aGluZyBz
byBiZWF1dGlmdWwgb24gbGludXggYW5kIGNvbXBsZXRlbHkKPiBvcGVuLXNvdXJjZSEKPgo+Cj4g
UGx1cywgaXQncyBub3QganVzdCB0aGUgbGljZW5zZSB0aGF0IG1ha2VzIHRoaXMgc28gaW50ZXJl
c3RpbmcsIGJ1dCBhbHNvCj4gdGhlIHVzYWJpbGl0eS4KPgo+IFRoZXJlIHdlcmUgdGhlIERlZXBt
aW5kIHBhcGVycyBldmVuIGJlZm9yZSBhbmQgc29tZSBvcGVuIHByb2plY3RzIHRyeWluZwo+IHRv
IGltcGxlbWVudCB0aGVtLCBidXQgdGhlIGxldmVsIG9mIGNvbXBsZXRlbmVzcyBhbmQgdXNhYmls
aXR5IHZhcmllZAo+IHNpZ25pZmljYW50bHksIGV2ZW4gaWYgYSBwcm9qZWN0IHdhcyB1c2FibGUs
IGdldHRpbmcgaXQgdG8gd29yayByZXF1aXJlZAo+IHNvbWUgZWZmb3J0IChhdCBsZWFzdCB0aGUg
cHJvamVjdHMgSSBzYXcpLgo+Cj4KPiBXaXRoIENvcXVpLCB0aGUgc2l0dWF0aW9uIGlzIGNvbXBs
ZXRlbHkgZGlmZmVycmVudC4KPgo+IEFzIHRoZSBhYm92ZSBtZW50aW9uZWQgYmxvZyBzYXlzLCBh
bGwgeW91IG5lZWQgdG8gZG8gaXM6Cj4KPgo+ICQgcGlwMyBpbnN0YWxsIFRUUwo+Cj4gJCB0dHMg
LS10ZXh0ICJIZWxsbywgdGhpcyBpcyBhbiBleHBlcmltZW50YWwgc2VudGVuY2UuIgo+Cj4KPiBB
bmQgeW91IGhhdmUgYSBzeW50aGVzaXplZCByZXN1bHQhCj4KPgo+IE9yIHlvdSBjYW4gbGF1bmNo
IHRoZSBzZXJ2ZXI6Cj4KPiAkIHR0cy1zZXJ2ZXIKPgo+Cj4gQW5kIHBsYXkgaW4gdGhlIHdlYiBi
cm93c2VyLiBOb3RlIHRoYXQgdGhlIGF1ZGlvIGlzIHNlbnQgb25seSBhZnRlciBpdCdzCj4gZnVs
bHkgc3ludGhlc2l6ZWQsIHNvIHlvdSdsbCBuZWVkIHRvIHdhaXQgYSBiaXQgdG8gbGlzdGVuIGl0
Lgo+Cj4KPiBUaGUgb25seSBwcm9ibGVtYXRpYyBwYXJ0IGlzIHRoZSBsaW1pdCBvZiBkZWNvZGVy
IHN0ZXBzLCB3aGljaCBpcyBzZXQgdG8KPiA1MDAgYnkgZGVmYXVsdC4KPgo+IEknbSBub3Qgc3Vy
ZSB3aHkgZGlkIHRoZXkgcHV0IGl0IHNvIGxvdywgd2l0aCB0aGlzIHZhbHVlLCB0aGUgVFRTIGlz
Cj4gdW5hYmxlIHRvIHNwZWFrIGxvbmdlciBzZW50ZW5jZXMuCj4KPgo+IEZvcnR1bmF0ZWx5LCB0
aGUgZml4IGlzIHZlcnkgZWFzeS4gQWxsIEkgbmVlZGVkIHRvIGRvIHdhcyB0byBvcGVuCj4gfi8u
bG9jYWwvbGliL3B5dGhvbjMuOC9zaXRlLXBhY2thZ2VzL1RUUy90dHMvY29uZmlncy90YWNvdHJv
bl9jb25maWcucHkKPgo+IGFuZCBtb2RpZnkgdGhlIGxpbmU6Cj4KPiAgIMKgwqDCoCBtYXhfZGVj
b2Rlcl9zdGVwczogaW50ID0gNTAwCj4KPiB0bwo+Cj4gICDCoMKgwqAgbWF4X2RlY29kZXJfc3Rl
cHM6IGludCA9IDAKPgo+Cj4gd2hpY2ggc2VlbXMgdG8gZGlzYWJsZSB0aGUgbGltaXQuCj4KPgo+
IEFmdGVyIHRoaXMgc3RlcCwgSSBjYW4gc3ludGhlc2l6ZSB2ZXJ5IGxvbmcgc2VudGVuY2VzLCBh
bmQgdGhlIHF1YWxpdHkKPiBpcyBhYnNvbHV0ZWx5IGdsYW1vcm91cyEKPgo+Cj4gU28gSSB3YW50
ZWQgdG8gc2hhcmUuIEkgbWF5IGJlIGFjdHVhbGx5IHRoZSBsYXN0IHBlcnNvbiBkaXNjb3Zlcnlp
bmcgaXQKPiBoZXJlLCB0aG91Z2ggSSBkaWQgbm90IHNlZSBpdCBtZW50aW9uZWQgaW4gVFRTIGRp
c2N1c3Npb25zIG9uIHRoaXMgbGlzdC4KPgo+Cj4gSSd2ZSBldmVuIHRob3VnaHQgYWJvdXQgY3Jl
YXRpbmcgYSBzcGVlY2ggZGlzcGF0Y2hlciB2ZXJzaW9uIG9mIHRoaXMuIEl0Cj4gd291bGQgY2Vy
dGFpbmx5IGJlIGRvYWJsZSwgdGhvdWdoIEknbSBhZnJhaWQgd2hhdCB3b3VsZCB0aGUgc3ludGhl
c2lzCj4gc291bmQgbGlrZSB3aXRoIHRoZSBpcnJlZ3VsYXJpdGllcyBvZiBuYXZpZ2F0aW9uIHdp
dGggYSBzY3JlZW5yZWFkZXIuCj4gVGhlc2Ugdm9pY2VzIGFyZSBpbnRlbmRlZCBmb3IgcmVhZGlu
ZyBsb25nZXIgdGV4dHMgYW5kIGNvbnNpc3RlbnQKPiBwaHJhc2VzLCB3aXRoIHB1bmN0dWF0aW9u
LCBjb21wbGV0ZSBpbmZvcm1hdGlvbiBldGMuCj4KPiBUaGUgaW50b25hdGlvbiB3b3VsZCBwcm9i
YWJseSBnZXQgYSBiaXQgd2VpcmQgd2l0aCBmb3IgZXhhbXBsZSBqdXN0IGEKPiBoYWxmIHNlbnRl
bmNlLCBhcyBoYXBwZW5zIHdoZW4gbmF2aWdhdGluZyBhIGRvY3VtZW50IG9yIHdlYnBhZ2UgbGlu
ZSBieQo+IGxpbmUuCj4KPgo+IEFub3RoZXIgbGltaXRhdGlvbiB3b3VsZCBiZSB0aGUgb25lIG9m
IHNwZWVkLiBPbiBteSBsYXB0b3AsIHRoZSByZWFsdGltZQo+IGZhY3RvciAocHJvY2Vzc2luZyBk
dXJhdGlvbiAvIGF1ZGlvIGxlbmd0aCkgaXMgYXJvdW5kIDAuOCwgd2hhdCBtZWFucyBpdAo+IGNv
dWxkIGhhbmRsZSByZWFsLXRpbWUgc3ludGhlc2lzIGF0IHRoZSBkZWZhdWx0IHNwZWVkIHdpdGhv
dXQgZGVsYXlzLgo+Cj4KPiBUaGUgc2l0dWF0aW9uIHdvdWxkIGdldCBtb3JlIGNvbXBsaWNhdGVk
IHdpdGggaGlnaGVyIHNwZWVkcywgdGhvdWdoLgo+Cj4gSXQgd291bGRuJ3QgYmUgaW1wb3NzaWJs
ZSwgYnV0IG9uZSB3b3VsZCBuZWVkIGEgR1BVIHRvIGhhbmRsZQo+IHNpZ25pZmljYW50bHkgaGln
aGVyIHNwZWVjaCByYXRlcy4KPgo+Cj4gU28gSSB3b25kZXIuCj4KPgo+IEJ1dCBhbnl3YXksIHRo
aXMgZGVmaW5pdGVseSBtYWRlIG15IGRheS4gOikKPgo+Cj4gQmVzdCByZWdhcmRzCj4KPgo+IFJh
c3Rpc2xhdgo+Cj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

