Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E6D4BBFAD
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 19:41:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645209710;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5QcIG4HpjAC0xbkBFKOw9rS8T7CsR9oJKIFPoy50kWk=;
	b=hvCzuTwQ49QytiNvugkb4DVxHOGGL/5vTku/5+Bj8bN+/4sF1zLoFUbbFDV6LrZzmu8c92
	eCFeAc83J/5SiZ5n6unmc15ve7sJG/+PMmQVeonMJO1/UeZ2hci550ydbqdwtn6BvZd6io
	n4eDmBBmnbuv6LFQ5gbwdoWtZdIoWeM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-589-6yHaWWc-POOc3tg8aVHXdA-1; Fri, 18 Feb 2022 13:41:47 -0500
X-MC-Unique: 6yHaWWc-POOc3tg8aVHXdA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AFCF184DA41;
	Fri, 18 Feb 2022 18:41:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8041D78AAD;
	Fri, 18 Feb 2022 18:41:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E8374BB7B;
	Fri, 18 Feb 2022 18:41:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IIfM1L030194 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 13:41:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6D55E5361DF; Fri, 18 Feb 2022 18:41:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 690675361D0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 18:41:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 50E00801E8D
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 18:41:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-142-CDKSvXXUMZOomNI1ArYmiA-1; Fri, 18 Feb 2022 13:41:20 -0500
X-MC-Unique: CDKSvXXUMZOomNI1ArYmiA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K0gWh1cHVzG0q
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 13:41:20 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K0gWh18zJzcbc; Fri, 18 Feb 2022 13:41:20 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K0gWh0qK8zcbC
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 13:41:20 -0500 (EST)
Date: Fri, 18 Feb 2022 13:41:19 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
Message-ID: <b4ac119d-cdf-7148-bc49-ab67e2ee751b@panix.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
	<05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
	<ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
	<98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21IIfM1L030194
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

SGF2ZSB5b3UgdHJpZWQgcnVubmluZyBzdGFydHggdG8gdHVybiBvcmNhIG9uPyAgWW91IG1heSBm
aW5kIHRoYXQgd29ya3MuCgoKT24gRnJpLCAxOCBGZWIgMjAyMiwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gU29tZXRpbWVzIGl0IHdvdWxkIGZpbmlzaCB0aGUg
aW5zdGFsbCwgdGhlbiByZWJvb3QsIGFuZCBjb21lIHVwIHNwZWFraW5nIHdpdGgKPiBGZW5yaXIg
d2l0aCBhIHZlcnkgYW5ub3lpbmcgdm9pY2UsIGVzcGVjaWFsbHkgaWYgeW91LCBsaWtlIG1lIGlz
IGxlZ2FsbHkKPiBkZWFmYmxpbmQsIHRoZW4gYWZ0ZXIgdHlwaW5nIHlvdXIgdXNlcm5hbWUgYW5k
IHBhc3N3b3JkLCBGZW5yaXIgd291bGQganVzdCBkaWUKPiBhbmQgeW91IGFyZSBzdHVjaywgSSBr
bm93IGl0J3MgYSBkZXNrdG9wIGVudmlyb25tZW50LCBidXQgbm90aGluZyB0dXJucyBvcmNhCj4g
b24uCj4KPgo+IFNvIG11Y2ggZm9yIGFuIGFjY2Vzc2libGUgZGlzdHJvLgo+Cj4KPiBUaGlzIGlz
IHdoeSBJIGxvdmUgU2xpbnQuIEl0IGRvZXMgZXhhY3RseSB3aGF0ICJ5b3UiLCB0ZWxsIGl0IHRv
IGRvLCBub3QgdGhlCj4gZGV2Lgo+Cj4KPiBObyBkaXNyZXNwZWN0IHRvIE1yLiBOYXNoLCBJJ20g
c3VyZSBoZSdzIGEgcGVyZmVjdGx5IG5pY2UgZ3V5LCBub3QgdGhhdCBJJ3ZlCj4gZXZlciBzcG9r
ZW4gdG8gaGltIHRob3VnaC4KPgo+IFdhcm0gcmVnYXJkcywKPgo+IEJyYW5kdCBTdGVlbmthbXAK
Pgo+IFNlbnQgZnJvbSB0aGUgU2xpbnQgbWFjaGluZSB1c2luZyBUaHVuZGVyYmlyZAo+Cj4gT24g
MjAyMi8wMi8xOCAxNzoxMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiA+IE1ha2VzIGF0IGxlYXN0IHR3byBvZiB1cy7CoCBUaGUgaW5zdGFsbGVyIGFsd2F5cyBm
b3VuZCBpdHNlbGYgbG9vcGluZyBhbmQKPiA+IHJlcGVhdGluZyBmYWlsZWQgcGFja2FnZSByZXRy
aWV2YWwuCj4gPgo+ID4KPiA+Cj4gPiBDaGVlcnMsCj4gPgo+ID4KPiA+Cj4gPiBEYXZlCj4gPgo+
ID4KPiA+Cj4gPgo+ID4gT24gMi8xNy8yMiAxMzoxMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiA+PiBJIGNvdWxkIG5ldmVyIGdldCBKZW51eCB0byB3b3JrIGNv
cnJlY3RseSBvbiBteSBzZXR1cC4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

