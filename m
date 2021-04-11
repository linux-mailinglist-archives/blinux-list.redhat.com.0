Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id CA86B35B5EC
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 17:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618155478;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZyCZHfZlGsexuZzv9rAMWdSAyOk6ChT5Wu/vUiat6oo=;
	b=hTLKjiZCgpy0GXc/CzFaVlwAZXyxtiRgbTIG7wW/BicHoAnstnKJcNxKs/F775zNc9iTWP
	e4gCdnsEoXmEPnOsKoV+V17pDUd8N3h5PGWpnA9SphopjYsMWEAr/Cxf9YvgIgO/wIGURC
	N2+ncPRgsAeTBmkZmhUiLsSsmeqdD6s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-116-FXTyO0qxNhai_IvuJJ_DoA-1; Sun, 11 Apr 2021 11:37:56 -0400
X-MC-Unique: FXTyO0qxNhai_IvuJJ_DoA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44779107ACC7;
	Sun, 11 Apr 2021 15:37:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46AC219EF1;
	Sun, 11 Apr 2021 15:37:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A13BE1806D0F;
	Sun, 11 Apr 2021 15:37:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BFZ56R004491 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 11:35:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 91835345BD; Sun, 11 Apr 2021 15:35:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BB43345BB
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:35:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73903101A52C
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:35:02 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-60-HXgS6TyGMKG57OPkOLPuqw-1;
	Sun, 11 Apr 2021 11:34:59 -0400
X-MC-Unique: HXgS6TyGMKG57OPkOLPuqw-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 10E6EA40A8
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 16:34:52 +0200 (CEST)
Subject: Re: Some questions about Arch Linux
To: blinux-list@redhat.com
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
	<93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
	<42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
	<d109559a-d2c0-c375-255d-b4e4c1ffa0b8@gmail.com>
	<b8cfdbc2-3994-32fa-92d4-fe0a449c2aaf@gmail.com>
