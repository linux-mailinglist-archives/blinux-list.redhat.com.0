Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4D4A23221EC
	for <lists+blinux-list@lfdr.de>; Mon, 22 Feb 2021 23:06:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614031582;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YQ5RxcF+toJAAaL9TNMd3jF8AFJLxH+ZgY9sfa8mgR8=;
	b=eA7XNdRK1XnotNdXkx3ZqViqQw5BrMiYnBOkk2gcjwoDCciNDaehaSzdfXzU2KMErn4kIT
	dBkeuRjbjRmPLtk3JqNduyZPG91nbeUeqfdeW5INkWZSn9MJ5tsf5Oa85ZRboat7tBenZC
	Yzv4BklLtCvQmXFxm/AlTpqXEcR/Dxc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-538-2hhpgnTgOTmOay29GyH-Dg-1; Mon, 22 Feb 2021 17:06:19 -0500
X-MC-Unique: 2hhpgnTgOTmOay29GyH-Dg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A1C0801975;
	Mon, 22 Feb 2021 22:06:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 423FE10016F6;
	Mon, 22 Feb 2021 22:06:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E1194E58E;
	Mon, 22 Feb 2021 22:06:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11MM5nCS019950 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Feb 2021 17:05:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 01293200BD88; Mon, 22 Feb 2021 22:05:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F031E200BFD1
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 22:05:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 414B18007D9
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 22:05:46 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-566-JG1m0YjxO6G12yvp7JsqfQ-1;
	Mon, 22 Feb 2021 17:05:42 -0500
X-MC-Unique: JG1m0YjxO6G12yvp7JsqfQ-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 5093ABE496
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 22:04:30 +0100 (CET)
Subject: Re: curl vs. wget
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2102221641030.18367@panix1.panix.com>
Message-ID: <436339d3-1a9b-4332-4f1b-179e4fe35ae9@slint.fr>
Date: Mon, 22 Feb 2021 23:04:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2102221641030.18367@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11MM5nCS019950
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

UHJvYmFibHkgbm8gc2lnbmlmaWNhbnQgZGlmZmVyZW5jZS4KCkluIGJvdGggY2FzZSB5b3Ugd2ls
bCBnZXQgdGhlIGxvd2VzdCBzcGVlZCBvbiB0aGUgcm91dGUgZnJvbSB0aGUgc2VydmVyIAp0byB0
aGUgY2xpZW50IChpbmNsdWRpbmcgdGhlIHNlcnZlcidzIG91dHB1dCBzcGVlZCksIHJlZ2FyZGxl
c3Mgb2YgdGhlIApzb2Z0d2FyZSB1c2VkLgoKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIKU2xpbnQg
bWFpbnRhaW5lciBodHRwczovL3NsaW50LmZyCgpMZSAyMi8wMi8yMDIxIMOgIDIyOjQzLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGFzIGN1cmwgZ290
IGFueSBzcGVlZCBhZHZhbnRhZ2UgZm9yIGxhcmdlIGZpbGUgZG93bmxvYWRzIGNvbXBhcmVkIHRv
IHdnZXQ/Cj4gSSBrbm93IGFib3V0IGF4ZWwgYW5kIHdhbnQgdG8gbGVhdmUgYXhlbCBvdXQgb2Yg
dGhpcyBjb21wYXJpc29uIHNpbmNlIHNvbWUKPiB3ZWIgc2l0ZXMgYmxvY2sgYXhlbCB0aG91Z2gg
Zm9yIGxhcmdlIGZpbGVzIHdoZW4gYXhlbCBjYW4gYmUgdXNlZCBpdCdzIAo+IHdlbGwgd29ydGgg
dGhlIHRpbWUgc2F2aW5ncy4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

