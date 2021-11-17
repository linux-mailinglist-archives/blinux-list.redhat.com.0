Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA22453C93
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 00:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637104353;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PQ0T9/v2XzVwG+gUGjmlURFHcF/6a9eAZ0Ii2Ty4+HE=;
	b=eZnQ0QAiArv6UzHTslk+uHN/tkgw+RZe19vJyIai3vE4VVAYWZ8yTN1w9I69b+2PDev9U3
	Y6qCzg6OS5geP9K2vs3ShvAuj2UgiPsoGC//WLnJ08uaoveblJsprn6Rg4GsCOHUuK35yJ
	E+qkN2DulgoxA3HGQRKOQ1tMUiX5Hno=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-489-yZdIW3IjOC67idJvv1XcWQ-1; Tue, 16 Nov 2021 18:12:29 -0500
X-MC-Unique: yZdIW3IjOC67idJvv1XcWQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0948B1B2C980;
	Tue, 16 Nov 2021 23:12:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 88C5B5D6D5;
	Tue, 16 Nov 2021 23:12:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4FE584A703;
	Tue, 16 Nov 2021 23:12:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGNCKip020765 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 18:12:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8515C2026D46; Tue, 16 Nov 2021 23:12:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80DDC2026D60
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:12:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCECB185A794
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:12:17 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-604-qdzBiUC1MXGYlHDh4ItjQg-1;
	Tue, 16 Nov 2021 18:12:15 -0500
X-MC-Unique: qdzBiUC1MXGYlHDh4ItjQg-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0EDC3A3828
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 22:11:37 +0100 (CET)
Message-ID: <434ecf83-5f19-cafd-22ff-2c05cd388068@slint.fr>
Date: Wed, 17 Nov 2021 01:12:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Correcting an sd-card?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
In-Reply-To: <8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AGNCKip020765
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WWVzLCB1biBtb3VudCB0aGUgcGFydGl0aW9uIGZpcnN0LgoKRGlkaWVyCgpMZSAxNy8xMS8yMDIx
IMOgIDAwOjA2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6
Cj4gVGhhbmsgeW91IERpZGllci1hbmQtS3lsZS4gSSB3aWxsIGNlcnRhaW5seSBydW4geW91ciBj
b21tYW5kLCBidXQgZG8gSSAKPiBuZWVkIHRvIHVuIG1vdW50IGFueXRoaW5nPyBJIHdvdWxkIGFs
c28gZmlndXJlIEkgd291bGQgYmUgc2l0dGluZyAKPiBvdXRzaWRlIG9mIHRoYXQgbWRlaWEgZGly
ZWN0b3J5PyBPLWFuZC15ZXMsIERpZGllciwgaXQgaXMgdmZhdC4KPiBDaGltZQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

