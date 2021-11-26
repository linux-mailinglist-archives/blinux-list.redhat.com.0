Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCAB45F693
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 22:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637962731;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Dpi1kh0oie/NIPfkXR5O10+mj+n4kWdHXPZRuiXe+RE=;
	b=E/tJsZD5VXrzZeQGDzrSxAnB+ZX58whUK0muG3JoQnAVljkMTcNTinZwqU8AoqCxRnGUY4
	CpaFHP0VAxrSq6ewSwUsEoHdGyLFU4fi2swF3SfOxruwsQ4wIIZcwfYiXgxX/lpQ5/p2tj
	W3nU4BLsgpTtJgdJXTH3CdGhEVcoEBE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-374-RZ3LplgVNuG9xzNXuEl_dw-1; Fri, 26 Nov 2021 16:38:47 -0500
X-MC-Unique: RZ3LplgVNuG9xzNXuEl_dw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CAC8E190A7A1;
	Fri, 26 Nov 2021 21:38:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 88A6B2B0B8;
	Fri, 26 Nov 2021 21:38:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC7581809C89;
	Fri, 26 Nov 2021 21:38:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQLcUCH021684 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 16:38:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C63B251E4; Fri, 26 Nov 2021 21:38:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C058A51E3
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 21:38:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B33585A5BA
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 21:38:24 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-19-TW1Gu9iXMm2wGfC18i4qEA-1; Fri, 26 Nov 2021 16:38:22 -0500
X-MC-Unique: TW1Gu9iXMm2wGfC18i4qEA-1
Received: by mail-qk1-f174.google.com with SMTP id m192so16095361qke.2
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 13:38:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ErSEyCATaeV8L8HLBO23xGOW1TQ/qsrJbGeFsF9u8XY=;
	b=FMagtpiPaZaaGMmZzXc+32b+C8NsCGu5n7MYNYoamA/bBhgNnLaDZpTm4TkJmaEEGB
	x10Y+CRKyHp/SuEHGbPgK8gWbSpVq4zoDXNzFHbTSV7XIgOk4NjWWJwJGrnkvJWq/zRk
	ucmOp/xn7yh4ndsMtfYcW6TO21aO8xmfV6BUs5RArlLiZfRtQRWsU7b1OMJUZRRWZEPb
	Gkwr/bXQigT5fL9LwYp6ptmfoMBq2i/8XLThygbT7bf3Qv96wom78UMObFCfid4n8TwF
	Ka9joNTzt35gTFfgcWkIjkrBgLruP4h6QcVwm2p/LwCv2ff6wKzFauTWVtJO734V1hIP
	qXKA==
X-Gm-Message-State: AOAM532GhAL218pTsXG58YfEDMdX9hAF7YGXsGwFUiSJfojWaVRQPCx5
	5Rf6j3OUBrbxuqFs85/7R7Z1YqT5Fr2IvFP3
X-Google-Smtp-Source: ABdhPJyO4vD+u1HpgkgoBaOFT8TW1aLl5mLDuUPhnwYgv8pNpjXabDFmucFROQLBHdxSg/1CvMudSg==
X-Received: by 2002:ae9:e50f:: with SMTP id w15mr16559392qkf.769.1637962701438;
	Fri, 26 Nov 2021 13:38:21 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id u9sm3930494qta.17.2021.11.26.13.38.20
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 26 Nov 2021 13:38:21 -0800 (PST)
Subject: Re: Jumping from Solus/Ubuntu to Slint...how easy is it?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <78e0ef3a-4843-b11a-6ab4-586498b14250@gmail.com>
Message-ID: <a5db1a21-5c98-f8ca-4f04-c42db4c6fa24@gmail.com>
Date: Fri, 26 Nov 2021 16:38:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <78e0ef3a-4843-b11a-6ab4-586498b14250@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U2xpbnQgaXMgcHJvYmFibHkgdGhlIG1vc3QgcmVsaWFibHkgYWNjZXNzaWJsZSBkaXN0cmlidXRp
b24uIFlvdSBjYW4ndCAKcnVuIGEgdmlydHVhbCBzbGludCBvbiB5b3VyIGNvbXB1dGVyLCBob3dl
dmVyLCB5b3UgY2FuIGluc3RhbGwgb24gYW4gU0QgCmNhcmQgYW5kIHVzZSBpdCB3aXRob3V0IGFu
eSBhY2Nlc3NpYmlsaXR5IGlzc3Vlcy4gWW91IG5lZWQgYXQgbGVhc3QgMzIgCkdCIFNEIGRpc2su
wqAgSSBoYXZlIGl0IHJ1bm5pbmcgb24gMTI4IEdCIFNEIGRyaXZlLgoKQ2hlZXJzLAoKSWJyYWhp
bQoKT24gMTEvMjYvMjEgMzo1OSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBTbyBhcyBpdCBzYXlzLi4uLmFuZCBnaXZlbiBteSByZWNlbnQgd2hpZmZzIG9u
IHFlbXUsIHNvIGZhciAqY3Jvc3NlcyAKPiBmaW5nZXJzKiBTbGludCBpcyBzbG93bHkgaW5zdGFs
bGluZyBidXQgSSdtIHdhbnRpbmcgdG8ga25vdy4uLgo+Cj4KPgo+IEhvdyBlYXN5IGlzIGl0IHRv
IGFkYXB0IHRvIFNsaW50L1NsYWNrd3dhcmUgY29taW5nIGZyb20gVWJ1bnR1IG9yIAo+IFNvbHVz
IG9yIEZlZG9yYSBvci4uLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

