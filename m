Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE61493F79
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jan 2022 19:02:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642615356;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZGWmO8rScjtwwapqQu2mAnTXHxu9AIp9Yi6Y4tiNVWY=;
	b=PPu68Jq6VG7sxQmsfoC/jCwN7Jre4L6UCEL3xPhvC4P79QqwMhzw1UNNEc/1SxzSQj8pZd
	eRhe4awMU0U8BZTqSPjmoD7cEEwK/cmVKL+aTnjjFu4CH38Ob14OmIq4wBOJ7E7dtbckmy
	SHcr5FtJ8bGrXJkqL1wN0ZjqQLkSAq4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-20-yrFuoZEbPjSgQXecIBYFiQ-1; Wed, 19 Jan 2022 13:02:35 -0500
X-MC-Unique: yrFuoZEbPjSgQXecIBYFiQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C248D8042EB;
	Wed, 19 Jan 2022 18:02:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82C187A405;
	Wed, 19 Jan 2022 18:02:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 799494BB7C;
	Wed, 19 Jan 2022 18:02:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20JHrxeS015587 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 12:53:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 904EE40FF708; Wed, 19 Jan 2022 17:53:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C29940FF707
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 17:53:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D6433C150E7
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 17:53:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-553-LktdNXngNgixme-WiiuFdw-1; Wed, 19 Jan 2022 12:53:57 -0500
X-MC-Unique: LktdNXngNgixme-WiiuFdw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JfCts2LYSz3lrb
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 12:53:57 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JfCts1h68zcbc; Wed, 19 Jan 2022 12:53:57 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JfCts1Br4zcbP
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 12:53:57 -0500 (EST)
Date: Wed, 19 Jan 2022 12:53:57 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Getting Ready For linux
In-Reply-To: <7fd76ae5-77b0-fdb1-83f4-62cf792cce90@gmail.com>
Message-ID: <ab5ec6c9-cced-5c9a-15df-1ab43671f58@panix.com>
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
	<CAO2sX30mT2TyBAvR4h-5Gvi45L20d+TZ8NQ97N3Ed=0ku2J6JA@mail.gmail.com>
	<7fd76ae5-77b0-fdb1-83f4-62cf792cce90@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20JHrxeS015587
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgeW91ciBzeXN0ZW0gY2FuIGJvb3Qgb2ZmIGEgVVNCLCBtb2Rlcm4gb25lcyBjYW4gc2xpbnQg
c2hvdWxkIGJvb3QuCgoKT24gV2VkLCAxOSBKYW4gMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gVGhhbmtzIHRvIGFsbCB3aG8gaGF2ZSBtYWRlIHN1Z2dl
c3Rpb25zLgo+Cj4gRmlyc3Q6IEkgZG93bmxvYWRlZCB1YnVudHUgYW5kIGZsYXNoZWQgaXQgdG8g
YSBVU0Igc3RpY2suCj4KPiBOZXh0OiBJIGdvdCBteSBtaW5kIGNoYW5nZWQgKHByb2JhYmx5IGZv
ciB0aGUgbmJldHRlciksIHNvIEkgZG93bmxvYWRlZCBTbGluawo+IGFuZCBmbGFzaGVkIGl0IHRv
IGFub3RoZXIgVVNCIHN0aWNrLgo+Cj4gTm93IEkgaGF2ZSB0d28gVVNCIHN0aWNrcyB0aGF0IGVh
Y2ggY29udGFpbiBhIHZlcnNpb24gb2YgbGludXguIEFzc3VtaW5nIEknbQo+IGdvbm5hIGdvIHdp
dGggU2xpbm50LCBkbyBJIG5vdyBoYXZlIGEgYm9vdGFibGUgd29ya2luZyBjb3B5IG9mIFNsaW50
P8KgIE9yIGlzCj4gdGhlcmUgbW9yZSB0byBkbyBiZWZvcmUgSSdtIGFjdHVhbGx5IHJ1bm5pbmcg
bGludXg/Cj4KPiBUaGFua3Mgc3RpbGwgbW9yZS4KPgo+IEhvd2FyZAo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

