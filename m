Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F01944F53C
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 21:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636834825;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V3bv1ufeCtT0NrXN3T3y/Rw+GF1TGe/GMQM+5pxojVY=;
	b=GtShBKJAe2gUGa+jXyEOccUwsvdg/C9FLsBdFt3Zm0xd1qugiIjCmbIAsfIuC34aCZQoN0
	mPpThktwqEecDLaqDk5MkD0Fv2kH0UGF4i7PHhBq1KdWEF60x0NauWJ6WLGZbIGLXI2030
	4Ku7Nh7ezyIRhUfUrqiC29CjC+McjUQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-132-jzC3jrfFPQ-yWKsXn8aamA-1; Sat, 13 Nov 2021 15:20:21 -0500
X-MC-Unique: jzC3jrfFPQ-yWKsXn8aamA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A207815721;
	Sat, 13 Nov 2021 20:20:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 307E060862;
	Sat, 13 Nov 2021 20:20:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D00F34E58E;
	Sat, 13 Nov 2021 20:20:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADKKC6I021693 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 15:20:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 425C02026D48; Sat, 13 Nov 2021 20:20:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D3F12026D46
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 20:20:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55625811E78
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 20:20:09 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-467-2t_GsXO-MVS7N-pLqZIlyQ-1; Sat, 13 Nov 2021 15:20:07 -0500
X-MC-Unique: 2t_GsXO-MVS7N-pLqZIlyQ-1
Received: by mail-qk1-f171.google.com with SMTP id a11so5958273qkh.13
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 12:20:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=eAF/bD0wdNZrGEFjlyrF5GJWN7dzoWeDMwocAqZkjEA=;
	b=Wt6PMPqMHaNnZeVCX2vW2xLyqXPhfju6xVY+BUQL36MtLN3TSG2VVcaa0NetrvLesB
	ellNIaZMWGkeYaPbV6ZP5u5ho63VRSkoeK6T5zUQeBbG86FRiLYepkrCPiSCC/iujcxq
	MP8DaTvqlcpytMKqDp50tIpMKJ2Rt1c+FCMplIq2cXLd7CmXp74jFDnfNRukkRms6IQf
	uCVJWzRtedm8JGal1haM/ybdTxiGJQpuIYUkGq5aOQtwXeX1fwxyyslMyNt48sq/cbVh
	NgfxeFElbZp2hsXo94sRn5yLyIU7+e/D0EH9neEUIqWrYEdKLKVkwyJah9j69HpquFIc
	Vpmg==
X-Gm-Message-State: AOAM530fKpfkoAUEEZsTXu1x7E5+SrCaR+yYd/CmkdnMONP6wVk6XbEy
	ERJNKwk/AJMxAoAF5azaCzW8jUkmHcOaCg==
X-Google-Smtp-Source: ABdhPJwXYDReOPfOkMqcYKHo2y/BEfeeVMhk6J+/y8qaiAvvJsNHxyt/84KPnj5Sm43ucYLeFriqOg==
X-Received: by 2002:a37:2713:: with SMTP id n19mr19726511qkn.375.1636834806813;
	Sat, 13 Nov 2021 12:20:06 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id
	n13sm5452764qtx.68.2021.11.13.12.20.06 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 12:20:06 -0800 (PST)
Message-ID: <fb7c47d4-620f-b25f-e018-619dfde616c7@gmail.com>
Date: Sat, 13 Nov 2021 15:20:05 -0500
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
In-Reply-To: <1338bc21-40df-abe9-2c5e-98902de1854f@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VG8gYWlkIGluIHRoZSBzZXR1cCBvZiBNdXR0LCB0aGVyZSBpcyBhIHNjcmlwdCBjYWxsZWQgZmxl
YS1jb2xsYXIuwqAgWW91IAphbnN3ZXIgYSBmZXcgcXVlc3Rpb25zLCBhbmQgaXQgbWFrZXMgdGhl
ICIubXV0dHJjIiwgYmFzZWQgb24geW91ciAKYW5zd2Vycy7CoCBMYXN0IHRpbWUgSSB1c2VkIGZs
ZWEtY29sbGFyLCBJIGZvdW5kIGl0IGRpZG4ndCBzZXQgdXAgbXkgCnNpZ25pbmcgYW5kIGVuY3J5
cHRpb24gY29ycmVjdGx5LCBzbywgSSBqdXN0IGNvbW1lbnRlZCB0aGF0IHBhcnQgb2YgCiIubXV0
dHJjIiBvdXQsIGFuZCBpdCB3b3JrZWQgYXMgZXhwZWN0ZWQuwqAgTm93LCBJJ20gYSBsYXp5IGd1
aSBwZXJzb24sIAphbmQganVzdCB1c2UgdC1iaXJkLgoKCkNoZWVycywKCgpEYXZlwqAgSHVudAoK
CgpPbiAxMS8xMy8yMSAxNDozMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBSaWdodC4gSSdtIG5vdCBmb25kIG9mIHRlcm1pbmFsIGVtYWlsIGNsaWVudHMsIGJ1
dCBhcyB0ZXJtaW5hbCBlbWFpbCAKPiBjbGllbnRzIGdvLCBBbHBpbmUgaXMgcHJvYmFibHkgdGhl
IGJlc3Qgb2YgdGhlIGxvdC4gSXRzIG1lbnUgc3lzdGVtIGlzIAo+IGNlcnRhaW5seSBmYXIgZWFz
aWVyIHRoYW4gZGVhbGluZyB3aXRoIHdyaXRpbmcgYSBjb25maWd1cmF0aW9uIGZyb20gCj4gc2Ny
YXRjaCBieSBoYW5kLiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

