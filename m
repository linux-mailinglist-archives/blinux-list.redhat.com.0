Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF9444103E
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 19:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635705787;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5+mGXNVsh/q4kzLe9NHZno/ABc7LjN+5b03R3xnnV/4=;
	b=b0nrh6UOj9zwnwvnUNEtMuSIBiDD2O63go6MGautNtHiP4omI8ccXMlun2FiiDiQPd0EvL
	h+dZ2Xymyck+IkSCQrYKLxTHe2GXKMczZ3QtGqqrnTspLjpxhisxVfIAD4wU28NeqSWMQT
	L9nrnqDdIjaNEKBH2iF/+gJoshj9DEA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-OgzWvGIeMiy473Cj0dkcKw-1; Sun, 31 Oct 2021 14:43:03 -0400
X-MC-Unique: OgzWvGIeMiy473Cj0dkcKw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B720802B4F;
	Sun, 31 Oct 2021 18:42:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D4BD2B0B2;
	Sun, 31 Oct 2021 18:42:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE6FD4EA29;
	Sun, 31 Oct 2021 18:42:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VIgmPW020532 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 14:42:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5271140C1252; Sun, 31 Oct 2021 18:42:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E742400F3EC
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 18:42:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 36690811E76
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 18:42:48 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-166-9I0pQ2F0Neqam6p2Qxepog-1;
	Sun, 31 Oct 2021 14:42:45 -0400
X-MC-Unique: 9I0pQ2F0Neqam6p2Qxepog-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 53976A00B4
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 17:42:12 +0100 (CET)
Message-ID: <2ecf58b4-4c80-0018-4c80-93d5dcf4d476@slint.fr>
Date: Sun, 31 Oct 2021 19:42:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: have any of you mannaged to successfully install linux alongside
	with windows?
To: blinux-list@redhat.com
References: <8e1506f5-960a-0c44-4008-087d87da5e7d@gmail.com>
	<bbde2318-352c-e9ad-96ad-e7ea4ec0b902@slint.fr>
	<410ded38-fa8a-0ce5-feb7-cfce77b2cb8f@gmail.com>
