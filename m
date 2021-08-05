Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 016173E1605
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 15:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628171361;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0nvmjR7AVkp93Y9TBmWlHKmRaXUsdGpzTzFNW4XckPs=;
	b=HFrzvBumTa839IZOTK2n+6PZMvQvovXVg0tSujEvngSdNu+G3qQHqefGLG+p9qI7kT1qk4
	jfQ+gCqD6jPp86hoKo5j6tZLfL1m5PJKxjQHFsMF5ge5zg6NaTuR93oEim5ooVC6tY1CK2
	zMp+CTpUj0knXhlAZOJoQNY9xiGjI2U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-3dYpVN3nNei2TDuUOA5hEA-1; Thu, 05 Aug 2021 09:49:19 -0400
X-MC-Unique: 3dYpVN3nNei2TDuUOA5hEA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB214802928;
	Thu,  5 Aug 2021 13:49:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 178C45D6A1;
	Thu,  5 Aug 2021 13:49:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 95E0D4BB7C;
	Thu,  5 Aug 2021 13:49:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175Dn1gK013710 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 09:49:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 54142106A50; Thu,  5 Aug 2021 13:49:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FCF3106247
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 13:48:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD83E101A54C
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 13:48:58 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-23-yqAS9bczPKWv2bTd1q5f_w-1;
	Thu, 05 Aug 2021 09:48:56 -0400
X-MC-Unique: yqAS9bczPKWv2bTd1q5f_w-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 5D8BDA1CFB
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 13:48:50 +0200 (CEST)
Subject: Re: Looking for help with switching on the bare metal.
To: blinux-list@redhat.com
References: <fe4bdfcc-061c-5e11-a3b6-1453ba0d9cf1@slint.fr>
	<42D652DC-E852-45BE-8168-A0512A95C855@gmail.com>
Message-ID: <1e7a3286-1ba6-de7d-0c8c-9a845f9572b5@slint.fr>
Date: Thu, 5 Aug 2021 15:48:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <42D652DC-E852-45BE-8168-A0512A95C855@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 175Dn1gK013710
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKQmFzaWNhbGx5IGFmdGVyIFNsaW50IGluc3RhbGxhdGlvbiwgcGx1Zy1pbiB0
aGUgVVNCIGRyaXZlLCB3YWl0IGEgZmV3IApzZWNvbmRzLAp0aGVuIHVzZSB0aGlzIGxzYmxrIGNv
bW1hbmQgdG8ga25vdyBob3cgdGhlIGV4dGVybmFsIGRyaXZlIGFuZCBpdHMgCnBhcnRpdGlvbnMK
d2lsbCBiZSBuYW1lZDoKbHNibGsgLWxwbyBuYW1lLHNpemUsdHlwZSxmc3R5cGUsbW91bnRwb2lu
dAp0aGVuLCBtb3VudCB0aGUgcGFydGl0aW9uIHdoZXJlIHRoZSBzdHVmZiBpcyBzdG9yZWQgYXMg
cm9vdCwgbGlrZSBmb3IgCmluc3RhbmNlOgptb3VudCAvZGV2L3NkYjEgL21udAoKYWZ0ZXIgdGhh
dCBjb3B5IHlvdXIgZmlsZXMgc3RvcmVkIGluIC9tbnQgdG8gYW5vdGhlciBkaXJlY3RvcnkgaW4g
U2xpbnQuIAp1c2luZwp0aGUgY3AgY29tbWFuZC4KCkNoZWVycywKRGlkaWVyCgpMZSAwNS8wOC8y
MDIxIMOgIDE0OjQ4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0
wqA6Cj4gSGkgRGlkaWVyLAo+IAo+IEkgYW0gbm90IGdvaW5nIHRvIGR1YWwgYm9vdCBteSBzeXN0
ZW0uIEkgYW0gZmVkIHVwIHdpdGggd2luZG93cy4gSWYgSSBuZWVkIGEgbW9yZSBjb252ZW50aW9u
YWwgT1MsIEkgaGF2ZSBteSBNYWNCb29rLiBJIHdpbGwgcHJvYmFibHkgaW5zdGFsbCBXaW5kb3dz
IGluIGEgdmlydHVhbCBtYWNoaW5lIGFueXdheSwgc2ltcGx5IGJlY2F1c2UgSSBuZWVkIGl0IGZv
ciBteSB3b3JrLgo+IEkgd291bGQgYXBwcmVjaWF0ZSB0aGUgaGVscCB3aXRoIGNvcHlpbmcgYWxs
IG15IHN0dWZmIGZyb20gYW4gZXh0ZXJuYWwgZHJpdmUgdG8gbXkgU2xpbnQgaW5zdGFsbGF0aW9u
Lgo+IAo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiAKPj4gT24gMDUgQXVnIDIwMjEsIGF0IDEzOjUz
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPiB3cm90ZToKPj4KPj4g77u/SGkgQnJhbmR0LAo+Pgo+PiBTbGludCBjYW4ndCBiZSBpbnN0
YWxsZWQgaW4gYW4gTlRGUyBwYXJ0aXRpb24gYnV0IGNhbiByZWFkIGFuZCB3cml0ZSB0aGUgZmls
ZXMKPj4gaW4gaXQsIG5vIGFkZC1vbiBuZWVkZWQuIFdlIGNhbiBoZWxwIHlvdSBkb2luZyB0aGUg
bmVlZGVkIHNldHRpbmdzIGFmdGVyCj4+IGluc3RhbGxhdGlvbi4KPj4KPj4gTWF5YmUgeW91IHdv
dWxkIGNvbnNpZGVyIGEgZHVhbCBib290IGluc3RhbGxhdGlvbj8KPj4KPj4gSWYgeWVzIGJ1dCB5
b3UgaGF2ZSBvbmx5IG9uZSBkcml2ZSwgcmVhZCBob3ctdG8gcHJlcGFyZSB0aGUgZHJpdmUgaW46
Cj4+IGh0dHBzOi8vc2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwjbWFrZV9yb29tX2Zvcl9TbGlu
dAo+Pgo+PiBDaGVlcnMsCj4+IERpZGllcgo+PiAtLQo+PiBEaWRpZXIgU3BhaWVyCj4+IFNsaW50
IG1haW50YWluZXIKPj4KPj4+IExlIDA1LzA4LzIwMjEgw6AgMTM6MzQsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+Pj4gVGhhbmtzIGZvciB0aGF0LiBJIGFt
IHZlcnkgc3Ryb25nbHkgY29uc2lkZXJpbmcgaW5zdGFsbGluZyBTbGludCwgYnV0IGJlZm9yZSBJ
IGRvLCBJIG5lZWQgdG8gcHVsbCBteSBzdHVmZiBvZmYgb2YgbXkgd2luZG93cyBpbnN0YWxsYXRp
b24uIFdpbGwgU2xpbnQgYnkgZGVmYXVsdCBkZWFsIHdpdGggTlRGUywgb3IgZG8gSSBuZWVkIHRv
IGluc3RhbGwgYSB1dGlsaXR5IHRvIGRvIHNvPwo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

