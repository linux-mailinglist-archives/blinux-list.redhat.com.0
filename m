Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E1E59ADA4
	for <lists+blinux-list@lfdr.de>; Sat, 20 Aug 2022 13:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660996309;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CCQP1LArrs7PzZAnA2dzceRTBXjE9n/5HFHahQeKIf4=;
	b=JUOR+3j5FOQNCJyw3AxeRN16+GNCcrV2AqoRWBOyBY3D/di+CE6daTB5mWwXq0g4o81rl1
	aeWCIqVXT6ft9R+YoB3H70KS6R8K8KmHqrqD4znB1cVwyHIqfV8v8QpQzhN8img9ceoRSI
	6E9kuhJsbp5fcqErPDz01ZVA0BwIAx8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-335-qHEm8HnNPBedhKgKO7t26Q-1; Sat, 20 Aug 2022 07:51:46 -0400
X-MC-Unique: qHEm8HnNPBedhKgKO7t26Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77E8938041E1;
	Sat, 20 Aug 2022 11:51:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E388D4C819;
	Sat, 20 Aug 2022 11:51:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BA2611953545;
	Sat, 20 Aug 2022 11:51:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: PC no longer boots from DVD
Date: Sat, 20 Aug 2022 07:51:35 -0400
References: <mailman.1921.1660870750.10506.blinux-list@redhat.com>
 <mailman.2152.1660877706.10500.blinux-list@redhat.com>
 <mailman.2466.1660982351.10503.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.2466.1660982351.10503.blinux-list@redhat.com>
