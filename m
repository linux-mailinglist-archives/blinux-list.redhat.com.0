Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C6A463E0EF1
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 09:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628147511;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Xj4nG4LjDeQ3K+z3IZ7Z1payEdKJr/ExJyA9DOgghCo=;
	b=HVVbST32z1HdgRrTMau5e0uteCNgyb7Oh+6gz2HF66v0TS58c/COLoZgGfejKTAgRjof6p
	YHm5zyxwTOaF3GLdxajCEs+tKR0VUVeix2Cnh/QkOFPfCLbB8rG54eXR85TFU9EtHiUqRd
	wIpmDJZmzyWUIiiBHWpthZedL9f4pTI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-5e_uRJVbMeaXm2ShEwQ78g-1; Thu, 05 Aug 2021 03:11:50 -0400
X-MC-Unique: 5e_uRJVbMeaXm2ShEwQ78g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC94487D545;
	Thu,  5 Aug 2021 07:11:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78E05421F;
	Thu,  5 Aug 2021 07:11:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 25DA24BB7C;
	Thu,  5 Aug 2021 07:11:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1757BgRR031558 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 03:11:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7E1CF101B896; Thu,  5 Aug 2021 07:11:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 793CD117A952
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 07:11:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC2B18CA953
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 07:11:36 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-547-SAFjDfQoNoKBxXgXsxU6Rg-1; Thu, 05 Aug 2021 03:11:34 -0400
X-MC-Unique: SAFjDfQoNoKBxXgXsxU6Rg-1
Received: by mail-wr1-f45.google.com with SMTP id b11so5136481wrx.6
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 00:11:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Up4VGH/ZAFzcAnyonzsuYqVJCAVW+hvErXbhYg9FYJ4=;
	b=RY/KZFymBsVgee+EUOwMcF+oO0BNee6t4WzLH2+7ROC2uLL2d4OXe63ivRNPwMEZDb
	ZiQ3p0ic10GnK3CZnLbSeuZhKREi56etDj4RNy59Z9SXaSNJ0G+qhlQqIBp/rtnsrU+r
	W+0YGeZcjX73euCZMjCv4tLPCTnWwrdnWmG3Bexb2HxcIuKXC8rLPJkQ1jXb2FaiWLT2
	3VWtEwRYJ918TeELOtr1cAu1IxQ1ZTwn9+SKp6EIpS7o3nIMKeULClFlFmOOwFC6iCLn
	FjkDIEkbS/1z8CnFkXQRAfhB/tICSg48pHa9BTH9Meo0X+BvxzzYOx7qtVUEytuYmoiG
	6FMQ==
X-Gm-Message-State: AOAM532/KEUdf5v6akWxZui8FZqQYT/gAy/I3T0dxG7wXa4ppsogVQD0
	Wfse0VobJTx8KgbOOA17qP/YueE69Z2TYA==
X-Google-Smtp-Source: ABdhPJze1NDtnd7Bo7rXB11/RfGuR9TRj5ZlwkmZiwQMgAOxq9LmF1WUT0S2IHi/RXHmgLw/+TKSAg==
X-Received: by 2002:a5d:4e91:: with SMTP id e17mr3366354wru.7.1628147492941;
	Thu, 05 Aug 2021 00:11:32 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id p5sm5519882wrd.25.2021.08.05.00.11.32
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 00:11:32 -0700 (PDT)
Subject: Re: Solus DE observations
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <B9F8B793-E7C7-445B-91D4-27AE5BE5C394@gmail.com>
	<50777D22-914C-4419-983C-1EB067198F3E@gmail.com>
	<5D8E2A74-079F-43CA-8350-F160F66BEB26@gmail.com>
