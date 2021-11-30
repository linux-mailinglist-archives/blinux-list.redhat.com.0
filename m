Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 864E3463C44
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 17:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638291063;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xN5a11uCRpqJ9fEzI9wm2WmBi5GiMdhwKJpw0vK8znQ=;
	b=OiztzDyD6Kso8xJx892M8WAfCq4vX66h/o9IVupGgnWkZoQKQv5YGhtmv3zd7+QqYR1ubk
	QEgfCIZjo0Eo1Zm1p58MraRQvXCJjSZN9mHIYrycieC5G+iC0FW7zReqMRkmrINQ1uyP8h
	JmVDy99G/FXvufK4sJU62uJCK3L3RwU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588-csXL6prjPhiMmGgCVXXwnQ-1; Tue, 30 Nov 2021 11:50:58 -0500
X-MC-Unique: csXL6prjPhiMmGgCVXXwnQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7A70190A7A8;
	Tue, 30 Nov 2021 16:50:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B204276612;
	Tue, 30 Nov 2021 16:50:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0B2B24BB7C;
	Tue, 30 Nov 2021 16:50:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUGoZeF005309 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 11:50:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9035C492C3B; Tue, 30 Nov 2021 16:50:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C362492C38
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 16:50:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71C3C811E7F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 16:50:35 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-347-dqi3o-_hN9eJ30XOkMiD9w-1; Tue, 30 Nov 2021 11:50:33 -0500
X-MC-Unique: dqi3o-_hN9eJ30XOkMiD9w-1
Received: by mail-qk1-f173.google.com with SMTP id m186so27481936qkb.4
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 08:50:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=igfWHv/6KMNIBSNs33cZRzixw3HPgRv591fvtrm4aSo=;
	b=fQmVOkn9H77x5CbF8QM/W3r57YgcDYMYX0HHMwWD+2V93pFrjxOwnPP9c9sZP2iNzu
	P0woT7s1fq9B0z4phCts0CvC2wnNhDkz6f6ajDRGOGqPNXhdOfCF3jhDhFIChvt2UXKU
	4bWuQL8C6R6DoLLpM4jKYDlVdq1qQ2AgY4qFSTvj283FCutltR/Bc7VgeLxt3x1331XW
	pti3Z8UxHwrg5bbPo6o64op+Y81QfdarnZiF6gAmPKqOn7R3iZqnmqGxf70rvPmWz8c5
	0ERSEfZNL1GMt5K1JGcfsvBZtcqAv4X/7Dnf8vhvk75ztY5rjDnk0J/07bftZ87qRgtW
	RNMg==
X-Gm-Message-State: AOAM531e+ylYuy6S1NaTyKKQA5DswOaok89qI9gsLc56QHKW8L2u2XmV
	7pRb58/Om2nSya/EtHzV4xnFX+xr4LXE8q0q
X-Google-Smtp-Source: ABdhPJzgeiJv1PcMU95PwUlvqRF2i8xdpBehhXn/jWiCGr9HeIqH4O4htZKX/ZDREgp2FwY4NZ7IhQ==
X-Received: by 2002:a05:620a:22b7:: with SMTP id
	p23mr487722qkh.156.1638291032522; 
	Tue, 30 Nov 2021 08:50:32 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	t35sm11361084qtc.83.2021.11.30.08.50.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 08:50:31 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
