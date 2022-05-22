Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D70635303B1
	for <lists+blinux-list@lfdr.de>; Sun, 22 May 2022 17:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653231745;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QscJ4d2MbQYyJ2GtTgxfZe11YUwxpAxg6Me5zcb5wgY=;
	b=fHOHMK8YkU+SD8tq4BRZHFOS9PusAWqLSilrjzODe4Jk/bKPcVkmSvi57c9ygId+owxdvt
	Rvi6z4dmqgHWh9EpjE+Q29dmTY4MzyZTad+QNtsiDsziqvIft2S8w4zejjUH7SI7hK/YUO
	Fj+V0lPVEa5NJAVBWzYzc67W6CpdMgk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-615-AG_gL2dHMwiaktaSjb8VrA-1; Sun, 22 May 2022 11:02:24 -0400
X-MC-Unique: AG_gL2dHMwiaktaSjb8VrA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9F84F101A52C;
	Sun, 22 May 2022 15:02:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 558CC7774;
	Sun, 22 May 2022 15:02:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BEEE8194705D;
	Sun, 22 May 2022 15:02:16 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 22 May 2022 17:01:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: Giving openSuse tumbleweed a go
To: blinux-list@redhat.com
References: <mailman.15948.1652860103.111201.blinux-list@redhat.com>
In-Reply-To: <mailman.15948.1652860103.111201.blinux-list@redhat.com>
Message-ID: <mailman.17191.1653231735.111210.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQnJhbmR0LAoKb3BlblNVU0UgVHVtYmxld2VlZCBpcyBhIHZlcnkgZ29vZCBkaXN0cmlidXRp
b24gd2l0aCBhIGdvb2QgZG9jdW1lbnRhdGlvbiBACmh0dHBzOi8vZG9jLm9wZW5zdXNlLm9yZy8g
KGFsdGhvdWdoIG5vdCBmb3IgVHVtYmxld2VlZCBzcGVjaWZpY2FsbHkpIGFuZCBtb3N0CmExMXkg
c29mdHdhcmUgYXJlICBlYXNpbHkgaW5zdGF5bGVkLCBob3dldmVyIEkgYW0gbm90IHN1cmUgdGhh
dCB0aGVpciBpbnN0YWxsZWQKYmUgYWNjZXNzaWJsZS4gRGlkIHlvdSB0cnk/IElmIFllcyBpZiB0
aGVpciBkZWZhdWx0IEtERSBkZXNrdG9wIGZ1bGx5IGFjY2Vzc2libGU/CgpOb3cgYmFjayB0byB3
b3JrIG9uIHRoZSBsb25nIG92ZXJkdWUgbmV3IFNsaW50IGluc3RhbGxlciA7KQoKQ2hlZXJzLApE
aWRpZXIKCkxlIDE4LzA1LzIwMjIgw6AgMDk6NDgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBhbGwsCj4gCj4gU2VlaW5nIHRoYXQgSSBjYW5ub3Qg
Z2V0IE9yY2EgdG8gdGFsayBhdCB0aGUgRmVkb3JhIDM2IGluc3RhbGwsIEkndmUgZGVjaWRlZCB0
bwo+IGdpdmUgb3BlblN1c2UgVHVtYmxld2VlZCBhIHdoaXJsLgo+IAo+IEkgbGlrZSBVYnVudHUg
MjIuMDQgd2l0aCBHbm9tZSBqdXN0IGZpbmUsIG15IHByZWZlcnJlZCBkaXN0cm8gZm9yIGRhaWx5
IGRyaXZpbmcKPiBpcyBzdGlsbCBTbGludCwgYnV0IEknZCByZWFsbHkgbGlrZSB0byB0ZXN0IHNv
bWUgbW9yZSBpbnRyZXN0aW5nIHRoaW5ncy4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QK

