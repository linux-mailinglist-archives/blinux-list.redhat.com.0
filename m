Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.151.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F522468EA7
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 02:53:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638755580;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=til4qviXU1gL3Mmssnyavo5zNHJPD37hauW3E0a3kIE=;
	b=EjWqunw/DJkrl2hyVbbjpFoQtFZfCjqbfI6hZJ95FqF1OFzJgXNVd22HlrF+mqwDEeDeyG
	e1HqzDMmNiXZIWkKhYj7eQUce3CZI7P6wvq91chkMf3EgwfjMtmRubdeF8ykee5VdTPy05
	BIzN73KGX/emVdx6e1k0oVWjMXiNt20=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-2-Ow6F8bxhMRu8BWlWSQgS1A-1; Sun, 05 Dec 2021 20:52:56 -0500
X-MC-Unique: Ow6F8bxhMRu8BWlWSQgS1A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 70B871006AA1;
	Mon,  6 Dec 2021 01:52:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE87C5DAA5;
	Mon,  6 Dec 2021 01:52:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5BF34BB7B;
	Mon,  6 Dec 2021 01:52:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B61pVdf013727 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 20:51:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CF9ED141DC5D; Mon,  6 Dec 2021 01:51:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB139141DC57
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 01:51:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE49B29AA386
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 01:51:31 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-457-sX_RDxQtP3WHGN27jY6n0g-1; Sun, 05 Dec 2021 20:51:30 -0500
X-MC-Unique: sX_RDxQtP3WHGN27jY6n0g-1
Received: by mail-wm1-f54.google.com with SMTP id
	77-20020a1c0450000000b0033123de3425so9306917wme.0
	for <blinux-list@redhat.com>; Sun, 05 Dec 2021 17:51:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=miQM2k8zmMCYpJdZunfiKRs+lLF52jVa/J1ivZ/98ZI=;
	b=XtDe+nX4ZfQTrFMxw11voMvxJtt/IxP7R1oyeuuLcXVCESJERPgREXiCqerlhdgTLR
	oDCM+1wT7nCCziEPgGDb2YNsxzcHZPvO1scr7IBojq/UXheCiJqz/ZDCt3Eg1d5sUTQv
	Ve3pEe4boLv2uYMsqQqAKMynp1VUSU+SGAHIJb0go26NSvbm3BgJCjY/Kb8nRkN758d7
	50igniu/PSBplusTPtgCwXvSviqZwdy3HK1fwFdQ7TJDbRHQQV8kFgUdMEIxEZbYIr+t
	9wnNnwKTj+87XX1pmnIXScZ1N/5Xc4HSFiJkPBr9dILeVZlmcsvy6SZgA+747uMgrhka
	P/Sw==
X-Gm-Message-State: AOAM531G+mgAFAGHyj/LBvdpb1ufTRkzcUdQ51lp0YovHoDCQl6pkFYg
	noBYZTL6NfbKX0ZcRLMf0zsOUKFYXFmBSg==
X-Google-Smtp-Source: ABdhPJyqw1cXevcYeFzm9mQlz9YeirWtFl3Vk3qHy/jmLt5CoU2OTG0qxGmlgcdYrWaQT3c54aEq1w==
X-Received: by 2002:a05:600c:500d:: with SMTP id
	n13mr34698263wmr.174.1638755488765; 
	Sun, 05 Dec 2021 17:51:28 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id
	bg34sm12684929wmb.47.2021.12.05.17.51.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Dec 2021 17:51:28 -0800 (PST)
Message-ID: <459ce7d5-11e4-8707-77f8-0a4c46bb8899@gmail.com>
Date: Mon, 6 Dec 2021 01:51:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: blinux-list@redhat.com
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
	<b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
	<47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
	<alpine.NEB.2.23.451.2112051228080.13531@panix1.panix.com>
	<88b763bc-c035-735f-0efe-dea5f26182d6@gmail.com>
In-Reply-To: <88b763bc-c035-735f-0efe-dea5f26182d6@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

