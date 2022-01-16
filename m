Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B65848FDC8
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 17:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642349691;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x47Oe179pVjeqEYnPQBYoS/lp/tzckfp1JR2oyHcF50=;
	b=J7t1lQBb4SsHNAxXp7PwmHTpN5asfot2YO4BoZ4uADMlHLV8bSlEFAhTUyQ1WsjGyyMCaL
	xARBVwEJDZEB7eWmlQ6kvf4+p5/RsmPbKZIkhar3cUKJumNhImFoVGD3ay8PO0L4FWSGGY
	YwOjhr8VmNo8xknM3mdN99PmT+OVKYU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-651-barfrV4JNwmR73zKns8PxA-1; Sun, 16 Jan 2022 11:14:47 -0500
X-MC-Unique: barfrV4JNwmR73zKns8PxA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ABE90835B4C;
	Sun, 16 Jan 2022 16:14:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64E557A54A;
	Sun, 16 Jan 2022 16:14:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 338FA1809CB8;
	Sun, 16 Jan 2022 16:14:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GGEasf030002 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 11:14:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6BABC492CA3; Sun, 16 Jan 2022 16:14:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66FB0492C3B
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 16:14:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4AD5D80029D
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 16:14:36 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-19-B3IBNgpqN_OZPGgoNej-HQ-1; Sun, 16 Jan 2022 11:14:34 -0500
X-MC-Unique: B3IBNgpqN_OZPGgoNej-HQ-1
Received: by mail-wm1-f47.google.com with SMTP id
	d187-20020a1c1dc4000000b003474b4b7ebcso17069837wmd.5
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 08:14:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=7KIArW3L8lOl80FDDXGQI7gPzkcSXDadO45tNE0j6tc=;
	b=8Asgrl94e9LvnU9bJpA6RobinCSN4GQFMSs1KdExFM0hOJxDvNk7S64ReWQIyQQ4To
	9xX0fwBW4KYUCLTgY+Xffv2iA59yNzH5KPU3oAx+M/3pMIlEoqPF3uhyZVYLDs2UYNF8
	9Qw+KPSjKZy+9fXO2+gxEwKeH6HPbL3CWdH3luj2JULiNiGgnzphvLSfchi6RGK7baCz
	+mZ+/cg1YfEKKofrbMfyFH31qbPqaccnYRQpr7+F4JfEoCEhOnaV+80zHT8Uh1ynK4X5
	qNW5snf6vc7/CAMe5bbpcdbPmHPb/9bQkZKRPoAQzXaUY8HjpL2b20bKo6EST6iGskZE
	i/ZQ==
X-Gm-Message-State: AOAM532ARQWi+9Owuc5iyNn8ZzN9z3cnkFWp6C/Nb7fSed2kOvsjUnGC
	1Y3NgoFycucuuAJOinW+DuBBVMJwdtc=
X-Google-Smtp-Source: ABdhPJxZrlf/QhgxqvNh/IscCPjjQGgoxm8qzU8T0L8zx9vLHTXzDAzEgeUAqnvupduXwEPjnoT63g==
X-Received: by 2002:a5d:560e:: with SMTP id l14mr16498809wrv.619.1642349673070;
	Sun, 16 Jan 2022 08:14:33 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.181.219])
	by smtp.gmail.com with ESMTPSA id
	g11sm2359575wrd.53.2022.01.16.08.14.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 08:14:32 -0800 (PST)
