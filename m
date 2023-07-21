Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F24175BB80
	for <lists+blinux-list@lfdr.de>; Fri, 21 Jul 2023 02:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689899179;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YtLcAkACfim/1lnyHF2X71ZQ/6jQjs+h4tU+4vZ/i+o=;
	b=HNYM9ZEqmoxUAlRow0PmAMmr1KL3QS0kPg5P1QDXGbhzPjeVL91Z9m2i1h9GrwZUITOAwi
	wi1poE4VycFj0IIzHAgee/BZOELGrdd5A+KgNF5Nz0nEYM5tCA3nifPnCTgwnaNc6jLgLX
	q4Y27Fo4+dEg+PCsB5T1pmp5fSQ7hac=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-608-DBqoiGb_Og-xIUwNxQFoXw-1; Thu, 20 Jul 2023 20:26:15 -0400
X-MC-Unique: DBqoiGb_Og-xIUwNxQFoXw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A26B6856F66;
	Fri, 21 Jul 2023 00:26:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 139751121314;
	Fri, 21 Jul 2023 00:26:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6B2F31946A6B;
	Fri, 21 Jul 2023 00:26:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Mint Installation?
Thread-Topic: Mint Installation?
Thread-Index: Adm6T80FF7YXeQtkS6STbJ1Y1scbUgA44uuAAATYX4AAB+0YAAAA3kSA
Date: Fri, 21 Jul 2023 00:25:52 +0000
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1762.1689875729.687819.blinux-list@redhat.com>
 <mailman.1705.1689884060.687816.blinux-list@redhat.com>
 <mailman.1882.1689897665.687811.blinux-list@redhat.com>
