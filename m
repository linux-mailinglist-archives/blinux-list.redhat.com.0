Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EA345EFC6
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 15:20:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637936407;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=69eAalN4NH8k/2dPbAE4/Hipmfck96rS6hUd1wIoCms=;
	b=cg8Q5F46BJrhKZMwAW1bidA39WUomL6q4Bnjs7kdCSQHYMxRfs0i+MfnG4M8rQh0HlDCCj
	hh4ef928ye9leVEzvo+Va3RssasTGY3LV6z86ibz5cCUmSXA0AONoZS2U/nWL3rFaWmLmn
	SDguWOiFuY1wRBZq6yM+ikdirlZJLMQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-rJWgYZrqMx-iLKroBFf7zQ-1; Fri, 26 Nov 2021 09:20:04 -0500
X-MC-Unique: rJWgYZrqMx-iLKroBFf7zQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CBB4190B2A0;
	Fri, 26 Nov 2021 14:19:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2EB2F60BE5;
	Fri, 26 Nov 2021 14:19:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 230F61809CB7;
	Fri, 26 Nov 2021 14:19:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQEJUhB018609 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 09:19:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A361451DD; Fri, 26 Nov 2021 14:19:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CE0151DC
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 14:19:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C39CE185A7BA
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 14:19:27 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-169-qeY_L2Y3NmyZKGGhKqx2lg-1; Fri, 26 Nov 2021 09:19:26 -0500
X-MC-Unique: qeY_L2Y3NmyZKGGhKqx2lg-1
Received: by mail-wm1-f44.google.com with SMTP id
	r9-20020a7bc089000000b00332f4abf43fso7627142wmh.0
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 06:19:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=vdZJfaK1UuhgZ76RM1JOlrMmkG3c9ZD4fxvTe1rK7pw=;
	b=MpvRgYFei4h4aYUT+GBTWjQ90KkIrq730U/YOKe/g3FJEWNS5r3yzdhCMigB2sf6ug
	B5QfDR/C0RxcI2yCY7v0PTE83/YcVB90NEZzrrgGk/k/YSJ5WUn5g5Y6yl2M6Xxhy6GP
	p3xsjjeXpxLmGJizBh573ZTq6UyAJ7LBAbcle4Rv+RtJWK026JB/s7tUUxG5rF3PaVV0
	dyG54HxSqgJubhQ/ILCauvOwwDFjDcwkOz3XotP7YkL0W+40ncCs48nrhO0Wq616EA84
	aErjmL0dXaUKAu8cDmGqDwo/eleTDpS9dF2v95FiP1U9LEPb0EHCsyXUowtCx8eMjx9p
	A+xg==
X-Gm-Message-State: AOAM531t0S1ExWF0fZgZSlVq+4gQZoNYL+DMEJIqHrkX0n+PFf9VlKv2
	+Pqwrj+sTL34stkynPAJP0uxfre4d5w5xA==
X-Google-Smtp-Source: ABdhPJztP1d3GmGsBqQEKNfP3nv9rRNN0W0x0p6TJSIkpidHZ2fQBsVfteQiPZEIgVeNEUn9SIK7eg==
X-Received: by 2002:a05:600c:3b27:: with SMTP id
	m39mr16322261wms.132.1637936364390; 
	Fri, 26 Nov 2021 06:19:24 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id u23sm6079966wmc.7.2021.11.26.06.19.23
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 26 Nov 2021 06:19:24 -0800 (PST)
Message-ID: <58d807e2-9eba-497b-2927-16fdfbac397a@gmail.com>
Date: Fri, 26 Nov 2021 14:19:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Converting epubs to Plain-Text?
To: blinux-list@redhat.com
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<alpine.DEB.2.11.2111261256210.7640@debian.work>
	<b79f6e3-c28f-e3ed-56bd-d771e0aca57@hubert-humphrey.com>
In-Reply-To: <b79f6e3-c28f-e3ed-56bd-d771e0aca57@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RXhhY3RseSwgaXQgdXNlcyB0aGUgb3V0cHV0IGZpbGUgbmFtZSB5b3Ugc3BlY2lmeSBhcyB0aGUg
c2Vjb25kIGFyZ3VtZW50CgoKRm9yIGV4YW1wbGUKCgplYm9vay1jb252ZXJ0IApSZWFsbHlfcmVh
bGx5X2xvbmdfYW5kX3RyaWNreV9lYm9va190aXRsZV93aXRoX21hbnlfd29yZHMuZXB1YiAKc2hv
cnQtYm9vay10aXRsZS50eHQKCgpXb3VsZCB0dXJuIHRoYXQgcmVhbGx5LCByZWFsbHkgbG9uZyB0
aXRsZWQgZXB1YiBpbnRvIGEgc2hvcnQtbmFtZS50eHQgZmlsZQoKCk5vdGUgdGhvdWdoIHRoYXQg
aXQncyBub3QgcGVyZmVjdCB0aG91Z2ggaG93ZXZlcgoKT24gMTEvMjYvMjEgMTM6NDIsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgR2VvZmYtYW5kLVdpbGxl
bTogVGhvc2UgaW5zdHJ1Y3Rpb25zIGluIGVib29rLWNvbnZlcnQgc2VlbSB0byBpbXBseSAKPiBp
bmNvbnNpc3RhbmNpZXMuIE9uIDEgaGFuZCBpdCBzYXlzIHRoZSBmaWxlIG5hbWUgaXMgZGVyaXZl
ZCBmcm9tIGFuIAo+IGlucHV0IG5hbWUsIGJ1dCB0aGVuIEdlb2ZmIHNheXMgSSBtdXN0IHN1cHBs
eSBhbiBvdXRwdXQgbmFtZT8gV2VsbCwgSSAKPiBleHBlcmltZW50ZWQgd2l0aCBhbm90aGVyIGRv
dMKgIGVwdWIsIHBhc3RpbmcgaW4gdGhhdCBuYW1lIGFzIGFuIAo+IG91dHB1dCwgYnV0IHJlcGxh
Y2luZyBhbiBleHRlbnRpb24gd2l0aCBhIGRvdCB0eHQuIEl0IHdlbnQgdGhyb3VnaCBhIAo+IHBy
b2Nlc3MsIHNlZW1pbmdseSBmaXJzdCBjb252ZXJ0aW5nIHRvIGFuIGh0bWwsIGJ1dCB0aGVuIGEg
dHh0LiBUaGFua3MgCj4gaW4gYWR2YW5jZQo+IENoaW1lCj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

