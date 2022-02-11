Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AC84B2D14
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 19:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644605125;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LcLoaydCe58ejfEH/2SlPDIWylVBPR5BMOpFFcxYFhs=;
	b=EOjBMHUwRIfs8rNJ8bWuUYQfJByl4+I7FRtwKhyuL9PLU/EWYfD9ZIc4gUkmbdmygCVePy
	MmbYqzLw6D1GU9ij49vzdUlPZWHsXZiYR7h3ooeFBUs3wob4rk+YZGgV44yoW6DQFu8uCu
	nSDkR/gFMK+sL4Y+3hvYmd4Bjg3sdAs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-q-87Ox4cNGyOFFECKPz4LA-1; Fri, 11 Feb 2022 13:45:21 -0500
X-MC-Unique: q-87Ox4cNGyOFFECKPz4LA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CB77760C0;
	Fri, 11 Feb 2022 18:45:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A55A778AA2;
	Fri, 11 Feb 2022 18:45:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3EB731809C87;
	Fri, 11 Feb 2022 18:45:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BIgUPo012083 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 13:42:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A1C7C40F5E84; Fri, 11 Feb 2022 18:42:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E39F40F5E80
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 18:42:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 39D573C00114
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 18:42:28 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-39-RkEki9LdO6ei17ac4TfbZQ-1;
	Fri, 11 Feb 2022 13:42:15 -0500
X-MC-Unique: RkEki9LdO6ei17ac4TfbZQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7C8C520D84
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 18:42:03 +0100 (CET)
Message-ID: <83b15bfd-98f0-01fa-746b-538657b214e1@slint.fr>
Date: Fri, 11 Feb 2022 19:42:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.0
Subject: Re: Launching a GUI Web browser and Orca from a console?
To: blinux-list@redhat.com
References: <c96e82a-bc5-2072-f11d-f1facb919cf2@brandt-slint.local>
In-Reply-To: <c96e82a-bc5-2072-f11d-f1facb919cf2@brandt-slint.local>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21BIgUPo012083
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQnJhbmR0LAoKSSB0cmllZCB0aGlzOgoxLiBjcmVhdGUgYSBmaWxlICJjb21tYW5kIiB3aXRo
IHRoaXMgY29udGVudDoKCm9yY2Etb24Kb3JjYSAmCmZpcmVmb3gKClRoZW4gSSB0eXBlZCBmcm9t
IGEgdHR5OgoKeHZmYi1ydW4gc2ggY29tbWFuZAoKSSBjb3VsZCBoZWFyIG9yY2Egc3RhcnQgYW5k
IHByZXNlbnQgdGhlIGZpcmVmb3ggd2luZG93IGJ1dCBkbyBub3Qga25vdyBhIHdheSB0bwppbnRl
cmFjdCB3aXRoIGZpcmVmb3ggZnJvbSB0aGUgdHR5Li4uCgpUaGVyZSBpcyB0aGUgU2VsZW5pdW0g
cHJvamVjdDogaHR0cHM6Ly93d3cuc2VsZW5pdW0uZGV2L2RvY3VtZW50YXRpb24vCmFuZCB5b3Ug
Y2FuIGluc3RhbGwgdGhlIFB5dGhvbiBsYW5ndWFnZSBiaW5kaW5ncyBmb3IgU2VsZW5pdW0gV2Vi
RHJpdmVyIHR5cGluZwphcyByb290OgpzbGFwdC1zcmMgLWkgc2VsZW5pdW0KYnV0IHRoaXMgaXMg
bW9yZSB0byBidWlsZCB0ZXN0cyBvZiBicm93c2VyIGludGVyYWN0aW9ucywgbm90IHJlYWxseSB3
aGF0IHlvdSBhcmUKYWZ0ZXIuLi4gCQoKQ2hlZXJzLAoKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIK
U2xpbnQgbWFpbnRhaW5lcgoKTGUgMTEvMDIvMjAyMiDDoCAxNzozMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIGFsbCwKPiAKPiBJIGtub3cgdGhp
cyBpcyBkb2FibGUsIGJ1dCBoYXZlIG5ldmVyIGFjdHVhbGx5IGRvbmUgaXQgbXlzZWxmLgo+IAo+
IEkgYW0gbG9va2luZyBmb3IgZWl0aGVyIGEgc2NyaXB0LMKgIG9yIHRoZSBpbmZvIEkgbWF5IG5l
ZWQgdG8gd3JpdGUgbXkgb3duLCB0bwo+IGxhdW5jaCBhbnkgb2YgbXkgR1VJIHdlYiBicm93c2Vy
cyB3aXRoIE9yY2EsIHdpdGhvdXQgYWN0dWFsbHkgc3RhcnRpbmcgdXAgYQo+IGRlc2t0b3AsIE1h
dGUsIEdub21lLCBldGMsIG9yIGZpcnN0IHN0YXJ0aW5nIHVwIGEgV00sIHdlYXRoZXIgRmx1eGJv
eCBvciByYXRwb2lzb24uCj4gCj4gSWYgYW55b25lIGNvdWxkIHBsZWFzZSBwb2ludCBtZSBpbiBh
IGRpcmVjdGlvbiwgSSdkIGFwcHJlY2lhdGUgaXQuCj4gCj4gSSBhY3R1YWxseSBuZWVkIHRoaXMg
Zm9yIHdvcmssIG15IGNsaWVudHMgbGlrZSBjYWxsaW5nIG9uIEdvb2dsZSBEdW8uIFdoeSwgSQo+
IGhhdmUgbm8gaWRlYSEKPiAKPiBXYXJtIHJlZ2FyZHMsCj4gCj4gQnJhbmR0IFN0ZWVua2FtcAo+
IAo+IFNlbnQgZnJvbSB0aGUgU2xpbnQgY29uc29sZSB1c2luZyBBbHBpbmUKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

