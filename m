Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3B4263CA0CD
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 16:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626359863;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sSZTLqsAUYedva/yP6jx2QYkreD3E9pDAJkV+1Bwwqo=;
	b=aX2fj3vs/8j49lwAl9KUfgPkpR/uYoHt4SQZl9OyeMoUkJTDnbILFngjuNbAT/+UrTh2Hm
	bHWHZe/7GHc0kJYE8d3B5sUBw5JnSZZu3Zx2Vds2FYVtEfEJ2UZ3Cd9lTcAJ61gFgYbgz4
	lZl6P1NsK3ULlMYFY9IL3qptskxmaL4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-dt3zSgONNPKezCXxaXROLA-1; Thu, 15 Jul 2021 10:37:41 -0400
X-MC-Unique: dt3zSgONNPKezCXxaXROLA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 771E2824F87;
	Thu, 15 Jul 2021 14:37:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE3851054FB8;
	Thu, 15 Jul 2021 14:37:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D715918095C2;
	Thu, 15 Jul 2021 14:37:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16FEbR8H006112 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 10:37:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D11811037B5; Thu, 15 Jul 2021 14:37:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA65A106A31
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 14:37:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C89F9108C20E
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 14:37:24 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-487-ZtAz5uf9OBaFFx3Dh6ibvQ-1; Thu, 15 Jul 2021 10:37:22 -0400
X-MC-Unique: ZtAz5uf9OBaFFx3Dh6ibvQ-1
Received: by mail-qk1-f181.google.com with SMTP id p202so5347613qka.12
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 07:37:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=lBkKZ22Iey4JR2BCQj9zD1QpHylYvHVwUd3OUGXcYwg=;
	b=PJgqk/w8NvEfUIqucDU7ObywyZHnMFRtYOBLAWt3glYWLX271ojCJsMBbDhoDukHck
	tZfZHV85dukR3d4p6I4plnJK9WdWXVKXm1b66BjqYKe1JT4VyUVIlQffbEFo4H0eKLW4
	/Us84Spx/aODDGiYgodVRcX3kkZj6GpbvCsnl5iWNdC0ef1arvIWF1BNjq10q1lb9U35
	zVyalLSpRQBwk2KZnFrTsGOGRNU0nrF6SBKZm3PuYLUN0zPDkttHICGQl38UpLHcBXa5
	P9GvGnX59lqKbPu+Il6be7SDPTGAve8EoAFAqqFTsdSe/rh7FTzpoBWq4BIt49lJEzLL
	+kBA==
X-Gm-Message-State: AOAM5324MjH6L+rVE1E3WRI//nmRRVewwQWSIuSmPjw5Y6G+eS7RXLFq
	8/duVte0lXxKdYCqfY/yE9ct3t1/+PKVGw==
X-Google-Smtp-Source: ABdhPJw8Jm0cKZ8nTNrZRdXwSvn6XUH+NEJIuDmSEGdculzoPvHocG3MzoJN80Zn7ztqCdBAtiBH/w==
X-Received: by 2002:a05:620a:16cf:: with SMTP id
	a15mr4288810qkn.484.1626359841969; 
	Thu, 15 Jul 2021 07:37:21 -0700 (PDT)
Received: from ?IPv6:2600:6c5e:1e00:1a88:2122:c30a:b17:4af3?
	([2600:6c5e:1e00:1a88:2122:c30a:b17:4af3])
	by smtp.gmail.com with ESMTPSA id
	k24sm2570159qkk.25.2021.07.15.07.37.21 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 15 Jul 2021 07:37:21 -0700 (PDT)
Subject: Re: VScode not accessible?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4c94df7a-b105-d608-35eb-ff3c05943866@gmail.com>
	<2c4f363c-d7da-0b0f-67d6-d2a588b59994@gmail.com>
Message-ID: <243063de-44b3-4ba9-008a-a4350b018470@gmail.com>
Date: Thu, 15 Jul 2021 10:37:18 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <2c4f363c-d7da-0b0f-67d6-d2a588b59994@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqAgSGkuCgpBZGQgdGhpcyBhdCB0aGUgZW5kIG9mIHRoZSBzaG9ydGN1dCdzIGNtbWFuZCBl
ZGl0IGJveC4KCi0tZm9yY2UtcmVuZGVyZXItYWNjZXNzaWJpbGl0eQoKVGhhdCdzIGhvdyBJIGdv
dCBtaW5lIHRvIHdvcmsuCgpUaGF0IHdvcmtzIG9uIGEgZ29vZCBiaXQgb2YgZWxlY3Ryb24gYXBw
cywgYXQgbGVhc3QgdGhlIG9uZXMgSSB1c2UuCgpodGgKCkJyeWFuIE1ja2lubmlzaAoKCk9uIDcv
MTUvMjAyMSA2OjQ5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IDE1LjA3LjIwMjEgMTI6MjksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
0L/QuNGI0LXRgjoKPj4gQXMgaXQgc2F5cy4uLnRyeWluZyBvdCBmaW5kIGEgZ29vZCBjb2RlIGVk
aXRvciBmb3IgUnVieSBvbiBVYnVudHUgMjAuMDQKPj4KPj4gU28sIEkgZmlndXJlZCBhbHJpZ2h0
LCBsZXQncyBnaXZlIFZTQ29kZSBhIHNob3QuIE5vcGUuIFRoZSBlZGl0b3IgaXMgCj4+IGN1cnJy
ZW50bHkgaW5hY2Nlc3NpYmxlIG1lc3NhZ2UsIHNvLi4uLgo+Pgo+PiBJcyB0aGVyZSBhIGdvb2Qg
YWx0ZXJuYXRpdmUgb3IgZGlkIEkgZ2V0IHRoZSB3cm9uZyB2ZXJzaW9uIGJ5IHNuYXAgCj4+IGlu
c3RhbGxpbmcgaXQ/Cj4+Cj4+Cj4geW91IG5lZWQgdG8gZW5hYmxlIHZzY29kZSBhY2Nlc3NpYmls
aXR5IAo+IGh0dHBzOi8vY29kZS52aXN1YWxzdHVkaW8uY29tL2RvY3MvZWRpdG9yL2FjY2Vzc2li
aWxpdHkKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

