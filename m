Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2DED42FB4FA
	for <lists+blinux-list@lfdr.de>; Tue, 19 Jan 2021 10:38:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611049104;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0+b+n2g1tjHP4uX5z4k/F4o4i30Vp71J51y2Q3OQ2ro=;
	b=YV17LxIHB4xwwUcwqsdMGa57fehhrlGsJM5BmhgKUvcoTQReCnLNx2XdKtKfxry2r1ytJO
	/7fvKh33iDCVUYhhDZbgqJYaO+jTMJ/jSLiP0x+ruzm23MS1cyzLTpPkiXE/359hVBOEya
	uAkxm9CyCryvOnuRNm3UfB29j4XOpDw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-3lKYyXOLPOSm8btm-oJD4g-1; Tue, 19 Jan 2021 04:38:22 -0500
X-MC-Unique: 3lKYyXOLPOSm8btm-oJD4g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 91A73190B2A2;
	Tue, 19 Jan 2021 09:38:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71F185D9F8;
	Tue, 19 Jan 2021 09:38:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5BA844E58E;
	Tue, 19 Jan 2021 09:38:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10J9bW78015139 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 19 Jan 2021 04:37:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9FB3F86D6E; Tue, 19 Jan 2021 09:37:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A80E8576F
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 09:37:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77ACC18811FA
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 09:37:30 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
	[209.85.218.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-415-a6a1K-SUNSKjVmD_1UOobg-1; Tue, 19 Jan 2021 04:37:28 -0500
X-MC-Unique: a6a1K-SUNSKjVmD_1UOobg-1
Received: by mail-ej1-f53.google.com with SMTP id g3so8164388ejb.6
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 01:37:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=NzyfAWJFC0snXomRGZG6yIcpCWQCE96j5o+osvgsK8U=;
	b=K5x55YkAhNN8RMzOJR7EwO3JjvH46hOcsvWv4RVH/M17Jz26rkPg5LGLBYrtchcOkk
	2/oLaqJEh4JkqH96Zyu5LW2QEyaQQoIIoQ0gqP8EOacPhMJErnrhsQwMg8FptoSQzUsF
	Ljal82ead/XFGXyyC5fsLrFZoE3gEOq+uDoi0Q/bsB2iBGgmVIFsDxK4AGkzhjHBgNM7
	V/w8uekr14xEXCfR2Rlgwfd/tb61WDEqyv6+Yl7Hbgr+s6uCLzRDT92mESwoq2whO4oR
	e/Rqe5Ft7ysIKI18ij58Ky+bHiU39FPv69DK1n3s1/Bg45NVUmt49Vqyt9vMOGknF4SA
	gzjg==
X-Gm-Message-State: AOAM5300oCx5zS3T+9gPKlyrNajolM6e91frbGnBoGGcU7VaRvgnDQrK
	eCLFk933FnMQyJHo/RIjP9JDtcs21sBwcw==
X-Google-Smtp-Source: ABdhPJwi5J4C31r+VsYlVwoNCO8qDtUAl1yulgeohHG0Yj17ubtYv7+6aDzLCvrP4azIF1fF4Nn5Mg==
X-Received: by 2002:a17:906:a453:: with SMTP id
	cb19mr2393242ejb.459.1611049046990; 
	Tue, 19 Jan 2021 01:37:26 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	bo12sm564580ejb.93.2021.01.19.01.37.25 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 19 Jan 2021 01:37:25 -0800 (PST)
Subject: Re: Have you experienced Voxin completely freezing the speech?
To: blinux-list@redhat.com
References: <161102486156.7.5980584801147920523.3154268@slmail.me>
Message-ID: <518e6e42-3891-8d49-060d-7f27a9bbcdeb@gmail.com>
Date: Tue, 19 Jan 2021 12:37:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161102486156.7.5980584801147920523.3154268@slmail.me>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MTkuMDEuMjAyMSA1OjU0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uINC/0LjR
iNC10YI6Cj4gSGksCj4gSSBoYXZlIFZveGluIHdpdGggVm9jYWxpemVyIHZvaWNlcyBpbnN0YWxs
ZWQgb24gbXkgTGludXggTWludCBNQVRFIGxhcHRvcC4gSXQgd29ya3MgZmluZSwgYXMgbG9uZyBh
cyBpdCBkb2VzIG5vdCBlbmNvdW50ZXIgYW4gRW1vamkgb25saW5lLgo+IEFzIHNvb24gYXMgVm94
aW4gcmVhZHMgYW4gb25saW5lIEVtb2ppLCBpdCBjb21wbGV0ZWx5IGZyZWV6ZXMgdGhlIHNwZWVj
aC4KPiBJIGNhbid0IHJlYWxseSBhdm9pZCBlbW9qaXMgb25saW5lLiBUaGV5J3JlIGV2ZXJ5d2hl
cmUuIFNvIEkgY291bGQgYmUgcmVhZGluZyBhIGJsb2cgcG9zdCBhbmQgc29tZW9uZSB1c2VzIGFu
IGVtb2ppIGFuZCBpdCB3aWxsIHRvdGFsbHkgZnJlZXplIFZveGluLgo+IEkgdGhlbiBoYXZlIHRv
IHBsdWcgaW4gdGhlIEJyYWlsbGUgRGlzcGxheSB0byBuYXZpZ2F0ZSB0aHJvdWdoIHRoZSBzaWxl
bnQgbWVudXMgdG8gZ2V0IHRvIHRoZSBPcmNhIHByZWZlcmVuY2VzIG1lbnUgYnV0IGV2ZW4gd2hl
biBJIHNldCB0aGUgc3ludGhlc2l6ZXIgYmFjayB0byBFU3BlYWsgdGhlIHNwZWVjaCBqdXN0IHN0
YXlzIGZyb3plbiB1bnRpbCBJIHNodXQgZG93biB0aGUgY29tcHV0ZXIgYW5kIHRoZW4gaXRzIGZp
bmUgb25jZSBpdCByZXN0YXJ0cyBldmVyeXRoaW5nIHNwZWFrcyBhZ2Fpbi4KPiBUaGlzIGRvZXMg
bm90IGhhcHBlbiB3aXRoIGFueSBvdGhlciBUVFMgc3ludGggSSB1c2UuCj4gSSB1c2UgRVNwZWFr
IG9uIExpbnV4IE1pbnQgYW5kIGl0IGRvZXMgbm90IHVzdWFsbHkgZnJlZXplIGxpa2UgdGhpcy4K
PiBJIGFsc28gdXNlIFJIVm9pY2Ugb24gTGludXggTWludCBhbmQgaXQgZG9lcyBqdXN0IGZpbmUg
d2l0aCBFbW9qaXMuCj4gVm94aW4gaXMgdGhlIG9ubHkgc3ludGggd2hlcmUgSSBleHBlcmllbmNl
IHRoaXMgcHJvYmxlbSBvZiBpdCBmcmVlemluZyB0aGUgc3BlZWNoIG9uY2UgaXQgcmVhZHMgYW4g
RW1vamkuCj4gQXMgb2Ygbm93LCBJIG9ubHkgaGF2ZSBWb3hpbiBvbiBteSBMaW51eCBNaW50IE1B
VEUgbGFwdG9wLgo+IEkgaGF2ZSBub3QgdHJpZWQgaW5zdGFsbGluZyBWb3hpbiBvbiBteSBvdGhl
ciBsYXB0b3Agd2l0aCBTbGludCB5ZXQuIFNvIEkgZG8gbm90IGtub3cgaWYgdGhpcyBpcyBvbmx5
IGFuIGlzc3VlIHdpdGggVm94aW4gd2hlbiBpbnN0YWxsZWQgb24gVWJ1bnR1IGJhc2VkIHN5c3Rl
bXMuLi4gb3Igbm90Lgo+IEJ1dCBJJ2QgbGlrZSB0byBiZSBhYmxlIHRvIHVzZSBWb3hpbiBvbiBM
aW51eCBNaW50IE1BVEUgd2l0aG91dCBpdCBmcmVlemluZyB0aGUgc3BlZWNoIHdoZW5ldmVyIFZv
eGluIGVuY291bnRlcnMgYW4gRW1vamkgb25saW5lLgo+IEhhdmUgYW55IG9mIHlvdSBleHBlcmll
bmNlZCBWb3hpbiBmcmVlemluZyB0aGUgc3BlZWNoPyBEb2VzIGl0IHNlZW0gbGlrZSBFbW9qaXMg
Y2F1c2UgdGhpcyBnbGl0Y2ggZm9yIHlvdT8gSXMgdGhlcmUgYSB3b3JrIGFyb3VuZCBmb3IgdGhp
cz8KcGxlYXNlIGxvb2sgYXQgaHR0cHM6Ly9naXRodWIuY29tL1JIVm9pY2UvUkhWb2ljZS9pc3N1
ZXMvMjU1IGZvciBhIApwb3NzaWJsZSB3b3JrIGFyb3VuZC4KCj4gVGhhbmtzLAo+IFNMCj4KLS0g
CgpTaW5jZXJlbHksIEFsZXhhbmRlci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

