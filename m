Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C666D39902C
	for <lists+blinux-list@lfdr.de>; Wed,  2 Jun 2021 18:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622652058;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jsmKZDCHlBGU976LHnIvL42H3pCU3275aJHFcTDvr/U=;
	b=baWhjCK0UPPtrX3HO4MhPjeQj2KHxQkZtFd0lM4GirO/yIYpDrQVPWX1NhJmDYR14ia6DZ
	FgSDWsQteDbQ4bkVFbs2ZjsWzSdCxAda+G9Lr4bxnA3oqDR3GOw4o1FZl0FergVEYU8kDw
	zXS2990GBFkxOIzOMW2VPVfnDFeMkuM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-377--uESYRhUNsy552addd_6hg-1; Wed, 02 Jun 2021 12:40:56 -0400
X-MC-Unique: -uESYRhUNsy552addd_6hg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39F8D501E1;
	Wed,  2 Jun 2021 16:40:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24EAC5C1A3;
	Wed,  2 Jun 2021 16:40:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 496F518095C4;
	Wed,  2 Jun 2021 16:40:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 152GeN0x031403 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 2 Jun 2021 12:40:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CF541FC736; Wed,  2 Jun 2021 16:40:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB11CFA745
	for <blinux-list@redhat.com>; Wed,  2 Jun 2021 16:40:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93E3010334A3
	for <blinux-list@redhat.com>; Wed,  2 Jun 2021 16:40:20 +0000 (UTC)
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
	[185.70.40.136]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-289-6YmqP-ICMQSx71YjSdveYA-1; Wed, 02 Jun 2021 12:40:18 -0400
X-MC-Unique: 6YmqP-ICMQSx71YjSdveYA-1
Date: Wed, 02 Jun 2021 16:40:14 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Command-line computer vision.
Message-ID: <8e5adcdd-2681-3e56-de06-83c552329a70@protonmail.com>
In-Reply-To: <CAO2sX31_Cu7zANccjwnX-BdLELSggRLO30ekiuydR65egve-nw@mail.gmail.com>
References: <CAO2sX31_Cu7zANccjwnX-BdLELSggRLO30ekiuydR65egve-nw@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 152GeN0x031403
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

