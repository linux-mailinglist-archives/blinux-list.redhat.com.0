Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9484A4470D4
	for <lists+blinux-list@lfdr.de>; Sat,  6 Nov 2021 22:56:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636235800;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LK6dmdX4/tTkEWSuDoo7LXylc2/Pj9YcZTc8NC0nIA8=;
	b=jMQRClEhsCo/p26JAzQWRhSw9uqjUHXnI/mY2wNhuoQaM2lRDJSRls2k9+dCqhyjrgc95N
	JZSblUbhtW75KMeD2RhIDI/z4Vt+5YaV36x3EBatahuE/PxbyW8N6a+XyREilptqKQeAO+
	D6gBwfkegDVN6n0/EVmp7yY9UKFI4h4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-fojHrwByO_KHj3YGYEq7PQ-1; Sat, 06 Nov 2021 17:56:36 -0400
X-MC-Unique: fojHrwByO_KHj3YGYEq7PQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A0428799E0;
	Sat,  6 Nov 2021 21:56:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B7F817C58;
	Sat,  6 Nov 2021 21:56:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 723B818077BC;
	Sat,  6 Nov 2021 21:56:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A6LuGiP001199 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Nov 2021 17:56:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5F5761121319; Sat,  6 Nov 2021 21:56:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A19B1121314
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 21:56:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4199E185A79C
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 21:56:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-191-FD7TMSrEPn2nfGZqBSZJPg-1; Sat, 06 Nov 2021 17:56:11 -0400
X-MC-Unique: FD7TMSrEPn2nfGZqBSZJPg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HmrmV6zSLz43PW
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 17:56:10 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HmrmV69VRzcbc; Sat,  6 Nov 2021 17:56:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HmrmV5Yb7zcbP
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 17:56:10 -0400 (EDT)
Date: Sat, 6 Nov 2021 17:56:10 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to get speech in a console session?
In-Reply-To: <001bf099-b3e1-f02c-6f09-c52e85ef128c@slint.fr>
Message-ID: <alpine.NEB.2.23.451.2111061755130.13929@panix1.panix.com>
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
	<66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
	<CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
	<001bf099-b3e1-f02c-6f09-c52e85ef128c@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A6LuGiP001199
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

