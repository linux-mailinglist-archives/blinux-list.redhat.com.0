Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3528A6F0ADC
	for <lists+blinux-list@lfdr.de>; Thu, 27 Apr 2023 19:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682616679;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BJhC6/yLvCHgWLbtrGb62Jpo1aCWJlWhIAXVNQkBCdI=;
	b=ZRco9GBYEDoMV7vX3kwHhvMD1yUE3iK/As2xoXl8ZvQeiRIZhAzupg/K+jLyE8Sj4SXM8K
	7aw2qA8iGadSpn/NvPSBMpZCf7E2ePa94S3omJDwkN6NtWkhjyL2+2DxlJg75IlQpOHrnT
	GFZRti5brNdoKDEQcFm5Ope0RcIz3Bg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-E0wdzJ2aNxCxjBxr23d3ZA-1; Thu, 27 Apr 2023 13:31:15 -0400
X-MC-Unique: E0wdzJ2aNxCxjBxr23d3ZA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 322CE185A7A2;
	Thu, 27 Apr 2023 17:31:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2ED8514152F6;
	Thu, 27 Apr 2023 17:31:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A11921946A52;
	Thu, 27 Apr 2023 17:31:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Apr 2023 13:31:05 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Two Arch beginner questions
In-Reply-To: <mailman.2227.1682609071.2351818.blinux-list@redhat.com>
References: <mailman.2214.1682605732.2351818.blinux-list@redhat.com>
 <mailman.2227.1682609071.2351818.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1971.1682616668.2351821.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VHdvIG1vcmUgYWR2YW50YWdlcyB0byBzdGFydGluZyB1cCBpbiBjb25zb2xlIG1vZGUgdGhlbiB1