Message-ID: <mailman.2198.1660996299.10506.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgd2FudCBib290IGZyb20gVVNCIG9yIHRoZSBEVkQgZHJpdmUuCkkgY2FuIHBsYXkgRFZE4oCZ
cyBvciBDROKAmXMsIHNvIHRoZSBkcml2ZSBpcyBPSy4KSSBkb27igJl0IGtub3cgd2hhdCBjb3Vs
ZCBoYXZlIGNoYW5nZWQgbXkgYm9vdCBzZXF1ZW5jZS4gCkkgZm91bmQgdGhpcyBhcnRpY2xlIG9u
bGluZSBidXQgaGF2ZSBub3QgdHJpZWQgaXQgeWV0LgpIb3cgdG8gY2hhbmdlIHRoZSBib290IHNl
cXVlbmNlCgplZmlib290bWdyIC12ClRoaXMgd2lsbCBkaXNwbGF5IGFsbCBib290IGRldmljZXMg
b24geW91ciBjb21wdXRlciwgYW5kIHJlc2VtYmxlIHNvbWV0aGluZyBsaWtlOgpCb290Q3VycmVu
dDogMDAwMApUaW1lb3V0OiAyIHNlY29uZHMKQm9vdE9yZGVyOiAwMDAwLDAwMDQsMDAwNSwwMDAz
CkJvb3QwMDAwKiB1YnVudHUJSEQoLi4uKS9GaWxlKFxFRklcVUJVTlRVXFNISU1YNjQuRUZJKQpC
b290MDAwMyogSGFyZCBEcml2ZQlCQlMoLi4uKQpCb290MDAwNCogVUVGSTogSmV0Rmxhc2hUcmFu
c2NlbmQgMzJHQiAxMTAwIC4uLgpCb290MDAwNSogVUVGSTogSmV0Rmxhc2hUcmFuc2NlbmQgMzJH
QiAxMTAwLCBQYXJ0aXRpb24gMS4uLgpUaGUgZmlyc3QgbGluZSBzaG93cyB0aGUgY3VycmVudCBk
ZXZpY2UgdGhhdCB3YXMgYm9vdGVkIGZyb20sIHRoZSB0aGlyZCBsaW5lIHNob3dzIHRoZSBjb21w
dXRlcidzIGN1cnJlbnQgYm9vdCBzZXF1ZW5jZSwgYW5kIHRoZSBmb2xsb3dpbmcgbGluZXMgbGlz
dCBlYWNoIGJvb3RhYmxlIGRldmljZS4KVGFrZSBub3RlIG9mIHRoZSBudW1iZXJzIHN1Y2ggYXMg
MDAwLCAwMDMsIGV0Yy4gSW4gdGhpcyBleGFtcGxlLCB3ZSBjYW4gc2VlIHRoZSBjdXJyZW50IGJv
b3Qgc2VxdWVuY2UgaXMgdGhlIFVidW50dSBpbnN0YWxsYXRpb24sIGZvbGxvd2VkIGJ5IHRoZSBo
YXJkIGRyaXZlLCBhbmQgdGhlIHR3byBkaWZmZXJlbnQgcGFydGl0aW9ucyBvbiBhIDMyR0IgVVNC
IGRyaXZlLgoKQ2hhbmdlIEJvb3QgU2VxdWVuY2UKQ2hvb3NlIHlvdXIgbmV3IGJvb3Qgc2VxdWVu
Y2UgYnkgdGhlIGRldmljZSBudW1iZXJzLCBhbmQgY2hhbmdlIHlvdXIgYm9vdCBzZXF1ZW5jZSB3
aXRoIHRoZSBjb21tYW5kOgpzdWRvIGVmaWJvb3RtZ3IgLW8gNSwwLDQsMwpVc2luZyB0aGUgYWJv
dmUgZXhhbXBsZSwgdGhhdCBjb21tYW5kIHdvdWxkIGNoYW5nZSB0aGUgYm9vdCBzZXF1ZW5jZSB0
byB0cnkgdGhlIFVTQiBkcml2ZSBmaXJzdCwgZm9sbG93ZWQgYnkgdGhlIG1haW4gVWJ1bnR1IGlu
c3RhbGxhdGlvbi4KSXQncyB0aGF0IHNpbXBsZSwgYW5kIHlvdSBjYW4gbm93IGNoYW5nZSB0aGUg
Ym9vdCBzZXF1ZW5jZSBvbiBhbnkgTGludXggY29tcHV0ZXIgdmlhIHRlcm1pbmFsIHdpdGhvdXQg
c2NyYW1ibGluZyB0byBnZXQgaW50byB0aGUgQklPUyB3aGVuIGZpcnN0IHBvd2VyaW5nIG9uIHRo
ZSBjb21wdXRlci4KClRoYW5rcywKUm9iCgo+IE9uIEF1ZyAyMCwgMjAyMiwgYXQgMzo1OSBBTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4gCj4gSSB3b3VsZCBqdXN0IHN0aWNrIHRvIHVzaW5nIFVTQiBzdGlja3MgaW5z
dGVhZCBwZXJzb25hbCBjaG9pY2UuIEhhcHB5IHRyb3VibGVzaG9vdGluZy4KPiAKPiAKPiBPbiA4
LzE4LzIyIDIyOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
PiBDYW4gdGhlICBkdmQgZHJpdmUgcGxheSBvdGhlciBkdmQncz8KPj4gCj4+IE9uIDgvMTgvMjIs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgo+Pj4gSGksCj4+PiBJIGRvbuKAmXQga25vdyB3aGF0IGNhdXNlZCBteSBEZXNr
dG9wIHRvIHN0b3AgYm9vdGluZyBmcm9tIHRoZSBEVkQuCj4+PiBJIGhhdmUgdHJpZWQgZGlmZmVy
ZW50IERWROKAmXMgYW5kIGRpZmZlcmVudCBkaXN0cm9zLgo+Pj4gSXQgdXNlZCB0byB3b3JrIHdp
dGggbm8gcHJvYmxlbXMsIHRoYXTigJlzIHRoZSB3YXkgSSBpbnN0YWxsZWQgTGludXggTWludC4K
Pj4+IFNvIHBsZWFzZSB0ZWxsIG1lIHRoZXJl4oCZcyBhIHNpbXBsZSB3YXkgdG8gZml4IHRoaXMu
Cj4+PiBUaGFua3MsCj4+PiBSb2IKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4gCj4+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

