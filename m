Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1094AF3F6
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 15:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644416661;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OWjFpDuzTLxzpCZmwL5ud4BzecXzny1WBgbTtdAcKJ4=;
	b=bhLo13fNRFoGb6yYd1Wg5o35LSau5So7ZW8i6tKxzHNh/eF+y2lYwycTI0mu6DmJaXkXXy
	Xgpnijs1LG2P4sl59yGs3UIjmf8uL5narPRNYScrfU7Gk39dI315PWmlpapBLr5xfyG+EF
	hCtqkI7DgPcRVF+z+TnyLYC50A/FYYo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-vcIYHS-INwWiuBWiyCatbA-1; Wed, 09 Feb 2022 09:24:19 -0500
X-MC-Unique: vcIYHS-INwWiuBWiyCatbA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A361E18397E1;
	Wed,  9 Feb 2022 14:24:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91C4F7D3D5;
	Wed,  9 Feb 2022 14:24:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12B601809C88;
	Wed,  9 Feb 2022 14:24:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219ENuCe028640 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 09:23:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8F24D2166B13; Wed,  9 Feb 2022 14:23:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A3422166B2F
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 14:23:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A1A03800E88
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 14:23:51 +0000 (UTC)
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch
	[185.70.43.16]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-433-gIu8GRUFNOCHzqQPzvKLlQ-1; Wed, 09 Feb 2022 09:23:49 -0500