TWF5YmUgdGltZSB0byByZXNlYXJjaCBwaXBld2lyZSBmb3IgaG93IG11Y2ggaXQgY2FuIHJlcGxh
Y2UgcHVsc2UuCgoKT24gU2F0LCA2IE5vdiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgoKPiBIaSwKPgo+IHNob3J0IGFuc3dlcjogdGhpcyBkb2VzIG5vdCB3
b3JrIGluIERlYmlhbiBvdXQgb2YgdGhlIGJveCwgc28gbmVlZHMgYQo+IHBvc3QtaW5zdGFsbCBj
b25maWd1cmF0aW9uIG9mIHRoZSBzeXN0ZW0uCj4KPiBMb25nIGFuc3dlcjoKPiB0aGlzIHBvc3Qg
ZnJvbSBTYW11ZWwgVGhpYmF1bHQgZXhwbGFpbnMgd2h5Ogo+IGh0dHBzOi8vbGlzdHMuZGViaWFu
Lm9yZy9kZWJpYW4tYWNjZXNzaWJpbGl0eS8yMDE3LzEyL21zZzAwMDg5Lmh0bWwKPgo+IEkgaGF2
ZSBhbHNvIHByb3Bvc2VkIHRoZSB3YXkgdGhpcyB3b3JrcyBpbiBTbGludCBpbiB0aGlzIHBvc3Q6
Cj4gaHR0cHM6Ly9saXN0cy5kZWJpYW4ub3JnL2RlYmlhbi1hY2Nlc3NpYmlsaXR5LzIwMTgvMTEv
bXNnMDAwMTIuaHRtbAo+Cj4gQnV0IGFzIGZhciBhcyBJIGtub3cgdGhlcmUgaGFzIGJlZW4gbm8g
Y2hhbmdlIGluIERlYmlhbiB3cnQgdGhpcyBzcGVjaWZpYwo+IGlzc3VlLCBzbyB5b3Ugd2lsbCBu
ZWVkIHRvIGVpdGhlciBwdXJnZSBQdWxzZUF1ZGlvIGZyb20gRGViaWFuICAocHJvYmFibHkgYXQK
PiB0aGUgcHJpY2Ugb2YgbG9vc2luZyBzb21lIGZlYXR1cmVzIGxpa2UgYXVkaW8gdmlhIGJsdWV0
b290aCBpZiBJIHJlbWVtYmVyCj4gY29ycmVjdGx5KSBvciBzdGFydCBQdWxzZUF1ZGlvIHN5c3Rl
bWUgd2lkZSwgd2hpY2ggaXMgbm90IHJlY29tbWVuZGVkIGJ5Cj4gdXBzdHJlYW0gZm9yIHNlY3Vy
aXR5IHJlYXNvbnMgdW5sZXNzIGluIHNwZWNpZmljIHVzZSBjYXNlcyBsaWtlIGFuIGVtYmVkZGVk
Cj4gc3lzdGVtLiBUaGUgcG9zdCBmcm9tIFNhbXVlbCB3aWxsIGdpdmUgeW91IGEgbW9yZSBpbi1k
ZXB0aCBleHBsYW5hdGlvbi4KPgo+IENoZWVycywKPiBEaWRpZXIKPiAtLQo+IERpZGllciBTcGFp
ZXIKPiBTbGludCBtYWludGFpbmVyCj4KPgo+IExlIDA2LzExLzIwMjEgPyAwMTo0NSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhID9jcml0wqA6Cj4gPiBJIGRpZCB1c2Ugc3Bl
ZWNoIGluIHRoZSBpbnN0YWxsZXIsIGFuZCBPcmNhIGNhbWUgdXAgcmlnaHQgYXdheSwgYnV0Cj4g
PiBzcGVha3VwIGRpZG4ndCB3b3JrIHdoZW4gSSBzc3dpdGNoZWQgdG8gYSBjb25zb2xlIHNlc3Np
b24uCj4gPiBJIHJlYWQgdGhhdCB3aWtpIHBhZ2UsIGVkaXRlZCBteSAvZXRjL21vZHVsZXMgZmls
ZSwgYW5kIHNwZWFrdXAgc3RpbGwKPiA+IHdvdWxkbid0IHdvcmsuCj4gPgo+ID4gT24gMTEvNS8y
MSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4KPiA+IHdyb3RlOgo+ID4+IEhpLAo+ID4+Cj4gPj4gRGViaWFuIGhhcyBhIGRldGFjYXRl
ZCBhY2Nlc3NpYmlsaXR5IHBhZ2UuICBUaGUgd2lraSBwYWdlIGlzCj4gPj4gd2lraS5kZWJpYW4u
b3JnL2FjY2Vzc2liaWxpdHkgPGh0dHA6Ly93aWtpLmRlYmlhbi5vcmcvYWNjZXNzaWJpbGl0eT4u
ICBUaGlzCj4gPj4gaGFzIGluZm8gb24gaG93IHRvIGdldCBzcGVlY2ggYm90aCBpbiBhIHRleHQg
aW50ZXJmYWNlIGFuZCBhIEdVSS4gIEFzIGEKPiA+PiBzaWRlCj4gPj4gbm90ZSwgaWYgeW91IHVz
ZSBzcGVlY2ggd2l0aCB0aGUgaW5zdGFsbGVyLCBldmVyeXRoaW5nIHdpbGwgYmUgZW5hYmxlZCBJ
bgo+ID4+IHRoZSBpbnN0YWxsZWQgc3lzdGVtLgo+ID4+Cj4gPj4gTWF0dGhldwo+ID4+Cj4gPj4K
PiA+Pgo+ID4+PiBPbiBOb3YgNSwgMjAyMSwgYXQgNDoyOCBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbgo+ID4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4g
Pj4+Cj4gPj4+IEkgYWxyZWFkeSBoYXZlIGVzcGVhayBhbmQgZXNwZWFrdXAgaW5zdGFsbGVkLiBJ
IHRyaWVkIHJ1bm5pbmcgZmVucmlyLAo+ID4+PiBidXQgSSBnb3QgdGhlIGZvbGxvd2luZyBlcnJv
cjoKPiA+Pj4gcGxheSBXQVJOIGFsc2E6IGNhbid0IGVuY29kZSAwLWJpdCBVbmtub3duIG9yIG5v
dCBhcHBsaWNhYmxlCj4gPj4+Cj4gPj4+IE9uIDExLzUvMjEsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4gPj4+IHdyb3RlOgo+ID4+
Pj4gSWYgeW91IHN0YXJ0IHRoZSBpbnN0YWxsIG1lZGlhIGFuZCBwcmVzcyBzIHRoZW4gZW50ZXIs
IHlvdSdsbCBoYXZlCj4gPj4+PiBzcGVlY2gKPiA+Pj4+IGR1cmluZyBhbmQgYWZ0ZXIgaW5zdGFs
bC4KPiA+Pj4+IERldmluIFByYXRlcgo+ID4+Pj4gci5kLnQucHJhdGVyQGdtYWlsLmNvbQo+ID4+
Pj4KPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IE9uIEZyaSwgTm92IDUsIDIwMjEgYXQgMTI6
MzcgUE0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4gPj4+PiBibGludXgt
bGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Pj4+Cj4gPj4+Pj4gU28gSSdtIG5ldyB0byBMaW51
eCwgYW5kIEknbSBnb2luZyB0byBiZSB0cnlpbmcgaXQgb3V0IGZvciBhIHBlcmlvZCBvZgo+ID4+
Pj4+IGFib3V0IGEgd2VlayBvciB0d28sIHRvIHNlZSBpZiBJIGNvdWxkIHVzZSBpdCBhcyBhIGRh
aWx5IGRyaXZlci4KPiA+Pj4+PiBPbmUgdGhpbmcgSSdtIG5vdCBzdXJlIGFib3V0IGlzIGhvdyB0
byBnZXQgU3BlYWt1cCAod2l0aCBlaXRoZXIKPiA+Pj4+PiBFc3BlYWt1cCBvciBTcGVlY2hkLVVw
KSB3b3JraW5nLgo+ID4+Pj4+IE15IGRpc3RyaWJ1dGlvbiBvZiBjaG9pY2UgaXMgRGViaWFuIDEx
LCBieSB0aGUgd2F5Lgo+ID4+Pj4+Cj4gPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiA+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pgo+ID4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Cj4gPj4KPiA+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+ID4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4KPiA+Pgo+ID4KPiA+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4K
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

