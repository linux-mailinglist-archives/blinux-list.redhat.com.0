Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE8C4BBC4E
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 16:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645198760;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HWm52GPmj86YiWhITHprZ4vV94A0JecSwu1KhOw/h6Y=;
	b=QDezFwObwHzSShsXu2GRKRoIYAr2stkVQudhVK8TAfRX51qXhyToXvsE4QHgdAbTb8ZCSO
	w1F+KoK+/a9BpLnTDkWr9J385B9s7Ss4s12tWAgEub1VZn7k1fDrskYxl72DrV1pZgqiFi
	xwo2jidMt6vDkMF5g362LCBjQoa/xVM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-pnJ1SvajPQaU7I_SWFNxHw-1; Fri, 18 Feb 2022 10:39:17 -0500
X-MC-Unique: pnJ1SvajPQaU7I_SWFNxHw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A4561100C609;
	Fri, 18 Feb 2022 15:39:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38EA97D73D;
	Fri, 18 Feb 2022 15:39:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F39484BB7C;
	Fri, 18 Feb 2022 15:39:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IFY3v5015953 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 10:34:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2DC825361F4; Fri, 18 Feb 2022 15:34:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 299835361FE
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:34:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10F921C068DE
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:34:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-526-SnvY37cJOFu1A_wQ2ZNzgQ-1; Fri, 18 Feb 2022 10:34:01 -0500
X-MC-Unique: SnvY37cJOFu1A_wQ2ZNzgQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K0bMY0pQ9z2vYl
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 10:34:01 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K0bMY160Jzcbc; Fri, 18 Feb 2022 10:34:01 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K0bMY118tzcbP
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 10:34:01 -0500 (EST)
Date: Fri, 18 Feb 2022 10:34:01 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
Message-ID: <ccd47c7a-c7cc-63c1-f22-770e9d950b8@panix.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21IFY3v5015953
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCBjb3VsZCBtZWFuIGRhbmllbCBuYXNoIGlzIHdvcmtpbmcgb24gdGhlIHByb2plY3QgYW5k
IHRvIHRyeSBhZ2FpbgpsYXRlci4gIEkndmUgaGFkIHRoYXQgaGFwcGVuIGFuZCBjb250YWN0ZWQg
RGFuaWVsIGFib3V0IGl0IGFuZCB0aGF0J3Mgd2h5CnRoYXQgaGFwcGVucy4KCgpPbiBGcmksIDE4
IEZlYiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBN
YWtlcyBhdCBsZWFzdCB0d28gb2YgdXMuwqAgVGhlIGluc3RhbGxlciBhbHdheXMgZm91bmQgaXRz
ZWxmIGxvb3BpbmcgYW5kCj4gcmVwZWF0aW5nIGZhaWxlZCBwYWNrYWdlIHJldHJpZXZhbC4KPgo+
Cj4KPiBDaGVlcnMsCj4KPgo+Cj4gRGF2ZQo+Cj4KPgo+Cj4gT24gMi8xNy8yMiAxMzoxMiwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+IEkgY291bGQgbmV2ZXIg
Z2V0IEplbnV4IHRvIHdvcmsgY29ycmVjdGx5IG9uIG15IHNldHVwLgo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