Message-ID: <472476e7-415b-6265-9746-c4b87785b943@gmail.com>
Date: Thu, 5 Aug 2021 08:11:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <5D8E2A74-079F-43CA-8350-F160F66BEB26@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Tm8sIFNvbHVzIGlzIGJ1aWx0IGZyb20gdGhlIGdyb3VuZCB1cCBhcyBhbiBpbmRpZSBkaXN0cm8g
dGhhdCdzIG5vdCBhIApmb3JrIG9mIGFueXRoaW5nIGVsc2UKCk9uIDgvNS8yMSAzOjMwIEFNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IElzIFNvbHVzIGJhc2Vk
IG9uIGFyY2g/Cj4KPj4gT24gQXVnIDQsIDIwMjEsIGF0IDk6MTAgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+
PiBCZWZvcmUgeW91IHRyeSB0aGEsIHlvdSBtYXkgaGF2ZSB0byBzZXQgdXAgcG93ZXIgYnV0dG9u
IGJlaGF2aW9yIGluIHNldHRpbmdzLiAgWW91IGNvdWxkIGdldCB0aGVyZSBieSBoaXR0aW5nICJz
dXBlciIgYW5kIHR5cGluZyAicG93ZXIiLCBhbmQgZmluZGluZyB0aGUgc2V0dGluZ3Mgd2l0aCB5
b3VyIGFycm93cyBhbmQgc3R1ZmYuICBJIGRpZCBhIGxpdHRsZSBtb3JlIHBsYXkgd2l0aCBCdWRn
aWUsIG9uIHRoZSBsaXZlIHN5c3RlbSBhbmQgZmluZCB0aGF0IHRoZSAncnVuJyBkaWFsb2cgaXMg
aW5hY2Nlc3NpYmxlLiAgTm90IGEgYmxvY2tlciwgYnV0LCBhbiBhbm5veWluZyBkaXNjb3Zlcnku
Cj4+Cj4+IE1heWJlIEknbGwgdGhyb3cgQnVkZ3kgb3IgR05PTUUgb24gdGhlIHByb2Jvb2suIEkn
bSBpbnRlcmVzdGVkIGluIHdoZXRoZXIgdGhlIHNwZWVjaCBjcmFja2xpbnMgZ28gYXdheS4gIEkg
dGhpbmsgeW91IG1lbnRpb25lZCB0aGF0IHRoZXkgZG9uJ3Qgc2hvdyBpbiB5b3VyIGluc3RhbGxl
ZCBCdWRnaWUgc3lzdGVtPwo+Pgo+PiBDaGVlcnMsCj4+Cj4+IERhdmUgSC4KPj4KPj4KPj4KPj4g
U2VudCBmcm9tIG15IGlQaG9uZQo+Pgo+Pj4gT24gQXVnIDQsIDIwMjEsIGF0IDk6MDIgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+Pj4KPj4+IO+7v0kgd2lsbCB0cnkgdGhhdC4KPj4+IEkgaGF2ZSBhIHRoaW5rIHBh
ZCB3aGljaCB3YXMsIHVudGlsIGEgY291cGxlIGRheXMgYWdvLCBhIHdpbmRvd3MgdGVuIG1hY2hp
bmUuCj4+PiBOb3cgaXQgaXMgbGludXguCj4+Pgo+Pj4+IE9uIEF1ZyA0LCAyMDIxLCBhdCA3OjMw
IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRo
YXQuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IFlvdSBjb3VsZCBoaXQgdGhlIHBvd2VyLW9mZiBidXR0
b24sIGFuZCBpdCB3aWxsIGFzayB3aGF0IHlvdSB3YW50IHRvIGRvLgo+Pj4+Cj4+Pj4KPj4+PiAt
LSAgRGF2ZSAgLS0KPj4+Pgo+Pj4+Cj4+Pj4KPj4+PiBTZW50IGZyb20gbXkgTGVub3ZvIFRoaW5r
cGFkLCBydW5uaW5nIFNsaW50IEdOVS9MaW51eC4gIGh0dHBzOi8vc2xpbnQuZnIgZm9yIGluZm8K
Pj4+Pgo+Pj4+PiBPbiA4LzQvMjEgNzo1MiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4+Pj4gQSB2ZXJ5IGJhc2ljIHF1ZXN0aW9uLCBob3cgbWF5IEkgc2h1
dGRvd24gb3IgcmVzdGFydCBhIGJ1ZGdpZSBzeXN0ZW0/Cj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

