Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 150BD493E7D
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jan 2022 17:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642610607;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=h43P04lSY25X34LBadU0UBIpMj68KyNCpMxloPGnkeQ=;
	b=O05PVIXmJhcgIEa+iQAy4918iH0NOHkdDy+0PVm0pkkF8b2GoLgU58ofVDkY4zinTZn8R1
	qmZiEE0mB1WHniljlpIdXbOjtrvYTFjycGtwVfudNcDbTh5E0ASdzgdch5J7ZfBJz/dlpV
	JOYFO0K709IzKQ756MS+eBRhI/kY4Lo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-527-mTMRPhLWNn-ql6VXqOdrkw-1; Wed, 19 Jan 2022 11:43:18 -0500
X-MC-Unique: mTMRPhLWNn-ql6VXqOdrkw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C3E91091DA1;
	Wed, 19 Jan 2022 16:43:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C9D626E73;
	Wed, 19 Jan 2022 16:43:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E88324BB7C;
	Wed, 19 Jan 2022 16:43:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20JGh4qm032464 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 11:43:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C2A09112131B; Wed, 19 Jan 2022 16:43:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEA5F1121314
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 16:43:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1605B3C1463D
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 16:43:01 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-266-TmFN9YQrPaSdrJJcWfuErg-1;
	Wed, 19 Jan 2022 11:42:58 -0500
X-MC-Unique: TmFN9YQrPaSdrJJcWfuErg-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4BEF720303
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 16:42:54 +0100 (CET)
Message-ID: <087524c6-7514-47a7-b6fd-93254535f90c@slint.fr>
Date: Wed, 19 Jan 2022 17:42:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: starting out with linux
To: blinux-list@redhat.com
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
	<alpine.DEB.2.11.2201191740180.1250@debian.work>
In-Reply-To: <alpine.DEB.2.11.2201191740180.1250@debian.work>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20JGh4qm032464
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW4gRGViaWFuLCBJIHRoaW5rIHRoYXQgdGhlIGNvbnNvbGUgZm9udCBhbmQga2V5Ym9hcmQgbGF5
b3V0IChib3RoIGZvciBYIGFuZCB0aGUKY29uc29sZSkgYXJlIG1hbmFnZWQgdGhyb3VnaCB0aGUg
Y29uc29sZS1zZXR1cCBhbiBrZXlib2FyZCBhcHAsIHNlZSB0aGVpcgpyZXNwZWN0aXZlIG1hbiBw
YWdlLgoKQ2hlZXJzLApEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCgpM
ZSAxOS8wMS8yMDIyIMOgIDE2OjQ0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IGEgw6ljcml0wqA6Cj4gT24gVHVlLCAxOCBKYW4gMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiAKPj4gQSBwZXJzaXN0ZW50IGtleW1hcCBjYW4gYmUgc2V0
IGluIC9ldGMvdmNvbnNvbGUuY29uZiwgd2hpY2ggaXMgcmVhZCBieSBzeXN0ZW1kCj4gCj4gRm9y
IHdoYXQgaXQncyB3b3J0aCwgRGViaWFuIGRvZXNuJ3QgaGF2ZSB0aGlzIGZpbGUgb3IgbWFucGFn
ZSBlaXRoZXIsIGFuZCBpdAo+IGRvZXMgdXNlIHN5c3RlbWQuCj4gCj4gSXQgc2VlbXMgdGhpcyBm
dW5jdGlvbmFsaXR5IGlzIGNvdmVyZWQgaW4gRGViaWFuIGJ5IC9ldGMvZGVmYXVsdC9rZXlib2Fy
ZAo+IAo+IFRoZSBrZXlib2FyZCg1KSBtYW5wYWdlLCBzdWNoIGFzIGl0IGlzLCBzZWVtcyB0byBz
dWdnZXN0IHRoYXQgdGhlcmUncyBub3QgbXVjaAo+IGRvY3VtZW50YXRpb24gZm9yIHRoaXMsIGJ1
dCB0aGF0IGl0IGRvZXMgYWZmZWN0IGJvdGggdGhlIGNvbnNvbGUgYW5kIFguCj4gCj4gSFRILAo+
IEdlb2ZmLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

