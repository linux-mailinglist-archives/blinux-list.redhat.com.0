Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8E8AA3F528A
	for <lists+blinux-list@lfdr.de>; Mon, 23 Aug 2021 23:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629752643;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qjQMkjligIkqNRL5k2Q1dyVUmMTrhjb1K1YZi8mRrX0=;
	b=Zx0Tde/DO3SWu4CPHZKYQ0ITzG8QMEc1c0jBCCNhPxNc8jXcW0ln0ip3FuAe3fz3lbq/Os
	aBPQIiwek1+NislkYR22e1kDTl2Fj5otqzrv1DipOlwa11URk2q6EIlcVN2wNa//IjLKMy
	5W88L56dC22fQ/JK6iIPePS4Hrb6Hbs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-598-Ib0haI4iOdCCu2qinI2Gjg-1; Mon, 23 Aug 2021 17:04:01 -0400
X-MC-Unique: Ib0haI4iOdCCu2qinI2Gjg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03B77809CD8;
	Mon, 23 Aug 2021 21:03:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 72C9810016FF;
	Mon, 23 Aug 2021 21:03:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 39C3B4BB7C;
	Mon, 23 Aug 2021 21:03:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17NL3s8E018497 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Aug 2021 17:03:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4A0C8200D8E6; Mon, 23 Aug 2021 21:03:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45FFB201B09C
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 21:03:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4E9D80B71E
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 21:03:43 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-237-PC34AgDgOk2JapChg6XcFQ-1; Mon, 23 Aug 2021 17:03:41 -0400
X-MC-Unique: PC34AgDgOk2JapChg6XcFQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Gtl8Y0bNyz47Ck;
	Mon, 23 Aug 2021 17:03:41 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Gtl8X6rgXzcbc; Mon, 23 Aug 2021 17:03:40 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Gtl8X6QvMzcbP;
	Mon, 23 Aug 2021 17:03:40 -0400 (EDT)
Date: Mon, 23 Aug 2021 17:03:40 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>,
	orca-list@gnome.org
Subject: Re: Ubuntu 21.10 (Canary) installer inaccessible?
In-Reply-To: <f365db53-fc4b-3e7b-e816-a1a0cfd59ab6@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108231703110.4256@panix1.panix.com>
References: <f365db53-fc4b-3e7b-e816-a1a0cfd59ab6@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17NL3s8E018497
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QSBXLkEuRy4gaGVyZSwgdHJ5IGFsdC1iIGFsdC1uIGFuZCBhbHQtYy4KCgpPbiBNb24sIDIzIEF1
ZyAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBIZWxs
byEKPgo+Cj4gSSBncmFiYmVkIHRoaXMsIHRvZGF5LCBhbmQgdHJpZWQgdG8gZ2l2ZSBpdCBhIHNw
aW4uwqAgSXQgbG9va3MgbGlrZSB0aGV5J3ZlCj4gcmVwbGFjZWQgdWJpcXVpdHkgKHRoZSBvbGQg
aW5zdGFsbGVyKSwgbWF5YmUgd2l0aCB0aGF0IG5ldyBGbHV0dGVyLWJhc2VkIG9uZT/CoAo+IEkg
Y2Fubm90IGdldCBwYXN0IHRoZSBsb2NhbGUgc2VsZWN0b3IuwqAgT3JjYSBjYW4gcmVhZCB0aGUg
bmFtZSBvZiBlYWNoIGl0ZW0sCj4gYW5kIHNheXMgImZyYW1lIGdyYXllZCIsIGFmdGVyIHRoZSBu
YW1lLsKgIFRoZXJlIHNlZW1zIHRvIGJlIG5vIHdheSB0byBzZWxlY3QKPiB0aGVzZSB0aGluZ3Ms
IHVzaW5nIHRoZSBrZXlib2FyZC7CoCBXaGF0J3MgbW9yZSwgSSBjYW4ndCBmaWd1cmUgaG93IHRv
IGdldCBvdXQKPiBvZiB0aGUgcGlja2Vycy4gRmxhdCByZXZpZXcgc2hvd3Mgbm90aGluZyB1c2Vm
dWwuwqAgSSBndWVzcyB0aGVyZSBhcmUgImJhY2siLAo+ICJuZXh0IiwgYW5kICJjYW5jZWwiIGJ1
dHRvbnMgb3V0c2lkZSB0aGUgcGlja2Vycz/CoCBJZiBzbywgaG93IGNhbiBJIGdldCB0bwo+IHRo
ZW0/Cj4KPgo+Cj4gVGhhbmtzLAo+Cj4KPgo+IERhdmUKPgo+Cj4KPgo+CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

