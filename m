Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 332B95167A1
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 22:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651435559;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ae5B2WAT1taifF+hUhKGSg7h8FUJREPxz7eCoYVXyzM=;
	b=Flz2LpphM+K3QEm992pTkG9ADCvKSX9Nn+R2t1vK691G2pHgatwTt67JGx3rEa5KOalrSF
	Cj6ibn0zDVl2F+biirEqUYSWBvRyPrFGMEv2zx6m+7tFmRcwNVTWTuGfPVnQdGa5hiBb+c
	Aa513jWKGSfYAER63BL+Af/iKcsI8x8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-160-Ikf2HwWKN1O7HM8RkBqimQ-1; Sun, 01 May 2022 16:05:56 -0400
X-MC-Unique: Ikf2HwWKN1O7HM8RkBqimQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8456B8002BF;
	Sun,  1 May 2022 20:05:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 48B18111E3EA;
	Sun,  1 May 2022 20:05:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A63071947063;
	Sun,  1 May 2022 20:05:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 1 May 2022 22:05:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: Does anyone know of any accessible SQL programs for Slint?
To: blinux-list@redhat.com
References: <mailman.12284.1651434266.111201.blinux-list@redhat.com>
 <mailman.12400.1651435045.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.12400.1651435045.111208.blinux-list@redhat.com>
