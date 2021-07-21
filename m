Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BF1643D17EC
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 22:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626899250;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6HTyXuessC0AWExkB9PrMtpaGMH989gBSag3/B7IpUw=;
	b=Od1lTCs/wMt6CVdlKGrJLXDg9PybMXut4zYSYruJBu0tqLprv34H5SP0uBQeESDoY3LDeV
	4uZuPbFuTHUzmBl3VU9venwqPDAewdhcB5eXKNM8Dt5QLY5DilZZ+1O64568qCSIme+pwI
	qFPVmpnyedMkAiwE10L3XsOs5fLzcQs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-hBsigVX-PbyJF7HxQGeUSg-1; Wed, 21 Jul 2021 16:27:29 -0400
X-MC-Unique: hBsigVX-PbyJF7HxQGeUSg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AAD4D8018A7;
	Wed, 21 Jul 2021 20:27:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D5225D6D1;
	Wed, 21 Jul 2021 20:27:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DB0284BB7C;
	Wed, 21 Jul 2021 20:27:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LKRJRo017893 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 16:27:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E656F20D6992; Wed, 21 Jul 2021 20:27:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0FA920D6993
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 20:27:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5FF63802A66
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 20:27:15 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-551-yjaoMdvZON-VIfuO-1LGfQ-1;
	Wed, 21 Jul 2021 16:27:12 -0400
X-MC-Unique: yjaoMdvZON-VIfuO-1LGfQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id BCBCAA472C
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 20:27:10 +0200 (CEST)
Subject: Re: Twitter, again
To: blinux-list@redhat.com
References: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
	<alpine.NEB.2.23.451.2107210906290.23995@panix1.panix.com>
	<alpine.DEB.2.11.2107211620400.7560@debian.work>
	<5a0ece74-7eef-6fe4-39a0-f6f98067e92a@gmail.com>
Message-ID: <6e6febb6-8a7f-9fd5-aab4-81a285edf291@slint.fr>
Date: Wed, 21 Jul 2021 22:27:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <5a0ece74-7eef-6fe4-39a0-f6f98067e92a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16LKRJRo017893
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

