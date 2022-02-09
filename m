Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 470DE4AF4F6
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 16:17:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644419855;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x60bcfSeBaJNXqd7VCRZW3JpaZE4k76G2c7EiJT4qiA=;
	b=J1FVDE44Vn+jPko2innKlM1shYRESkA4YLE9j0lc06xc4xAt85qxBpjuBefkPqe8GUtOrf
	9Fdg4m5sNSzlJDJPSZwKPje6dDhpeM1QiIybPwyYuaWlcigi80OjKy0AHxDsHD7S1Erq0w
	nQP0BO2duPcJ/uY8XorweWNqoYrFvPY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-hQp45UBuPLWllbkl1l807A-1; Wed, 09 Feb 2022 10:17:31 -0500
X-MC-Unique: hQp45UBuPLWllbkl1l807A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 49D112F26;
	Wed,  9 Feb 2022 15:17:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 322177CAD4;
	Wed,  9 Feb 2022 15:17:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0DA961809CB8;
	Wed,  9 Feb 2022 15:17:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219FHPcX008983 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 10:17:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 46D2CC01784; Wed,  9 Feb 2022 15:17:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 432CBC080AF
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 15:17:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28F95800B29
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 15:17:25 +0000 (UTC)
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
	[185.70.40.133]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-259-Hn7JUzfHMnul9i8A1ywOCw-1; Wed, 09 Feb 2022 10:17:23 -0500
X-MC-Unique: Hn7JUzfHMnul9i8A1ywOCw-1
Date: Wed, 09 Feb 2022 15:17:13 +0000
To: blinux-list@redhat.com
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
Message-ID: <da2dd400-8055-3777-60a3-89c1b8a34df5@protonmail.com>
In-Reply-To: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
References: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219FHPcX008983
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gZ3V5cywKCm1heSBiZSBhIHNsaWdodGx5IE9UIHF1ZXN0aW9uLCBidXQgd2hlbiB0aGVy
ZSBpcyBhbHJlYWR5IGEgZGlzY3Vzc2lvbgphYm91dCB3aW5kb3cgbWFuYWdlcnMuLi4KCgpXaGF0
J3MgYW4gYWR2YW50YWdlIG9mIHVzaW5nIHRoZXNlIGFsdGVybmF0aXZlIFdNcz8KCkJlIGl0IFJh
dHBvaXNvbiwgSTMgb3Igc29tZXRoaW5nIGVsc2UuCgpDYW4gdGhleSBkbyBzb21ldGhpbmcgdGhh
dCBNYXJjbyAodGhlIE1hdGUgV00pIGNhbiBub3Q/CgoKQmVzdCByZWdhcmRzCgoKUmFzdGlzbGF2
CgoKRMWIYSA3LiAyLiAyMDIyIG8gMTk6NDkgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiBuYXDDrXNhbChhKToKPiBIaSBhbGwsCj4KPgo+IFRoZSBzdWJqZWN0IGVuY29tcGFzc2Vk
IGJhc2ljYWxseSBhbGwgSSB3YW50ZWQgdG8ga25vdy4KPgo+Cj4gSSByZW1lbWJlciBhIHdoaWxl
IGFnbyBzb21lb25lIGJ1aWx0IGEgdGFsa2luZyBhcmNoIGluc3RhbGxlciB1c2luZyB0aGUKPiBl
emFyY2ggc2NyaXB0cy4gT24gdGhlaXIgcGFnZSB0aGV5IGxpc3RlZCBpMyBhcyBhbiBhY2Nlc3Np
YmxlIG9wdGlvbiwKPiBidXQgSSBjb3VsZCBuZXZlciBnZXQgdGhlIHRoaW5nIHRvIGluc3RhbGwg
b24gYSBWTSwgYW5kIGF0IHRoZSB0aW1lIEkKPiB3YXNuJ3QgZ29pbmcgdG8gYnJlYWsgbXkgV2lu
ZG93cyBpbnN0YWxsIHRvIHRlc3QgaXQuIE5vdywgbWF5YmUsIGJ1dCBJCj4gY2Fubm90IGZvciB0
aGUgbGlmZSBvZiBtZSByZW1lbWJlciB3aGF0IHRoYXQgcHJvamVjdCB3YXMgY2FsbGVkLgo+Cj4K
PiBJZiBhbnlvbmUgZ290IGFueSB0aWxpbmcgV00gc2V0dXBzLCBiZXNpZGVzIHJhdHBvaXNvbiB0
byB3b3JrIGFzIHRoZXkKPiBzaG91bGQsIHBsZWFzZSBsZXQgbWUga25vdy4KPgo+Cj4gSSByZWFs
bHkgbG92ZSB0aGUgd2F5IHJhdHBvaXNvbiBkb2Vzbid0IHNsb3cgdGhpcyBtYWNoaW5lIGRvd24g
YXQgYWxsLgo+Cj4gLS0KPiBXYXJtIHJlZ2FyZHMsCj4KPiBCcmFuZHQgU3RlZW5rYW1wCj4KPiBT
ZW50IGZyb20gdGhlIFNsaW50IG1hY2hpbmUgdXNpbmcgVGh1bmRlcmJpcmQKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

