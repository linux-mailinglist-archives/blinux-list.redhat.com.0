Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9328453530D
	for <lists+blinux-list@lfdr.de>; Thu, 26 May 2022 20:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653588068;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q6icIyq74GjEVTSItkqSv0TD99oTq1MpEfEflgu2F5I=;
	b=SrUqsEnO7DpSVpaYY1xYXuOnORhsRZgGi/k+xMtmOuj98hd5eiwhBH+LkzdZqtxnDNsOLc
	TlePBqVvl0SVHD0r+uAXRq8S8bddoZWRyP1mB+J1mX4GEryC7Lv0qRG2FQZdHE1+IQtO7n
	yoV9YlOcluAi0XN7dh17lSu6+H/gX2k=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-399-rqwMrsPvPI2yhf4xo-R3Xg-1; Thu, 26 May 2022 14:01:06 -0400
X-MC-Unique: rqwMrsPvPI2yhf4xo-R3Xg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E689C29AB3FE;
	Thu, 26 May 2022 18:01:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D1072404E4A0;
	Thu, 26 May 2022 18:01:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2C39A193212D;
	Thu, 26 May 2022 18:01:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 26 May 2022 20:00:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: alpine and Gmail future changes?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4e42aba7-4da4-8e33-0968-b7492da81094@gmail.com>
 <933cd1dc-db4e-f903-b964-8eb0f3be2019@busby.net>
 <mailman.18876.1653584281.111206.blinux-list@redhat.com>
 <mailman.18894.1653587968.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.18894.1653587968.111206.blinux-list@redhat.com>
Message-ID: <mailman.18482.1653588063.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWlzc2luZyBsaW5rIGJlbG93OgpodHRwczovL21haWxtYW4xMi51Lndhc2hpbmd0b24uZWR1L21h
aWxtYW4vbGlzdGluZm8vYWxwaW5lLWluZm8KCkRpZGllcgoKTGUgMjYvMDUvMjAyMiDDoCAxOTo1
OCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIGFs
bCwKPiAKPiBQbGVhc2UgdHJ5IHRoZSBpbnN0cnVjdGlvbnMgdGhlcmU6Cj4gaHR0cHM6Ly9hbHBp
bmUueDEwaG9zdC5jb20vYWxwaW5lL2FscGluZS1pbmZvL21pc2MveG9hdXRoMi5odG1sI1NldHRp
bmdVcEdtYWlsCj4gdGhlbiByZXBvcnQgaGVyZS4KPiBUaGlzIGlzIHN1cHBvcnRlZCBzaW5jZSBB
bHBpbmUgdmVyc2lvbiAyLjIyCj4gCj4gQWxzbywgdG8ga25vdyBob3ctdG8gc3Vic2NyaWJlIHRv
IGhlIEFscGluZSBEaXNjdXNzaW9uIGZvcnVtIChhY3R1YWxseSBhIG1haWxpbmcKPiBsaXN0KToK
PiBBbHBpbmUgRGlzY3Vzc2lvbiBGb3J1bQo+IAo+IENoZWVycwo+IERpZGllcgo+IC0tCj4gRGlk
aWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIKPiAKPiAKPiBMZSAyNi8wNS8yMDIyIMOgIDE4
OjU3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhp
IGZvbGtzLAo+PiBJIGFtwqAgYm90aCBzdGFydGluZyB0aGlzIHRocmVhZCwgYW5kIGluY2x1ZGlu
ZyB0aGUgbGlzdCB3aGVyZSB0aGUgcXVlc3Rpb24gaXMKPj4gcmF0aGVyIGltcG9ydGFudC4KPj4g
TXkgZ29hbCBiZWluZyBoZWxwaW5nIHRob3NlIGJsaW5kIExpbnV4IHVzZXJzIHdobyByZWx5IG9u
IGFscGluZSB0byBtYW5hZ2UgdGhlaXIKPj4gZ21haWwgYWNjb3VudCwgYW5kIGxldHRpbmcgdGhl
bSBrbm93IGhvdyB0byByZWFjaCB0aGUgYWxwaW5lIGxpc3QgdG9vLgo+PiBJIHJlY2FsbD8gdGhl
cmUgbWlnaHQ/IGJlIGEgc29sdXRpb24gYWxyZWFkeSBpbiBwbGFjZSwgYnV0IGp1c3QgaW4gY2Fz
ZSBjYW4KPj4gc29tZW9uZSBhcnRpY3VsYXRlIGhvdyB0byBrZWVwIGFscGluZSB3b3JraW5nIHdp
dGggZ21haWwgaW4gbGlnaHQgb2YgYW50aWNpcGF0ZWQKPj4gY2hhbmdlcyBieSBnb29nbGU/Cj4+
IGJlc3QsCj4+IGthcmVuCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

