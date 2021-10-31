Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B8D440F34
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 16:42:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635694932;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UPwFi2acG3r1P4+fYVYFKs2k6AvbfCE8McVGdlf3iHo=;
	b=SRYCBejcPYE/spMXie/2979O9o2NC7MjnLlymBhiRQAMtxq51ha4GhIDVnrK6YBCcdBbZK
	6guGKbxEGNkCkfcsStxUqzplz2UaV10WIXWl+ffCrZNPhjByutjo2ao4C8Ek3+f5vtSHgx
	7/Iw8S4owN0xS8ThoqPUwsdDldlz//Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-485-ArL-g_vmMK-DJxmULECn0Q-1; Sun, 31 Oct 2021 11:42:08 -0400
X-MC-Unique: ArL-g_vmMK-DJxmULECn0Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EF0EF79EDD;
	Sun, 31 Oct 2021 15:42:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C7941017CE3;
	Sun, 31 Oct 2021 15:42:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 14C7E4EA2A;
	Sun, 31 Oct 2021 15:42:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VFfuRU007703 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 11:41:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1ED6F40D1B9D; Sun, 31 Oct 2021 15:41:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1AABF40C1252
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 15:41:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0046680015A
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 15:41:56 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-505-uklnNeirMtKq_e3qG8cR2w-1; Sun, 31 Oct 2021 11:41:53 -0400
X-MC-Unique: uklnNeirMtKq_e3qG8cR2w-1
Received: by mail-qv1-f49.google.com with SMTP id gh1so9716988qvb.8
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 08:41:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6QMw7p7XWO/ZLyYfQKmY6wsRmJV776iGd58Q16fgWXg=;
	b=ZOcPSylMo7k/RztzdNK57m6C+qHESmycMOa9wm/kTKtWYg5O6+XE/NwDHsUDo+qUjr
	/aYiatMcCpUdz+oZx8YPrp+Z+fCGzreD9YiXfv0S/0tnENZmchKKCWc8eVgccU1U6y8b
	yfGfCELWA/T6FaH1VUtNgOi5C31+iiyfEH+GASrvKN96ybtwbQVE8Kwb7UJz0IFy+zmz
	KNYtnHX2xhsHwJnkbImieOei7fdd91gqza+9fROQrJ8l+7Nmtsl59BHvSEXhH6OonFoL
	cnUAOyM66xKcA9Cn2kqQwk6f/Y88PZ6Y2t828wk6XPOoju81emHGckCzsysveElxMn4W
	cSJQ==
X-Gm-Message-State: AOAM531/o45gOjqe2BZhBkjkiEIQI52WAuSuVd5GE+7nAd5+thNHZQW9
	CbaHEvwitSe6Udrz0PVlWcmw5YhIDrSEiw==
X-Google-Smtp-Source: ABdhPJxqond87vmGx6WgI2IEecgmC5zh/Mrntq+HCTRck9217U2HInqIZRVD7bdHj6vlm7ckYeJViw==
X-Received: by 2002:a05:6214:e83:: with SMTP id
	hf3mr22652273qvb.1.1635694913019; 
	Sun, 31 Oct 2021 08:41:53 -0700 (PDT)
Received: from ?IPv6:2601:152:4000:330:ecc7:904f:eeef:bd75?
	([2601:152:4000:330:ecc7:904f:eeef:bd75])
	by smtp.gmail.com with ESMTPSA id
	bp11sm2240599qkb.24.2021.10.31.08.41.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 31 Oct 2021 08:41:52 -0700 (PDT)
Subject: Re: have any of you mannaged to successfully install linux alongside
	with windows?
To: blinux-list@redhat.com
References: <8e1506f5-960a-0c44-4008-087d87da5e7d@gmail.com>
	<bbde2318-352c-e9ad-96ad-e7ea4ec0b902@slint.fr>
