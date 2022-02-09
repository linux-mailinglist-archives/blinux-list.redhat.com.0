Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A73DA4AEED1
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 11:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644400845;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bc4wFFf51EbMFLMkRkSZaVUSAeX5PqpwZhsb2VUpT8A=;
	b=Kc2wNJ9xyCPWc3gV5dwubmfChJZjKUOsnHNh82pwY/lNmy3ElA0pckYsz7sqF4V67jikPv
	yKN+jPRGwnbN8P3SJiFhc54bGhBjZHkmpea0rqiZ7bPRr/zAPjgU5YMm5XEuflsUjxtmFZ
	X34HjwxJA/q8tbfPwl3HcddBzdwR2dM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-310-tzyQMo-CO6Ch9sQ61gzznQ-1; Wed, 09 Feb 2022 05:00:41 -0500
X-MC-Unique: tzyQMo-CO6Ch9sQ61gzznQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 072F2100C63F;
	Wed,  9 Feb 2022 10:00:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B22260C2E;
	Wed,  9 Feb 2022 10:00:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EEE501809CB8;
	Wed,  9 Feb 2022 10:00:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219A09a7026632 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 05:00:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CF30E492CA3; Wed,  9 Feb 2022 10:00:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB0B0492D1B
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:00:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B167E8027FC
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:00:09 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-255-tetPIK6xMIGiGyy3jwbDkw-1; Wed, 09 Feb 2022 05:00:08 -0500
X-MC-Unique: tetPIK6xMIGiGyy3jwbDkw-1
Received: by mail-wr1-f47.google.com with SMTP id k18so3007482wrg.11
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 02:00:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Z+sf/CoFek5BtTp3cSDYKdfOTu6/Cvs7HQz1YNhz71w=;
	b=u4Bpr6DrlP5pL8XjnlUv8xr1JEf7r2kuseLTLaTOXfSko7x3s2eZgCjqdOZivwNbAz
	4j3RRJYtwjrpGWu/Q4ymfZIv64cPwGBX8sgfJpg5NGNSgCpXUJ58UhtVCSRUyR7kzUcK
	LDKpuYoNsPuHksy32oRSGcT8D8HwpTsxiR428UJOlJtiP21mzo5FaNfix8onGNtWlxyb
	o7TCRRbhBEAevlmaAb+lRG0U8nh4+9i9esJp2YUMBqHIUEPb7CtvYFECdGblIeQAFyIc
	CJmjs7HnLQ+Sfo/KFTMwuOQ4JH6nDoXcE4H2y6+B0Rw02T9HEJw4dHXaFagngr5+dlI+
	j+bw==
X-Gm-Message-State: AOAM533GtEgQRbgiS0rt20aLr9BmWX9bmjxs9Fr2kGH8MSRqcsSppcJ0
	XthE/Kx7dLfMm5Q4QA3+trUD+H2O2O30QQ==
X-Google-Smtp-Source: ABdhPJx+ELGZezCO14XhiILjy73M7ntN0fWj70Aa9v4xw4ri2TrQqiMtDd7aHQBMwVzlaAMN6Nw/Kg==
X-Received: by 2002:a05:6000:1e15:: with SMTP id
	bj21mr1409000wrb.222.1644400806256; 
	Wed, 09 Feb 2022 02:00:06 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	y15sm22037521wry.36.2022.02.09.02.00.05 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 09 Feb 2022 02:00:05 -0800 (PST)
Subject: Re: De-arrowing my system...how easy it is?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
	<20220208193544.19898f78@bigbox.attlocal.net>
