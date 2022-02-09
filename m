Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B2F4AF3AB
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 15:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644415680;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7Y+/XUyaBJ2pufSMuhN3oUMml6xrL8gu2R54DmAbNnI=;
	b=FPb0Bz48feRY0RJtZq9QeYCjgUyg/yTNhy4unDhSjpoCz8xPWVS2lryl4h1FqfBjhYK3D0
	RA4UPAlAexDVKlYehsb+xNhMvakKzohf+CjhILiHKGl7nvkLeegvKgOIZddBBA62gB+BqO
	LRm+hkdASM6dM9ZdQjE0im/IUfieGMY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517-owLBB4JVO3CrbjCSwDXEkg-1; Wed, 09 Feb 2022 09:07:56 -0500
X-MC-Unique: owLBB4JVO3CrbjCSwDXEkg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41538192CC43;
	Wed,  9 Feb 2022 14:07:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9892781F5B;
	Wed,  9 Feb 2022 14:07:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E63001809CB8;
	Wed,  9 Feb 2022 14:07:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219E3dXb025956 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 09:03:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A8C4040ED413; Wed,  9 Feb 2022 14:03:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4C3C400E13A
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 14:03:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D03518A6583
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 14:03:39 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-141-uhESOF4GOCGfWcL-ZIQacA-1; Wed, 09 Feb 2022 09:03:37 -0500
X-MC-Unique: uhESOF4GOCGfWcL-ZIQacA-1
Received: by mail-wr1-f45.google.com with SMTP id f17so4304985wrx.1
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 06:03:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=aKJJ7EZUqlVI9r5indH4Pw7NAXFz9+iQy/zbvu+qScs=;
	b=KxklZsuR9QZEWivR6JaXRxdTs9pMZCbCkEzT1jP1rZb3IOYCoIePL3bPzKSx2YcLbD
	izprAgJJLfPNwarU+p0XhOTfoG4p3jjsFoEgIS3GWBacuWmMoKDMQgRpBhn6JNanDCa9
	EXkqE+Sqxdp9ztU3Ju94Klgw8zFIoc1xHRAdIZ2DOB3B5C92h6o5+o2jCRdlfZh/hn92
	U/5OgnH6alZwPkXRxJF6mjX4nnrKudsSKZ6OL+rn6IF2RhSSyeSQPyl57NOoCS3vR6Jv
	IBIHcYG7dUUkKvLpa+KMkghqcfbAxE+dAKMsBqBldzJkvnbOEi+PCDDfyu2I68ZMc/uU
	e5/g==
X-Gm-Message-State: AOAM533SaGgWjQpTajYPMTbnIrRpKZ5pdpxsy47XOVxJPiBlrmc3XfSK
	NC6CiIcDXcyiKy/SF80L3n84gVjyyvak9Q==
X-Google-Smtp-Source: ABdhPJzTqcfsSetbszQItSj7fIP4gVc5xxacI5Lu2bXLOcWL3nFBk2fu/gze7Wj8fHIcji4py9Wbcw==
X-Received: by 2002:a05:6000:1707:: with SMTP id
	n7mr2292736wrc.234.1644415415975; 
	Wed, 09 Feb 2022 06:03:35 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	g4sm18338056wrd.111.2022.02.09.06.03.35 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 09 Feb 2022 06:03:35 -0800 (PST)
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
	<10ddd15f-34b1-4137-b114-e5d44c31b12b@gmail.com>
	<e05b07-fc2c-db87-895c-2befe57b7b62@brandt-slint.study.home>