c2luZyBzdGFydHggdG8KYWNjZXNzIHRoZSBncmFwaGljYWwgZW52aXJvbm1lbnQuCllvdSBkb24n
dCBoYXZlIHRvIGRvIGluaXRpYWwgbG9naW4gaW4gZ3JhcGhpY2FsIG1vZGUgYW5kIHNlY29uZCBp
cyBpZgpncmFwaGljYWwgbW9kZSBkZXZlbG9wcyBhIHByb2JsZW0geW91IGNhbiBzdGlsbCBsb2dp
biBpbiBjb25zb2xlIGFuZCBnZXQgYQpjaGFuY2UgdG8gZml4IHRoZSBwcm9ibGVtLiAgR3JhcGhp
Y2FsIHVzZXIgbG9naW4gaWYgYSBwcm9ibGVtIGRldmVsb3BzLAppdCdzIHRpbWUgdG8gcmVpbnN0
YWxsIHRoZSBzeXN0ZW0gaWYgdGhlIHByb2JsZW0gcHJldmVudHMgbG9naW4uCgoKLS0gSnVkZSA8
amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVz
ZWQgaW4KZGVmZW5zZSBvZiBsaWJlcnR5OiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQ
bGVhc2UgdXNlIGluIHRoYXQKb3JkZXIuIiBFZCBIb3dkZXJzaGVsdCAxOTQwLgoKT24gVGh1LCAy
NyBBcHIgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4g
dGhlcmUgYXJlIHByb2JhYmx5IGFsc28gc2V2ZXJhbCBvdGhlciBzY3JlZW4gcmVhZGVyLCBvcHRp
b25zIGZvciB0aGUgY29uc3VsL3Rlcm1pbmFsLiBXaGVuIGRpZCBJIGhhdmUgZm91bmQgbW9zdCB1
c2VmdWwgaXMgQlJMVFRZLiBJdOKAmXMgcHJvYmFibHkgb25lIG9mIHRoZSBvbGRlc3Qgb2YgdGhl
IGxvdCBhbmQgaXQgc3RpbGwgd29ya3MuIE5vdywgYXMgZm9yIHRoZSBncmFwaGljYWwgdXNlciBp
bnRlcmZhY2UsIEnigJl2ZSBiZWVuIGluIHRoZSBoYWJpdCBvZiBhY3R1YWxseSBzdGFydGluZyB1
cCBpbiBDb25zb2wgbW9kZSBmaXJzdCBhbmQgdGhlbiBydW5uaW5nIFNUQVJUWC4gSXTigJlzIGVh
c3kgaXTigJlzIHNpbXBsZSBhbmQgeW91IGRvbuKAmXQgaGF2ZSB0byB3b3JyeSBhYm91dCBhIGRp
c3BsYXkgbWFuYWdlci4gQSBhbHNvLCB5b3UgZG9u4oCZdCBoYXZlIHRvIHdvcnJ5IGFib3V0IGEg
YnVuY2ggb2YgYWRkaXRpb25hbCBhcHBzIHlvdSBtYXkgbmV2ZXIgdXNlIHdoZW4gcnVubmluZyB0
aGUgZGlzcGxheSBtYW5hZ2VyLiBTbyBjaG9vc2Ugd2hpY2hldmVyIGRlc2t0b3AgeW91IHdhbnQs
IHdoaWNoIGV2ZXIgYXBwcyB5b3Ugd2FudCwgYW5kIGluc3RhbGwgdGhvc2UgYnkgd2hhdGV2ZXIg
bWV0aG9kIGlzIGNhbGxlZCBmb3IgaW4geW91ciB2ZXJzaW9uIG9mIExpbnV4Lgo+Cj4gRXJpYy4K
Pgo+Cj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Cj4gPiBPbiBBcHIgMjcsIDIwMjMsIGF0IDA3OjM5
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPiB3cm90ZToKPiA+Cj4gPiDvu79JIGZpbmQgbGlnaHRkbSB3aXRoIGxpZ2h0ZG0tc2xpY2st
Z3JlZXRlciB0byBiZSBhYm91dCB0aGUgYmVzdCBkaXNwbGF5IG1hbmFnZXIgb3B0aW9uLiBZb3Ug
c2hvdWxkIGJlIGFibGUgdG8gc3RhcnQgb3JjYSB1c2luZyBhbHQrc3VwZXIrcyBmcm9tIHRoZSBk
aXNwbGF5IG1hbmFnZXIncyB3aW5kb3cuCj4gPgo+ID4KPiA+IEZlbnJpciBpcyBwcm9iYWJseSB0
aGUgbW9zdCBjb21wcmVoZW5zaXZlIGZ1bGx5IHVzZXJzcGFjZSBzY3JlZW4gcmVhZGVyIGZvciB0
ZXh0IG1vZGUgVFRZcyBhbmQgdGVybWluYWxzLCBtZWFuaW5nIHRoYXQgaXQgZG9lc24ndCBsaXZl
IGluIHRoZSBrZXJuZWwsIGFsdGhvdWdoIE9yY2Egd29ya3MgcHJldHR5IHdlbGwgaW4gbWF0ZS10
ZXJtaW5hbC4gUGVyc29uYWxseSB0aG91Z2gsIEkgZmluZCB0aGF0IGRlc2t0b3Agd2ViIGJyb3dz
ZXJzIGFuZCBlbWFpbCBhcHBsaWNhdGlvbnMgd29yayBtdWNoIGJldHRlciB0aGFuIHRoZWlyIHRl
cm1pbmFsIGNvdW50ZXJwYXJ0cywgaW5jbHVkaW5nIGJlaW5nIGVhc2llciB0byBzZXQgdXAsIGVh
c2llciB0byBuYXZpZ2F0ZSBieSB2YXJpb3VzIGVsZW1lbnRzIHN1Y2ggYXMgaGVhZGVycyBvciBs
aW5rcywgYW5kIGVzcGVjaWFsbHkgZm9yIGJyb3dzZXJzLCBzdXBwb3J0aW5nIG1hbnkgbW9yZSB3
ZWJzaXRlcyBpbiBhIG1vcmUgYWNjZXNzaWJsZSB3YXkuIEp1c3QgYXMgYW4gZXhhbXBsZSBvZiB0
aGlzLCBJIGhhdmUgYmVlbiBhYmxlIHRvIGFjY2VzcyBvbmxpbmUgYmFua2luZyB0aHJvdWdoIEZp
cmVmb3ggZm9yIGNvbWluZyB1cCBvbiAyMCB5ZWFycywgYnV0IG5vbmUgb2YgdGhlIHRlcm1pbmFs
LWJhc2VkIGJyb3dzZXJzIGhhdmUgZXZlciBhbGxvd2VkIG1lIHRvIGxvZyBpbnRvIGFueSBiYW5r
J3Mgd2Vic2l0ZSwgYW5kIG1hbnkgd29uJ3QgZXZlbiBzaG93IHRoZSBsb2dpbiBwYWdlIGNvcnJl
Y3RseSwgbm90IGV2ZW4gaW4gMjAyMy4KPiA+Cj4gPiB+S3lsZQo+ID4KPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QK