V2FpdC4uLk1pZG9yaSB3b3JrcyB3aXRoIE9yY2E/IE5lYXQgaWYgc28uLi4uaG9wZWZ1bGx5IHRo
ZXkgZml4ZWQgdGhlIApjcmFzaGluZyB3aXRoIGl0LgoKSSd2ZSBuZXZlciBnb3QgaXQgdG8gd29y
ayB0aGF0IHdlbGwsIHdpdGggYSBxdWljayBwYWNtYW4gLVMgTWlkb3JpIGFuZCAKdHJ5aW5nIGl0
LCBpdCBpc24ndCBwaWNraW5nIHVwIE9yY2EgcnVubmluZyBzbyBkbyBJIG5lZWQgZmxhZ3MgZm9y
IGl0IGEgCmxhIENocm9taXVtIG9yIGRvIEkgbmVlZCBhIGRldmVsIHZlcnNpb24gb3Igc29tZXRo
aW5nP0hvdwoKCk9uIDEyLzUvMjEgMTg6MDQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4gRGlsbG8gZ2l2ZXMgbWUgbm8gc3BlZWNoIGF0IGFsbCBoZXJlLCBhbmQg
ZXZlbiB0YWIgc2F5cyBub3RoaW5nLiBBcyBJIAo+IHJlY2FsbCwgSSd2ZSB0cmllZCBkaWxsbyBz
ZXZlcmFsIHRpbWVzIG9uIHZhcmlvdXMgZGlzdHJpYnV0aW9ucywgYW5kIAo+IGF0IG5vIHRpbWUg
aGF2ZSBJIGJlZW4gYWJsZSB0byBnZXQgaXQgc3BlYWtpbmcuIE9uIHRoZSBvdGhlciBoYW5kLCBJ
IAo+IGRvIHN0aWxsIHNlZW0gdG8gaGF2ZSBmYWlybHkgZ29vZCBsdWNrIHdpdGggTWlkb3JpLCB3
aGljaCBpcyBhYm91dCB0aGUgCj4gZmFzdGVzdCBhbmQgbW9zdCBsaWdodHdlaWdodCBicm93c2Vy
IHRoYXQgd29ya3Mgd2l0aCBPcmNhIHRoYXQgSSBrbm93LiAKPiBJdCBzZWVtcyB0byBoYXZlIHNv
bWUgZ2xpdGNoZXMsIGVzcGVjaWFsbHkgcGxhY2VzIHdoZXJlIGl0IGdldHMgc3R1Y2ssIAo+IGJ1
dCBpdCBkb2VzIG1vc3RseSB3b3JrIE9LLsKgIEhhdmluZyBzYWlkIHRoaXMsIFNlYW1vbmtleSwg
d2hpY2ggeW91IAo+IGluZGljYXRlZCB5b3UgYWxyZWFkeSBoYXZlLCBpcyBhYmxlIHRvIHJlcGxh
Y2UgYm90aCBGaXJlZm94IGFuZCAKPiBUaHVuZGVyYmlyZCwgYW5kIHlvdSBjYW4gc3RhcnQgaXQg
YXMgZWl0aGVyIGFuIGVtYWlsIGFwcGxpY2F0aW9uIHVzaW5nIAo+IHRoZSBjb21tYW5kIGxpbmUK
Pgo+IHNlYW1vbmtleSAtLW1haWwKPgo+IG9yIGFzIGEgYnJvd3NlciBqdXN0IGJ5IHJ1bm5pbmcg
aXQgd2l0aG91dCBhbnkgZmxhZ3Mgb3Igd2l0aCBhIFVSTC4gCj4gSSdtIG5vdCBzdXJlIGl0J3Mg
YW55IGxpZ2h0ZXIgdGhhbiBGaXJlZm94IHdoZW4gaXQgcnVucyBhcyBhIGJyb3dzZXIsIAo+IGJ1
dCBpdCBjZXJ0YWlubHkgZG9lcyBhcHBlYXIgdG8gYmUgbGlnaHRlciB0aGFuIFRodW5kZXJiaXJk
IHdoZW4gdXNlZCAKPiB0byByZWFkIGFuZCB3cml0ZSBlbWFpbC4KPgo+IH5LeWxlCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