Message-ID: <810c410a-4b73-93b5-4854-a8b739d8b40e@gmail.com>
Date: Wed, 9 Feb 2022 14:03:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <e05b07-fc2c-db87-895c-2befe57b7b62@brandt-slint.study.home>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U28sIG9uIGkzJ3MgVGFsayBwYWdlIG9uIHRoZSBBcmNoIHdpa2kgdGhlcmUncyBkaXNjdXNzaW9u
IGFib3V0IAphY2Nlc3NpYmlsaXR5IGFjdHVhbGx5CgpIb3dldmVyLCBJIGluc3RhbGxlZCBpdCwg
YW5kIGl0IGRpZG4ndCBzZWVtIHRvIHBsYXkgbmljZSB3aXRoIE9yY2EKCkxpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gQWggd2VsbCwKPgo+IEFzIEkgc2FpZCwgSSdt
IGhhcHB5IHdpdGggcmF0cG9pc29uIG9yIG9uIHRoZSBjb25zb2xlLCBhcyBJIGFtIGF0IHRoZSAK
PiBtb21lbnQuCj4KPiBJdCB3b3VsZCBiZSBpbnRlcmVzdGluZyBpZiBTdHVtcFdNIGNhbiBiZSBt
b2RkZWQgdGhlIHNhbWUgd2F5IGFzIAo+IHJhdHBvaXNvbiwgc2luY2UgaXQgaXMgYSBmb3JrIG9m
IHJhdHBvaXNvbiBhZnRlciBhbGwuCj4KPiBJIGp1c3QgZG9uJ3QgaGF2ZSB0aGUgbWluZCB0byBk
byBzb21ldGhpbmcgbGlrZSB0aGF0LCBJJ20ganVzdCBhbiAKPiBhdmVyYWdlIHVzZXIgd2l0aCBh
biBpbnRlcmVzdCBpbiB0ZWNoLgo+Cj4gV2FybSByZWdhcmRzLAo+Cj4gQnJhbmR0IFN0ZWVua2Ft
cAo+Cj4gU2VudCBmcm9tIHRoZSBTbGludCBjb25zb2xlIHVzaW5nIEFscGluZQo+Cj4gT24gV2Vk
LCA5IEZlYiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
Cj4+IERhdGU6IFdlZCwgOSBGZWIgMjAyMiAwMDoxMToxNCArMDAwMAo+PiBGcm9tOiBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+PiBU
bzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4KPj4gU3ViamVjdDogUmU6IEhhcyBhbnlvbmUgZ290dGVuIGkzIGFjY2Vzc2libGUgeWV0
PyBvciBpcyB0aGVyZSBhIAo+PiBiZXR0ZXIgb3B0aW9uCj4+IMKgwqDCoCBiZXNpZGVzIHJhdHBv
aXNvbiwgd2hpY2ggaXMgZ3JlYXQsIGJ0dwo+Pgo+PiBOb3QgcmVhbGx5IGEgV00uLi4KPj4KPj4g
QnV0IEkndmUgYWRhcHRlZCBTdHJ5Y2huaW5lIHRvIHdvcmsgd2l0aCBMWERFL0xYUVQuIEkgY291
bGRuJ3QgZ2V0IGkzIAo+PiB0byB3b3JrIGFuZCBJJ20gbm90IHRvdWNoaW5nIHhtb25hZCBhdCBh
bGwuIEknbSBub3Qgc3VyZSBhYm91dCAKPj4gU3R1bXB3bSBob3dldmVyLi4uLmJ1dCBJJ3ZlIHll
dCB0byBmaW5kIGFueXRoaW5nIGFzIGludHVpdGl2ZSBhcyAKPj4gUmF0cG9pc29uIHBlcnNvbmFs
bHkuIElmIGkzIGNhbiBiZSBtYWRlIGFjY2Vzc2libGUsIEknZCBsaWtlIHRoYXQgYnV0IAo+PiBJ
J20gbm90IHN1cmUuIFdhc24ndCB0aGVyZSBhIGdpdGh1Yi9naXRsYWIgYm91bnR5IGZvciBpdCBh
IHdoaWxlIGFnbz8KPj4KPj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPj4+IEhpIGFsbCwKPj4+Cj4+Pgo+Pj4gVGhlIHN1YmplY3QgZW5jb21wYXNzZWQgYmFzaWNh
bGx5IGFsbCBJIHdhbnRlZCB0byBrbm93Lgo+Pj4KPj4+Cj4+PiBJIHJlbWVtYmVyIGEgd2hpbGUg
YWdvIHNvbWVvbmUgYnVpbHQgYSB0YWxraW5nIGFyY2ggaW5zdGFsbGVyIHVzaW5nIAo+Pj4gdGhl
IGV6YXJjaCBzY3JpcHRzLiBPbiB0aGVpciBwYWdlIHRoZXkgbGlzdGVkIGkzIGFzIGFuIGFjY2Vz
c2libGUgCj4+PiBvcHRpb24sIGJ1dCBJIGNvdWxkIG5ldmVyIGdldCB0aGUgdGhpbmcgdG8gaW5z
dGFsbCBvbiBhIFZNLCBhbmQgYXQgCj4+PiB0aGUgdGltZSBJIHdhc24ndCBnb2luZyB0byBicmVh
ayBteSBXaW5kb3dzIGluc3RhbGwgdG8gdGVzdCBpdC4gTm93LCAKPj4+IG1heWJlLCBidXQgSSBj
YW5ub3QgZm9yIHRoZSBsaWZlIG9mIG1lIHJlbWVtYmVyIHdoYXQgdGhhdCBwcm9qZWN0IAo+Pj4g
d2FzIGNhbGxlZC4KPj4+Cj4+Pgo+Pj4gSWYgYW55b25lIGdvdCBhbnkgdGlsaW5nIFdNIHNldHVw
cywgYmVzaWRlcyByYXRwb2lzb24gdG8gd29yayBhcyAKPj4+IHRoZXkgc2hvdWxkLCBwbGVhc2Ug
bGV0IG1lIGtub3cuCj4+Pgo+Pj4KPj4+IEkgcmVhbGx5IGxvdmUgdGhlIHdheSByYXRwb2lzb24g
ZG9lc24ndCBzbG93IHRoaXMgbWFjaGluZSBkb3duIGF0IGFsbC4KPj4+Cj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

