Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6B1623E8A1A
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 08:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628662441;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ykS15o7Cv0+UxWdROuaQSIJiBXpRjx3nlMDdjGVKqaA=;
	b=TBXu09Dl8op3JRnDDTrWZLP25ti3joHhrHgx/6U7GqIijs7H6ZXtsrDCVJ1soPep5Y8LnE
	qPGaNR0L+Tn00OAeu71Zu68Dtqm9repO0NdGgmcOMTmeuj+eQzE1+5t22p1OCvK3QiaEwq
	gqoCWb0624npO8Umc3r5L6zR6e/siO0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547-lJrCgLByP92FRWMed4bgJA-1; Wed, 11 Aug 2021 02:13:59 -0400
X-MC-Unique: lJrCgLByP92FRWMed4bgJA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5FD0C801AE7;
	Wed, 11 Aug 2021 06:13:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 166DC69CBB;
	Wed, 11 Aug 2021 06:13:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 537171819AC9;
	Wed, 11 Aug 2021 06:13:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17B64iL5002463 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Aug 2021 02:04:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8D3DD10D18D5; Wed, 11 Aug 2021 06:04:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87FDB10D18D8
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 06:04:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2B971857F00
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 06:04:41 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-277--PyBe_-WONiwiRZJbjEPnA-1;
	Wed, 11 Aug 2021 02:04:39 -0400
X-MC-Unique: -PyBe_-WONiwiRZJbjEPnA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C88C1A39CC
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 06:04:31 +0200 (CEST)
Subject: I can't answer to someone anonymous (was: Re: Help, I need a Windows
	VM for my work)
To: blinux-list@redhat.com
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
	<f791451d-27c3-b6df-2294-4346caed0107@gmail.com>
Message-ID: <6016bdff-564b-90a3-836b-b2d82a124f0b@slint.fr>
Date: Wed, 11 Aug 2021 08:04:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <f791451d-27c3-b6df-2294-4346caed0107@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17B64iL5002463
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8sCgpTZXZlcmFsIG1lc3NhZ2VzIGhhdmUgYmVlbiBzZW50IHRvIHRoZSBsaXN0LCBxdW90
ZWQgYmVsb3csIGJ1dCBJIGRvbid0IAprbm93IGJ5Cndob20gYXMgdGhpcyBsaXN0IGhpZGVzIHRo
ZSBzZW5kZXIncyBuYW1lIGFuZCBlbWFpbCBhZGRyZXNzLgoKU28sIGlmIHlvdSB3YW50IGFuIGFu
c3dlciBmcm9tIG1lLCBwbGVhc2UgaW5kaWNhdGUgeW91ciBuYW1lIGFuZCBlbWFpbCAKYWRkcmVz
cwppbiB0aGUgYm9keSBvZiB5b3VyIG1lc3NhZ2UsIGFzIEkgYW0gZG9pbmcgaW4gdGhpcyBvbmUg
a25vd2luZyB0aGF0IAooZG90KSBpcyB0bwpiZSByZXBsYWNlZCBieSAuIGFuZCAoYXQpIGJ5IEAg
YW5kL29yIHNlbmQgYWxzbyB5b3VyIG1lc3NhZ2VzIHRvIG15IGVtYWlsCmFkZHJlc3MgSSBiZWxv
dy4KCkkgY2FuJ3Qgc2VuZCBwcml2YXRlbHkgc29tZXRoaW5nIHRvIHNvbWVvbmUgd2hvc2UgSSBk
b24ndCBrbm93IHRoZSBlbWFpbAphZGRyZXNzIQoKRGlkaWVyCkRpZGllciBTcGFpZXIKU2xpbnQg
bWFpbnRhaW5lcgpkaWRpZXIgKGF0KSBzbGludCAoZG90KSBmcgoKTGUgMTEvMDgvMjAyMSDDoCAw
NTowMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IGhv
dyBkbyB5b3UgZ2V0IGNvbnRyb2wgdG8gdGhlIHZtIGZyb20gdGhlIGhvc3Q/CgogPiBhbHNvIEkg
ZGlkbid0IHNlZSB0aGUgc2NyaXB0IGF0dGFjaGVkIGNhbiB5b3UgcmVzZW5kIGl0IHRvIG1lIHBs
ZWFzZT8KID4gT24gOC8xMC8yMDIxIDY6NTkgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6CgogPiBjYW4geW91IHNlbmQgcHJpdmF0ZWx5IHBsZWFzZSBpdCBkaWRu
J3QgYXR0YWNoCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

