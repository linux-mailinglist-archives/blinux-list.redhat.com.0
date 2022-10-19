Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7FF6048D1
	for <lists+blinux-list@lfdr.de>; Wed, 19 Oct 2022 16:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666188606;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=440Sfo0Jc2IkyWqrGKcLQL1HOT3gAsoObscyVPS5uBM=;
	b=H6ugsc18c1abj1S2TT4jXRwpbo50Ch8c5iueyJWQ/WkzW28WJti5O08v09G2kZZhL9oqKF
	QWYUherk7Wq4wwlMuwcHOwyYeCOCCkJ1VuAQlN2o3zU/T+afytPMqd1GNsSIThzv9xptx3
	lYh5AeCDf8K2qWrgXhASncbHVV5FvIw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-111-dNkw9nCsO-OwvP_DN9LUuA-1; Wed, 19 Oct 2022 10:10:04 -0400
X-MC-Unique: dNkw9nCsO-OwvP_DN9LUuA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70A3B29AB3F1;
	Wed, 19 Oct 2022 14:10:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0DD79C15BA5;
	Wed, 19 Oct 2022 14:10:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9DE9819465A3;
	Wed, 19 Oct 2022 14:10:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Konsole progress/any good alternatives?
Date: Wed, 19 Oct 2022 16:09:26 +0200
References: <mailman.1338.1666188109.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.1338.1666188109.3004.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.1343.1666188601.3004.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpLb25zb2xlIGRvZXMgbm90IGhhdmUgYSBjYXJldCAoaXRzIGFuIHRleHQgY29uc29s
ZSB3aGF0IGlzIG1hZGUgZm9yIGludGVyYWN0aW5nKS4KCk5haCBpc3N1ZSBoZXJlIGlzIHNvbWUg
YnVnLiBJIHNlZSBldmVudHMgYW5kIHRleHQgaW4gYWNjZXJjaXNlci4gTWF5YmUgd3JvbmcgYWNj
ZXNzaWJpbGl0eSByb2xlIG9yIHNvbWV0aGluZy4KCkNoZWVycyBjaHJ5cwoKVm9uIG1laW5lbSBp
UGhvbmUgZ2VzZW5kZXQKCj4gQW0gMTkuMTAuMjAyMiB1bSAxNjowMyBzY2hyaWViIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+
IO+7v0p1c3QgdG9vayBhIGxvb2sgdGhyb3VnaCBLb25zb2xlJ3Mga2V5Ym9hcmQgc2hvcnRjdXRz
LiBJIGRpZG4ndCBzZWUgYW55dGhpbmcgbGlzdGVkIGZvciBjYXJldCBicm93c2luZywgYW5kIGhp
dHRpbmcgRjcgb24gbXkgQXJjaCBib3ggZGlkbid0IGRvIGEgdGhpbmcuIEl0IHJlYWRzIHdoYXQg
SSdtIHR5cGluZyBpbiBob3dldmVyLCBub3QgdGhlIG91dHB1dCBzbyBzb21ldGhpbmcgaXMgYmVp
bmcgcGlja2VkIHVwIGJ5IE9yY2EKPiAKPiAKPiAKPiAKPiAKPiAKPj4gT24gMTAvMTkvMjIgMTQ6
MjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEkgdGhpbmsg
ZjcgdG9nZ2xlcyBjYXJldCBicm93c2luZyBhbmQgb3JjYSBoYXMgY2FyZXQgYnJvd3Npbmcgb2Zm
IGJ5Cj4+IGRlZmF1bHQuCj4+IAo+PiAKPj4gCj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRv
dCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluCj4+IGRlZmVuc2Ugb2Yg
bGliZXJ0eToKPj4gIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4g
dGhhdCBvcmRlci4iCj4+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+PiAKPj4gLgo+
PiAKPj4+IE9uIFdlZCwgMTkgT2N0IDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+PiAKPj4+IEkndmUgbm8gY2x1ZSB3aGVyZSB0byBzdGFydCBvciB0aGUg
c21hcnRzIHRvIGdldCBhbnl3aGVyZSB3aXRoIGl0IGF0IGFsbCwgbXkKPj4+IGtub3dsZWRnZSBv
ZiBob3cgdGhpbmdzIGludGVyYWN0IHdpdGggT3JjYSBzdGFydHMgYW5kIGVuZHMgd2l0aCAuLmlz
IGV4cG9zZWQKPj4+IHRvIE9yY2EsIHBhc3QgdGhhdCBJJ3ZlIHplcm8gY2x1ZSBob3cgdG8gZ2V0
IGFueXRoaW5nIHRvIHNwZWFrIHRvL3dpdGgvdmlhCj4+PiBPcmNhIGF0IGFsbC4gSSBrbm93IHdo
YXQgc2hvdWxkIGJlIGhhcHBlbmluZywgc3VyZSwgYnV0Li4uCj4+PiAKPj4+IAo+Pj4gT24gMTAv
MTkvMjIgMTM6MzQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6SG93
ZHksCj4+Pj4ganVzdCBkaWQgYSBxdWljayBsb29rIGludG8gYWNjZXJjaXNlci4gc2VlbXMgdGhh
dCB0aGUgdGVybWluYWwgY29udGVudCBpcwo+Pj4+IGFscmVhZHkgZXhwb3NlZCB0byBBVC4gU28g
dGhlcmUgaXMgYXQgbGVhc3Qgc29tZXRoaW5nIGluIHBsYWNlLiBtYXliZSBhCj4+Pj4gZm9jdXMg
aXMgbWlzc2luZyBvciBzaW1pbGFyLgo+Pj4+IAo+Pj4+IGNoZWVycyBjaHJ5cwo+Pj4+IAo+Pj4+
IEFtIDE5LjEwLjIyIHVtIDE0OjI1IHNjaHJpZWIgY2hyeXM6Cj4+Pj4+IEhvd2R5LAo+Pj4+PiAK
Pj4+Pj4gd2VsbCB5b3UgY2FuIHVzZSBhbnkgdGVybWluYWwgZW11bGF0b3IuIGdub21lLXRlcm1p
bmFsLCBtYXRlLXRlcm1pbmFsLAo+Pj4+PiBseHRlcm1pbmFsIChpIHRoaW5rIHRob3NlIGFyZSBh
bGwgYmFzZWQgb24gVlRFKQo+Pj4+PiBmb3IgS29uc29sZSwgdGhlIGlzc3VlIGlzIHRyYWNrZWQg
aGVyZS4KPj4+Pj4gaHR0cHM6Ly9waGFicmljYXRvci5rZGUub3JnL1QxMDA5OQo+Pj4+PiBjdXJy
ZW50bHkgd2l0aG91dCBodWdlIHByb2dyZXNzLiBkZWJ1Z2dpbmcgaXMgcmVxdWlyZWQuIG1heWJl
IHlvdSB3YW5uYQo+Pj4+PiBzdGVwIGluIDopPwo+Pj4+PiAKPj4+Pj4gQ2hlZXJzIGNocnlzCj4+
Pj4+IEFtIDE5LjEwLjIyIHVtIDEyOjQ0IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbjoKPj4+Pj4+IEp1c3QgY2hlY2tpbmcgdG8gc2VlIGlmIHRoZXJlJ3MgYmVlbiBh
bnkgbW92ZW1lbnQgb24gS29uc29sZSB5ZXQsIG9yIGlmCj4+Pj4+PiBub3Qgd2hhdCBhIGdvb2Qg
YWx0ZXJuYXRpdmUgd291bGQgYmUgdGhhdCB3b3JrcyBuaWNlbHkgd2l0aCBLREU/IEkgbGlrZQo+
Pj4+Pj4gbHh0ZXJtaW5hbCwgYnV0IEknbSBhZnRlciBzb21ldGhpbmcgd2l0aCBtb3JlIGVhdHVy
ZXMgYW5kIHRoYXQgd29ya3MKPj4+Pj4+IG5pY2VseSB3aXRoIFBsYXNtYQo+Pj4+Pj4gCj4+Pj4+
PiBIb3BpbmcgZm9yIEtvbnNvbGUgdG8gd29yayB3aXRoIE9yY2Egc2luY2UgS0RFIDUuMjYuMTEn
cyBmaXhlZCBhIGZldwo+Pj4+Pj4gbmFnZ2luZyBpc3N1ZXMgd2l0aCB0aGUgZGVza3RvcC4gSSd2
ZSBub3Qgc2VlbiBhIG5ldyB2ZXJzaW9uIGxhbmQgaW4KPj4+Pj4+IEFyY2gncyByZXBvcyBvciBL
b25zb2xlIGF0IGFsbCwgYW55IHJlcG8gYW5kIEknbSB1bnN1cmUgaWYgS29uc29sZS1naXQgaGFz
Cj4+Pj4+PiBhbnkgaW1wcm92ZW1lbnRzIGFzIGZhciBhcyBPcmNhIGdvZXMKPj4+Pj4+IAo+Pj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Pj4gCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pj4gCj4+PiAKPj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

