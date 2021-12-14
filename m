Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F3C4742E7
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 13:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639486124;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Lyv2rtoEY7r7AgYz76424A/Kh03qTH5L2nkA0p49WMI=;
	b=AKx/UG3mM0t7uTdG/gP14Jr2+IN0gLUsdItzezSw4Mww86aSXHVkAyX/SqAmtWAcemzw/u
	1YS8dP1xmuaIBbrplMuswuy6Zp9+caAMlet7p7Abluqnyz+EqKQpU2NCBJ9jDhH4FHlwPu
	vhtWkmhSzQyvn0W+wCoIvlhus1qPKRo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-122-1N_LbzuyOoG_BCBx3L6Yxg-1; Tue, 14 Dec 2021 07:48:41 -0500
X-MC-Unique: 1N_LbzuyOoG_BCBx3L6Yxg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CC8510168D0;
	Tue, 14 Dec 2021 12:48:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AACF75BE1B;
	Tue, 14 Dec 2021 12:48:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 65EBF180BAAE;
	Tue, 14 Dec 2021 12:48:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BECl8Hj030134 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 07:47:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1649A2026D2F; Tue, 14 Dec 2021 12:47:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11AB32026D5D
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:47:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F39A51C1CD41
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:47:04 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-541-n_slTzXjPIqzdZLOsbZtWg-1; Tue, 14 Dec 2021 07:47:03 -0500
X-MC-Unique: n_slTzXjPIqzdZLOsbZtWg-1
Received: by mail-wm1-f45.google.com with SMTP id
	az34-20020a05600c602200b0033bf8662572so13690466wmb.0
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 04:47:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=lRnD3Sdg7K9y12vdtMw8JBe/pELu3oU5loSzVpiQFMg=;
	b=fyKb6v20sFXbP2ZGg5wEuPRjO6ZjBQy5h9ulkSJObCWteCAbHrkB4dg/dChUH6ZsVo
	yBAYyq3dqfaEgGFxlM0xXDGc2HdPlY7iAFd1cLZpWJ7+3gFXGRT2vw6N/4apUKKgNC3x
	rf41LkJnn27q3a9vdNgdNvPZcp0LrXHRbUO8iOWcNCHwRI7dLBzeFa11/24rgPkZvMSu
	e4SG76IuXZC38GDvNRezOKZ4sPhvq4bk7N2YRqk/xotGSQPVFPDZefdFXqXAoXqwqyYg
	lqxcnXFOteTIJ6OFERoRDRNuLUPwNRnXetuJ0l8tCYvqvrIWDJlSG1VShJodmOqLiAOO
	8l4w==
X-Gm-Message-State: AOAM532PTaq2mDe/HOJ8Wgba5b6tbeDdHlAJJTPyQB2pOPGQ4imXGFGD
	Iz/I/E0TDw6ULQrNz/nCRiWKZASEscfQaA==
X-Google-Smtp-Source: ABdhPJyTzdqfY4r8RSmVLv8o71uKunZAczc+yKke2Ym+pVgDPYmvgZG2I6qP6c/1zMLUNnA+uH9WUQ==
X-Received: by 2002:a05:600c:4793:: with SMTP id
	k19mr47084778wmo.72.1639486021891; 
	Tue, 14 Dec 2021 04:47:01 -0800 (PST)
Received: from [192.168.8.130] ([197.184.183.90])
	by smtp.gmail.com with ESMTPSA id
	b15sm18458206wri.62.2021.12.14.04.47.00 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 04:47:01 -0800 (PST)
