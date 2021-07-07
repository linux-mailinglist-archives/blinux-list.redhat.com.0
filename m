Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 27C243BE24B
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 07:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625634041;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RaWSBX3ixQcfP9xEiGWBtncN7ZqIvOJroVXqRl6MQPE=;
	b=HG6RdsLqephN2+7bpPrl6AM/5s28zF8qh4hIDjn9JjgTVTPW79UP9f4QxMMEfIvufsPeTF
	X6FB0AMibvN+3dTdF+zZtz75AWlZmQlY7R9S+T5I7GqlcF6h734iTwH7o62780B7HEIY0e
	/6pj0Qs2CY1rOVENRFeK8OVFTlS7Pc4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-56-68FWV7oQPf6iVlrF2ZiaYA-1; Wed, 07 Jul 2021 01:00:38 -0400
X-MC-Unique: 68FWV7oQPf6iVlrF2ZiaYA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5465E804142;
	Wed,  7 Jul 2021 05:00:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4CE1D1ABE6;
	Wed,  7 Jul 2021 05:00:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12E034EA2A;
	Wed,  7 Jul 2021 05:00:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16750Fj9022372 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 01:00:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D8CA020341D4; Wed,  7 Jul 2021 05:00:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D4A4820341D2
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 05:00:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA07280B91C
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 05:00:12 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-164-znAGD98wPim4H2Ce-hHcag-1; Wed, 07 Jul 2021 01:00:10 -0400
X-MC-Unique: znAGD98wPim4H2Ce-hHcag-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GKS0T3skwzS1g
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 01:00:09 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GKS0T34BLzcbc; Wed,  7 Jul 2021 01:00:09 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GKS0T2kRnzcbP
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 01:00:09 -0400 (EDT)
Date: Wed, 7 Jul 2021 01:00:09 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Suggestions for Linux laptop
In-Reply-To: <839C771A-8B53-4421-B972-83DAC5F8194E@yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2107070059440.695@panix1.panix.com>
References: <c690bab2-3bd7-e7f1-cd3f-ed2acfef85c5@hubert-humphrey.com>
	<839C771A-8B53-4421-B972-83DAC5F8194E@yahoo.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16750Fj9022372
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIG1hY2hpbmVzIGZyb20gdGhpbmtwZW5ndWluLmNvbSBjb21lIHdpdGggbGludXggYWxyZWFk
eSBsb2FkZWQuCgoKT24gVHVlLCA2IEp1bCAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgoKPiBObyBJIHdvdWxkIGJlIGxvYWRpbmcgTGludXggb24gaXQgbXlz
ZWxmLgo+Cj4gQXNobGV5Cj4KPiA+IE9uIEp1bCA2LCAyMDIxLCBhdCAxMTowNiBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4gPgo+ID4g77u/QXJlIHRoZXNlIG1hY2hpbmVzIGFscmVhZHkgbG9hZGVkIHdpdGggTGlu
dXg/IEkgdHJpZWQgYSBzeXN0ZW03NiBkaXN0cm8sIGJ1dCBmb3VuZCBpdCB3YXMgYSByZWFsIGNo
YWxsZW5nZSBnZXR0aW5nIGEgYmFjayBzcGFjZSBiZWVwIHRvIHdvcmsgaW4gYSBjb25zb2xlIGlu
IFRDU0guIEFsc28sIGF0IHRoYXQgdGltZSB3aGVuIHdlIHVwZ3JhZGVkIHRvIGtlcm5lbCA1LjEx
IEkgbG9zdCBzcGVha3VwLCBidXQgbm93IGl0cyBzb21lIG1vbnRocyBsYXRlciwgc28gbWF5YmUg
eW91IHdvdWxkIGhhdmUgYmV0dGVyIGx1Y2suCj4gPiBDaGltZQo+ID4KPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4KPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

