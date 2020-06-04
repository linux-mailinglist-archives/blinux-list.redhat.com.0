Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id E0BA51EDA57
	for <lists+blinux-list@lfdr.de>; Thu,  4 Jun 2020 03:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591233807;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J0C64KV9O57zMCUM5S1e+8Owy5HCvPg1oxCZQl8WF34=;
	b=bVn6uJ9cpwW2NngIRumOw9pBoJf6L2LVSaGAQXCUVjH/yGhxb6FN0nEis0Wk3aInVF9gZd
	vMFoDw4fz3pLCWeDW0uEgl/aGR687BFnluxH+s1fdNcefNBoyslizSiVWQNg+shLWzuUi+
	poev6ySjnk/uxbLaUi5n6q29Zrf6NzE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-IyOik3VDM-q-QvC3dmpP_w-1; Wed, 03 Jun 2020 21:23:25 -0400
X-MC-Unique: IyOik3VDM-q-QvC3dmpP_w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AAFA0100A614;
	Thu,  4 Jun 2020 01:23:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1A873C97;
	Thu,  4 Jun 2020 01:23:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8EB5A180954D;
	Thu,  4 Jun 2020 01:23:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0541N5NH011406 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 3 Jun 2020 21:23:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B50507D2A0; Thu,  4 Jun 2020 01:23:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0827ED17A
	for <blinux-list@redhat.com>; Thu,  4 Jun 2020 01:23:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCE01811E77
	for <blinux-list@redhat.com>; Thu,  4 Jun 2020 01:23:03 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-208-D_EORcIyNvqrd8yjaUF-Ew-1; Wed, 03 Jun 2020 21:23:00 -0400
X-MC-Unique: D_EORcIyNvqrd8yjaUF-Ew-1
Received: by mail-ot1-f54.google.com with SMTP id v13so3513098otp.4
	for <blinux-list@redhat.com>; Wed, 03 Jun 2020 18:23:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=kH+iH95P3fID+fnbnddPp3d0pUlETXFOixZb8O8Ze8U=;
	b=YUnt3ThWtOoS3gHi3eic99gFl+R7sq72vsoS4QsZiEGFGVs25slDasbbiDG3GYX0SY
	eM3nFuk7bkUnKMqzfW9Ovhpw65bSPAregm7u1rJbykA78VhyGTYYUm+Bt48hygypO3yE
	nOiRsQT1WxngEgJpTM2lS/4lovnlvp07fZJXwDWAW2DkAcBJyrgo1t0aHRC6lARloKb7
	FguH6o2fYmACFPbc4AWtqvuIa2GTsQ7+GV1XjxeS/gPWpqA3Gr3KjVXL0pTpUcjKoJyF
	i7C/H836S5seidiPlcRQQJSBRVQ6condxjpF0pGXz0IIJrjmNlrAzHLOG2ran4TfwZSB
	eC6A==
X-Gm-Message-State: AOAM532Ueshz2N4NgR/Reo8LpvHI8T/sUKILBXq26MPRjkhNHV8G1RpQ
	GgdWlO8jApgwwZuIPa/2nIUxNXbU
X-Google-Smtp-Source: ABdhPJz0HGLuo7n82KSTEZgskk7AklFXYY6P2Ewo9c7o9QQNDRWSLnOLJv+XJIs5YVzSU4gVigdoaw==
X-Received: by 2002:a05:6830:22ee:: with SMTP id
	t14mr2093813otc.92.1591233779152; 
	Wed, 03 Jun 2020 18:22:59 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:ed1d:c41f:e982:d143?
	([2601:3c2:8200:9360:ed1d:c41f:e982:d143])
	by smtp.gmail.com with ESMTPSA id t4sm895130ooa.40.2020.06.03.18.22.57
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Jun 2020 18:22:58 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Tiling WM with Orca, anyone?
Date: Wed, 3 Jun 2020 20:22:57 -0500
References: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com>
Message-Id: <AD0DEA51-255F-48CB-A427-C861671A73CC@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0541N5NH011406
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Qnkg4oCYaXNzdWVz4oCZLCBkbyB5b3UgbWVhbiBwcm9ibGVtcz8KV2hpY2ggZGlzdHJpYnV0aW9u
IGFyZSB5b3UgdHJ5aW5nIHRvIHVzZT8KV2l0aCBzb21lIHZlcnNpb25zIG9mIHVidW50dSBtYXRl
IEkgZmluZCB0aGV5IHdvcmsuCldpdGggdWJ1bnR1IG1hdGUgMjAuNCBJIGZpbmQgSSBjYW5ub3Qg
aW5zdGFsbCBiZWNhdXNlIG9mIHRoZSBmYWN0IHRoYXQgb3JjYSBzYXlzIOKAmGluc3RhbGwgYXMg
c3VwZXIgdXNlcuKAmSBidXQgbm90IGFsbCB0aGUgY2hvaWNlcyB0aGF0IGFyZSBvbiB0aGUgaW5z
dGFsbCBzY3JlZW4uCgo+IE9uIEp1biAzLCAyMDIwLCBhdCA0OjI3IFBNLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAK
PiBIaSBldmVyeW9uZSwKPiAKPiBJIG5lZWQgdG8gaW5zdGFsbCBhIGRpc3RybyBvbiBhIG1pbmlt
YWxpc3QgbWFjaGluZSBmb3IgYSBibGluZCBMaW51eCBuZXdiaWUsIGJ1dCBpbiB0ZXN0aW5nIGV2
ZW4gTWF0ZSBpcyBoYXZpbmcgaXNzdWVzLiBPaywgaXQncyBhIHBpZWNlIG9mIGp1bmssIGJ1dCBh
bGwgdGhlIGd1eSdzIGdvdC4KPiAKPiBJIHdhcyB0aGlua2luZyBzb21ldGhpbmcgbGlrZSBpMywg
YnV0IG15IHJlc2VhcmNoIHNob3dzIGlzc3Vlcy4gV2hhdCB3b3VsZCB5b3Ugc3VnZ2VzdD8gVGhl
IG1hY2hpbmUgaXMgcHJvYmFibHkgb2xkIGVub3VnaCBzbyBJIGNvdWxkIGhhdmUgYm91Z2h0IGl0
IHNlY29uZCBoYW5kIHdoZW4gSSBmaW5pc2hlZCBoaWdoIHNjaG9vbCAxNiB5ZWFycyBhZ28uCj4g
Cj4gLS0gCj4gV2FybSByZWdhcmRzL0dyb2V0bmlzL0hlcnpsaWNoZSBHcsO8w59lLAo+IAo+IEJy
YW5kdCBTdGVlbmthbXAKPiAKPiBTZW50IHVzaW5nIFRodW5kZXJiaXJkIGZyb20gVWJ1bnR1IE1h
dGUgMjAuMDQKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

