Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 63768462962
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 02:02:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638234150;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dxh/ZofsvmJ2Z/05t4aPqV2HoZ7pMo7+v2qN4Wj6B9w=;
	b=dJ1rBxExyhYp9U08dFlxWgnREwMTEpj5ln5j9Qls/vE1iBSP4OToAmVC7hs8yVM0zpyfF2
	Y+cyYzDYH0SDcKmNg3d3H430q0NyplpZaBSZnhPORG8SYS+vbnNgAcnr7Q4VZ6IHDpgNQZ
	lnt4NERtaL0Mi7qwY9LqjB0SyIUi+SE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-88-fDCRCbBPOH6Flmx3aR_SLg-1; Mon, 29 Nov 2021 20:02:26 -0500
X-MC-Unique: fDCRCbBPOH6Flmx3aR_SLg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C412914749;
	Tue, 30 Nov 2021 01:02:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0095D5D6D7;
	Tue, 30 Nov 2021 01:02:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DDA74BB7C;
	Tue, 30 Nov 2021 01:02:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AU1234d025667 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 20:02:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1CF694047279; Tue, 30 Nov 2021 01:02:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1864E4047272
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 01:02:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F3DF85A5AA
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 01:02:02 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-543-1eWsehZTOVaLeFXriC9eiA-1; Mon, 29 Nov 2021 20:02:00 -0500
X-MC-Unique: 1eWsehZTOVaLeFXriC9eiA-1
Received: by mail-qv1-f53.google.com with SMTP id i13so16342021qvm.1
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 17:02:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Rw3gKD8kppeV5UNJqB+bxFhzu/5IAtIEp5v0PnTO0uI=;
	b=AjsP0rLdJbZCaXAv1bTQpKCE76URv3YeLw6AHwcLpCMqizPzPsIwYBsL+ad62vgX6J
	i8MFqidZdQdLPlZZ3ZVr4rH88JFWnZ3FBJA1svraqu1VD8iJo2c3oE/1V14Yn3WlI/ND
	YgoLqmIFlxFilO/jRv5L7uvfpofQE01eOWnL2jBqPCpH6bTtFKrx2O5co+WnDhIDRJJa
	wRoj9XCL8ONBCe1fmIqEoi1/LsB9x8Val6QHw0VQ6E3LpYTEByRsVpIQChZMXlLUiS+a
	UT3PNSWNCgfdMd9diXs/6I0oQcmio2Pwxkl5RvJOXsup0KF7SpPjzxHi2NIIfAQjlzxl
	q4Qw==
X-Gm-Message-State: AOAM532gvnrp2EV/w18eCy7HtVqPEktJmxPuPtgmN79aCvnwm6h5B88X
	8o0Z1agqe6utR8262OnO3JhHdJzjPyJY8wE8
