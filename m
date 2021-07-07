Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 70A063BED6E
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 19:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625680198;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nHMKaZ4pFP2E7OEnzHgPUdh4iHgnm2lbIBtEF46c8i8=;
	b=YmBD27s7G3vZyDowrKIEGH/62dLjYlpoUsq03xzqopMMFPQcXGAb4zMvhpqh4mJITUye1B
	s7KCodXw2ZW8E4JzFGHwC4VGulGIx1G5OnaBB4Knt/UYd2H2R6wc4Hpi2hFUr/5NVsG7Rc
	8FVwMxXNeEOgRtRZuQ7/Fz/DGb0dAaw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-536-RhN_1FmPOEazN9fZMVFn7g-1; Wed, 07 Jul 2021 13:49:56 -0400
X-MC-Unique: RhN_1FmPOEazN9fZMVFn7g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6DEEA0CB1;
	Wed,  7 Jul 2021 17:49:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1640C60C57;
	Wed,  7 Jul 2021 17:49:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7C8F91809C99;
	Wed,  7 Jul 2021 17:49:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167HjiL5031335 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 13:45:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CB019E597B; Wed,  7 Jul 2021 17:45:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C648CE30AF
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 17:45:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 59419800182
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 17:45:42 +0000 (UTC)
Received: from mail-out-02.crystone.se (mail-out-02.crystone.se
	[93.90.145.12]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-207-dRhZua9INlif16HF0WWsww-1; Wed, 07 Jul 2021 13:45:39 -0400
X-MC-Unique: dRhZua9INlif16HF0WWsww-1
X-Halon-ID: fd1b7b37-df4a-11eb-8aab-005056917149
Authorized-sender: anders@pipkrokodil.se
Received: from smtpclient.apple (unknown [31.13.191.147])
	by mail-out-01.crystone.se (Halon) with ESMTPSA
	id fd1b7b37-df4a-11eb-8aab-005056917149;
	Wed, 07 Jul 2021 19:44:35 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Suggestions for Linux laptop
Date: Wed, 7 Jul 2021 19:44:32 +0200
References: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1.ref@yahoo.com>
	<693C3F63-BA95-4155-BFC0-DFD43F0F1CB1@yahoo.com>
	<c690bab2-3bd7-e7f1-cd3f-ed2acfef85c5@hubert-humphrey.com>
To: blinux-list@redhat.com
In-Reply-To: <c690bab2-3bd7-e7f1-cd3f-ed2acfef85c5@hubert-humphrey.com>
Message-Id: <E1CA78EF-A00D-42CF-95BC-5094E4C7E9D2@pipkrokodil.se>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 167HjiL5031335
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCkkgaGF2ZW7igJl0IGhlYXJkIG9mIHRoZXNlIGJyYW5kcyBhdCBhbGwuClNvIEkgcmVhbGx5
IGNhbuKAmXQgaGVscC4KL0EKCj4gNyBqdWxpIDIwMjEga2wuIDA0OjU5IHNrcmV2IExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+
IEFyZSB0aGVzZSBtYWNoaW5lcyBhbHJlYWR5IGxvYWRlZCB3aXRoIExpbnV4PyBJIHRyaWVkIGEg
c3lzdGVtNzYgZGlzdHJvLCBidXQgZm91bmQgaXQgd2FzIGEgcmVhbCBjaGFsbGVuZ2UgZ2V0dGlu
ZyBhIGJhY2sgc3BhY2UgYmVlcCB0byB3b3JrIGluIGEgY29uc29sZSBpbiBUQ1NILiBBbHNvLCBh
dCB0aGF0IHRpbWUgd2hlbiB3ZSB1cGdyYWRlZCB0byBrZXJuZWwgNS4xMSBJIGxvc3Qgc3BlYWt1
cCwgYnV0IG5vdyBpdHMgc29tZSBtb250aHMgbGF0ZXIsIHNvIG1heWJlIHlvdSB3b3VsZCBoYXZl
IGJldHRlciBsdWNrLgo+IENoaW1lCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