Message-ID: <fbe62f18-abaf-ac16-9f35-feab63c910d9@gmail.com>
Date: Tue, 30 Nov 2021 11:50:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2hhdCB3b3VsZCBhIGZsYXRwYWsgZG8gZm9yIG1lIGFzIGEgZGVza3RvcCBndWkgdXNlcj8gTXkg
dW5kZXJzdGFuZGluZyAKaXMgdGhhdCBpcyBzdXBwb3NlZCB0byBhbGxvdyBtZSB0byBydW4gcGFj
a2FnZXMgd2hpY2ggYXJlIG5vdCBwYXJ0IG9mIAp0aGUgZGlzdHJpYnV0aW9uIGluIHdoYXQgaXMg
c28gY2FsbGVkIGEgc2FuZGJveC4gYnV0IGlmIHRoZSBndWkgdmVyc2lvbiAKb2YgaXQgaXMgbm90
IGFjY2Vzc2libGUgaXQgd291bGQgYmUgb2YgbGltaXRlZCB1c2UgZm9yIG1lLiBJIHdpbGwgCmlu
c3RhbGwgaXQgYW55d2F5IG9uY2UgeW91IG1ha2UgaXQgYXZhaWxhYmxlLgoKQ2hlZXJzLAoKRGlk
aWVyCgpPbiAxMS8yOS8yMSA3OjIyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+IEhpIElicmFoaW0gYW5kIEFsbCwKPgo+IG5vIE1pY3JvIGlzIG5vdCBwcm92
aWRlZCBieSBTbGludCAoeWV0KS4gSSBsZWFybmVkIGl0cyBleGlzdGVuY2UgdG9kYXkgCj4gPHNt
aWxlPi4KPgo+IEkgaGF2ZSBidWlsdCBmbGF0cGFrIGFuZCBwaXBlLXZpZXdlciBhbmQgYWxzbyBp
dHMgR1VJIGd0ay1waXBlLXZpZXdlciAKPiAobm90IGZ1bGx5Cj4gYWNjZXNzaWJsZSwgYnV0IG5p
Y2UpLgo+Cj4gSXQgdG9vayBtZSBtb3JlIHRpbWUgdGhhbiBhbnRpY2lwYXRlZCwgYnV0IGV4cGVj
dCBhIGJpZyBiYXRjaCBvZiAKPiB1cGRhdGVzIGZvcgo+IFNsaW50IHRvbW9ycm93ICgzNyBwYWNr
YWdlcywgaW5jbHVkaW5nIHRoZSBtYW55IGRlcGVuZGVuY2llcyBvZiBmaWxlIAo+IHZpZXdlciku
Cj4KPiBJIGRpZCBzb21lIHJlYWRpbmcgYW5kIHRlc3RzIHdpdGggZmxhdHBhaywgYW5kIHdvdWxk
bid0IHJlY29tbWVuZCB0byAKPiB1c2UgdGhhdCwKPiBlc3BlY2lhbGx5IGlmIHNwYWNlIG9uIGRp
c2sgaXMgYSBjb25jZXJuLgo+IFdvcnRoIHJlYWRpbmcgYWJvdXQgdGhhdDoKPiBodHRwczovL2x1
ZG9jb2RlLmNvbS9ibG9nL2ZsYXRwYWstaXMtbm90LXRoZS1mdXR1cmUKPiBIb3dldmVyLCAiY2hv
c2UgcHJvbWlzZSwgY2hvc2UgZHVlIiBhcyB3ZSBzYXkgaGVyZSwgYSBmbGF0cGFrIHBhY2thZ2Ug
Cj4gd2lsbCBiZQo+IGF2YWlsYWJsZSBmb3IgU2xpbnQgdXNlcnMgdG9tb3Jyb3cuCj4KPiBDaGVl
cnMsCj4KPiBEaWRpZXIKPgo+IExlIDMwLzExLzIwMjEgw6AgMDA6MzAsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gVGhhbmtzIGEgYnVuZGxlIGZvciBh
bGwgb2YgeW91IGZvbGtzLiBJIGRpZCBub3Qga25vdyBob3cgbXVjaCBvZiBhIAo+PiBkaXNjdXNz
aW9uIG15IGlubm9jZW50IGFuZCBuYWl2ZSBxdWVzdGlvbiB3b3VsZCBnZW5lcmF0ZS4gSSBsZWFy
bmVkIGEgCj4+IGxvdCBmcm9tIHlvdXIgYW5zd2Vycy4gQWx0aG91Z2ggSSBoYXZlIG5ldmVyIG1l
c3NlZCB3aXRoIAo+PiBjb25maWd1cmF0aW9uIGZpbGVzIHNpbmNlIHRoZSBkYXlzIG9mIHRoZSBh
dXRvZXhlYy5iYXQgaW4gdGhlIGRheXMgb2YgCj4+IGRvcywgSSB0aGluayBJIGhhdmUgZW5vdWdo
IGNvdXJhZ2UgdG8gcGxheSB3aXRoIGNoYW5naW5nIHNvbWUgCj4+IGNvbmZpZ3VyYXRpb24gc2V0
dGluZ3MgdXNpbmcgc29tZSBvZiB0aGUgZWRpdG9ycyB5b3Ugc3VnZ2VzdGVkLgo+Pgo+PiBJIGxh
dW5jaGVkIGZldyBvZiB0aGVtIGJvdGggaW4gdGhlIGRlc2t0b3AgYW5kIGluIHRoZSB0ZXJtaW5h
bCBhbmQgSSAKPj4gZm91bmQgZ2VhbnkgYW5kIG5hbm8gdG8gYmUgZWFzeS4gSSBkaWQgbm90IGZp
bmQgTWljcm8sIEkgZ3Vlc3MgaXQgaXMgCj4+IG5vdCBwcmVpbnN0YWxsZWQgb24gc2xpbnQuCj4+
Cj4+IEkga25vdyB0aGF0IG15IGVkaXRpbmcgbmVlZHMgd291bGQgYmUgdmVyeSBiYXNpYy4KPj4K
Pj4gQ2hlZXJzLAo+Pgo+PiBJYnJhaGltCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