X-MC-Unique: gIu8GRUFNOCHzqQPzvKLlQ-1
Date: Wed, 09 Feb 2022 14:23:42 +0000
To: blinux-list@redhat.com
Subject: Re: Coqui TTS has blew my mind!
Message-ID: <284dd0af-4885-eff5-af4f-c421565e4772@protonmail.com>
In-Reply-To: <cbffc970-b88a-29d0-cbef-d8a84077201c@home.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<95b092c6-91fa-5c95-5ae5-f2418892d8e8@linux-a11y.org>
	<ef4109e0-e0a7-738a-a389-627329b6bac0@linux-a11y.org>
	<65db3283-530f-6961-d077-b43077f69b65@protonmail.com>
	<cbffc970-b88a-29d0-cbef-d8a84077201c@home.net>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219ENuCe028640
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpUaGVyZSBpcyBhIENoaW5lc2Ugdm9pY2UsIHlvdSBjYW4gdXNlOgoKCiQgdHRzIC0tbW9k
ZWxfbmFtZSB0dHNfbW9kZWxzL3poLUNOL2Jha2VyL3RhY290cm9uMi1EREMtR1NUIC0tdGV4dCAi
IgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgOS4gMi4gMjAyMiBvIDE0OjA5IExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gU29ycnkhIE15
IEVuZ2xpc2ggaXMgbm90IHdlbGwuIEhvdyB0byBsZXQgaXQgc3BlYWtDaGluZXNlPyBQbGVhc2Ug
Z2l2ZSBhCj4gc2FtcGxlIG9mIGNvbW1hbmQtbGluZS4gVGhhbmsgeW91IQo+Cj4gT24gV2VkLCA5
IEZlYiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4+
IERhdGU6IFdlZCwgMDkgRmViIDIwMjIgMTE6NTk6MjYgKzAwMDAKPj4gRnJvbTogTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4gVG86
IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gU3ViamVjdDogUmU6IENvcXVpIFRUUyBoYXMgYmxl
dyBteSBtaW5kIQo+Pgo+PiBIZWxsbyBDaHJ5cywKPj4KPj4gSSB0aGluayB0aGUgcHJvYmxlbSBp
cyB0aGF0IFB5dGhvbiAzLjEwIGlzIG5vdCBzdXBwb3J0ZWQgYXMgb2Ygbm93Lgo+Pgo+PiBodHRw
czovL3B5cGkub3JnL3Byb2plY3QvVFRTLwo+Pgo+Pgo+PiBUaG91Z2ggSSdtIG5vdCBzdXJlIHdo
eS4gTWF5IGJlIHNvbWUgb2YgdGhlIGJhY2tpbmcgbGlicmFyaWVzIGFyZSBub3QKPj4geWV0IGNv
bXBhdGlibGUsIEkgcmVtZW1iZXIgdGhpcyBiZWluZyBhIHByb2JsZW0gaW4gdGhlIHBhc3Qgd2l0
aCBuZXcKPj4gcmVsZWFzZXMgb2YgVGVuc29yRmxvdy4KPj4KPj4KPj4gUGVyaGFwcyBhIHZpcnR1
YWwgZW52aXJvbm1lbnQgd2l0aCBsb3dlciBQeXRob24gdmVyc2lvbiBjb3VsZCBkbyB0aGUgdHJp
Y2s/Cj4+Cj4+Cj4+IEJlc3QgcmVnYXJkcwo+Pgo+Pgo+PiBSYXN0aXNsYXYKPj4KPj4KPj4gRMWI
YSA5LiAyLiAyMDIyIG8gMTE6NDggTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBu
YXDDrXNhbChhKToKPj4+IEhvd2R5LAo+Pj4KPj4+IGp1c3Qgd2FudCB0byB0cnkgY29xdWkgYWdh
aW4gKGFmdGVyIGEgd2hpbGUpIGFuZCBqdXN0IGdvdCB0aGlzOgo+Pj4gJCBwaXAzIGluc3RhbGwg
VFRTCj4+PiBEZWZhdWx0aW5nIHRvIHVzZXIgaW5zdGFsbGF0aW9uIGJlY2F1c2Ugbm9ybWFsIHNp
dGUtcGFja2FnZXMgaXMgbm90Cj4+PiB3cml0ZWFibGUKPj4+IEVSUk9SOiBDb3VsZCBub3QgZmlu
ZCBhIHZlcnNpb24gdGhhdCBzYXRpc2ZpZXMgdGhlIHJlcXVpcmVtZW50IFRUUwo+Pj4gRVJST1I6
IE5vIG1hdGNoaW5nIGRpc3RyaWJ1dGlvbiBmb3VuZCBmb3IgVFRTCj4+Pgo+Pj4gYW55IGlkZWFz
Pwo+Pj4KPj4+IGNoZWVycyBjaHJ5cwo+Pj4KPj4+IEFtIDA5LjAyLjIyIHVtIDExOjQwIHNjaHJp
ZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+PiBIb3dkeSBSYXN0aXNs
YXYsCj4+Pj4KPj4+PiB5ZWEgQ29xdWkgaXMgYXdzb21lLiBpdCB3YXMgaW5pdGlhbCBwYXJ0IG9m
IG1vemlsbGFzIFRUUyBhbmQgU1RUIGVmZm9ydHMuCj4+Pj4gd2UgcmVhbGx5IHNob3VsZCBoYXZl
wqAgYW4gc3BlZWNoLWRpc3BhdGNoZXIgZHJpdmVyIGZvciB0aGF0IDopLgo+Pj4+Cj4+Pj4gYnkg
dGhlIHdheSwga2VlcCB1cCB5b3VyIGdyZWF0IHdvcmshIEp1c3QgdGFrZSBhIGxvb2sgYXQgdGhl
IEMjCj4+Pj4gc3BlZWNoLWRpc3BhdGNoZXIgYmluZGluZ3MuCj4+Pj4KPj4+PiBjaGVlcnMgY2hy
eXMKPj4+Pgo+Pj4+IEFtIDA5LjAyLjIyIHVtIDExOjI1IHNjaHJpZWIgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+Pj4gSGVsbG8gZXZlcnlvbmUsCj4+Pj4+Cj4+Pj4+IG1h
eSBiZSBJJ3ZlIGRpc2NvdmVyZWQgQW1lcmljYSwgYnV0IHllc3RlcmRheSBJIG1vc3RseSByYW5k
b21seSBjYW1lCj4+Pj4+IGFjcm9zczoKPj4+Pj4KPj4+Pj4gaHR0cHM6Ly9lcm9nb2wuZ2l0aHVi
LmlvL2RkYy1zYW1wbGVzLwo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBBbmQgdGhlIHZvaWNlIGhhcyBjb21w
bGV0ZWx5IGJsZXcgbXkgbWluZCEKPj4+Pj4KPj4+Pj4gTGlrZSwgSSBrbmV3IHRoZSBUVFMgYXJl
YSBoYXMgYWR2YW5jZWQgc2lnbmlmaWNhbnRseSBpbiB0aGUgcmVjZW50Cj4+Pj4+IHllYXJzLCBi
dXQgSSB0aG91Z2h0IHRoZSBuZXcgbmV1cmFsIHZvaWNlcyBhcmUgbW9zdGx5IGNsb3NlZCBmZWF0
dXJlcyBvZgo+Pj4+PiBjb21wYW5pZXMgbGlrZSBHb29nbGUgb3IgTWljcm9zb2Z0Lgo+Pj4+Pgo+
Pj4+PiBJIGhhZCBubyBpZGVhIHdlIGhhZCBzb21ldGhpbmcgc28gYmVhdXRpZnVsIG9uIGxpbnV4
IGFuZCBjb21wbGV0ZWx5Cj4+Pj4+IG9wZW4tc291cmNlIQo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBQbHVz
LCBpdCdzIG5vdCBqdXN0IHRoZSBsaWNlbnNlIHRoYXQgbWFrZXMgdGhpcyBzbyBpbnRlcmVzdGlu
ZywgYnV0IGFsc28KPj4+Pj4gdGhlIHVzYWJpbGl0eS4KPj4+Pj4KPj4+Pj4gVGhlcmUgd2VyZSB0
aGUgRGVlcG1pbmQgcGFwZXJzIGV2ZW4gYmVmb3JlIGFuZCBzb21lIG9wZW4gcHJvamVjdHMgdHJ5
aW5nCj4+Pj4+IHRvIGltcGxlbWVudCB0aGVtLCBidXQgdGhlIGxldmVsIG9mIGNvbXBsZXRlbmVz
cyBhbmQgdXNhYmlsaXR5IHZhcmllZAo+Pj4+PiBzaWduaWZpY2FudGx5LCBldmVuIGlmIGEgcHJv
amVjdCB3YXMgdXNhYmxlLCBnZXR0aW5nIGl0IHRvIHdvcmsgcmVxdWlyZWQKPj4+Pj4gc29tZSBl
ZmZvcnQgKGF0IGxlYXN0IHRoZSBwcm9qZWN0cyBJIHNhdykuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFdp
dGggQ29xdWksIHRoZSBzaXR1YXRpb24gaXMgY29tcGxldGVseSBkaWZmZXJyZW50Lgo+Pj4+Pgo+
Pj4+PiBBcyB0aGUgYWJvdmUgbWVudGlvbmVkIGJsb2cgc2F5cywgYWxsIHlvdSBuZWVkIHRvIGRv
IGlzOgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiAkIHBpcDMgaW5zdGFsbCBUVFMKPj4+Pj4KPj4+Pj4gJCB0
dHMgLS10ZXh0ICJIZWxsbywgdGhpcyBpcyBhbiBleHBlcmltZW50YWwgc2VudGVuY2UuIgo+Pj4+
Pgo+Pj4+Pgo+Pj4+PiBBbmQgeW91IGhhdmUgYSBzeW50aGVzaXplZCByZXN1bHQhCj4+Pj4+Cj4+
Pj4+Cj4+Pj4+IE9yIHlvdSBjYW4gbGF1bmNoIHRoZSBzZXJ2ZXI6Cj4+Pj4+Cj4+Pj4+ICQgdHRz
LXNlcnZlcgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBBbmQgcGxheSBpbiB0aGUgd2ViIGJyb3dzZXIuIE5v
dGUgdGhhdCB0aGUgYXVkaW8gaXMgc2VudCBvbmx5IGFmdGVyIGl0J3MKPj4+Pj4gZnVsbHkgc3lu
dGhlc2l6ZWQsIHNvIHlvdSdsbCBuZWVkIHRvIHdhaXQgYSBiaXQgdG8gbGlzdGVuIGl0Lgo+Pj4+
Pgo+Pj4+Pgo+Pj4+PiBUaGUgb25seSBwcm9ibGVtYXRpYyBwYXJ0IGlzIHRoZSBsaW1pdCBvZiBk
ZWNvZGVyIHN0ZXBzLCB3aGljaCBpcyBzZXQgdG8KPj4+Pj4gNTAwIGJ5IGRlZmF1bHQuCj4+Pj4+
Cj4+Pj4+IEknbSBub3Qgc3VyZSB3aHkgZGlkIHRoZXkgcHV0IGl0IHNvIGxvdywgd2l0aCB0aGlz
IHZhbHVlLCB0aGUgVFRTIGlzCj4+Pj4+IHVuYWJsZSB0byBzcGVhayBsb25nZXIgc2VudGVuY2Vz
Lgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBGb3J0dW5hdGVseSwgdGhlIGZpeCBpcyB2ZXJ5IGVhc3kuIEFs
bCBJIG5lZWRlZCB0byBkbyB3YXMgdG8gb3Blbgo+Pj4+PiB+Ly5sb2NhbC9saWIvcHl0aG9uMy44
L3NpdGUtcGFja2FnZXMvVFRTL3R0cy9jb25maWdzL3RhY290cm9uX2NvbmZpZy5weQo+Pj4+Pgo+
Pj4+PiBhbmQgbW9kaWZ5IHRoZSBsaW5lOgo+Pj4+Pgo+Pj4+PiAgIMKgIMKgwqDCoCBtYXhfZGVj
b2Rlcl9zdGVwczogaW50ID0gNTAwCj4+Pj4+Cj4+Pj4+IHRvCj4+Pj4+Cj4+Pj4+ICAgwqAgwqDC
oMKgIG1heF9kZWNvZGVyX3N0ZXBzOiBpbnQgPSAwCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IHdoaWNoIHNl
ZW1zIHRvIGRpc2FibGUgdGhlIGxpbWl0Lgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBBZnRlciB0aGlzIHN0
ZXAsIEkgY2FuIHN5bnRoZXNpemUgdmVyeSBsb25nIHNlbnRlbmNlcywgYW5kIHRoZSBxdWFsaXR5
Cj4+Pj4+IGlzIGFic29sdXRlbHkgZ2xhbW9yb3VzIQo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBTbyBJIHdh
bnRlZCB0byBzaGFyZS4gSSBtYXkgYmUgYWN0dWFsbHkgdGhlIGxhc3QgcGVyc29uIGRpc2NvdmVy
eWluZyBpdAo+Pj4+PiBoZXJlLCB0aG91Z2ggSSBkaWQgbm90IHNlZSBpdCBtZW50aW9uZWQgaW4g
VFRTIGRpc2N1c3Npb25zIG9uIHRoaXMgbGlzdC4KPj4+Pj4KPj4+Pj4KPj4+Pj4gSSd2ZSBldmVu
IHRob3VnaHQgYWJvdXQgY3JlYXRpbmcgYSBzcGVlY2ggZGlzcGF0Y2hlciB2ZXJzaW9uIG9mIHRo
aXMuIEl0Cj4+Pj4+IHdvdWxkIGNlcnRhaW5seSBiZSBkb2FibGUsIHRob3VnaCBJJ20gYWZyYWlk
IHdoYXQgd291bGQgdGhlIHN5bnRoZXNpcwo+Pj4+PiBzb3VuZCBsaWtlIHdpdGggdGhlIGlycmVn
dWxhcml0aWVzIG9mIG5hdmlnYXRpb24gd2l0aCBhIHNjcmVlbnJlYWRlci4KPj4+Pj4gVGhlc2Ug
dm9pY2VzIGFyZSBpbnRlbmRlZCBmb3IgcmVhZGluZyBsb25nZXIgdGV4dHMgYW5kIGNvbnNpc3Rl
bnQKPj4+Pj4gcGhyYXNlcywgd2l0aCBwdW5jdHVhdGlvbiwgY29tcGxldGUgaW5mb3JtYXRpb24g
ZXRjLgo+Pj4+Pgo+Pj4+PiBUaGUgaW50b25hdGlvbiB3b3VsZCBwcm9iYWJseSBnZXQgYSBiaXQg
d2VpcmQgd2l0aCBmb3IgZXhhbXBsZSBqdXN0IGEKPj4+Pj4gaGFsZiBzZW50ZW5jZSwgYXMgaGFw
cGVucyB3aGVuIG5hdmlnYXRpbmcgYSBkb2N1bWVudCBvciB3ZWJwYWdlIGxpbmUgYnkKPj4+Pj4g
bGluZS4KPj4+Pj4KPj4+Pj4KPj4+Pj4gQW5vdGhlciBsaW1pdGF0aW9uIHdvdWxkIGJlIHRoZSBv
bmUgb2Ygc3BlZWQuIE9uIG15IGxhcHRvcCwgdGhlIHJlYWx0aW1lCj4+Pj4+IGZhY3RvciAocHJv
Y2Vzc2luZyBkdXJhdGlvbiAvIGF1ZGlvIGxlbmd0aCkgaXMgYXJvdW5kIDAuOCwgd2hhdCBtZWFu
cyBpdAo+Pj4+PiBjb3VsZCBoYW5kbGUgcmVhbC10aW1lIHN5bnRoZXNpcyBhdCB0aGUgZGVmYXVs
dCBzcGVlZCB3aXRob3V0IGRlbGF5cy4KPj4+Pj4KPj4+Pj4KPj4+Pj4gVGhlIHNpdHVhdGlvbiB3
b3VsZCBnZXQgbW9yZSBjb21wbGljYXRlZCB3aXRoIGhpZ2hlciBzcGVlZHMsIHRob3VnaC4KPj4+
Pj4KPj4+Pj4gSXQgd291bGRuJ3QgYmUgaW1wb3NzaWJsZSwgYnV0IG9uZSB3b3VsZCBuZWVkIGEg
R1BVIHRvIGhhbmRsZQo+Pj4+PiBzaWduaWZpY2FudGx5IGhpZ2hlciBzcGVlY2ggcmF0ZXMuCj4+
Pj4+Cj4+Pj4+Cj4+Pj4+IFNvIEkgd29uZGVyLgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBCdXQgYW55d2F5
LCB0aGlzIGRlZmluaXRlbHkgbWFkZSBteSBkYXkuIDopCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEJlc3Qg
cmVnYXJkcwo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBSYXN0aXNsYXYKPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+
Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