SGV5IHRoZXJlLAoKd2VsbCwgaXQgZGVwZW5kcyBvbiBob3cgbXVjaCB5b3UgbGlrZSB0byBwbGF5
IGFyb3VuZCB3aXRoIHRoaW5ncy4KCgpBcyBmb3IgbG9jYWwgb3B0aW9ucywgdGhlcmUgaXMgdGhl
IGltMnR4dCBtb2RlbDoKCmh0dHBzOi8vZ2l0aHViLmNvbS9IdWdoS3UvSW0ydHh0CgoKSXQncyBx
dWl0ZSBpbnRlcmVzdGluZywgdGhvdWdoIHRoZSBjb2RlIGlzIHF1aXRlIG91dCBvZiBkYXRlIChz
dGlsbCBmb3IKdGVuc29yIGZsb3cgMS54LCB0aGUgbW9kZXJuIHZlcnNpb24gaXMgMi54LCB3aGlj
aCBpcyBub3QgYmFja3dhcmQKY29tcGF0aWJsZSkKClRodXMgc29tZSBmaWRkbGluZyB3aWxsIGJl
IG5lY2Vzc2FyeSB0byBnZXQgaXQgd29ya2luZy4KCgpHb29nbGUncyBJbmNlcHRpb24gaXMgYWxz
byBhbiBvcHRpb246CgpodHRwczovL2dpdGh1Yi5jb20vdGVuc29yZmxvdy9tb2RlbHMKCgpUaGlz
IHJlcG9zaXRvcnkgY3VycmVudGx5IGRvZXNuJ3QgY29udGFpbiBpdCwgYnV0IGl0IGRlZmluaXRl
bHkgZGlkIGluCnRoZSBwYXN0LCBzbyBpZiB5b3UgY2FuIHdvcmsgd2l0aCBnaXQsIHlvdSBjYW4g
anVtcCBmZXcgeWVhcnMgYmFjayB0bwpmaW5kIGl0LgoKSSdtIG5vdCBzdXJlIGlmIHRoZXkgdXBk
YXRlZCBpdCBmb3IgVEYgMiBvciBub3QsIHNvIGFnYWluIHNvbWUgcGxheWluZwptYXkgYmUgbmVj
ZXNzYXJ5IHRvIGdldCB0aGUgcmlnaHQgZW52aXJvbm1lbnQuCgoKVGhlcmUgaXMgaW4gZmFjdCBh
IG5ld2VyIHZlcnNpb24gb2YgSW5jZXB0aW9uLCB2NCwgYnV0IEkgZGlkIG5vdCB0ZXN0CnRoYXRv
bmUgbXlzZWxmIGFuZCBkb24ndCBrbm93IGlmIHRoZXJlIGFyZSBzb21lIHNpbXBsZSB0byB1c2UK
YXBwbGljYXRpb25zIGZvciB0aGVpciB1c2FnZS4KCgpBbHNvLCBhcyBmb3IgdGhlIGRpZmZlcmVu
Y2UgYmV0d2VlbiBJbTJ0eHQgYW5kIEluY2VwdGlvbiwgSW0ydHh0CmRlc2NyaWJlcyB3aG9sZSBz
Y2VuZXMgbGlrZSB0aGUgZXhhbXBsZW9uZSAtIEEgbWFuIHN1cmZpbmcgYSB3YXZlLCB3aGlsZQpJ
bmNlcHRpb24ganVzdCByZWNvZ25pemVzIG9iamVjdHMgKG1hbiwgc3VyZiwgd2F2ZSBwZXJoYXBz
KSwgYW5kIGdpdmVzCnlvdSBpbmZvcm1hdGlvbiBvbiBob3cgc3VyZSBpdCBpcyB0aGUgaXRlbSBp
cyB0aGVyZS4KCgpUaGVyZSBhcmUgYWxzbyBvbmxpbmUgc3lzdGVtcywgaWYgeW91IGRvbid0IG1p
bmQgc2hhcmluZyB5b3VyIHBob3Rvcwp3aXRoIHRoaXJkIHBhcnRpZXMuCgpQcm9iYWJseSB0aGUg
YmVzdG9uZSBJJ3ZlIHNlZW4gc28gZmFyIGlzIENsb3Vkc2lnaHQ6CgpodHRwczovL2Nsb3Vkc2ln
aHQuYWkvCgpUaGUgc2FtZSBzZXJ2aWNlIHVzZWQgZm9yIFRhcHRhcHNlZSBvciBDYW1maW5kLgoK
ClRoZWlyIGRlc2NyaXB0aW9ucyBhcmUgdmVyeSBhY2N1cmF0ZSwgdGhleSdyZSB1c2luZyBtYWNo
aW5lIGxlYXJuaW5nCmNvbWJpbmVkIHdpdGggaHVtYW4gb3ZlcnNpZ2h0LCBzbyBldmVuIHRob3Vn
aCB0aGUgcmVjb2duaXRpb24gdXNlZCB0bwp0YWtlIGFib3V0IDE1IC0gMjAgc2Vjb25kcyAoSSBk
b24ndCBrbm93IGFib3V0IHRoZSBjdXJyZW50IHN0YXRlKSwgdGhlCnJlc3VsdHMgd2VyZSB1c3Vh
bGx5IHdvcnRoIGl0LgoKCk5vdywgdGhleSBoYXZlIGV2ZW4gdmlkZW8gcmVjb2duaXRpb24gYW5k
IG9mZmxpbmUgb2JqZWN0cyBkZXRlY3Rpb24sCnRob3VnaCBJIGRvbid0IGtub3cgaG93IGFjY3Vy
YXRlIGFyZSB0aG9zZS4KCgpDbG91ZHNpZ2h0IGhhcyBhIHB1YmxpYyBhcGksIHdoaWNoIGV2ZW4g
cHJvdmlkZXMgZnJlZSByZWNvZ25pdGlvbiB1cHRvCnNvbWUgcG9pbnQuIFlvdSBjYW4gdHJ5IGl0
IG9uIHRoZWlyIHdlYnNpdGUgYW5kIGNvdWxkIHBlcmhhcHMgbWFrZSBhCnNjcmlwdCBmb3IgaXQs
IHNvIHlvdSBjYW4gYWNjZXNzIHRoZSBzZXJ2aWNlIGVhc2lseSBmcm9tIGNvbW1hbmQgbGluZS4K
TWF5IGJlIHRoZXJlIGFyZSBhbHJlYWR5IHNvbWUgb24gR2l0SHViLCB0aGF0IG1pZ2h0IGJlIHdv
cnRoIGNoZWNraW5nIGFzCndlbGwgaWYgeW91J3JlIG5vdCBpbnRvIHByb2dyYW1taW5nLgoKCkJl
c3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMjYuIDUuIDIwMjEgbyAyMzo0NyBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IE9rYXksIEknbSBhd2Fy
ZSBvZiBUZXNzZXJhY3QgYW5kIGN1bmVpZm9ybSBmb3IgZG9pbmcgT0NSIG9uIGltYWdlCj4gZmls
ZXMsIGJ1dCBJIHdhcyB3b25kZXJpbmcgaWYgYW55b25lIG9uIHRoaXMgbGlzdCBrbmV3IG9mIGFu
eQo+IGNvbW1hbmQtbGluZSB1dGlsaXRpZXMgdGhhdCBtaWdodCBiZSBhYmxlIHRvIHRlbGwgbWUg
dXNlZnVsIHRoaW5ncwo+IGFib3V0IHRoZSBjb250ZW50cyBvZiBpbWFnZXMgdGhhdCBjb250YWlu
IG5vIHRleHQuIEV2ZW4gc29tZXRoaW5nIGFzCj4gc2ltcGxlIGFzIHByaW50aW5nIHRoZSBpbWFn
ZSdzIHBhbGV0dGUgaW4gZGVzY2VuZGluZyBvcmRlciBvZgo+IGFidW5kYW5jZSBvciByZWNvZ25p
dGlvbiBvZiBiYXNpYyBnZW9tZXRyaWMgc2hhcGVzIHdvdWxkIGJlIHVzZWZ1bCBJCj4gdGhpbmsu
Cj4KPiBNeSBwcmltYXJ5IHVzZSBjYXNlIGlzIGdpdmluZyBtZWFuaW5nZnVsIGZpbGVuYW1lcyB0
byBkaWdpdGFsIHBob3Rvcwo+IHdoZXJlIEkga25vdyB3aGF0IHBob3RvcyBhcmUgaW4gdGhlIHNl
dCwgYnV0IG5vdCB3aGljaCBwaG90byBpcyB3aGljaCwKPiBhbmQgcHJpbWFyaWx5LCB0aGUgcGhv
dG9zIGFyZSBvZiBjcmFmdHMgSSd2ZSBtYWRlIGFuZCB0YWtlbiB3aXRoIHRoZQo+IGNhbWVyYSBt
eSBwb3J0YWJsZSBtZWRpYXBsYXllci90YWxraW5nIGVSZWFkZXIgdXNlcyBmb3IgT0NSaW5nIHBy
aW50Cj4gZG9jdW1lbnRzKHRoZSBkZXZpY2UgZ2l2ZXMgdGhlIHBob3RvcyB2ZXJ5IGxvbmcsIG51
bWVyaWMgZmlsZW5hbWVzCj4gdGhhdCBtaWdodCBiZSB0aW1lc3RhbXBzLCBidXQgZXZlbiB0aGF0
IGlzbid0IG9mIG11Y2ggdXNlIGlmIEkgdGFrZQo+IG1vcmUgdGhhbiBvbmUgcGhvdG8gaW4gYSBy
b3VuZCBvZiBibGluZCBwaG90b2dyYXBoeSBhbmQgdHJhbnNmZXJyaW5nCj4gcGhvdG9zIHRvIG15
IERlc2t0b3AsIGVzcGVjaWFsbHkgc2luY2UgdGhlIGRldmljZSdzIGNsb2NrIHJlc2V0cyB0bwo+
IG1pZG5pZ2h0IHRoZSBtb3Jpbmdpbmcgb2YgSmFudWFyeSAxLCAyMDE0IHdoZW5ldmVyIHRoZSBi
YXR0ZXJ5IGlzCj4gcHVsbGVkIG91dCkuCj4KPiBJJ3ZlIHRyaWVkIGdvb2dsaW5nIGFuZCBzZWFy
Y2hpbmcgdGhlIHBhY2thZ2UgbGlzdHMgaW4gQXB0aXR1ZGUsIGJ1dAo+IGFsbCBJJ3ZlIG1hbmFn
ZWQgdG8gZmluZCBhcmUgbGliYXJpZXMgZm9yIHdyaXRpbmcgY29tcHV0ZXIgdmlzaW9uIGNvZGUK
PiBpbnRvIHJlb2JvdGljcyBwcm9qZWN0cyBvciBjbG91ZC1iYXNlZCBjb21wbGV4IG9iamVjdCBB
SSBzdHVmZi4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

