Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6A74980F8
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jan 2022 14:25:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643030718;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TEugEQJgKlRj4X9KIvUqqrME3vr9exIcYzXngtSKyJY=;
	b=A6n7DINTq669P3E3RkQV+g2djxAS3Xd1KZPgm7T2YQpVJsMU5u76uTGbw4WXAs/ZK5+3PL
	JH+DGjPRF5HnKZi0Qzz7GfoXyyJV4crz9jOOuAInvQ4QkTTyyVfRgOO2BHbgzxjOi8u4pZ
	nBxLX3tF84pjWE5aPFem6okYOIBG82Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-258-kf6B8X6YPWaW0dO9EC3ErA-1; Mon, 24 Jan 2022 08:25:14 -0500
X-MC-Unique: kf6B8X6YPWaW0dO9EC3ErA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F3E9884DA42;
	Mon, 24 Jan 2022 13:25:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79E447DE55;
	Mon, 24 Jan 2022 13:25:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07B8F1809C87;
	Mon, 24 Jan 2022 13:25:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20ODMPY9010547 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jan 2022 08:22:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B0FEAC159F6; Mon, 24 Jan 2022 13:22:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD4B3C0809B
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 13:22:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 226F085A5A8
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 13:22:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-524-GKc6LMZNPjWGlI95CE5ySQ-1; Mon, 24 Jan 2022 08:22:23 -0500
X-MC-Unique: GKc6LMZNPjWGlI95CE5ySQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jj9d56DzwzlrT
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 08:22:17 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jj9d55RpTzcbc; Mon, 24 Jan 2022 08:22:17 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jj9d5572dzcbC
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 08:22:17 -0500 (EST)
Date: Mon, 24 Jan 2022 08:22:17 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Configuring ratpoison
In-Reply-To: <ad8c5f38-8730-f5e2-bb6e-812803897cc9@gmail.com>
Message-ID: <b2a26ce7-cd2c-93c1-bf4-aae041f468fa@panix.com>
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
	<64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
	<e0e9740-3cd8-37ee-936-575e53672dc2@panix.com>
	<ad8c5f38-8730-f5e2-bb6e-812803897cc9@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20ODMPY9010547
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLCBJIGFsbW9zdCBnb3QgdGhhdCBjb3JyZWN0LiAgSSdsbCByZW1vdmUgdGhlIC5yYXRw
b2lzb25yYyBmaWxlIGFuZApydW4gdGhlIHNldHVwLnNoIHNjcmlwdCBhZ2Fpbi4KCgpPbiBNb24s
IDI0IEphbiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoK
PiBSaWdodC4gSXQgc2hvdWxkIGdvIGxpa2UgdGhpczoKPgo+IFNlbGVjdCB5b3VyIFJhdHBvaXNv
biBrZXkuIEl0IGNvbWVzIHVwIHdpdGggYSBidW5jaCBvZiBvcHRpb25zLiBDLSBpcyBjb250cm9s
LAo+IE0gaXMgZWl0aGVyIGFsdCBvciBzaGlmdAo+Cj4gU3VwZXJfTCBpcyB3aGF0IEkgZ28gZm9y
LCBsZWZ0IFN1cGVyIGtleQo+IFRoZW4gaWYgeW91IGdvdCBtdWx0aXBsZSBicm93c2VycywgdGV4
dCBlZGl0b3JzIGFuZCBzbyBvbiBpdCdsbCBhc2sgeW91IHdoaWNoCj4gb25lLCB0aGVuIGl0J2xs
IGFzayBpZiB5b3Ugd2FudCBSYXRwb2lzb24gdG8gbWFrZSBzb3VuZHMsIGhvdyBtYW55IHdvcmtz
cGFjZXMsCj4gYW5kIGlmIHlvdSB3YW50IGJyYWlsbGUsIHRoZW4gYWZ0ZXIgdGhhdCB5b3UnbGwg
aGF2ZSBhIC5yYXRwb2lzb25yYyBmaWxlCj4KPiBOZXh0LCBlaXRoZXIgYmFjayB1cCB5b3VyIGV4
aXN0aW5nIHhpbml0cmMgc29tZXdoZXJlIHNhZmUsIG9yIGRvIC4vc2V0dXAuc2ggLXgKPiB0byBt
YWtlIGEgbmV3IC54aW5pdHJjIHdpdGggUmF0cG9pc29uIHNldHRpbmdzIHRoZW4gZG8gc3RhcnR4
Cj4KPiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4gSSBnb3Qg
cmF0cG9pc29uIGFuZCBzdHJ5Y2huaW5lIGluc3RhbGxlZCBhbmQgcmFuIHRoZSBzZXR1cC5zaCBz
Y3JpcHQgaW4KPiA+IHN0cnljaG5pbmUuICBUaGUgZmlyc3Qgc2NyZWVuIG9mIG9wdGlvbnMgSSBk
aWRuJ3QgdW5kZXJzdGFuZCBzbyBoaXQgZW50ZXIKPiA+IG9uIHRoYXQgc2NyZWVuIHdpdGhvdXQg
c2VsZWN0aW5nIGFueXRoaW5nLiAgSWYgSSBoYWQgdG8gZ3Vlc3MsIEknZCBndWVzcwo+ID4gdGhh
dCB3YXMgYSBsYW5ndWFnZSBzZWxlY3Rpb24gc2NyZWVuIGJ1dCBlbmdsaXNoIHNvIGZhciBhcyBJ
IGNvdWxkIHRlbGwKPiA+IHdhc24ndCBvbiB0aGF0IHNjcmVlbi4KPiA+Cj4gPgo+ID4gT24gU3Vu
LCAyMyBKYW4gMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiA+Cj4gPj4gSGkgQnJhbmR0LAo+ID4+Cj4gPj4gSSBmb3J3YXJkZWQgeW91ciBxdWVzdGlvbiB0
byBteSBmcmllbmQgU3Rvcm0gRHJhZ29uIG9uIElSQyBhbmQgaGVyZSBoaXMgaGlzCj4gPj4gYW5z
d2VyOgo+ID4+ICgxNjoyNDoyMCkgc3Rvcm06IERpZGllclNwYWllcjoKPiA+PiBodHRwczovL2dp
dC4ybWIuY29kZXMvfnN0b3JtZHJhZ29uMjk3Ni9zdHJ5Y2huaW5lCj4gPj4gKDE2OjI1OjA5KSBz
dG9ybTogVGhhdCdzIG15IHNjcmlwdCB0aGF0IGNyZWF0ZXMgYSAucmF0cG9pc29ucmMuIEl0J3Mg
d2hhdCBJCj4gPj4gdXNlCj4gPj4gZXZlcnkgZGF5IGZvciBteSBYIHNlc3Npb24uCj4gPj4KPiA+
PiBDaGVlcnMsCj4gPj4gRGlkaWVyCj4gPj4gLS0KPiA+PiBEaWRpZXIgU3BhaWVyCj4gPj4gU2xp
bnQgbWFpbnRhaW5lcgo+ID4+Cj4gPj4gTGUgMjMvMDEvMjAyMiA/IDE0OjQwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgP2NyaXTCoDoKPiA+Pj4gSGkgYWxsLgo+ID4+Pgo+
ID4+Pgo+ID4+PiBJIGluc3RhbGxlZCByYXRwb2lzb24gb24gbXkgU2xpbnQgc3lzdGVtLCBhbmQg
ZG9uJ3QgaGF2ZSBlaXRoZXIKPiA+Pj4gfi8ucmF0cG9pc29ucmMKPiA+Pj4gb3IgL2V0Yy9yYXRw
b2lzb24uCj4gPj4+Cj4gPj4+Cj4gPj4+IFdoZXJlIGNhbiBJIGdldCBhIGdvb2QgcmF0cG9pc29u
IGNvbmZpZyBmaWxlPyBEb2VzIG9uZSBvZiB0aGUgT3JjYSB1c2VycywKPiA+Pj4gSSdkCj4gPj4+
IGFzc3VtZSB0aGF0IHdvdWxkIGJlIG1vc3Qgb2YgdXMsIGhhdmUgb25lIG9uIGdpdGh1YiBvciBz
b21ld2FyZT8KPiA+Pj4KPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

