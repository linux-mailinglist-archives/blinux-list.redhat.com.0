Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 674AF4AFE68
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 21:25:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644438311;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MJVIJIHJzsyC/Nhq5P4d1ZXZyI2ZT9m16IuT9XXdelY=;
	b=WR5GyokxGFVjnvry2149KU3x50IOnb2od59HNfMf4XjP8S1E4Ok8sPCIhwcot7DLHWvPhZ
	mfjndd8Dqu7lBx6Yj4d4kykBlGpV4flGu0OlTswSTBKNNS5lCPDtJQQ1p5ScFbhAK9Sidr
	TUBk5lR0KqKvBonisBt1H5N0rL7X+BU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-317-rMJRezuqMX-Yc0HM-Sx3lg-1; Wed, 09 Feb 2022 15:25:07 -0500
X-MC-Unique: rMJRezuqMX-Yc0HM-Sx3lg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EC85883DD21;
	Wed,  9 Feb 2022 20:25:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C67DE101E58D;
	Wed,  9 Feb 2022 20:25:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6B8801809CB8;
	Wed,  9 Feb 2022 20:25:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219KOuoh005935 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 15:24:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 84F2140885B2; Wed,  9 Feb 2022 20:24:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80CEA40885A0
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:24:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 636E328EB7A6
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:24:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-507-spMXxPsPPEKD7S6rQ7h9FQ-1;
	Wed, 09 Feb 2022 15:24:54 -0500
X-MC-Unique: spMXxPsPPEKD7S6rQ7h9FQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id EE5E120D23
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:24:42 +0100 (CET)
Message-ID: <ddfd6124-1054-6f85-0b18-3a4da344a557@slint.fr>
Date: Wed, 9 Feb 2022 21:24:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.0
Subject: Re: regex help
To: blinux-list@redhat.com
References: <20220209.123818.520.13@192.168.1.100>
	<20220209090549.4659750f@bigbox.attlocal.net>
	<CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
	<20220209115112.077dcede@bigbox.attlocal.net>
	<CAO2sX309esqHKcpfCUtFQ4njcDtiXVHVCddUxApE8PjNMg2gGg@mail.gmail.com>
	<20220209134336.72a59209@bigbox.attlocal.net>
In-Reply-To: <20220209134336.72a59209@bigbox.attlocal.net>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219KOuoh005935
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpKdXN0IGEgc21hbGwgbml0cGljayBpbmxpbmUKCkxlIDA5LzAyLzIwMjIgw6AgMjA6NDMs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBUaW0gaGVy
ZSwgcmVwbHlpbmcgaW5saW5lIGFnYWluCgo+IFlvdSd2ZSBnb3QgaXQhICBJdCBleHBhbmRzIHRo
ZSBmaWxlbmFtZXMgYXQgdGhlIHNoZWxsIGxldmVsLCBiZWZvcmUKPiBoYW5kaW5nIGl0IG9mZiB0
byB0aGUgcHJvZ3JhbSwgc28gaXQgd29ya3Mgd2l0aCBtdWx0aXBsZSBpdGVtcyBhcwo+IHdlbGws
IHN1Y2ggYXMKPiAKPiAgICQgbWtkaXIgLXAgTWFpbC93b3JrL3tjdXIsbmV3LHRtcH0KPiAKPiB3
aGljaCBleHBhbmRzIHRvIHRoZSBzYW1lIGFzCj4gCj4gICAkIG1rZGlyIC1wIE1haWwvd29yay9j
dXIgTWFpbC93b3JrL25ldyBNYWlsL3dvcmsvdG1wCgpCZSBhd2FyZSB0aGF0IGJyYWNlIGV4cGFu
c2lvbiBpcyB1bmRlZmluZWQgaW4gUE9TSVggc2gsIHNvIGl0IHdvcmtzIHVzaW5nIGJhc2gKYnV0
IGNvdWxkIGZhaWwgdXNpbmcgb3RoZXIgc2hlbGxzLgkKCkNoZWVycywKRGlkaWVyCi0tCkRpZGll
ciBTcGFpZXIKU2xpbnQgbWFpbnRhaW5lcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

