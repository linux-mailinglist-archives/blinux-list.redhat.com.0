Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 57F8B26C41E
	for <lists+blinux-list@lfdr.de>; Wed, 16 Sep 2020 17:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600269866;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5ZixzKmEXirzJ8E1bZbkedczGVfvdMhtQr3RoP1ymm0=;
	b=bMBbDnU4lu7TCsD9iumfcfokswCt9gVb/Wo+G6TcKwetHsOyEN5hCqZ2KmGhMSB1ua1mwi
	vmJcCgfx60S/o4t8T/ATtw8TFfVz00GY6ewCazMcahIOU5vFxaMCPbrKbD3qX5bXTB+y/B
	qcgGXZMWdrMPYIgs70zdj/LszNKGkvw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-_TQG7n2UN0yyw56NmxYlxg-1; Wed, 16 Sep 2020 11:24:23 -0400
X-MC-Unique: _TQG7n2UN0yyw56NmxYlxg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EDCF956BE4;
	Wed, 16 Sep 2020 15:24:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 059337880B;
	Wed, 16 Sep 2020 15:24:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B99DD183D02F;
	Wed, 16 Sep 2020 15:24:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08GFO7tK021755 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Sep 2020 11:24:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7A49A1155884; Wed, 16 Sep 2020 15:24:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75D4F1155883
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 15:24:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1DB79063B8
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 15:24:04 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-211-M4Vmn4NAPWGW4HzEeaSXfA-1; Wed, 16 Sep 2020 11:23:58 -0400
X-MC-Unique: M4Vmn4NAPWGW4HzEeaSXfA-1
Received: by mail-qv1-f48.google.com with SMTP id q10so3744930qvs.1
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 08:23:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=GE/OXOlIXEDS3k1k1icrJ3DpB4CIv+U9s/z6VfbX4cE=;
	b=lY4ae51gxeDjVpka1WpymZjGsjEzRUNMVZANnvNXY+2ZHBeaM5I+MU2ChWkUeZEXeb
	FTQFzVVeQXsLeBr5O9aZH7Mg+W1cTwH5MKegQ4cWLZsJ31Gfuym+rPvRolJl245O73zs
	TrJvkytoxcDmES37VVeUfjWuZXAtkKfj8ZwH0QKkZ7FJ2pzz5oEdHJAkItsFDqmiwJMu
	2ZLmG3yH51SCEeTOrJsgSY95QYS4YKlTgcvfoMX8ULcPkLY5WuV+RQkEGRxzZpXM0b2g
	3VB3Wwyv8Kdy00vHFLpDX+aiBf2lMPGSA7YtgzF9feD8+jDbmcvu5AHik00MRF2btcit
	8srA==
X-Gm-Message-State: AOAM53250QYBxMCu2QZy5UbuxsQGfOhMhwc2EeZW2L7VoQqxKtkNsxue
	QQv6j7MTD+YZut/jvmCqhWjLuI9BQUhMCPEOy5tbP/WJ1kE=
X-Google-Smtp-Source: ABdhPJxKNUucgtGGlKWiqYzYunTEP8Gb5njiufiVuGLNeXX/WDHXPFDN+vlj7/Wi0ftflPyupCXeHKk6UcSK6ACPkUI=
X-Received: by 2002:a0c:abc5:: with SMTP id k5mr7378284qvb.40.1600269837385;
	Wed, 16 Sep 2020 08:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.23.453.2009151328080.2287550@chime>
	<20200916093407.2f4a5577@telaviv1.shlomifish.org>
	<alpine.DEB.2.23.453.2009160545180.3931393@chime>
In-Reply-To: <alpine.DEB.2.23.453.2009160545180.3931393@chime>
Date: Wed, 16 Sep 2020 17:23:46 +0200
Message-ID: <CAPo=n-8xncJAMmi7_M1FrZFi=E2=t3r1emhK++k0zAEsm8HGwg@mail.gmail.com>
Subject: Re: Strange Happenings in mpv?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksClRoZSBvbmx5IHRoaW5nIEkgY2FuIHRoaW5rIG9mIHdpdGggcmVnYXJkcyB0byB5b3VyIHNr
aXAgaXNzdWUsIGFuZCB0aGlzIG1heQpiZSBhIHZlcnkgbG9uZyBzaG90LCBpcyB0aGF0IE1wdiBt
aWdodCBoYXZlIHNvbWUgc3RhdGUgc3RvcmVkIGZvciB0aGF0CnBhcnRpY3VsYXIgZGlyZWN0b3J5
IHBhdGguIEkgZG9u4oCZdCBrbm93IG9mIGFueSBzdGF0ZSBzdG9yZWQgYnkgTXB2IGJlY2lkZXMK
bGFzdCBwbGF5YmFjayBwb3NpdGlvbiwgYnV0IGl04oCZcyB3b3J0aCBhIHRyeS4gSSBiZWxpZXZl
IE1wdiBzdG9yZXMgaXQncwpzdGF0ZSBhdCB+Ly5jb25maWcvbXB2L3NhdmVkX3N0YXRlLCBidXQg
SSdtIG5vdCBjdXJyZW50bHkgbmVhciBhIGNvbXB1dGVyCnRvIHZlcmlmeSB0aGF0LgoKQW5kIHll
cywgTXB2IGNhbiBpbmRlZWQgcGxheSB6aXBzIGFuZCBvdGhlciBhcmNoaXZlcyAoYW5kIGFyY2hp
dmVzIHdpdGhpbgphcmNoaXZlcyB3aXRoaW4gYXJjaGl2ZXMpLiBBIHZlcnkgaGFuZHkgZmVhdHVy
ZSB0aGF0LgoKUmVnYXJkcywKClJ5bmhhcmR0CgpPbiBXZWQsIDE2IFNlcCAyMDIwLCAxNDo0OCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uLCA8CmJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgoKPiBUaGFua3MgU2hsb21pIGZvciB5b3VyIGFuYWx5c2lzLiBJbnRlcmVzdGlu
ZyBMWU5YIHRob3VnaHQgdGhhdCB3YXMgYSB6aXAKPiBidXQgY2VydGFpbmx5IGl0IHBsYXlzIGZp
bmUsIGJ1dCBteSBhcnJvd3Mgc3RpbGwgZGlkbid0IHdvcmsgIHVudGlsIEkgY29weQo+IGl0IHRv
IGFub3RoZXIgbG9jYXRpb24uCj4gQ2hpbWUKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