Message-ID: <cf6145c6-1bb4-2815-494d-3be7cb796802@slint.fr>
Date: Sun, 11 Apr 2021 19:34:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <b8cfdbc2-3994-32fa-92d4-fe0a449c2aaf@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13BFZ56R004491
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgp0d20gaXMgbm90IGFjY2Vzc2libGUuIFVzZSBNYXRlLgoKQ2hlZXJzLApEaWRpZXIKLS0K
RGlkaWVyIFNwYWllcgpTbGFpbnQgbWFpbnRhaW5lcgoKTGUgMTEvMDQvMjAyMSDDoCAxNzoyNiwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhlbGxvIHRo
ZXJlLAo+IAo+IEJlbG93IG15IGZpbGUsIHNpbmNlIEkgaW5zdGFsbGVkIGV2ZXJ5dGhpbmcgdGhy
b3VnaCB0aGUgbmV3IGluc3RhbGxlciBpbiAKPiB0aGUgbmV3ZXN0IGlzbywgd2hpY2gsIGJ0dywg
aXMgY29tcGxldGVseSBkb2FibGUsIGFuZCB0aHJvd3Mgbm8gZXJyb3JzLgo+IAo+IAo+ICMhL2Jp
bi9zaAo+IAo+IHVzZXJyZXNvdXJjZXM9JEhPTUUvLlhyZXNvdXJjZXMKPiB1c2VybW9kbWFwPSRI
T01FLy5YbW9kbWFwCj4gc3lzcmVzb3VyY2VzPS9ldGMvWDExL3hpbml0Ly5YcmVzb3VyY2VzCj4g
c3lzbW9kbWFwPS9ldGMvWDExL3hpbml0Ly5YbW9kbWFwCj4gCj4gIyBtZXJnZSBpbiBkZWZhdWx0
cyBhbmQga2V5bWFwcwo+IAo+IGlmIFsgLWYgJHN5c3Jlc291cmNlcyBdOyB0aGVuCj4gCj4gCj4g
Cj4gCj4gCj4gCj4gCj4gIMKgwqDCoCB4cmRiIC1tZXJnZSAkc3lzcmVzb3VyY2VzCj4gCj4gZmkK
PiAKPiBpZiBbIC1mICRzeXNtb2RtYXAgXTsgdGhlbgo+ICDCoMKgwqAgeG1vZG1hcCAkc3lzbW9k
bWFwCj4gZmkKPiAKPiBpZiBbIC1mICIkdXNlcnJlc291cmNlcyIgXTsgdGhlbgo+IAo+IAo+IAo+
IAo+IAo+IAo+IAo+ICDCoMKgwqAgeHJkYiAtbWVyZ2UgIiR1c2VycmVzb3VyY2VzIgo+IAo+IGZp
Cj4gCj4gaWYgWyAtZiAiJHVzZXJtb2RtYXAiIF07IHRoZW4KPiAgwqDCoMKgIHhtb2RtYXAgIiR1
c2VybW9kbWFwIgo+IGZpCj4gCj4gIyBzdGFydCBzb21lIG5pY2UgcHJvZ3JhbXMKPiAKPiBpZiBb
IC1kIC9ldGMvWDExL3hpbml0L3hpbml0cmMuZCBdIDsgdGhlbgo+ICDCoGZvciBmIGluIC9ldGMv
WDExL3hpbml0L3hpbml0cmMuZC8/Ki5zaCA7IGRvCj4gIMKgIFsgLXggIiRmIiBdICYmIC4gIiRm
Igo+ICDCoGRvbmUKPiAgwqB1bnNldCBmCj4gZmkKPiAKPiB0d20gJgo+IHhjbG9jayAtZ2VvbWV0
cnkgNTB4NTAtMSsxICYKPiB4dGVybSAtZ2VvbWV0cnkgODB4NTArNDk0KzUxICYKPiB4dGVybSAt
Z2VvbWV0cnkgODB4MjArNDk0LTAgJgo+IGV4ZWMgeHRlcm0gLWdlb21ldHJ5IDgweDY2KzArMCAt
bmFtZSBsb2dpbgo+IGV4cG9ydCBHVEtfTU9EVUxFUz1nYWlsOmF0ay1icmlkZ2UKPiBleHBvcnQg
R05PTUVfQUNDRVNTSUJJTElUWT0xCj4gZXhwb3J0IFFUX0FDQ0VTU0lCSUxJVFk9MQo+IGV4cG9y
dCBRVF9MSU5VWF9BQ0NFU1NJQklMSVRZX0FMV0FZU19PTj0xCj4gZXhwb3J0IEFDQ0VTU0lCSUxJ
VFkgRU5BQkxFRD0xCj4gCj4gT24gNC8xMS8yMSA1OjExIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBXaGljaCBzZXNzaW9uIGlzIHNwZWNpZmllZCBpbiB5
b3VyICcueGluaXRyYyc/wqAgRGlkIHlvdSBhbHNvIGRyYWcgaW4gCj4+IHRoZSBhcHByb3ByaWF0
ZSB2aWRlbyBkcml2ZXI/wqAgRG9lcyAneCcgc3RhcnQ/wqAgRG9lcyBpdCB0aHJvdyBlcnJvcnM/
Cj4+Cj4+Cj4+Cj4+IENoZWVycywKPj4KPj4KPj4KPj4gRGF2ZcKgIEh1bnQKPj4KPj4KPj4gU2Vu
dCBmcm9tIG15IExlbm92byBUaGlua3BhZCwgcnVubmluZyBTbGludCBHTlUvTGludXguIGh0dHBz
Oi8vc2xpbnQuZnIKPj4KPj4gT24gNC8xMS8yMSAxMTowOSBBTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IHN0dWZmIGkgZG9uJ3QgcmVtZW1iZXIsIGFyZSBp
bnN0YWxsZWQsIHBsdXMgdGhlIGdub21lIGFuZCBtYXRlIGRlc2t0b3BzLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