X-Google-Smtp-Source: ABdhPJyitPeet2b0JPYpciTyk14aE7MotnSwxPTkwvvPz9OW+MO3CX/JTmQ7UYRZjkwsxaAqBQKVXA==
X-Received: by 2002:a05:6214:519c:: with SMTP id
	kl28mr33520641qvb.71.1638234119676; 
	Mon, 29 Nov 2021 17:01:59 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id w8sm9589149qtc.36.2021.11.29.17.01.58
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 17:01:59 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
Message-ID: <d4707cf3-bced-77d8-22f8-f450a2096d89@gmail.com>
Date: Mon, 29 Nov 2021 20:01:58 -0500
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIGEgbWlsbGlvbiBmb3IgeW91IERpZGllci4KCldoZXJlIGRvIHlvdSBmaW5kIGFsbCBv
ZiB0aGlzIGVuZXJneT8gSSBlbnZ5IHlvdSBtYW4uIFlvdXIgaGVscCBhbmQgCmNvbW1pdG1lbnQg
dG8gbWFraW5nIFNsaW50IHNvIGFjY2Vzc2libGUsIGFuZCByZWxpYWJseSBzbyBpcyBhZG1pcmFi
bGUgCmFuZCBleHRyZW1lbHkgYXBwcmVjaWF0ZWQuCgpDaGVlcnMsCgpJYnJhaGltCgpPbiAxMS8y
OS8yMSA3OjIyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
IEhpIElicmFoaW0gYW5kIEFsbCwKPgo+IG5vIE1pY3JvIGlzIG5vdCBwcm92aWRlZCBieSBTbGlu
dCAoeWV0KS4gSSBsZWFybmVkIGl0cyBleGlzdGVuY2UgdG9kYXkgCj4gPHNtaWxlPi4KPgo+IEkg
aGF2ZSBidWlsdCBmbGF0cGFrIGFuZCBwaXBlLXZpZXdlciBhbmQgYWxzbyBpdHMgR1VJIGd0ay1w
aXBlLXZpZXdlciAKPiAobm90IGZ1bGx5Cj4gYWNjZXNzaWJsZSwgYnV0IG5pY2UpLgo+Cj4gSXQg
dG9vayBtZSBtb3JlIHRpbWUgdGhhbiBhbnRpY2lwYXRlZCwgYnV0IGV4cGVjdCBhIGJpZyBiYXRj
aCBvZiAKPiB1cGRhdGVzIGZvcgo+IFNsaW50IHRvbW9ycm93ICgzNyBwYWNrYWdlcywgaW5jbHVk
aW5nIHRoZSBtYW55IGRlcGVuZGVuY2llcyBvZiBmaWxlIAo+IHZpZXdlcikuCj4KPiBJIGRpZCBz
b21lIHJlYWRpbmcgYW5kIHRlc3RzIHdpdGggZmxhdHBhaywgYW5kIHdvdWxkbid0IHJlY29tbWVu
ZCB0byAKPiB1c2UgdGhhdCwKPiBlc3BlY2lhbGx5IGlmIHNwYWNlIG9uIGRpc2sgaXMgYSBjb25j
ZXJuLgo+IFdvcnRoIHJlYWRpbmcgYWJvdXQgdGhhdDoKPiBodHRwczovL2x1ZG9jb2RlLmNvbS9i
bG9nL2ZsYXRwYWstaXMtbm90LXRoZS1mdXR1cmUKPiBIb3dldmVyLCAiY2hvc2UgcHJvbWlzZSwg
Y2hvc2UgZHVlIiBhcyB3ZSBzYXkgaGVyZSwgYSBmbGF0cGFrIHBhY2thZ2UgCj4gd2lsbCBiZQo+
IGF2YWlsYWJsZSBmb3IgU2xpbnQgdXNlcnMgdG9tb3Jyb3cuCj4KPiBDaGVlcnMsCj4KPiBEaWRp
ZXIKPgo+IExlIDMwLzExLzIwMjEgw6AgMDA6MzAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gVGhhbmtzIGEgYnVuZGxlIGZvciBhbGwgb2YgeW91IGZv
bGtzLiBJIGRpZCBub3Qga25vdyBob3cgbXVjaCBvZiBhIAo+PiBkaXNjdXNzaW9uIG15IGlubm9j
ZW50IGFuZCBuYWl2ZSBxdWVzdGlvbiB3b3VsZCBnZW5lcmF0ZS4gSSBsZWFybmVkIGEgCj4+IGxv
dCBmcm9tIHlvdXIgYW5zd2Vycy4gQWx0aG91Z2ggSSBoYXZlIG5ldmVyIG1lc3NlZCB3aXRoIAo+
PiBjb25maWd1cmF0aW9uIGZpbGVzIHNpbmNlIHRoZSBkYXlzIG9mIHRoZSBhdXRvZXhlYy5iYXQg
aW4gdGhlIGRheXMgb2YgCj4+IGRvcywgSSB0aGluayBJIGhhdmUgZW5vdWdoIGNvdXJhZ2UgdG8g
cGxheSB3aXRoIGNoYW5naW5nIHNvbWUgCj4+IGNvbmZpZ3VyYXRpb24gc2V0dGluZ3MgdXNpbmcg
c29tZSBvZiB0aGUgZWRpdG9ycyB5b3Ugc3VnZ2VzdGVkLgo+Pgo+PiBJIGxhdW5jaGVkIGZldyBv
ZiB0aGVtIGJvdGggaW4gdGhlIGRlc2t0b3AgYW5kIGluIHRoZSB0ZXJtaW5hbCBhbmQgSSAKPj4g
Zm91bmQgZ2VhbnkgYW5kIG5hbm8gdG8gYmUgZWFzeS4gSSBkaWQgbm90IGZpbmQgTWljcm8sIEkg
Z3Vlc3MgaXQgaXMgCj4+IG5vdCBwcmVpbnN0YWxsZWQgb24gc2xpbnQuCj4+Cj4+IEkga25vdyB0
aGF0IG15IGVkaXRpbmcgbmVlZHMgd291bGQgYmUgdmVyeSBiYXNpYy4KPj4KPj4gQ2hlZXJzLAo+
Pgo+PiBJYnJhaGltCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