In-Reply-To: <mailman.1882.1689897665.687811.blinux-list@redhat.com>
Accept-Language: en-US
MIME-Version: 1.0
Message-ID: <mailman.1903.1689899172.687815.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIA0KSSBzaW5jZXJlbHkgYXBvbG9naXplLCBidXQgSSB3YXMgd3JvbmcgYWJvdXQgdGhlIHNp
emUgb2YgdGhlIFNTRCBpbiBteSBsYXB0b3AuIA0KSXQncyBhY3R1YWxseSBhIDAuNVRCIGRyaXZl
IGJlY2F1c2UgdGhhdCdzIHRoZSBoaWdoZXN0IHRoaXMgaGFyZHdhcmUsIHdoaWNoIGlzIGF0IGxl
YXN0IDE1IHllYXJzIG9sZCBzdXBwb3J0cy4gDQpXZSBqdXN0IGhhZCBhIGJhZCB0aHVuZGVyc3Rv
cm0gZ28gdGhyb3VnaCB0b25pZ2h0ICYgdGhlIG1hY2hpbmUgaXMgbm93IGNvbWluZyB1cCB0byBh
IHRleHQtYmFzZWQgbG9naW4gcHJvbXB0LCB3aGljaCBtZWFucyB0aGF0IEkgZG9uJ3QgaGF2ZSBz
cGVlY2guIA0KQSBmcmllbmQgaXMgZ29pbmcgdG8gaGVscCBtZSBmaXggaXQgcHJvYmFibHkgc29t
ZXRpbWUgbmV4dCB3ZWVrLiBXZSB3aWxsIHdvcmsgcmVtb3RlbHkuIA0KDQoNClRoYW5rcywNCkpl
c3NpY2EgRGFpbA0KDQo+IE9uIEp1bCAyMCwgMjAyMywgYXQgMjA6MDEsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOg0KPiAN
Cj4g77u/dGhlIG9ubHkgdGltZSB0aGF0IGhhcyBoYXBwZW5lZCB0byBtZSBpcyB3aGVuIGkgYW0g
c2Nyb2xsaW5nIHRocm91Z2ggbXkgYm9va21hcmtzIGluIGZpcmVmb3guDQo+IA0KPiBhbSBpIGp1
c3QgYXNzdW1lZCB0aGF0ICBpdCBpcyBiZWNhdXNlIGl0IGlzIGFuIG9sZCBjb21wdXRlciB3aXRo
IGxpdHRsZSByZXNvdXJjZXMuDQo+IA0KPiBidXQgbm90IHJlYWxseSBzdXJlIGhvdyB0byBnZXQg
dGhhdCB0byBzdG9wDQo+IA0KPiBvbiBteSBsYXB0b3AgdGhhdCBpIGluc3RhbGxlZCBtaW50IDIx
LjIgaGF2ZSBub3QgaGFkIHRoYXQgaXNzdWUgeWV0Lg0KPiANCj4gcm9kbmV5DQo+IA0KPiANCj4+
IE9uIDcvMjAvMjAyMyAxNToxNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToNCj4+IEhpLA0KPj4gT2NjYXNpb25hbGx5LCBJ4oCZbGwgZXhwZXJpZW5jZSBPcmNhIGxv
Y2tpbmcgdXAuDQo+PiBXaGVuIHRoaXMgaGFwcGVucywgc29tZXRpbWVzLCBpdCdzIG9ubHkgZm9y
IGEgZmV3IHNlY29uZHMgJiBvdGhlciB0aW1lcywgSSBoYXZlIHRvIHdhaXQgYXMgbG9uZyBhcyA1
IG9yIDEwIG1pbnV0ZXMuDQo+PiBUaGlzIGNhbiBoYXBwZW4gd2l0aCBhbnkgYXBwLg0KPj4gSG93
IGNhbiBJIHByZXZlbnQgdGhpcz8NCj4+IEnigJltIHdvcmtpbmcgd2l0aCBhIERlbGwgcHJlY2lz
aW9uIDQ4MDAgd2hpY2ggaGFzIDE2R0Igb2YgcmFtICYgYSAxVEIgU1NELg0KPj4gU28sIGJhc2Vk
IG9uIHRoYXQsIHdoYXQgZG8geW91IHRoaW5rIHdvdWxkIGNhdXNlIHRoZXNlIGlzc3Vlcz8NCj4+
IA0KPj4gDQo+Pj4+IE9uIEp1bCAyMCwgMjAyMywgYXQgMTM6NTUsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOg0KPj4+IA0K
Pj4+IEplc3NpY2EsDQo+Pj4gDQo+Pj4gSSBqdXN0IHJlY2VudGx5IGluc3RhbGwgbWludCAyMS4y
IG9uIGEgbGFwdG9wIGFuZCBzbyBmYXIgaSBsb3ZlIGl0IGFzIHdlbGwuDQo+Pj4gDQo+Pj4gUm9k
bmV5DQo+Pj4gDQo+Pj4gDQo+Pj4gT24gNy8xOS8yMDIzIDA5OjQ4LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOg0KPj4+PiBIZWxsbywNCj4+Pj4gSSBhbSBhIGh1Z2Ug
ZmFuIG9mIHBvZGNhc3RzIQ0KPj4+PiBJJ2QgbG92ZSB0byBjaGVjayBvdXQgdGhpcyBwcm9ncmFt
IGJ1dCBiZWZvcmUgSSBwcm9jZWVkLCBJJ2QgbGlrZSB0byBrbm93IGlmIGl0J2xsIHdvcmsgb24g
TGludXggTWluPw0KPj4+PiBJIGp1c3QgdXBncmFkZWQgdG8gTWludCAyMS4yIGxhc3QgbmlnaHQg
JiBhbSBsb3ZpbmcgaXQgc28gZmFyLg0KPj4+PiANCj4+Pj4gDQo+Pj4+IFRoYW5rcywNCj4+Pj4g
SmVzc2ljYSBEYWlsDQo+PiANCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdA0KPiBCbGludXgtbGlz
dEByZWRoYXQuY29tDQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