In-Reply-To: <410ded38-fa8a-0ce5-feb7-cfce77b2cb8f@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19VIgmPW020532
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbS4KCk5vLCB0aGVyZSBpcyBubyBsaXZlIGluc3RhbGwgZm9yIFNsaW50LgoKSG93
ZXZlcjoKCjEpIEJlZm9yZSB5b3UgaW5zdGFsbCBpdCBvbiB5b3VyIGhhcmQgZGlzaywgeW91IGNh
biBpbnN0YWxsIGFuZCBydW4gaXQgaW4gYQpWaXJ0dWFsQm94IHZpcnR1YWwgbWFjaGluZS4gVGhl
biwgY2hvb3NlIHRoZSBpbnRlbCBoZCBhdWRpbyBjb250cm9sbGVyIHJpZ2h0CmFmdGVyIHRoZSB2
aXJ0dWFsIG1hY2hpbmUgY3JlYXRpb24uIHRvIHByZXZlbnQgbG9zcyBvZiBzcGVlY2ggZHVyaW5n
Cmluc3RhbGxhdGlvbi4KCjIpIElmIHlvdSBjYW4gYWZmb3JkIGl0IHlvdSBjYW4gaW5zdGFsbCBT
bGludCBpbiBhIGRlZGljYXRlZCBoYXJkIGRyaXZlIApvciBTU0QKd2hpY2ggY2FuIGJlIGFuIGFu
IGludGVybmFsIHNlY29uZCBkcml2ZSBvciBhbiBleHRlcm5hbCBkcml2ZSBVU0IgY29ubmVjdGVk
LgoKMykgWW91IGNhbiBzYWZlbHkgc2hhcmUgYSBkcml2ZSBiZXR3ZWVuIFdpbmRvd3MgYW5kIFNs
aW50LCBpZiBXaW5kb3dzIApib290cyBpbgpVRUZJIG1vZGUuCgo0KSBJbiBhbnkgY2FzZSB0aGUg
aW5zdGFsbGVyIHdpbGwgcHJlc2VudHMgeW91IGFsbCBwb3NzaWJpbGl0aWVzIGZvcgppbnN0YWxs
YXRpb24gYW5kIHdpbGwgbGV0IHlvdSByZXZpZXcgYWxsIGluc3RhbGxhdGlvbiBvcHRpb25zIGJl
Zm9yZSB3cml0aW5nCmFueXRoaW5nIG9uIGEgaGFyZCBkaXNrLiBJZiB5b3UgY2hhbmdlIHlvdXIg
bWluZCB5b3Ugd2lsbCBiZSBhYmxlIHRvIGNoYW5nZQphbnkgb3B0aW9uLiBJZiB5b3UgZGVjaWRl
IHRvIGluc3RhbGwgbGF0ZXIgb3Igbm90IGF0IGFsbCwgYWZ0ZXIgYSByZWJvb3QgCldpbmRvd3MK
d2lsbCBzdGFydCBhcyB1c3VhbC4KCkFmdGVyIGluc3RhbGxhdGlvbiB5b3Ugd2lsbCBiZSBhYmxl
IHRvIGNob29zZSB3aGljaCBzeXN0ZW0gdG8gc3RhcnQgYXQgCmJvb3QgdXAuCldoZW4geW91IHdp
bGwgaGVhciBhIHNvdW5kIHRlbGxpbmcgeW91IHRoYXQgdGhlIG1hY2hpbmUgaXMgcmVhZHkgdG8g
CmJvb3QsIGp1c3QKcHJlc3MgRW50ZXIgdG8gc3RhcnQgU2xpbnQgb3IgcHJlc3MgYXJyb3cgZG93
biB0aGVuIEVudGVyIHRvIHN0YXJ0IFdpbmRvd3MuCgpGZWxsIGZyZWUgcmVxdWlyZSBtb3JlIGd1
aWRhbmNlIGluIG9uZSBvZiB0aGUgc3VwcG9ydCBjaGFubmVscyBsaXN0ZWQgaW4gdGhlCkhhbmRC
b29rLgoKSG9wZSB0aGlzIGhlbHBzCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50
YWluZXIKZGlkaWVyIGF0IHNsaW50IGRvdCBmcgpMZSAzMS8xMC8yMDIxIMOgIDE2OjQxLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gVGhhbmtzIGEgbWls
bGlvbiBEaWRpZXIsCj4gCj4gVGhpcyBpcyBhIGdyZWF0IGhhbmRib29rLiBPbmUgb2YgdGhlIHRo
aW5ncyB3aGljaCBkaXNjb3VyYWdlZCBtZSBmcm9tIAo+IGFkb3B0aW5nIGxpbnV4IGluIHRoZSBw
YXN0IHdhcyB0aGUgbGFjayBvZiBlYXN5IHRvIGZvbGxvdyAKPiBkb2N1bWVudGF0aW9ucy4gRXZl
cnl0aW1lIEkgdHJpZWQsIEkgZm91bmQgbXlzZWxmIGJyb3dzaW5nIGluIGhpZ2hseSAKPiB0ZWNo
bmljYWwgZG9jdW1lbnRzIHRoYXQgc291bmRlZCBsaWtlIGEgZm9yZWlnbiBsYW5ndWFnZSB0byBt
ZS4gVGhpcyAKPiBoYW5kYm9vayBzZWVtcyB0byBhdm9pZCB0aGlzIHByb2JsZW0uCj4gCj4gSSB3
aWxsIGNlcnRhaW5seSB0cnkgc2xpbnQsIGlmIGl0IGNhbiBiZSB1c2VkIGFzIGEgbGl2ZSBpbnN0
YWxsIHdpdGhvdXQgCj4gaGF2aW5nIHRvIHBoeXNpY2FsbHkgaW5zdGFsbCBvbiBteSBoYXJkIGRp
c2MuIEkgd2lsbCBhbHNvIGJyb3dzZSB0aGlzIAo+IGhhbmRib29rIHRvIGxlYXJuIG1vcmUgYWJv
dXQgc2xpbnQuCj4gCj4gVGhhbmtzIGZvciB0aGlzLiBJIHdpbGwgY2VydGFpbmx5IG5lZWQgeW91
ciBoZWxwIGlmIEkgaW5zdGFsbCBpdCBvbiBteSAKPiBoYXJkIGRpc2MuIFdoYXQgSSB3YW50IGlk
ZWFsbHkgaXMgdGhlIGFiaWxpdHkgdG8gaGF2ZSBib3RoIGxpbnV4IGFuZCAKPiB3aW5kb3dzIHJ1
bm5pbmcgb24gdGhlIHNhbWUgbWFjaGluZSwgYW5kIEkgY2hvb3NlIHdoaWNoIG9uZSB0byBzdGFy
dCBhdCAKPiBib290dXAuCj4gCj4gUmVnYXJkcywKPiAKPiBJYnJhaGltCj4gCj4gT24gMTAvMzEv
MjEgNDowNiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4g
SGVsbG8gSWJyYWhpbSwKPj4KPj4gdGhpcyBpcyBlYXNpbHkgZG9uZSB3aXRoIFNsaW50LCBpZiBX
aW5kb3dzIGJvb3RzIGluIEVGSSBtb2RlOgo+PiBodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9v
ay5odG1sCj4+Cj4+IENoZWVycywKPj4gRGlkaWVyCj4+IC0tIAo+PiBEaWRpZXIgU3BhaWVyCj4+
IFNsaW50IG1haW50YWluZXIKPj4KPj4KPj4gTGUgMzEvMTAvMjAyMSDDoCAwNDoxOCwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4gSGVsbG8gZm9sa3Ms
Cj4+Pgo+Pj4gSSBoYXZlIGJlZW4gcGxheWluZyB3aXRoIExpbnV4IG1pbnQgYW5kIEFjY2Vzc2li
bGUgQ29jb251dCBmb3Igb3ZlciAKPj4+IDI0IGhvdXJzLiBJIGFtIGdldHRpbmcgdG8gbGlrZSB0
aGlzIHN5c3RlbS4gSG93ZXZlciwgV2hlbiBJIAo+Pj4gY29udGVtcGxhdGVkIGluc3RhbGxpbmcg
b24gbXkgaGFyZCBkaXNrLCBJIGZvdW5kIHRoZSBpbnN0YWxsYXRpb24gCj4+PiBwcm9jZXNzIGEg
bGl0dGxlIGNvbmZ1c2luZyBhbmQgc2NhcnkuIEkgYWx3YXlzIHJldmVydGVkIGJhY2sgYW5kIAo+
Pj4gYWJvcnRlZCB0aGUgaW5zdGFsbGF0aW9uIHRvIHByZXZlbnQgYW4gdW5pbnRlbmRlZCBkYW1h
Z2UgdG8gbXkgCj4+PiB3aW5kb3dzIG9wZXJhdGluZyBzeXN0ZW0uCj4+Pgo+Pj4gSWYgYW55IG9m
IHlvdSBoYXZlIHN1Y2Nlc3NmdWxseSBtYW5hZ2VkIHRvIGluc3RhbGwgbGludXggYWxvbmdzaWRl
IAo+Pj4gd2l0aCB3aW5kb3dzIG9uIHRoZSBzYW1lIGhhcmQgZGlzaywgcGxlYXNlIGFkdmlzZSBt
ZSBvbiBob3cgdG8gZ28gCj4+PiBhYm91dCBpdCBzYWZlbHkuCj4+Pgo+Pj4gUmVnYXJkcywKPj4+
Cj4+PiBJYnJhaGltCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

