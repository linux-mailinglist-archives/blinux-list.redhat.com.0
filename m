Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 44017496E3D
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 00:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642893232;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dOvtNlv1MQAQNcT2edwUTlZph516/nrHshf3miQJneo=;
	b=QL+8GJyHYGH5Pem/aKQdVk2b8bdcARkxLQvY3qDrY2D4myrx+QszQR2uOkUKJIDmZ1BIje
	bPEgqBHqqRimo9XTKWru4b2GgYHiesgoH2Tb8BmLefZb/vd3Vw/afLbn3iqAGB9IyDl00f
	Ow1yWmhn801wrkK4kVX+kMm7Ok/W9xY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-172-0QMah9qTNdadrcZDhw6h3A-1; Sat, 22 Jan 2022 18:13:49 -0500
X-MC-Unique: 0QMah9qTNdadrcZDhw6h3A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D3F81006AA5;
	Sat, 22 Jan 2022 23:13:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D48FF5ED31;
	Sat, 22 Jan 2022 23:13:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A896B1809CB8;
	Sat, 22 Jan 2022 23:13:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20MN409l015780 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Jan 2022 18:04:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 151781121320; Sat, 22 Jan 2022 23:04:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1090C1121315
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 23:03:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E4F8985A5AA
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 23:03:56 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
	[209.85.219.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-500-Mvdj-T1hObqV0yR471Vtuw-1; Sat, 22 Jan 2022 18:03:54 -0500
X-MC-Unique: Mvdj-T1hObqV0yR471Vtuw-1
Received: by mail-qv1-f54.google.com with SMTP id g13so12758951qvw.4
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 15:03:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=3KuMMZfPBLSC49ki9ZGl/qAnr+AfK0fhLxokL4UpiCY=;
	b=RzK5QXy2NMIkig4q8ibwQMMcB/9C/z5lzdPpWWrDlRm0lkXIyd/so33lhO+P6Nbx2V
	2+LnNGH1vT41Z49OuDszeYMqqMVzUwduZhvQDHVx2a6Jwv4cviw3V9PScNOKVXoLrKQo
	mHVEetBeLvTQ6QtVBC4Aw+dipAvZOIa3aGfScWp4z+NcvWNUshKZMOoc9KvXPGdYb3Td
	OyhALSWf1gPZadFXBPH4pydry7G8WjV69/imXgeD178pVL7NX3n1Z1Zy7Y5iY8vCNGZH
	RZMTuzBkOMkSTI2l6Hat8gDreoB5E8U3Gw0ljIIXvqC0ACwMr8ptqw6DITceSLYM+r6i
	gzTg==
X-Gm-Message-State: AOAM531oEfDojy9kCqeYFRpqdRIkIn49EFY8H4JCmYmG5bQ4td46diQo
	vSERLnIIi77BPqlu0ZW2FiS8k3v0JSQ=
X-Google-Smtp-Source: ABdhPJxaqmNnH9oVFi254RjXT0xrXaXifS9SrszVzRqaH99fzec1f0R4GehUImZy4l3jOXXe6idWKA==
X-Received: by 2002:a05:6214:528c:: with SMTP id
	kj12mr9252159qvb.92.1642892634012; 
	Sat, 22 Jan 2022 15:03:54 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::31aa? ([2601:192:4c80:1420::31aa])
	by smtp.gmail.com with ESMTPSA id
	v13sm5598633qkp.116.2022.01.22.15.03.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 22 Jan 2022 15:03:53 -0800 (PST)
Message-ID: <29752c61-c1b2-7661-1452-8ac0f2c9180a@gmail.com>
Date: Sat, 22 Jan 2022 18:03:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
To: blinux-list@redhat.com
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<ede53852-20fa-cbe7-613a-5ff3b4065c9c@debian.org>
In-Reply-To: <ede53852-20fa-cbe7-613a-5ff3b4065c9c@debian.org>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBoYXZlIHRoZSBKNCBmcm9tIFRoaW5rIFBlbmd1aW4uwqAgaHR0cHM6Ly90aGlua3Blbmd1aW4u
Y29twqAgSXQncyBhIAoxMy1pbmNoIENsZXZvIGxhcHRvcCB3aXRoIDggZ2IgcmFtIGFuZCAyNTAs
IG9yIHNvLCBnYiBzc2QuwqAgSSBvcmRlcmVkIGl0IAp3aXRoIFRyaXNxdWVsIDkuMCBHTlUvTGlu
dXgsIGJ1dCB0aGV5J2xsIHB1dCBpbiBhbnl0aGluZyB5b3Ugc2F5LsKgIFRoZXkgCnNldCB1cCBt
eSBpbml0aWFsIHVzZXIgYXMgSSdkIGFza2VkLCBzbywgdGhlcmUgd2FzIG5vIHRyb3VibGUgd2l0
aCBteSAKZmlyc3QgdXNlLsKgIE1hY2hpbmVzIGZyb20gVGhpbmtQZW5ndWluIGFyZSBzZXQgdXAg
dG8gd29yayB3aXRoIApmdWxseS1mcmVlIGRpc3Ryb3MsIGxpa2UgRGViaWFuLCBUcmlzcXVlbCwg
YW5kIHRoZSBsaWtlLCBidXQgdGhleSdsbCBydW4gCmFueXRoaW5nLsKgIEknbSBub3cgdXNpbmcg
RmVkb3JhIDM1LCB3aXRoIHRoZSBsaW51eC1saWJyZSBrZXJuZWwsIGFuZCAKaXQncyB3b3JraW5n
IGZpbmUsIGFsbW9zdC7CoCBJIGZpbmQgdGhhdCB0aGUgbWFjaGluZSB3aWxsIHVzZSBhYm91dCAy
NSUgCm9mIGJhdHRlcnkgd2hpbGUgc2xlZXBpbmcgYWJvdXQgMTIgaG91cnMuwqAgSSBoYXZlIGNv
bnRhY3RlZCBUaGlua1Blbmd1aW4gCnN1cHBvcnQsIG9uIHRoaXMsIGJ1dCBoYXZlIG5vdCB5ZXQg
aGVhcmQgYW55dGhpbmcuIFRvIHN1bSB1cDrCoCBUUCBhcmUgCmdyZWF0IGF0IG1ha2luZyB0aGUg
c2FsZSwgYnV0IGZvbGxvdy11cCBjb3VsZCBiZSBiZXR0ZXIuCgoKCkNoZWVycywKCgoKRGF2ZcKg
IEguCgoKCgpPbiAxLzIyLzIyIDE3OjQ1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+IEhpLAo+IEh5cHJhIHByb3ZpZGVzIDE0IGluY2ggbWFjaGluZXMsIHdpdGgg
RGViaWFuIGFuZCBhbGwgc2V0IGZvciAKPiBhY2Nlc3NpYmlsaXR5ICgtT3JjYSwgZ29vZCB2b2lj
ZSwgTWF0ZSBkZXNrdG9wLCBGaXJlZm94LCBMaWJyZW9mZmljZSwgCj4gVGh1bmRlcmJpcmQsIGV0
YykuIFRoZXkgcHJvdmlkZSBhbHNvIGEgaGlnaCBodW1hbiBzdXBwb3J0IHRvIGxlYXJuIGFuZCAK
PiBtYWludGFpbiB0aGUgbWFjaGluZS4gSnVzdCB0aGUgbWFjaGluZSBpcyBub3QgcG93ZXJmb2wg
KE5MNTFHVSBmb3IgMTUgCj4gaW5jaCkuCj4KPiBSZWdhcmRzCj4KPgo+IEplYW4tUGhpbGlwcGUg
TUVOR1VBTAo+IERlYmlhbiBEZXZlbG9wZXIgbm9uIHVwbG9hZGluZwo+IENvbW11bml0eSB0ZWFt
IG1lbWJlcgo+IEFjY2Vzc2liaWxpdHkgdGVhbSBtZW1iZXIKPiBkZWJpYW4tbDEwbi1mcmVuY2gg
dGVhbSBtZW1iZXIKPiBQcmVzaWRlbnQgb2YgRGViaWFuIEZyYW5jZSBub24tcHJvZml0IG9yZ2Fu
aXphdGlvbgo+Cj4gTGUgMjIvMDEvMjAyMiDDoCAyMToxNiwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBJIGFtIGxvb2tpbmcgZm9yIGEgTGludXggbWFj
aGluZSB0byB1c2UgaW4gZ3JhZHVhdGUgQ1MgY291cnNlcy4gSSAKPj4gcHJvYmFibHkKPj4gd2Fu
dCBVYnVudHUgb3IgYW5vdGhlciBjb21tb24gZGlzdHJvIHRoYXQgY29tZXMgd2l0aCB0aGUgc2Ny
ZWVuIAo+PiByZWFkZXIgKEkKPj4gYXNzdW1lIE9yY2EpIGFuZCBvdGhlciBhMTF5IHN0dWZmIGFs
cmVhZHkgaW5zdGFsbGVkLiBJIGxpa2Ugc21hbGwsIGxpZ2h0Cj4+IGxhcHRvcHMgKHNpbmNlIEkg
ZG9uJ3QgdXNlIHRoZSBzY3JlZW4pIHRoYXQgaGF2ZSBkZWNlbnQgbWVtb3J5IGFuZCAKPj4gYmF0
dGVyeQo+PiBsaWZlLiBXaGljaCBtYWNoaW5lcyBhcmUgeW91ciBmYXZvcml0ZXMuCj4+Cj4+IFRo
YW5rcyBmb3IgdGhlIHRpcCBvbiBWbVdhcmUgdGhlIG90aGVyIGRheSwgQlRXLgo+Pgo+PiBBbWFu
ZGFbMF0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

