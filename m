Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C1A44F578
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 22:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636838669;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GwY/gFwPuMHtjuvE8EKC2uqTrl7Jyc0dH0aSAyZG/Jc=;
	b=FInoWmQzG7nsc5a0q2GpJUmZ3oZCNJLdR8ax9ASubOXIkkhPkgXeTCkch14WC05G80fYsA
	3RLUt/oAJjU1uPZp4Dhf5fmiu86H3J4xweVVNISubiFS+2HOMRBBJCPBvloCFUMmkA5xsg
	PyTx4Iox5Dsk/xSGUTTormWnpgDYU70=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-535-2-ZiBIOlMGWOXjjwy_UDlg-1; Sat, 13 Nov 2021 16:24:25 -0500
X-MC-Unique: 2-ZiBIOlMGWOXjjwy_UDlg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D15471851721;
	Sat, 13 Nov 2021 21:24:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98EB15C1A1;
	Sat, 13 Nov 2021 21:24:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0175D4E58E;
	Sat, 13 Nov 2021 21:24:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADLOFF6026400 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 16:24:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 49BC64010E89; Sat, 13 Nov 2021 21:24:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44EDE40149A6
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 21:24:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 241A985A5AA
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 21:24:15 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-416-agD4mSUZPYiLb1kgh1rLQg-1; Sat, 13 Nov 2021 16:24:13 -0500
X-MC-Unique: agD4mSUZPYiLb1kgh1rLQg-1
Received: by mail-qv1-f44.google.com with SMTP id a24so8646272qvb.5
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 13:24:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=M/7PN06ok2TqMbPRiV9lc79Ci+YSn/HRTGGBmSU/HSw=;
	b=wxHy3QKCmFAoFk+zZfR8EgXiOBvKqPTz4Oe9mdFU+POfB7EUwHUx/Bk2IE8tc9M5II
	PmS2rdpQ8reIwlez8zyFnp9TDlQD+ZVHVzoc6xFNxJJ92AfCE/11az2SeM59xLmaIYvx
	lR/gSZDPU28hcpM7Lofn7PkNsATabIQJYhkwOvNJSJ/fio86bWVFuq564QIW1cW5Zjgz
	yJ5rhqiQP95wfb0F5ntsVTERhGti3YSGeVqmQiKjnua/wZn41NQMCVUGTWiRWB/b3R2Y
	d2Y+0z02yOSpMW9rQY+mJNhzcnmtZos9neftdv0v9i9bG7psNt2fAxF2B2Xxut0VN04+
	fH/g==
X-Gm-Message-State: AOAM5317ZsiCFXmjV4zX+OHntW2ETmedIbABHRf0GhBrJtpDY+RiD+BC
	8p5ftcEqq8j76NH9rcz7REWiunUsGoE2kA==
X-Google-Smtp-Source: ABdhPJyavDAGSyM3q7WCdJbDnssf6qYjmnO2V3D2HUOH87u9+/3J1I0HJGVQFamEo+oZwLf8Mlh5yA==
X-Received: by 2002:a05:6214:c6f:: with SMTP id
	t15mr24441277qvj.49.1636838652652; 
	Sat, 13 Nov 2021 13:24:12 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id
	c13sm5289161qtx.51.2021.11.13.13.24.12 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 13:24:12 -0800 (PST)
Message-ID: <5c3f2657-ae7a-6362-edfc-07972bbbf5a5@gmail.com>
Date: Sat, 13 Nov 2021 16:24:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
	<CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
	<1338bc21-40df-abe9-2c5e-98902de1854f@gmail.com>
	<alpine.NEB.2.23.451.2111131613370.7821@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2111131613370.7821@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

T2gsIHJpZ2h0IcKgIEksIHRvbywgb25jZSBoYWQgYWxwaW5lIHNldCB1cCB0byBsYXVuY2ggZmly
ZWZveCBvbiBsaW5rcywgCmFuZCBnZXR0aW5nIHRoYXQgdG8gaGFwcGVuIHdhc24ndCB0b28gYmFk
LsKgIEkgd2FzIHJ1bm5pbmcgYWxwaW5lIGluIGEgCmd1aSB0ZXJtaW5hbCB3aGVuIGRvaW5nIHRo
aXMuwqAgV2VyZSBJIHRvIHJ1biBpdCBpbiB0aGUgY29uc29sZSwgSSB3b3VsZCAKanVzdCBoYXZl
IHJlcGxhY2VkIHRoZSB0ZXJtICdmaXJlZm94JyB3aXRoICdsaW5rcycsIGFuZCBmbGtpcHBlZCBh
IApzd2l0Y2ggdGhhdCB3b3VsZCBhbGxvdyB0aGUgcHJvZ3JhbSB0byBydW4gaW4gYmFja2dyb3Vu
ZC7CoCBPciwgbWF5YmUsIG5vdC4KCgotRGF2ZS0KCgoKT24gMTEvMTMvMjEgMTY6MTcsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSBjYW4gY2xpY2sgbGlua3Mg
aW4gYWxwaW5lIGFuZCB0aG9zZSB3b3JrIHRvby4gIElmIEkgcmVtZW1iZXIsIGl0IG9ubHkKPiBu
ZWVkZWQgdGhyZWUgYWRqdXN0bWVudHMgdG8gdGhlIGNvbmZpZ3VyYXRpb24gdG8gZG8gaXQgdG9v
LiAgSSBkb24ndCBtaW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

