Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E62073E3531
	for <lists+blinux-list@lfdr.de>; Sat,  7 Aug 2021 13:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628337229;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=buOCpNVzPSl+mHMDiwLPX7FHOMEBG/3M5BFd9i250EY=;
	b=Lye5yioEMeZkcyguPR6IBRd0573+/k6xPiHbJo5etjIUVPxs0TKJ2nqdVP9tuWFqSQ/l64
	cgS7uDWpOoizYAYsIik4co1gnA1caiS33ycsfmCas/abhL+wfwrQuqYGs17qBkUGJHyIdw
	MMUPt3gXar9C82fPB9cCvTaX1tuJZkk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-ybBwwdRAPc662y4EFP3wVw-1; Sat, 07 Aug 2021 07:53:47 -0400
X-MC-Unique: ybBwwdRAPc662y4EFP3wVw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 28ED180196C;
	Sat,  7 Aug 2021 11:53:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2C91100238C;
	Sat,  7 Aug 2021 11:53:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE903180BAD0;
	Sat,  7 Aug 2021 11:53:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 177BrNSU010725 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 7 Aug 2021 07:53:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D2B251112C2E; Sat,  7 Aug 2021 11:53:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CDEB61112C28
	for <blinux-list@redhat.com>; Sat,  7 Aug 2021 11:53:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C810E8001EA
	for <blinux-list@redhat.com>; Sat,  7 Aug 2021 11:53:20 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-53-E2aEV05nMuWZJXCynsifzA-1;
	Sat, 07 Aug 2021 07:53:18 -0400
X-MC-Unique: E2aEV05nMuWZJXCynsifzA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 8C755A008C
	for <blinux-list@redhat.com>; Sat,  7 Aug 2021 11:53:11 +0200 (CEST)