SGkgQnJhbmJkdCwKCm5vIGNhd2JpcmQgaW4gU2xpbnQsIHNvcnJ5LgoKQnV0IHNldmVyYWwgY2xp
ZW50cyBjYW4gYmUgYnVpbHQgZnJvbSBidWlsZGluZyBzdHVmZiBhdmFpbGFibGUKYXQgaHR0cHM6
Ly9zbGFja2J1aWxkcy5vcmcgJ3NvbWVob3cgc2ltaWxhciB0byB0aGUgQVVSCgpKdXN0IHR5cGU6
CnNwaSB0d2l0dGVyCnRvIGtub3cgeW91ciBvcHRpb25zLgoKSWYgeW91IHdhbnQgb25lIHR5cGUg
YXMgcm9vdDoKc2xhcHQtc3JjIC1pIDxwYWNrYWdlPgoKYXMgbm90ZWQgaW46Cmh0dHBzOi8vc2xp
bnQuZnIvZG9jL0hhbmRCb29rLmh0bWwjR2V0X2FkZGl0aW9uYWxfYXBwbGljYXRpb25zCgpDYXZl
YXQ6IGZvciBub3cgdGhlcmUgaXMgYW4gaXNzdWU7IHNpeCBpcyBub3RlZCBhcyBhIGRlcCBvZiBz
ZXZlcmFsCnBhY2thZ2VzIGluIHRoZSBsaXN0LCBidXQgYWN0dWFsbHkgcHl0aG9uLXNpeCwgaW5j
bHVkZWQgaW4gU2xpbnQsIGlzIHRoZSAKc2FtZQpzb2Z0d2FyZS4gSSBob3BlIHRvIHNvbHZlIHRo
YXQgaW4gdGhlIGNvbWluZyBkYXlzLgoKRm9yIG5vdywgYXMgYSB3b3JrYXJvdW5kIHlvdSBjYW4g
YWNjZXB0IHRvIGJ1aWxkIGFuZCBpbnN0YWxsIHNpeCBhcyBkZXBzLAphbHRob3VnaCBpdCB3aWxs
IGJlIHNvbWVob3cgcmVkdW5kYW50LgoKT2gsIGFuZCB5b3UgZG9uJ3QgYWx3YXlzIG5lZWQgdG8g
Z2V0IGEgbmV3IGNvbXB1dGVyIHRvIGluc3RhbGwgU2xpbnQgb24gYmFyZQptZXRhbCwgdGhlcmUg
YXJlIG90aGVyIHBvc3NpYmlsaXRpZXMgbm90ZWQgaW46Cmh0dHBzOi8vc2xpbnQuZnIvZG9jL0hh
bmRCb29rLmh0bWwjX2ZlYXR1cmVzX29mX3RoZV9pbnN0YWxsZXIKCkFsc28sIGZlZWwgZnJlZSB0
byB1c2Ugb25lIG9mIG91ciBzdXBwb3J0IGNoYW5uZWxzOgpodHRwczovL3NsaW50LmZyL2RvYy9I
YW5kQm9vay5odG1sI19zdXBwb3J0X2FuZF9jb250cmlidXRpb25zCgpGb3IgSVJDLCBTbGludCBp
bmNsdWRlcyBwaWRnaW4gYW5kIGlyc3NpLgoKQ2hlZXJzLApEaWRpZXIKLS0KRGlkaWVyIFNwYWll
cgoKTGUgMjEvMDcvMjAyMSDDoCAyMTo1MiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiBhIMOpY3JpdMKgOgo+IEhpIGFsbCwKPiAKPiAKPiBJIGZvdW5kIGNhd2JpcmQgZm9yIEFy
Y2ggdG8gYmUgc2VtaSB1c2FibGUuIEl0IGlzIGEgR1VJIGFwcGxpY2F0aW9uLCBidXQgCj4gYmVp
bmcgYSBwcmFnbWF0aXN0LCBJIHdpbGwgdXNlIHdoYXRldmVyIGRvZXMgdGhlIGpvYi4gVW5mb3J0
dW5hdGVseSBJIAo+IGFjdHVhbGx5IG5lZWQgdHdpdHRlciBmb3Igc29tZSBvZiBteSB3b3JrLCBz
byBJIHdpbGwgaGF2ZSB0byBzZWUgaWYgCj4gY2F3YmlyZCBpcyBhdmFpbGFibGUgaW4gU2xpbnQu
IEkgbG92ZSBib3RoIEFyY2ggYW5kIFNsaW50LCBidXQgSSBoYXZlIHRvIAo+IHVzZSB3aGF0ZXZl
ciB3b3JrcyBmb3IgbXkgc2l0dWF0aW9uLgo+IAo+IFdhcm0gcmVnYXJkcywKPiAKPiBCcmFuZHQg
U3RlZW5rYW1wCj4gCj4gU2VudCBmcm9tIFRodW5kZXJiaXJkIG9uwqAgQXJjaCBMaW51eAo+IAo+
IE9uIDcvMjEvMjEgMzo0OSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4gT24gV2VkLCAyMSBKdWwgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4KPj4+IE95c3R0eWVyIGhhcyBiZWVuIGF2YWlsYWJsZSBmb3Igc29t
ZSB0aW1lIG5vdyBhbmQgcGVybCBpcyB1c2VkIHRvIHJ1biAKPj4+IGl0Lgo+Pj4gVGhlIGVtYWNz
IGVudmlyb25tZW50IGhhcyB0dHl0dGVyIGF2YWlsYWJsZSwgYW5kIHB5dGhvbiBoYXMKPj4+IHJh
aW5ib3ctdHdpdHRlciBhdmFpbGFibGUuCj4+Cj4+IE5vdGUgdGhhdCBPeXN0dHllciBpcyB0aGUg
c3VjY2Vzc29yIHRvIFRUWXR0ZXIsIGJvdGggaW4gUGVybC4gVFRZdHRlciAKPj4gaGFzIG5vdCBi
ZWVuIGRldmVsb3BlZCBzaW5jZSAyMDEyIGFuZCB0aGVyZSdzIHByb2JhYmx5IG5vIGdvb2QgcmVh
c29uIAo+PiB0byB1c2UgaXQgYW55bW9yZS4KPj4KPj4gT3lzdHR5ZXIgaXRzZWxmIGhhcyBub3Qg
c2VlbiBhbnkgY29tbWl0cyBzaW5jZSAyMDE4LCB3aGljaCBpcyBhIGJpdCAKPj4gY29uY2Vybmlu
Zy4KPj4KPj4gTW9yZSBhbm5veWluZyBpcyB0aGF0IGFsbCBpbnN0YWxscyBzaG93IHVwIGFzIHRo
ZSBzYW1lIGFwcCwgYW5kIAo+PiBiZWNhdXNlIG9mIFR3aXR0ZXIgc3R1cGlkbmVzcywgYWxsIGNv
dW50IGluIHRlcm1zIG9mIGRhaWx5IHF1b3RhcywgCj4+IGV0Yy7CoCBTbyBpdCdzIGNvbW1vbiB0
byBiZSB1bmFibGUgdG8gcG9zdCBkdWUgdG8gcXVvdGFzIGhhdmluZyBiZWVuIAo+PiBleGNlZWRl
ZCB3aGVuIHlvdSd2ZSBub3QgcG9zdGVkIGFueXRoaW5nIHRvZGF5Lgo+Pgo+PiBJJ2xsIHNwYXJl
IHlvdSBteSByYW50IGFib3V0IFR3aXR0ZXIgYW5kIHRoZSB3YXkgdGhleSBtYW5hZ2UgdGhlaXIg
Cj4+IEFQSS4gVGhlIG9uZS1saW5lIHN1bW1hcnkgb2YgaXQgaXMgdGhhdCB0aGV5IHNob3VsZCBj
aGFyZ2UgKnVzZXJzKiBhIAo+PiBub21pbmFsIGZlZSBmb3IgQVBJIGFjY2VzcyBhbmQgbGVhdmUg
dGhlIHBvb3IgZGV2ZWxvcGVycyBhbG9uZS4KPj4KPj4gSSd2ZSBub3QgdHJpZWQgUmFpbmJvd1N0
cmVhbSwgSSd2ZSBiZWVuIG1lYW5pbmcgdG8uwqAgQXQgbGVhc3QgaXQgc2VlbXMgCj4+IHRvIGJl
IHVuZGVyIGFjdGl2ZSBkZXZlbG9wbWVudC4KPj4KPj4gVGhlcmUgYXJlIHNvbWUgb3RoZXIgb3B0
aW9ucyBvdXQgdGhlcmUuwqAgU2VhcmNoaW5nIHlvdXIgZmF2b3VyaXRlIAo+PiBwYWNrYWdlIG1h
bmFnZXIgd2lsbCBsaWtlbHkgdHVybiB1cCBzb21lLgo+Pgo+PiBDaGVlcnMsCj4+IEdlb2ZmLgo+
PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

