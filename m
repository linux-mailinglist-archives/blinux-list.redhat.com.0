Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3465C686DC7
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 19:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675275581;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=skGVB6odONq+fVCggOll2QdLTNDk47Ql0RP/S1ZQF34=;
	b=gxcR7NG84Ply11cQet0sR1xNziYIB0ZGqQ9DCbFm+iLuer4Yvtu28kh3Bcgf+ww90a5KdA
	WHW2xNGq0U32mrYlAj83k57sbqrMHdXVmDnEHxoFBIss3y7PZvy64Vg4KnkRYcnhhQSbv0
	YdOx788oeqfO5oHmaeM9mF6umiQZHLg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-177-orOhSyRVPquThzco1rc-0g-1; Wed, 01 Feb 2023 13:19:39 -0500
X-MC-Unique: orOhSyRVPquThzco1rc-0g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E434E100DEA2;
	Wed,  1 Feb 2023 18:19:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1300A112132C;
	Wed,  1 Feb 2023 18:19:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 684CE19465B7;
	Wed,  1 Feb 2023 18:19:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 13:19:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Attempting to boot Jenux in a vm.
In-Reply-To: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3890.1675275574.8169.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGlkIHlvdSBwcm92aXNpb24geW91ciB2bSBmb3Igc291bmQ/ICBJZiB0aGlzIGlzIHRoZSBmaXJz
dCBkaXN0cm8geW91CnRyaWVkIHRoaXMgd2F5IHRoYXQgbWF5IG5lZWQgZG9pbmcuCgoKCkp1ZGUg
PGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1
c2VkIGluCmRlZmVuc2Ugb2YgbGliZXJ0eToKIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8u
IFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCi1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQw
KQoKLgoKT24gV2VkLCAxIEZlYiAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgoKPiBIZXkgYWxsLAo+Cj4gSnVzdCBwdWxsZWQgZG93biB0aGUgbGF0ZXN0IEpl
bnV4IHRvIGdpdmUgaXQgYSB0cnksIGJ1dCBmb3Igc29tZSByZWFzb24gSQo+IGNhbm5vdCBnZXQg
YW55IHNwZWVjaCBvdXQgb2YgaXQuwqAgSSBoZWFyIHRoZSBiZWVwcyB3aGVuIHRoZSBWTSBib290
cyB1cCwgSSBjYW4KPiBvY3Igd2l0aCBudmRhIGFuZCBzZWUgc2VsZi10ZXN0IHJlcXVlc3RlZCwg
cGxlYXNlIHdhaXQsIGFuZCBhZnRlciBhIHdoaWxlIHRoZQo+IG1lbnUgY29tZXMgdXAuwqAgSSBj
YW4gYWxzbyBzZWUgdGhhdCB0aHJvdWdoIG9jciwgYnV0IEkgZ2V0IG5vIHNwZWVjaCB3aGVuCj4g
aW5zaWRlIHRoZSB2bS4gSSd2ZSBjaGVja2VkIHRvIG1ha2Ugc3VyZSB0aGUgc291bmQgY2FyZHMg
YXJlIGNvcnJlY3QsIGFueW9uZQo+IGhhdmUgYW55dGhpbmcgZWxzZSBJIGNhbiB0cnk/wqAgSSdt
IG5vdCBmaW5kaW5nIGFueSBkb2N1bWVudGF0aW9uIGFueXdoZXJlLAo+IHdoaWNoIGlzIHdoeSBJ
J20gYXNraW5nIGhlcmUuCj4KPiBNaWtlLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QK