Subject: Re: Slint on the bare metal!
To: blinux-list@redhat.com
References: <946d66cd-defc-83a5-7f85-a44532cb52f3@gmail.com>
Message-ID: <11738c89-e5c6-2079-c18c-5fd25f33dccf@slint.fr>
Date: Sat, 7 Aug 2021 13:53:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <946d66cd-defc-83a5-7f85-a44532cb52f3@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 177BrNSU010725
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKMS4gSWYgcnVubmluZyBzcGVha3VwIChub3Qtc3BlZWNoZC11cCksIHJ1bgps
aXN0LWVzcGVhay1uZy12b2ljZXMKYW5kIHRoZW4gc2V0IHRoZSBjaG9zZW4gdm9pY2UgYXMgcm9v
dCBpbjoKL2V0Yy9lc3BlYWt1cC5jb25mCgoyLiBJZiBydW5uaW5nIHNwZWVjaGQtdXAKc2V0IHRo
ZSBsYW5ndWFnZSBhcyByb290IGluOgovZXRjL3NwZWVjaGQtdXAuY29uZgphbmQgdGhlIGNob3Nl
biBzeW50aGVzaXplciBpbjoKL2V0Yy9zcGVlY2gtZGlzcGF0Y2hlci9zcGVlY2hkLXVwLmNvbmYK
CnNwZC1saXN0IHRlbGxzIHdoYXQncyBhdmFpbGFibGUgYXMgc3ludGhlc2l6ZXJzIGFuZCB2b2lj
ZXMuCgpVbmZvcnR1bmF0ZWx5IGl0J3Mgbm90IHlldCBwb3NzaWJsZSB0byBzZXQgdGhlIHZvaWNl
IGZvciBzcGVlY2hkLXVwIApkaXJlY3RseSwKdW5sZXNzIHlvdSB1c2UgdGhlIHZveGluIHN5bnRo
ZXNpemVyIGFuZCBhIHZvaWNlIGRpc3RyaWJ1dGVkIGJ5IG9yYWx1eC4gVGhlbgp0aGUgc2V0dGlu
ZyBpcyBkb25lIGluOgovb3B0L29yYWx1eC92b3hpbi9zaGFyZS9jb25mL3ZveGluLmluaQoKQ2hl
ZXJzLApEaWRpZXIKClBTIEkgaGF2ZSBtYWRlIGF2YWlsYWJsZSBzb21lIHNjcmlwdHMgdGhhdCBJ
IGhhdmUgd3JpdHRlbiBmb3IgU2xpbnQgaW46Cmh0dHBzOi8vZ2l0aHViLmNvbS9EaWRpZXJTcGFp
ZXIvc2xpbnQtc2NyaXB0cwoKVGhleSBjYW4gYmUgdXNlZCBpbiBvdGhlciBkaXN0cmlidXRpb25z
LCBpbiBzb21lIGNhc2VzIGFmdGVyIGFkYXB0YXRpb24uCkkgd2lsbCBhZGQgdGhlaXIgZGVzY3Jp
cHRpb25zIGluIHRoZSBSRUFETUUuCkxlIDA3LzA4LzIwMjEgw6AgMDg6MzIsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBhbGwsCj4gCj4gCj4gSSB1
bmV4cGVjdGVkbHkgaGFkIHRoZSB1c2Ugb2YgYSBzZXQgb2Ygd29ya2luZyBleWVzIGZvciBhIGxp
dHRsZSB3aGlsZSAKPiB5ZXN0ZXJkYXk7IHNlY3VyZSBib290IHdhcyB0dXJuZWQgb2ZmLCBhbmQg
dGhlIGtleSB0byBicmluZyB1cCB0aGUgYm9vdCAKPiBtZW51IHdhcyBmb3VuZC4KPiAKPiAKPiBB
cyBhIHJlc3VsdCBvZiB0aGlzLCBXaW5kb3dzIGdvdCByZW1vdmVkIGZyb20gdGhpcyBtYWNoaW5l
LCBhbmQgYXMgdGhlIAo+IHN1YmplY3Qgc3RhdGVzLCBTbGludCB0b29rIGl0J3MgcGxhY2UuCj4g
Cj4gCj4gVGhpcyBtYWNoaW5lIHJ1bnMgbGlrZSBhIGRyZWFtLCBob3dldmVyLCBJIGRpZCBldmVy
eXRoaW5nIGNvcnJlY3RseSBhbmQgCj4gdGhlIGVuLXVzIHZvaWNlIHVzZWQgYnkgZGVmYXVsdCBi
eSBteSBlc3BlYWt1cCBqdXN0IGRvZXNuJ3Qgd2FudCB0byBnbyAKPiB0aGUgaGVsbCBhd2F5IQo+
IAo+IAo+IEFzIHJvb3QsIEkgZGlkIHRoZSBmb2xsb3dpbmc6Cj4gCj4gI3NwZWFrLXdpdGggc3Bl
ZWNoZC11cAo+IAo+IDo6VGhpcyBpbiBlZmZlY3Qga2lsbHMgZXNwZWFrdXAgd2hpY2ggaXMgbmVl
ZGVkIGZvciB0aGUgZm9sbG93aW5nCj4gCj4gI2VzcGVha3VwIGRlZmF1bHQtdm9pY2U9ZW4tZ2IK
PiAKPiA6OlRoaXMsIGluIHRoZW9yeSBzaG91bGQgc2V0IHRoZSB2b2ljZSB1c2VkIHRvIHRoZSBi
cml0dGlzaCBvbmUuCj4gCj4gI3NwZWFrLXdpdGggZXNwZWFrdXAKPiAKPiA6OkRvZXMgc3dpdGNo
IHlvdSBiYWNrIHRvIGVzcGVha3VwLgo+IAo+ICNleGl0Cj4gCj4gCj4gSWYgYW55b25lIGtub3dz
IHdoYXQncyBnb2luZyBvbiBoZXJlLCBwbGVhc2UsIHBsZWFzZSwgaGVscCEgTXkgaGVhcmluZyAK
PiBpcyBhbHJlYWR5IG5vdCB0aGUgYmVzdCBpbiB0aGUgd29ybGQsIEkgZG9uJ3QgbmVlZCB0aGUg
YmFkIFVTIHZvaWNlIHRvIAo+IG1ha2UgdGhpbmdzIHdvcnNlLgo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

