Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B804E45F6AF
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 22:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637963881;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cM4f2W9E0j+sme/JuBM86FSzkwCWm0B/9+PxzRios3Q=;
	b=b4yUdohURtaJ69cOf8oKUoCKFo4wEiKJgQSLuYqHI88CZUNzxwZLzkh7PhRxEFfpQ5Suf9
	ZaB7okeOv6MNbDyDCRTh+Uzxin+yGfYUHy4ni6BW3JSzPkc0UbEmAV4NF151MXRMssKaAC
	7P3XAkFHFYDfZ3vW9IL4+nB5bVhxbvU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-300-Ov0GfudgNr-gX8jbbqr0pw-1; Fri, 26 Nov 2021 16:57:58 -0500
X-MC-Unique: Ov0GfudgNr-gX8jbbqr0pw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B12785B664;
	Fri, 26 Nov 2021 21:57:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DABCE5D9C0;
	Fri, 26 Nov 2021 21:57:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 371211809C89;
	Fri, 26 Nov 2021 21:57:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQLvORY023066 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 16:57:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 38EDE2026D69; Fri, 26 Nov 2021 21:57:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3388E2026D67
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 21:57:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD8018001A7
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 21:57:18 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-422-dcWRntjpPoWyqpiBat8wXA-1; Fri, 26 Nov 2021 16:57:17 -0500
X-MC-Unique: dcWRntjpPoWyqpiBat8wXA-1
Received: by mail-wm1-f43.google.com with SMTP id
	p3-20020a05600c1d8300b003334fab53afso11623540wms.3
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 13:57:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=6dv2iHbvw9hF/z4HDMatcgz6bKdwTNZmpJnCJLtDdaM=;
	b=3OCytbA+AsBOF78SlACppHAkYRAYqAMfM18jGEYCY6lwzUi2+7T1ouk7uOrSjeknHt
	SOOPf6/e3AP0c5OgbPvgZNRCCK/SyyVT79zR9Lu5PgounUf2mg2xFUPqi+rP7dJ9kNlb
	M5AvrrAKT8CO6hdIr3KGagJ4YB+BSDmouv5BCNHoj/+610uvmrfrO8uioXn8zpTMyvDg
	QQS70nbdoqaFQHP0hDv0mbVxWtmSikZOBiBsMceVrXW3C9X8ukdrDF4y8GbJ2NdySARN
	2xKqlVWlfDPpp2CEjPCtlXRWxE03qNQm/r35xIb63M7Lh1WpoZI6frx2Vw1Bv2e7JITY
	tDMg==
X-Gm-Message-State: AOAM530WM7HoyJCbaFGBw3MQWUCIhoUrp8LlBqP98goaxCBMhBv4NTHz
	SuyyyUwDwWw+Zy5miinnoSnmEFS/HygsDQ==
X-Google-Smtp-Source: ABdhPJxb9Eb6E1M4/0SuW5CEpM33q82h196dRji7v6bOqtPyomrGeK+GfQZK11RoDhoaTAGgH2pdKQ==
X-Received: by 2002:a7b:cf10:: with SMTP id l16mr19011108wmg.17.1637963835542; 
	Fri, 26 Nov 2021 13:57:15 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id m1sm7357355wme.39.2021.11.26.13.57.14
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 26 Nov 2021 13:57:15 -0800 (PST)
Message-ID: <5306ea94-e937-f383-95da-12ea194be198@gmail.com>
Date: Fri, 26 Nov 2021 21:57:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Jumping from Solus/Ubuntu to Slint...how easy is it?
To: blinux-list@redhat.com
References: <78e0ef3a-4843-b11a-6ab4-586498b14250@gmail.com>
	<a5db1a21-5c98-f8ca-4f04-c42db4c6fa24@gmail.com>
In-Reply-To: <a5db1a21-5c98-f8ca-4f04-c42db4c6fa24@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WW91IHNheSB5b3UgY2FuJ3QgcnVuIGl0IGluIGEgVk0sIEkgZ290IGl0IHdvcmtpbmcgaW4gcXVj
a2VtdSB3aXRoIGEgYml0IApvZiBwb2tpbmcgYXQgdGhlIGV4YW1wbGUgZmlsZXMuCgpTbywgcXVl
c3Rpb24uIEknbSBtaXNzaW5nIHR3byBhcHBzIGluIG15IFZNIGluc3RhbGwKCgpQdXJwbGUtc2t5
cGV3ZWIgKFBpZGdpbiBza3lwZSBwbHVnaW4pIGFzIHdlbGwgYXMgU2t5cGUKCgpTZWNvbmQgb25l
Li4uS29kaQoKU28gY2FuIEkgZ2V0IGJvdGggaW5zdGFsbGVkIGluIFNsaW50IG9yPwoKCk9uIDEx
LzI2LzIxIDIxOjM4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
IFNsaW50IGlzIHByb2JhYmx5IHRoZSBtb3N0IHJlbGlhYmx5IGFjY2Vzc2libGUgZGlzdHJpYnV0
aW9uLiBZb3UgY2FuJ3QgCj4gcnVuIGEgdmlydHVhbCBzbGludCBvbiB5b3VyIGNvbXB1dGVyLCBo
b3dldmVyLCB5b3UgY2FuIGluc3RhbGwgb24gYW4gCj4gU0QgY2FyZCBhbmQgdXNlIGl0IHdpdGhv
dXQgYW55IGFjY2Vzc2liaWxpdHkgaXNzdWVzLiBZb3UgbmVlZCBhdCBsZWFzdCAKPiAzMiBHQiBT
RCBkaXNrLsKgIEkgaGF2ZSBpdCBydW5uaW5nIG9uIDEyOCBHQiBTRCBkcml2ZS4KPgo+IENoZWVy
cywKPgo+IElicmFoaW0KPgo+IE9uIDExLzI2LzIxIDM6NTkgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IFNvIGFzIGl0IHNheXMuLi4uYW5kIGdpdmVuIG15
IHJlY2VudCB3aGlmZnMgb24gcWVtdSwgc28gZmFyICpjcm9zc2VzIAo+PiBmaW5nZXJzKiBTbGlu
dCBpcyBzbG93bHkgaW5zdGFsbGluZyBidXQgSSdtIHdhbnRpbmcgdG8ga25vdy4uLgo+Pgo+Pgo+
Pgo+PiBIb3cgZWFzeSBpcyBpdCB0byBhZGFwdCB0byBTbGludC9TbGFja3d3YXJlIGNvbWluZyBm
cm9tIFVidW50dSBvciAKPj4gU29sdXMgb3IgRmVkb3JhIG9yLi4uCj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