Subject: Re: Getting Started with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
Message-ID: <8b1b8fcb-2513-2ac8-77db-4aa49e3c225a@gmail.com>
Date: Sun, 16 Jan 2022 18:14:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB3b3VsZCBwZXJzb25hbGx5IGFsc28gcmVjb21tZW5kIGdpdmluZyBTbGludCBhIGdvIGZvciB0
aGUgc2FtZSByZWFzb25zIAphcyBiZWZvcmUgbWVudGlvbmVkLCBhbmQgYWxzbyBiZWNhdXNlIEkn
dmUgbmV2ZXIgaGFkIGEgc3lzdGVtIGJlZm9yZSAKdGhpcyBJIGNvdWxkbid0IGJyZWFrIHRvIHRo
ZSBwb2ludCB3aGVyZSBJIGNvdWxkbid0IHJlcGFyZSBpdCBteXNlbGYuIApTbGludCBpcyBhY2Nv
cmRpbmcgdG8gbXkgZXhwZXJpZW5jZSBhbG1vc3QgdW5icmVha2FibGUuCgoKV2FybSByZWdhcmRz
LAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCBmcm9tIHRoZSBTbGludCBtYWNoaW5lIHVzaW5nIFRo
dW5kZXJiaXJkCgpPbiAyMDIyLzAxLzE2IDE3OjQ4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+IElzIHRoZXJlIGEgcmVhc29uIHdoeSB5b3UgaGF2ZW4ndCB0cmll
ZCBTbGludCwgSG93YXJkPyBJdCdzIGFjY2Vzc2libGUKPiBvdXQtb2YtdGhlLWJveCAmIGlzIGxp
a2VseSBhIGdvb2Qgc3RhcnRpbmcgcG9pbnQgZm9yIGEgYmVnaW5uZXIuICYKPiBpdCdzIGRldmVs
b3BlciBpcyBhIHJlZ3VsYXIgcGFydGljaXBhbnQgb24gYmxpbmQgTGludXggbWFpbGluZyBsaXN0
LAo+IGluY2x1ZGluZyAxIG9mIGhpcyBvd24sIEkgYmVsaWV2ZS4KPgo+IE9uIDEvMTYvMjIsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+PiBXZWxsLCBpdCBzb3VuZHMgbGlrZSB5b3UncmUgdGVsbGluZyBtZSB0byBydW4g
bGludXggdW5kZXIgd2luZG93cz8gVGhhdAo+PiBpc24ndCB3aGF0IEkgaGFkIGluIG1pbmQuwqAg
SGVyZSdzIHdoYXQgSSd2ZSBsZWFybmVkIHRodXMgZmFyOgo+PiBJIG5lZWQgdG8gZG93bmxvYWQg
YSBsaW51eCBPUzsgdGhlbiBtYWtlIGEgYm9vdGFibGUgbWVkaWEgYW5kIGluc3RhbGwKPj4gdGhl
IGxpbnV4IElTTyB0byBpdC4KPj4KPj4gV2VsbCwgSSBkaWQgdGhhdDoKPj4gZG93bmxvYWRlZCB1
YnVudHUtMjAuMDQuMy1kZXNrdG9wLWFtZDY0Lmlzbwo+PiBhbmQgKGZvciBmbGFzaGluZyBpdCB0
byB0aGUgdGh1bWIgZHJpdmUpIGJhbGVuYUV0Y2hlci1Qb3J0YWJsZS0xLjcuMy5leGUKPj4gbWFk
ZSBhIGJvb3RhYmxlIHRodW1iIGRyaXZlIGFuZCBpbnN0YWxsZWQgdWJ1bnR1IG9uIGl0Lgo+Pgo+
Pgo+PiBOb3cgSSBuZWVkIHRvIGxlYXJuIGhvdyB0byBpbnN0YWxsIHVidW50dSBmcm9tIHRoZSB0
aHVtYiBkcml2ZS7CoCBJIG11c3QKPj4gc2VhcmNoIGZvciBpbnN0cnVjdGlvbnMgdG8gZ28gb24g
ZnJvbSBoZXJlLgo+Pgo+PiBUaGFua3MuCj4+IEhvd2FyZAo+Pgo+Pgo+PiBPbiAxLzE1LzIwMjIg
NTo1MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IFVi
dW50dSBvciBGZWRvcmEgY291bGQgZG8gdGhhdCBmb3IgeW91LiAgYWx0LXdpbmRvd3MtcyB0b2dn
bGVzIHNwZWVjaCBvbgo+Pj4gYW5kIG9mZiBhbmQgeW91IHdhbnQgdG8gY2hvb3NlIHRyeSB1YnVu
dHUgb3IgdHJ5IGZlZG9yYSBidXR0b25zIG9uIHRoZQo+Pj4gZGVza3RvcCBzY3JlZW4uICBEZXNr
dG9wIHNjcmVlbiBpcyB3aW5kb3dzLWQgb25jZSBzeXN0ZW0gYm9vdHMgYW5kIHlvdQo+Pj4gaGF2
ZSBzcGVlY2guCj4+Pgo+Pj4KPj4+IE9uIFNhdCwgMTUgSmFuIDIwMjIsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pgo+Pj4+IEhlbGxvIGFsbCwKPj4+Pgo+Pj4+
IEkndmUgYmVlbiB3YW50aW5nIHRvIHRyeSBvdXQgbGludXggYnV0IGhhdmVuJ3Qgd2FudGVkIHRv
IGdpdmUgdXAgb3IgbWVzcwo+Pj4+IHVwCj4+Pj4gYW55IG9mIG15IHdvcmtpbmcgd2luZG93cyBz
eXN0ZW1zLsKgIFdvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGluc3RhbGwgc29tZQo+Pj4+IHZlcnNp
b24gb2YgbGludXggb24gYSBDRCBvciBhIERWRDsgdGhlbiBqdXN0IGJvb3QgYSBjb21wdXRlciBm
cm9tIHRoYXQKPj4+PiBkaXNrCj4+Pj4gYnlwYXNzaW5nIHdpbmRvd3MgYWx0b2dldGhlcj/CoCBJ
ZiBzbywgSSdkIGhhdmUgdG8gbWFrZSBpdCBlaXRoZXIgdGFsayBvcgo+Pj4+IGRyaXZlCj4+Pj4g
YSBCcmFpbGxlIGRpc3BsYXkuCj4+Pj4KPj4+PiBXb25kZXIgaWYgYW55b25lIHdvdWxkIGhhdmUg
YW55IHN1Z2dlc3Rpb25zP8KgIFRoYW5rIHlvdS4KPj4+Pgo+Pj4+IEhvd2FyZAo+Pj4+Cj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+
Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

