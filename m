Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 605C6445934
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 19:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636048901;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tl5WedGla6EAvhnXGb9VccxcE7yD6EIkmm7k1fC1/9c=;
	b=XQ6Eo3B7cK9XMAZ4sGZcplGF+WNXdhNyeFgnZ4AJiMhWD2Ca8INh6wVlcPVh97tP7nUAxe
	i2btKfZhsumsfD9IiD3zmRXZZRcemhLnfzq69MTL5qAImQefdd8iZo3PPQ0gWBQOzgTD5m
	YAbgf1GcnTJJSuLDtFOR5DQju2+RC4o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-NBDxCr3oPq-fbX035NF5nQ-1; Thu, 04 Nov 2021 14:01:37 -0400
X-MC-Unique: NBDxCr3oPq-fbX035NF5nQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18A3C2FD22;
	Thu,  4 Nov 2021 18:01:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C734719D9F;
	Thu,  4 Nov 2021 18:01:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DEBF74A703;
	Thu,  4 Nov 2021 18:01:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4I054J009240 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 14:00:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3593A51E5; Thu,  4 Nov 2021 18:00:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F49951E4
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 18:00:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 330B0802A6A
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 18:00:02 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-596-QRcIjp2PMgGxb2Gyq0khvg-1;
	Thu, 04 Nov 2021 13:59:59 -0400
X-MC-Unique: QRcIjp2PMgGxb2Gyq0khvg-1
Received: from email.seznam.cz
	by email-smtpc25b.ng.seznam.cz (email-smtpc25b.ng.seznam.cz
	[10.23.18.35]) id 6a8d01937f1552c96b67f08f;
	Thu, 04 Nov 2021 18:59:57 +0100 (CET)
Received: from [192.168.1.174] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay2.ng.seznam.cz (Seznam SMTPD 1.3.128) with ESMTP;
	Thu, 04 Nov 2021 18:59:54 +0100 (CET)
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: blinux-list@redhat.com
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<0156E832-953A-4EE3-BBC7-8ACB8FBE5DE3@icloud.com>
	<CAGJxbF4mikSfj9O8UVb3JJUhpOCwjzkB-G_vZPmMwaHMkRpmvA@mail.gmail.com>
	<Pine.LNX.4.64.2111041353520.673755@server2.shellworld.net>