Message-ID: <410ded38-fa8a-0ce5-feb7-cfce77b2cb8f@gmail.com>
Date: Sun, 31 Oct 2021 15:41:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <bbde2318-352c-e9ad-96ad-e7ea4ec0b902@slint.fr>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIGEgbWlsbGlvbiBEaWRpZXIsCgpUaGlzIGlzIGEgZ3JlYXQgaGFuZGJvb2suIE9uZSBv
ZiB0aGUgdGhpbmdzIHdoaWNoIGRpc2NvdXJhZ2VkIG1lIGZyb20gCmFkb3B0aW5nIGxpbnV4IGlu
IHRoZSBwYXN0IHdhcyB0aGUgbGFjayBvZiBlYXN5IHRvIGZvbGxvdyAKZG9jdW1lbnRhdGlvbnMu
IEV2ZXJ5dGltZSBJIHRyaWVkLCBJIGZvdW5kIG15c2VsZiBicm93c2luZyBpbiBoaWdobHkgCnRl
Y2huaWNhbCBkb2N1bWVudHMgdGhhdCBzb3VuZGVkIGxpa2UgYSBmb3JlaWduIGxhbmd1YWdlIHRv
IG1lLiBUaGlzIApoYW5kYm9vayBzZWVtcyB0byBhdm9pZCB0aGlzIHByb2JsZW0uCgpJIHdpbGwg
Y2VydGFpbmx5IHRyeSBzbGludCwgaWYgaXQgY2FuIGJlIHVzZWQgYXMgYSBsaXZlIGluc3RhbGwg
d2l0aG91dCAKaGF2aW5nIHRvIHBoeXNpY2FsbHkgaW5zdGFsbCBvbiBteSBoYXJkIGRpc2MuIEkg
d2lsbCBhbHNvIGJyb3dzZSB0aGlzIApoYW5kYm9vayB0byBsZWFybiBtb3JlIGFib3V0IHNsaW50
LgoKVGhhbmtzIGZvciB0aGlzLiBJIHdpbGwgY2VydGFpbmx5IG5lZWQgeW91ciBoZWxwIGlmIEkg
aW5zdGFsbCBpdCBvbiBteSAKaGFyZCBkaXNjLiBXaGF0IEkgd2FudCBpZGVhbGx5IGlzIHRoZSBh
YmlsaXR5IHRvIGhhdmUgYm90aCBsaW51eCBhbmQgCndpbmRvd3MgcnVubmluZyBvbiB0aGUgc2Ft
ZSBtYWNoaW5lLCBhbmQgSSBjaG9vc2Ugd2hpY2ggb25lIHRvIHN0YXJ0IGF0IApib290dXAuCgpS
ZWdhcmRzLAoKSWJyYWhpbQoKT24gMTAvMzEvMjEgNDowNiBBTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIZWxsbyBJYnJhaGltLAo+Cj4gdGhpcyBpcyBlYXNp
bHkgZG9uZSB3aXRoIFNsaW50LCBpZiBXaW5kb3dzIGJvb3RzIGluIEVGSSBtb2RlOgo+IGh0dHBz
Oi8vc2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwKPgo+IENoZWVycywKPiBEaWRpZXIKPiAtLSAK
PiBEaWRpZXIgU3BhaWVyCj4gU2xpbnQgbWFpbnRhaW5lcgo+Cj4KPiBMZSAzMS8xMC8yMDIxIMOg
IDA0OjE4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+
IEhlbGxvIGZvbGtzLAo+Pgo+PiBJIGhhdmUgYmVlbiBwbGF5aW5nIHdpdGggTGludXggbWludCBh
bmQgQWNjZXNzaWJsZSBDb2NvbnV0IGZvciBvdmVyIAo+PiAyNCBob3Vycy4gSSBhbSBnZXR0aW5n
IHRvIGxpa2UgdGhpcyBzeXN0ZW0uIEhvd2V2ZXIsIFdoZW4gSSAKPj4gY29udGVtcGxhdGVkIGlu
c3RhbGxpbmcgb24gbXkgaGFyZCBkaXNrLCBJIGZvdW5kIHRoZSBpbnN0YWxsYXRpb24gCj4+IHBy
b2Nlc3MgYSBsaXR0bGUgY29uZnVzaW5nIGFuZCBzY2FyeS4gSSBhbHdheXMgcmV2ZXJ0ZWQgYmFj
ayBhbmQgCj4+IGFib3J0ZWQgdGhlIGluc3RhbGxhdGlvbiB0byBwcmV2ZW50IGFuIHVuaW50ZW5k
ZWQgZGFtYWdlIHRvIG15IAo+PiB3aW5kb3dzIG9wZXJhdGluZyBzeXN0ZW0uCj4+Cj4+IElmIGFu
eSBvZiB5b3UgaGF2ZSBzdWNjZXNzZnVsbHkgbWFuYWdlZCB0byBpbnN0YWxsIGxpbnV4IGFsb25n
c2lkZSAKPj4gd2l0aCB3aW5kb3dzIG9uIHRoZSBzYW1lIGhhcmQgZGlzaywgcGxlYXNlIGFkdmlz
ZSBtZSBvbiBob3cgdG8gZ28gCj4+IGFib3V0IGl0IHNhZmVseS4KPj4KPj4gUmVnYXJkcywKPj4K
Pj4gSWJyYWhpbQo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

