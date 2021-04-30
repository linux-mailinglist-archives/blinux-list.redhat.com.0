Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C1B32370024
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 20:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619805908;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U8+W0fXBIQdisMJoJ9ssU/iTnxT9x8xDIRe2FPeVVuw=;
	b=hVcxL1Q5HZrEaKW0WJyK58A4Ak8BA+pwoa+evVJnUmxvIbqu+ViPgtNdYua/YRmb6ZLGAe
	svjExtP48zo6J+yyifDCa2x+MzGnQfOww/4pZt1UTAycAp1/V7LppCZRo/rztLZKBQB26S
	DS2q/GkH6TKaK9/qzwJ++KVLlzpHCko=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-566-LtfmkfEDPJqH7mg19Uhehw-1; Fri, 30 Apr 2021 14:05:05 -0400
X-MC-Unique: LtfmkfEDPJqH7mg19Uhehw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72B8E1052BA5;
	Fri, 30 Apr 2021 18:05:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 175F82C6F4;
	Fri, 30 Apr 2021 18:05:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DB1DB180B463;
	Fri, 30 Apr 2021 18:04:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UI4uPY013860 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 14:04:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0994011EB3C; Fri, 30 Apr 2021 18:04:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04CEB11F4D1
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:04:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C510802A59
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:04:53 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-385-f_VtWcY0MZiKgavSwtyoSw-1; Fri, 30 Apr 2021 14:04:51 -0400
X-MC-Unique: f_VtWcY0MZiKgavSwtyoSw-1
Received: by mail-ed1-f45.google.com with SMTP id i3so57938212edt.1
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 11:04:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=xQMRpLJeXnvDuOgoLmQNtMbFhZFUnvEq/ACLwAGHGMM=;
	b=aCol/wsLpzjiZbqtakIeuU87y6jKxyJaoVzxByV6EoWdxGT8vw8B7ZpG2S6OMiaapw
	KFQ+8BrY6yg0GVTo+JRIFTjRXNA0atdb5XVltXR6Wmo9IXebSKkQYfyJOjoBHvrBSufI
	5fv19teYl46NPOUm5FpjGHBt4mAEfh1mk/g27bhc0Wk/MSJ50u2Yu9yJBj++KS5a6NpV
	XiyYb3ELrsbOd6vjDk48XpKPuUn2xwMN6nN9fZOAQLmnvPstuCFa2gFT+uohQlOSGKGB
	DzwnvK4CxneST/IXGz3VG+XZCnN9RZy04arI+fXIBHdET0Xx1P/6nFTEHF+JqER/iOu6
	AcNQ==
X-Gm-Message-State: AOAM533vkDOZMknzV7zcslSmW0sVsEGMJsYbVK5WpQ0CgzbUxHHAuaX9
	/gzrXLRrctWHUEwfvbuBRqoQh6PX2ZcVig==
X-Google-Smtp-Source: ABdhPJx+VPGvDog2QyzIBJcqApgyVO59aC+gRj9gYEo/sBkQ/YedwCgK4YNRrobCi0gxFaAOgOqWuA==
X-Received: by 2002:a05:6402:c98:: with SMTP id
	cm24mr7642115edb.18.1619805889871; 
	Fri, 30 Apr 2021 11:04:49 -0700 (PDT)
Received: from [192.168.1.7] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61]) by smtp.gmail.com with ESMTPSA id
	kt21sm1918594ejb.5.2021.04.30.11.04.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 30 Apr 2021 11:04:49 -0700 (PDT)
Subject: Re: Best Distro for Blind
To: blinux-list@redhat.com
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
Message-ID: <bfaafb21-2e97-f24e-cbe5-d9b9e56814c6@gmail.com>
Date: Fri, 30 Apr 2021 20:04:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
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

SGVsbG8gdGhlcmUsCgoKUmlnaHQgbm93LCBJIGFtIHVzaW5nIEZlZG9yYSBhcyBteSBkYXkgdG8g
ZGF5IExpbnV4IGRpc3RybywgYW5kIEknbSAKZG9pbmcgZXZlcnl0aGluZyBmcm9tIHJlYWRpbmcs
IHdyaXRpbmcsIGJyb3dzaW5nIHRoZSB3ZWIsIHNlbmRpbmcgCmVtYWlscywgYW5kIGV2ZW4gc2No
b29sIHdvcmsgd2l0aG91dCBhIGdsaXRjaCwgSSBoYXZlIGJlZW4gdXNpbmcgRmVkb3JhIApmb3Ig
b3ZlciBhIG1vbnRoIG5vdy4KCklmIHlvdSwgaG93IGV2ZXIsIHdhbnQgcmVjb21tZW5kYXRpb25z
IG9uIGRpc3Ryb2VzIHNwZWNpZmljYWxseSBtYWRlIGZvciAKdGhlIGJsaW5kLCBJJ2QgcmVjb21t
ZW5kIFNsaW50LCBhbmQgYWNjZXNzaWJsZSBDb2NvbnV0LCBhIGRpc3RybyBiYXNlZCAKb24gVWJ1
bnR1IDIwLjA0IExUUywgbG9uZyB0aXJtIHN1cHBvcnQuCgpIb3BlIHRoaXMgaGVscHMuCgpCZXN0
IHJlZ2FyZHMuCgpGcmFuY2lzY28uCgpPbiA0LzMwLzIxIDc6MjAgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGVsbG8sCj4KPgo+IEkgYW0gYSB0b3RhbGx5
IGJsaW5kIHBlcnNvbiBhbmQgYSBMT05HIHRpbWUgV2luZG93cy9KYXdzL05WREEgdXNlci4gSSAK
PiBhbSB3b25kZXJpbmcgd2hhdCB3b3VsZCBiZSBhIHJlY29tbWVuZGF0aW9uIGZvciB0aGUgYmVz
dCBkaXN0cm8vR1VJIAo+IGVudmlyb25tZW50IHRvIGJlZ2luIHVzaW5nP8KgIEkgd291bGQgbG92
ZSB0byBiZSBhYmxlIHRvIG1vdmUgYXdheSBmcm9tIAo+IFdpbmRvd3MgYW5kIHVzZSBMaW51eCBm
dWxsIHRpbWUgZm9yIGJyb3dzaW5nLCBlbWFpbCwgd29yZCBwcm9jZXNzaW5nIAo+IGFuZCBzcHJl
YWRzaGVldHMuIEkgaGF2ZSBhIFRoaW5rcGFkIFgyMjAgdGhhdCBJIGNhbiB1c2UgZm9yIExpbnV4
LiAKPiBBYm91dCAxNSB5ZWFycyBhZ28sIEkgcGxheWVkIGFyb3VuZCB3aXRoIFZlbnV4LCBidXQg
dGhhdCBwcm9qZWN0IHNlZW1zIAo+IHRvIGJlIGRvcm1hbnQgbm93LiBJIGhhdmUgYSBQaSAzQisg
cnVubmluZyBzb21lIGhhbSByYWRpbyBzb2Z0d2FyZSBhbmQgCj4gSSBoYXZlIHRvIFNTSCBpbnRv
IGl0IG9jY2FzaW9uYWxseSBhbmQgcGVyZm9ybSBzb21lIGNvbW1hbmQgbGluZSAKPiBzdHVmZi4g
Rm9yIGRhaWx5IHVzYWdlLCBJIHdhbnQgYSBmdWxsIEdVSSBlbnZpcm9ubWVudC4KPgo+Cj4gVGhh
bmtzIGluIGFkdmFuY2UgZm9yIGFueSBzdWdnZXN0aW9ucy4KPgo+Cj4gSm9obgo+Cj4KPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