Message-ID: <12bbdceb-725c-2656-4958-963f46426ed8@gmail.com>
Date: Wed, 9 Feb 2022 10:00:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <20220208193544.19898f78@bigbox.attlocal.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhdCdzIG1vc3RseSB3aGF0IEknbSBsb29raW5nIGZvciwgaG9wZWZ1bGx5IHNvbWV0aGluZyBs
aWtlIHRoYXQgZXhpc3RzIApmb3IgU2VhbW9ua2V5LiBBbmQgeWVzLCB1bmRlciBYCgpMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IFRpbSBoZXJlLiAgSSBkbyBrbm93
IHRoYXQgc29tZSBicm93c2VycyBoYXZlIGFkZC1vbnMgeW91IGNhbiBpbnN0YWxsCj4gbGlrZSB2
aW1pdW0gb3IgdHJpZGFjdHlsIGZvciBGaXJlZm94IHRoYXQgcHJvdmlkZSB2aS1saWtlCj4ga2V5
YmluZGluZ3MuCj4KPiBIb3dldmVyLCBJJ20gdW5hd2FyZSBvZiBhbnkgc3lzdGVtLXdpZGUgc29s
dXRpb24gYW5kIHN1c3BlY3QgaXQgd291bGQKPiBiZSBhIGJpdCB0ZWRpb3VzLiAgSSdkIGF2b2lk
IHVzaW5nIGNvbnRyb2wsIHNoaWZ0LCBvciBhbHQgaW4gYW55Cj4gcGVybXV0YXRpb24gd2l0aCBh
IGxldHRlciB0byBnZXQgdGhlIGFycm93LWtleXMgYmVjYXVzZSBsb3RzIG9mCj4gYXBwbGljYXRp
b25zIHVzZSBhbHQrbGV0dGVyLCBjb250cm9sK2xldHRlciwgc2hpZnQrbGV0dGVyLCBvcgo+IGNv
bnRyb2wrc2hpZnQrbGV0dGVyL2FsdCtzaGlmdCtsZXR0ZXIvY29udHJvbCthbHQrbGV0dGVyLiAg
U28gaWYgSQo+IGhhZCB0aGUgZGVzaXJlIHRvIHRyeSB0aGlzLCBJJ2Qgc3VnZ2VzdCB1c2luZyB5
b3VyIE1vZDQgKGFsc28ga25vd24KPiBhcyB0aGUgV2luZG93cyBMb2dvIGtleSwgdGhlIFN1cGVy
IGtleSwgZXRjKSBzaW5jZSBtb3N0IGFwcGxpY2F0aW9ucwo+IGRvbid0IHVzZSB0aGlzIGtleS4g
IEp1c3QgYWJvdXQgYWxsIG9mIG15IHdpbmRvdy1tYW5hZ2VyIGtleS1iaW5kaW5ncwo+IGFyZSB0
aWVkIHRvIHRoaXMgbW9kaWZpZXIga2V5Lgo+Cj4gSSBkb24ndCBrbm93IGlmIHlvdSdyZSBpbiBw
dXJlIGNvbnNvbGUgb3IgaWYgeW91J3JlIHVzaW5nIFguICBJdAo+IG1pZ2h0IGJlIGEgYml0IG1v
cmUgZGlmZmljdWx0IGluIHRoZSBwdXJlIGNvbnNvbGUsIHNvIEknZAo+IGludmVzdGlnYXRpbmcg
aG93IHRvIGNyZWF0ZSBhIGtleWJvYXJkIG1hcCB0aGF0IGNvbnZlcnRzIHRoaW5ncyBsaWtlCj4g
TW9kNCtoIHRvIGJlIHRoZSBsZWZ0IGFycm93LCBNb2Q0K2wgdG8gYmUgdGhlIHJpZ2h0IGFycm93
LCBldGMuCj4gSG93ZXZlciwgdGhpcyBpcyBzb21ld2hhdCBzeXN0ZW0tZGVwZW5kZW50LiAgSXQg
bG9va3MgbGlrZSB0aGVyZSdzCj4gc29tZSBndWlkYW5jZSBoZXJlCj4KPiBodHRwczovL3dpa2ku
YXJjaGxpbnV4Lm9yZy90aXRsZS9MaW51eF9jb25zb2xlL0tleWJvYXJkX2NvbmZpZ3VyYXRpb24K
Pgo+IHBhcnRpY3VsYXJseSBpbiB0aGUgIkNyZWF0aW5nIGEgY3VzdG9tIGtleW1hcCIgc2VjdGlv
bi4KPgo+IElmIHlvdSdyZSBkb2luZyBpdCBpbiBYLCB0aGUgc2FtZSBrZXltYXAgaWRlYSBtaWdo
dCBhbHNvIHdvcmssIGJ1dAo+IHlvdXIgd2luZG93LW1hbmFnZXIgbWlnaHQgYWxsb3cgeW91IHRv
IGRvIGEgY291cGxlIG9uZS1vZmYga2V5cwo+IHdpdGhvdXQgbWVzc2luZyB3aXRoIGtleWJvYXJk
IG1hcHMsIGlzc3VpbmcgYSBjb21tYW5kIGxpa2UgbWFwcGluZwo+IE1vZDQraCB0byBleGVjdXRl
Cj4KPiAgICB4ZG90b29sIGtleSAtLWNsZWFybW9kaWZpZXJzIExlZnQKPgo+IEl0IGdldHMgYSBs
aXR0bGUgdHJpY2t5IGlmIHlvdSB3YW50IHRvIGRvIGNvbnRyb2wrbGVmdCBvciBzaGlmdCtsZWZ0
Cj4gc28geW91J2QgaGF2ZSB0byBoYW5kbGUgZWFjaCBpbmRpdmlkdWFsbHkuCj4KPiBIb3BlIHRo
aXMgZ2l2ZXMgeW91IHNvbWUgaWRlYXMsCj4KPiAtVGltCj4KPiBPbiBGZWJydWFyeSAgOCwgMjAy
MiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gICDCoMKgwqAg
U28sIHRoaXMgaXMgc29tZXRoaW5nIEknbSB3b25kZXJpbmcuCj4+Cj4+IEdpdmVuIEknbSBvbiBt
eSBsYXB0b3AgY3VycmVudGx5LCBJJ20gd29uZGVyaW5nIGhvdyBlYXN5IGl0J2QgYmUgdG8KPj4g
c2hpZnQgdGhlIGFycm93IGtleXMgZnVuY3Rpb24gdG8sIHNheSwgY29udHJvbCtzaGlmdCBhbmQg
bWF5YmUgdGhlCj4+IHZpbSBrZXkgYmluZGluZ3Mgc28gSSBkb24ndCBoYXZlIHRvIHRha2UgbXkg
aGFuZHMgZW50aXJlbHkgb2YgdGhlCj4+IGtleWJvYXJkIHRvIGRvIHRoaW5ncyB0aGF0IHRoZSBh
cnJvdyBrZXlzIGRvLCBsaWtlIG5lYXZpZ2F0aW5nIGEKPj4gd2ViIHBhZ2UsIHNlbGVjdGluZyB0
ZXh0LCBhbmQgc28gb24/Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

