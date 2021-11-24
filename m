Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A3E45CF5A
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 22:40:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637790049;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NnQk03mO1tyAFFHsIrae3eszKLYzemkctumNIhxKRIg=;
	b=dVUiwezcu8iku/Vw900K2X3wx5uGSB8VdUXhUSQnvR7S4TPCejnbzS4TuER2M9xbW1AzJe
	1YgvZcHtQFnWeeKO9poDgU5/V6sPnxNo15UdNT17W1cAVwGbrepY835wW1Xn/iondN6UP4
	27ua7d+jO8TQcMuC2cp3g91jv02iGcA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591--s6bTF77O_K4qEsI5KrPhA-1; Wed, 24 Nov 2021 16:40:46 -0500
X-MC-Unique: -s6bTF77O_K4qEsI5KrPhA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B4F8835B8F;
	Wed, 24 Nov 2021 21:40:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F49A5D9CA;
	Wed, 24 Nov 2021 21:40:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 410504BB7C;
	Wed, 24 Nov 2021 21:40:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOLeSim024168 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 16:40:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 668D71121315; Wed, 24 Nov 2021 21:40:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 601E51121314
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 21:40:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 550228011A5
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 21:40:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-461-1vecHTjPPDyk8UKSy7TAVw-1; Wed, 24 Nov 2021 16:40:23 -0500
X-MC-Unique: 1vecHTjPPDyk8UKSy7TAVw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HzvYz0Zztz3nhd
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:40:23 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HzvYz013Nzcbc; Wed, 24 Nov 2021 16:40:22 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HzvYy6kfrzcbW
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:40:22 -0500 (EST)
Date: Wed, 24 Nov 2021 16:40:22 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora and virtual machines not starting
In-Reply-To: <7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111241639280.13300@panix1.panix.com>
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AOLeSim024168
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q291bGQgaXQgYmUgcHJvdmlzaW9uaW5nIGlzIHRlbXBvcmFyeSB1bmxlc3MgY29uZmlndXJlZCB0
byBiZSBwZXJtYW5lbnQ/CgoKT24gV2VkLCAyNCBOb3YgMjAyMSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGksCj4KPgo+IEkgaGF2ZSB0aGlzIHNhbWUgcHJv
YmxlbSB3aXRoIHZtd2FyZSBpbiBtYWMgb3Mgc28geW91IGFyZSBub3QgYWxvbmUuwqAgSSBoYXZl
Cj4gdHJpZWQgdmlydHVhbCBib3gsIGJ1dCBldmVyeXRpbWUgSSB0cnkgdG8gZml4IHRoZSBwcm9i
bGVtIG9mIHRoZSB2Ym94Cj4gZXh0ZW50aW9uIG5vdCB3b3JraW5nIGl0IG9ubHkgd29ya3MgZm9y
IGEgc2hvcnQgdGltZSBhbmQgc28gSSBqdXN0IGdhdmUgdXAgb24KPiBpdC4KPgo+Cj4gTWF0dGhl
dwo+Cj4KPgo+IE9uIDExLzI0LzIxIDEwOjI1IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+ID4gU28uLi5kZWNpZGVkIHRvIGdpdmUgRmVkb3JhIGEgc2hvdCBp
biBhIFZNLgo+ID4KPiA+IEknbSB1c2luZyB0aGUgcXVpY2tlbXUvcWVtdSBzZXR1cCBhbmQgZ290
IHRoZSBNYXRlIHNwaW4uCj4gPgo+ID4gTXkgaXNzdWU/IEl0IHN0YXJ0cyB1cCBmaW5lLCBidXQg
ZG9lc24ndCBicmluZyBPcmNhIHVwIGF0IGFsbC4KPiA+Cj4gPiBBbHQrRjIgYW5kIHR5cGluZyBv
cmNhIGRvZXNuJ3Qgd29yawo+ID4gQWx0K3N1cGVyK1MgZG9lc24ndCB3b3JrCj4gPgo+ID4gU28s
IGRpZCBJIG1pc2NvbmZpZyB0aGUgcWVtdSBzZXR0aWluZ3Mgc29tZWhvdyBvcj8KPiA+Cj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPgo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