Message-ID: <87825a97-2bc8-b8ed-38a6-87abeb41575f@seznam.cz>
Date: Thu, 4 Nov 2021 18:59:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2111041353520.673755@server2.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8sCgphbmQgaG93IGNhbiBJIGluc3RhbGwgdGhpcyBzY3JlZW5yZWFkZXIgb24gVWJ1bnR1
IE1hdGU/IElzIHNvbWUgd2F5IHRvIApoYXZlIGl0IGluc3RhbGxlZCBpbiBScGk/Cgp0aGFua3Mg
YSBsb3QuCgpCZXN0IHJlZ2FyZHMKClZvanRhLgoKRG5lIDA0LiAxMS4gMjEgdiAxODo1NSBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcHNhbChhKToKPiAuLmFuZCBvbmx5IHNv
ZnR3YXJlIHNvdXJjZXMsIHdoaWNoIGFyZSBpbmNvbnNpc3RlbnQ/Cj4gVGhlaXIgY2xhaW0gd2Fz
IHRvIHByb3ZpZGUgY2hvaWNlcyBJIGJlbGlldmUsIHNvIGlmIHRoZXkgYXJlIG5vdCBkb2luZyAK
PiB0aGF0IG11Y2gsIHdoYXQgbWFrZXMgaXQgc28gd29uZGVyZnVsPwo+IEthcmVuCj4gCj4gCj4g
Cj4gT24gVGh1LCA0IE5vdiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+IAo+PiBJdCdzIHByb2JhYmx5IHVzaW5nIHNwZWVjaC1kaXNwYXRjaGVyLgo+PiBE
ZXZpbiBQcmF0ZXIKPj4gci5kLnQucHJhdGVyQGdtYWlsLmNvbQo+Pgo+Pgo+Pgo+Pgo+PiBPbiBU
aHUsIE5vdiA0LCAyMDIxIGF0IDg6NTAgQU0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8Cj4+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+Pj4gSGksCj4+PiBI
YXZlIGFueSBvZiB5b3UgdHJpZWQgdGhpcyBuZXcgc2NyZWVuIHJlYWRlcj8KPj4+IElzIGl0IHVz
aW5nIFNwZWFrPwo+Pj4KPj4+IFRoYW5rcywKPj4+IFJvYgo+Pj4KPj4+Cj4+Pj4gT24gTm92IDEs
IDIwMjEsIGF0IDk6MjYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+
Pj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4KPj4+PiBGV0lXLCBJIGp1c3Qg
cmFuIGFjcm9zcyB0aGlzIGluIEhhY2tlciBOZXdzLi4uCj4+Pj4KPj4+Pj4gQWNjZXNzaWJpbGl0
eSBvbiBMaW51eCBoYXMgaGlzdG9yaWNhbGx5IGJlZW4gdW5kZXItZGV2ZWxvcGVkLAo+Pj4gdW5k
ZXItbWFpbnRhaW5lZCwgYW5kLCB0aGVyZWZvcmUsIGdhaW5lZCBhIHJlcHV0YXRpb24gb2YgYmVp
bmcgcXVpdGUKPj4+IHBhaW5mdWwgdG8gdXNlIGFzIGEgZGFpbHkgZHJpdmVyIGFtb25nIGRpc2Fi
bGVkIHBlb3BsZS4gV2Ugd2FudCB0byAKPj4+IGNoYW5nZQo+Pj4gdGhhdC4KPj4+Pj4KPj4+Pj4g
WWdnZHJhc2lsIGlzIGEgbmV3IHByb2plY3QgdGhhdCBhaW1zIHRvIGNyZWF0ZSBhIGJldHRlciBM
aW51eCBzY3JlZW4KPj4+IHJlYWRlciwgd3JpdHRlbiBpbiBSdXN0LiBUaHJvdWdoIHRoaXMgcHJv
amVjdCwgd2UgYWltIHRvIHByb3ZpZGUgYSAKPj4+IGJldHRlcgo+Pj4gc2NyZWVuIHJlYWRpbmcg
ZXhwZXJpZW5jZSB0aGFuIHRoZSBvbmUgd2UgY3VycmVudGx5IGhhdmUgaW4gT3JjYS4gQSAKPj4+
IHNjcmVlbgo+Pj4gcmVhZGVyIHdpdGggYWxsIHRoZSBtb2Rlcm4gZmVhdHVyZXMgYSBXaW5kb3dz
IG9yIE1hY09TIHVzZXIgd291bGQgZXhwZWN0Cj4+PiBmcm9tIHRoZWlyIGNvbXB1dGVycywgc29t
ZSBvZiB3aGljaCBhcmUgb3V0bGluZWQgYmVsb3cuCj4+Pj4+Cj4+Pj4+IMKgwqDCoMKgIOKAoiBP
YmplY3QgbmF2aWdhdGlvbgo+Pj4+PiDCoMKgwqDCoCDigKIgT0NSCj4+Pj4+IMKgwqDCoMKgIOKA
oiBjdXN0b21pc2FibGUgbmF2aWdhdGlvbiBjb21tYW5kcwo+Pj4+PiDCoMKgwqDCoCDigKIgYSBw
b3dlcmZ1bCBhZGQtb24gbWVjaGFuaXNtCj4+Pj4+IMKgwqDCoMKgIOKAoiBhbmQgbW9yZS4KPj4+
Pgo+Pj4+IFRoZSBZZ2dkcmFzaWwgU2NyZWVuIFJlYWRlciBQcm9qZWN0Cj4+Pj4gaHR0cHM6Ly95
Z2dkcmFzaWwtc3IuZ2l0aHViLmlvLwo+Pj4+IGh0dHBzOi8vbmV3cy55Y29tYmluYXRvci5jb20v
aXRlbT9pZD0yOTA1NjE2OAo+Pj4+Cj4+Pj4gLSBSaWNoIE1vcmluCj4+Pj4KPj4+Pgo+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+
Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