Message-ID: <70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
Date: Tue, 14 Dec 2021 14:46:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Attempting a Jenux install, again.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSSBkaWQgdXNlIHRoZSBsYXRlc3QgYXMgb2YgYWJvdXQgMTUgaG91cnMgYWdvLiBJIGRp
ZCBhbHNvIHZlcmlmeSB0aGUgaXNvLgoKClRoZSBpc3N1ZSB0aGlzIHRpbWUgaXMgdGhhdCBhZnRl
ciBydW5uaW5nIHRoZSBpbnN0YWxsZXIgYW5kIHJlYm9vdGluZywgCm5vdGhpbmcgc3Bva2UuIHRo
ZSBzZWVpbmdBSSBvbiB0aGUgaXBob25lIGNvdWxkIHJlYWQgdGhlIHNjcmVlbiBqdXN0IApmaW5l
LCBidXQgSSBjb3VsZG4ndAoKCkxhc3QgdGltZSBpdCB3YXMgb3JjYSBpbiBNYXRlIHRoYXQgZGlk
bid0IHdhbnQgdG8gY29tZSBvbiwgbm8gbWF0dGVyIAp3aGF0IEkgZG8uCgoKSSBmb3VuZCB0aGF0
IHdpdGggSmVudXgsIG5ldmVyIGV4cGVjdCB0aGUgc2FtZSB0aGluZyB0byBnbyB3cm9uZyB0d2lj
ZSwgCmhvd2V2ZXIgc29tZXRoaW5nIHdpbGwgYnJlYWsuCgoKV2FybSByZWdhcmRzLAoKCkJyYW5k
dAoKT24gMjAyMS8xMi8xNCAxNDozMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBKZW51eCBnZXRzIHJlZ3VsYXIgdXBkYXRlcyBsYXRlc3QgaXMgMjAyMS4xMS4x
NyB1bmxlc3MgdGhhdCBjaGFuZ2VkIHRvZGF5Lgo+IERpZCB5b3UgdmVyaWZ5IHlvdXIgaXNvIGRv
d25sb2FkPyAgSWYgSSBmaW5kIGFuIC5zaGE1MTIgZmlsZSBmaWxlIGZvciBhbgo+IGlzbywgSSB3
b24ndCBpbnN0YWxsIHRoZSBpc28gd2l0aG91dCBmaXJzdCB2ZXJpZnlpbmcgaXQgd2l0aCB0aGUg
LnNoYTUxMgo+IGZpbGUuICBTbyB0d28gcG90ZW50aWFsIHByb2JsZW1zIG5vdCB1c2luZyBjdXJy
ZW50IEplbnV4IGluc3RhbGwgaXNvIG9yCj4gZmFpbGVkIHRvIHZlcmlmeSBpc28uICBJZiB5b3Ug
ZG9uJ3QgaGF2ZSB0aG9zZSB0d28gcHJvYmxlbXMsIHBsZWFzZSB3cml0ZQo+IGRubC5uYXNoQGdt
YWlsLmNvbSBhbmQgbGV0IGhpbSBrbm93IHRoZSBwcm9ibGVtIHlvdSBlbmNvdW50ZXJlZCBvbiB5
b3VyCj4gaW5zdGFsbCBmYWlsLiAgVGhhdCBvbmUgaXMgdGhlIGRldmVsb3Blci4KPgo+Cj4gT24g
VHVlLCAxNCBEZWMgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPgo+PiBIaSwKPj4KPj4KPj4gSmVudXggZmFpbGVkIG9uIG1lLCBhZ2Fpbi4gSSB0aGluayBJ
J2xsIGdpdmUgaXQgYSBza2lwIGZvciBub3csIHRoYXQgaXMgdW5sZXNzCj4+IHRoZSBkZXYgYWN0
dWFsbHkgZml4ZXMgdGhlIHRoaW5nLgo+Pgo+Pgo+PiBJIGFtIG9uIEZlZG9yYSwgZm9yIG5vdywg
YmVjYXVzZSBpdCB3YXMgdGhlIG5lYXJlc3QgVXNiIHN0aWNrIEkgY291bGQgZ3JhYgo+PiBxdWlj
a2x5Lgo+Pgo+Pgo+PiBJIG1pZ2h0IGp1c3QgZ2l2ZSB0aGUgdmFuaWxsYSBBcmNoIElTTyBhbm90
aGVyIGdvLiBXaHkgbm90Pwo+Pgo+PiBPbiAyMDIxLzEyLzE0IDEzOjA1LCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gIMKgb3IgTWFuamFybyBBcmNoaXRlY3Qu
Cj4+Pgo+Pj4gUGVyc29uYWxseS4gSSd2ZSBoYWQgc3VjY2VzcyB3aXRoIHRoZSB2YW5pbGxhIEFy
Y2ggSVNPIGFuZCB0aGUgZ3VpZGVkCj4+PiBpbnN0YWxsZXIgKHRoZSBhcmNoaW5zdGFsbCBvbmUp
LCBJIGp1c3Qgc2V0IGl0IHRvIGJvb3QgdXAgdGFsa2luZywgd2VudAo+Pj4gdGhyb3VnaCBpdCBh
bmQgYWRkZWQgaW4gYWxzYS11dGlscy9lc3BlYWt1cCBhbmQgdGhlbiBwdXQKPj4+IHNwZWVjaC1k
aXNwYXRjaGVyL09yY2Evdm9pY2VzIGFuZCBhIHdpbmRvdyBtYW5hZ2VyIG9uIG9uY2UgdGhlIHN5
c3RlbSB3YXMKPj4+IGluc3RhbGxlZC4KPj4+Cj4+Pgo+Pj4gSmVudXggaGFzIG5ldmVyIHJlYWxs
eSB3b3JrZWQgZm9yIG1lIG9uIGEgVk0gb3IgYmFyZSBtZXRhbCBhdCBhbGwsIHdoZXJlYXMKPj4+
IHRoZSBvZmZpY2lhbCBhcmNoIElTTyBpcyB3b3JraW5nIHJhdGhlciB3ZWxsLCBhbmQgSSBkdW5u
byBpZiB0aGUgQXJjaGl0ZWN0Cj4+PiBlZGl0aW9uIGlzIDM2LzY0IGJpdCBvciAzMmJpdCBvbmx5
IG9yIDY0Yml0IG9ubHkuIEFkbWl0dGVkbHksIEkndmUgZ290IGEKPj4+IDY0Yml0IFVFRkkgc3lz
dGVtIHNvIHRoZSBvZmZpY2lhbCBJU28gd29ya3MgZmxhd2xlc3NseSBvbiBpdCBob3dldmVyLCBi
dXQKPj4+IFlNTVYgb24gdGhhdCBvbmVZZXMsIGJ1dCB5b3UgcHJvYmFibHkgZG9uJ3Qgd2FudCB0
byBoZWFyIGl0IGlmIHlvdSBhcmUgc2V0Cj4+PiBvbiB1c2luZyBKZW51eCBob3dldmVyLgo+Pj4K
Pj4+IE9uIDEyLzE0LzIxIDA5OjE4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+Pj4+IEhpIGFsbCwKPj4+Pgo+Pj4+IEkgZGVjaWRlZCB0byBnaXZlIEplbnV4IGFu
b3RoZXIgZ28sIGxhc3QgdGltZSwgbm8gbWF0dGVyIHdoYXQgSSB0cmllZCwgSQo+Pj4+IGNvdWxk
bid0IGdldCBvcmNhIHRvIGNvbWUgb24gYWZ0ZXIgbG9nZ2luZyBpbiB0byB0aGUgc3lzdGVtLgo+
Pj4+Cj4+Pj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgYWR2aWNlPwo+Pj4+Cj4+Pj4gQWxzbywgaWYg
dGhpcyBkb2Vzbid0IHdvcmsgb3V0LCBpcyB0aGVyZSBhIGd1aWRlIGZvciBkb2luZyBhIE1hbmph
cm8KPj4+PiBhcmNoaXRlY3QgaW5zdGFsbD8gIk1hbmphcm8gVGFsa2luZyIgZ290IHVwZGF0ZWQg
YSBsaXR0bGUgd2hpbGUgYWdvLCBhbmQKPj4+PiBpZiwgYXMgSSBzYWlkLCBKZW51eCBkb2Vzbid0
IHdvcmsgb3V0LCBJJ2QgbGlrZSB0byBnaXZlIHRoYXQgb25lIGEgZ28uCj4+Pj4KPj4+PiBUaGFu
a3Mgc28gbG9uZy4KPj4+Pgo+Pj4+IFdhcm0gcmVnYXJkcywKPj4+Pgo+Pj4+IEJyYW5kdCBTdGVl
bmthbXAKPj4+Pgo+Pj4+IFNlbnQgZnJvbSBteSBNYWNCb29rIEFpcgo+Pj4+Cj4+Pj4gQ29udGFj
dDoKPj4+Pgo+Pj4+IFBob25lOiArMjcgKDApNjAgNTI1IDkxODEgPHRlbDovLysyNzYwNTI1OTE4
MT4KPj4+Pgo+Pj4+IEVtYWlsOiBicmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbSA8bWFpbHRvOmJy
YW5kdC5zdGVlbmthbXBAZ21haWwuY29tPgo+Pj4+Cj4+Pj4gVHdpdHRlcjogQGJyYW5kdHN0ZWVu
a2FtcCA8aHR0cDovL3d3dy50d2l0dGVyLmNvbS9icmFuZHRzdGVlbmthbXA+Cj4+Pj4KPj4+Pgo+
Pj4+Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKCi0tIApXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZyb20gRmVk
b3JhIExpbnV4IHVzaW5nIFRodW5kZXJiaXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