Message-ID: <mailman.12285.1651435553.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQXNobGV5LAoKaW4gU2xpbnQgeW91IGhhdmUgbWFyaWFkYiAoZHJvcC1pbiByZXBsYWNlbWVu
dCBvZiBteXNxbCwgY29tbWFuZHMgYXJlIG5hbWVkCm15c3FsLXNvbWV0aGluZykgYW5kIHNxbGl0
ZTMuCgpCb3RoIGFyZSBjb21tYW5kIGxpbmUgYXBwbGljYXRpb25zLiBZb3UgY2FuIGFsd2F5cyBn
ZXQgdGhlIG91dHB1dCBhcyB0ZXh0IGZpbGVzCnRoZW4gcmVhZCBpdCBpbiBhIHRleHQgZWRpdG9y
IGxpa2UgcGx1bWEgb3IgZ2Vhbnkgb3IgaW4gdGhlIGNvbW1hbmQgYW55IHRleHQgZWRpdG9yLgoK
Q2hlZXJzCgpEaWRpZXIgU3BhaWVyCgpMZSAwMS8wNS8yMDIyIMOgIDIxOjU3LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVsbG8sIEnigJltIG5vdCBz
dXJlIGlmIHRoaXMgd291bGQgd29yay4gSSBzdGFydGVkIHRha2luZyBhIGRhdGFiYXNlIGNsYXNz
IGZvciBjb2xsZWdlIGFuZCBtb3N0IG9mIHRoZSB0aGluZ3MgdGhhdCB3ZSBkbyBub3cgSSBhbSB1
bmFibGUgdG8gcmVhZCB1bmxlc3MgdGhleSBhcmUgY29waWVkIGludG8gdGhlIG5vdGVwYWQgYW5k
IHBhc3RlZCBpbnRvIGEgd29yZCBkb2N1bWVudCBzbyBJIHdhcyBqdXN0IGN1cmlvdXMgaWYgdGhl
cmUgd2FzIGFueXRoaW5nIGZvciBMaW51eC4gCj4gCj4gQXNobGV5IEJyZWdlcgo+IAo+PiBPbiBN
YXkgMSwgMjAyMiwgYXQgMzo0NCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IO+7vwo+Pj4KPj4+IE9uIE1h
eSAxLCAyMDIyLCBhdCAxMjoxMSxBc2hsZXkgQnJlZ2VyIHdyb3RlOgo+Pj4KPj4+IC4uLiBJIGFt
IGxvb2tpbmcgZm9yIGFuIGFjY2Vzc2libGUgU1FMIHByb2dyYW0gdG8gdXNlIG9uIG15IFNsaW50
IHN5c3RlbS4gLi4uCj4+Cj4+IHRsO2RyIC0gbm8gcmVhbCBhbnN3ZXJzLCBidXQgc29tZSBxdWVz
dGlvbnMgYW5kIGlkZWFzLi4uCj4+Cj4+IEknbSBhc3N1bWluZyB0aGF0IHlvdSdyZSByZWZlcnJp
bmcgdG8gU1FMLCBhIGxhbmd1YWdlIGZvciBpbnRlcmFjdGluZyB3aXRoIHJlbGF0aW9uYWwgZGF0
YWJhc2VzIChodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9TUUwpLiAgSWYgbm90LCBwbGVh
c2UgaW5kaWNhdGUgd2hhdCBlbHNlIHlvdSBoYXZlIGluIG1pbmQuCj4+Cj4+IFRoZXJlIGFyZSBs
b3RzIG9mIGRhdGFiYXNlcyB0aGF0IHN1cHBvcnQgU1FMLCB0aG91Z2ggdGhlIGZlYXR1cmVzIGFu
ZCBzeW50YWN0aWMgZGV0YWlscyBjYW4gdmFyeSBhIGxvdC4gIEhvd2V2ZXIsIG1vc3Qgb2YgdGhl
bSBoYXZlIGEgY29tbWFuZC1saW5lIGludGVyZmFjZSB3aGljaCB5b3UgY2FuIHVzZSB0byBzdWJt
aXQgU1FMIHF1ZXJpZXMsIGV0Yy4gIFNvLCB0aGV5IHNob3VsZCBiZSBwcmV0dHkgYmxpbmQtYWNj
ZXNzaWJsZSwgYXQgbGVhc3Qgb24gdGhlIGlucHV0IHNpZGUuCj4+Cj4+IE91dHB1dCBpcyBhbm90
aGVyIHF1ZXN0aW9uLiAgQmVjYXVzZSByZWxhdGlvbmFsIGRhdGFiYXNlcyBvcGVyYXRlIG9uIHJl
Y3Rhbmd1bGFyIHRhYmxlcywgdGhleSB0ZW5kIHRvIHVzZSB0ZXh0LWJhc2VkIGZvcm1hdHRpbmcg
dG8gZGVsaW5lYXRlIHJvd3MgYW5kIGNvbHVtbnMuICBTbywgZm9yIGV4YW1wbGUsIHlvdSBtaWdo
dCBnZXQgbG9uZyBzdHJpbmdzIG9mIHNwYWNlcyBhbmQgdmVydGljYWwgYmFycyBzdWNoIGFzIHRo
aXM6Cj4+Cj4+IHwgICBmb28gfCAgIGJhciB8ICAgYmF6IHwKPj4gfCAgIDEyMyB8ICAgNDU2IHwg
ICA3ODkgfAo+PiB8ICAxMjM0IHwgIDQ1NjcgfCAgNzg5MCB8Cj4+Cj4+IFVubGVzcyB5b3UgaGF2
ZSBhIHNjcmVlbiByZWFkZXIgdGhhdCBjYW4gbGV0IHlvdSBuYXZpZ2F0ZSB0aGlzIHNvcnQgb2Yg
dGhpbmcsIGZpbmRpbmcgdGhlIHJlbGV2YW50IHRhYmxlIGNlbGxzIGNvdWxkIGJlIHByZXR0eSB0
ZWRpb3VzLgo+Pgo+PiBPZiBjb3Vyc2UsIHdpdGggYSBzdWZmaWNpZW50bHkgY2xldmVyIHF1ZXJ5
LCB5b3UgY2FuIChzb21ldGltZXMgOi0pIHBhcmUgZG93biB0aGUgb3V0cHV0IHRvIGp1c3QgYSBm
ZXcgY2VsbHMuICBJIGRvIHNvbWV0aGluZyBsaWtlIHRoaXMgd2hlbiB3cml0aW5nIGRlYnVnZ2lu
ZyB0cmFjZSBjb2RlLCB0byBhdm9pZCBoYXZpbmcgdG8gZGlnIHRocm91Z2ggbGFyZ2UgcGlsZXMg
b2Ygb3V0cHV0Lgo+Pgo+PiBPbmUgdGhvdWdodCBJIGhhdmUgaGFkLCBmcm9tIHRpbWUgdG8gdGlt
ZSwgaXMgdGhhdCBpdCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgdG9vbGluZyB0aGF0IHRyYW5zZm9y
bXMgdmFyaW91cyB0YWJ1bGFyIG91dHB1dCBmb3JtYXRzIGludG8gSFRNTCB0YWJsZXMuICBUaGlz
IGNvdWxkIGxldCB0aGUgdXNlciBlbXBsb3kgc2NyZWVuIHJlYWRlciBuYXZpZ2F0aW9uIHRvIGNy
YXdsIGFyb3VuZCB0aGUgdGFibGUuICBIb3dldmVyLCBJIGhhdmUgbm8gaWRlYSBpZiBhbnl0aGlu
ZyBvZiB0aGlzIHNvcnQgZXhpc3RzLgo+Pgo+PiBBc3N1bWluZyB0aGF0IHRoZXJlIGFyZSBzb21l
IGJsaW5kLWFjY2Vzc2libGUgc3ByZWFkc2hlZXQgcHJvZ3JhbXMsIHlvdSBtaWdodCBiZSBhYmxl
IHRvIGR1bXAgdGhlIHRhYnVsYXIgb3V0cHV0IGludG8gYSBmaWxlIChlLmcuIENTVikgYW5kIHRo
ZW4gZXhhbWluZSBpdCB1c2luZyB0aGUgc3ByZWFkc2hlZXQgcHJvZ3JhbS4gIE1pZ2h0IHRoaXMg
d29yayBmb3IgeW91Pwo+Pgo+PiAtIFJpY2ggTW9yaW4KPj4KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

