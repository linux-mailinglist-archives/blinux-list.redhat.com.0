Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 437863E88B8
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 05:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628651574;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zo3aCNwxKHmZGreTX18+UR0QB+WdPPUFcBcBxQpF8aE=;
	b=Opfz8q2QuJv2Wlh52VbuU+YekU0KUcZbKKPmYVqhfj9VA++47UMuLkEaHbJQSkOdmQLnBS
	g3kSM8cMPt8QNPQ54fS2rLzT+cQDZJ7ttNWgjFIA1aLzukqrholEBoK5hWPV1h6RalZ75Q
	4pOCXKOlaZ5KqH5nYpXPgibSS3YE4hw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-482-pi7INCnDNEW4x1DYRnEeqQ-1; Tue, 10 Aug 2021 23:12:52 -0400
X-MC-Unique: pi7INCnDNEW4x1DYRnEeqQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CEBD2871803;
	Wed, 11 Aug 2021 03:12:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C8B91B4B8;
	Wed, 11 Aug 2021 03:12:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 08761181A0F2;
	Wed, 11 Aug 2021 03:12:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17B3Cga3019172 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 23:12:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BBE8F200ACF2; Wed, 11 Aug 2021 03:12:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B64812124216
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:12:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90545101A52C
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 03:12:39 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com
	[209.85.161.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-430-eaO7dpg2PISh1lUrEZyjjA-1; Tue, 10 Aug 2021 23:12:37 -0400
X-MC-Unique: eaO7dpg2PISh1lUrEZyjjA-1
Received: by mail-oo1-f54.google.com with SMTP id
	y14-20020a4acb8e0000b029028595df5518so309519ooq.6
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 20:12:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=kfqJ0nne0H+pTxK8AHXy9hYaFridRhhhAwLTNImUgiI=;
	b=R/kaM4xm5a9tqdtuFPE9/LvVOULz5JbaLKZY4eAjVuTxCeb6KEO3T5G1HYuA/TN3cq
	53QiRvE1JZvAa0y4RvjVIZgL3mtDUhlEcBJyqjsi6Ynt764Fc9oPpH+EvWFaNsaamuw5
	lKNRKcMbmxzq2g0uACmRMiXOTKbjHCloOU5+VkAULRWTuPrXDD76PJdUxQgAn1zqMX1O
	iKyLv+iIy4dCK352kbwB0kFClz1FiD88eX1iV3u2CBonbJidy0dNDF9CTtmNdK+JoXLZ
	d5P2001qCLyYwrNC9BbBC08sqPJ23AdkGVDbt+ds5h8YZkQsxRST+DI30paPvO7JRIUI
	qetA==
X-Gm-Message-State: AOAM530HvATOeiEOUVEnciGX2a7aYe1JUIOFyTXO642Gdzx71i7SRy8S
	ACiPndqqI7i5V7Hbw4qlrL7YcwSx7ZS7UA==
X-Google-Smtp-Source: ABdhPJy7w9pzDN7xaS1iEdyRLE0JUMrP7HiTbPfRvtSuRwAvJWyg3J+MdDyfMJNbqa8YrhokmqnHww==
X-Received: by 2002:a4a:6c49:: with SMTP id u9mr20711941oof.93.1628651556648; 
	Tue, 10 Aug 2021 20:12:36 -0700 (PDT)
Received: from ?IPv6:2601:501:100:cb70:4d42:6605:2d23:1f1c?
	([2601:501:100:cb70:4d42:6605:2d23:1f1c])
	by smtp.gmail.com with ESMTPSA id c2sm3692086ooo.28.2021.08.10.20.12.35
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Aug 2021 20:12:36 -0700 (PDT)
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<913e9c46-c83a-39bd-c013-772d31851af5@protonmail.com>
Message-ID: <a814e890-f315-1e0b-0095-d336920a71d5@gmail.com>
Date: Tue, 10 Aug 2021 20:12:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <913e9c46-c83a-39bd-c013-772d31851af5@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

dm13YXJlIHBsYXllciBpcyBhbHNvIGZyZWUKCgpPbiA4LzEwLzIwMjEgMjozMyBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIZXkgdGhlcmUsCj4KPiBwZXJz
b25hbGx5IEkgdXNlIFZpcnR1YWxCb3ggb24gVWJ1bnR1IG1hdGUgMjAuMDQgYW5kIGl0IHdvcmtz
IHdpdGhvdXQKPiBhbnkgaXNzdWVzLCB0aG91Z2ggdGhlIGludGVyZmFjZSBpcyBzb21ldGltZXMg
bm90IGVudGlyZWx5IGNvb3BlcmF0aW5nCj4gYW5kIE9DUkRlc2t0b3AgaXMgcmVxdWlyZWQgdG8g
aW1wcm92ZSB0aGUgYWNjdXJhY3kgb2YgT3JjYSBjbGlja3MuCj4KPiBCdXQgaXQncyBkZWZpbml0
ZWx5IGRvYWJsZS4KPgo+Cj4gVGhlIHVzYWdlIGlzIHF1aXRlIHNpbXBsZSwgeW91IGp1c3QgY3Jl
YXRlIGEgbmV3IFZpcnR1YWwgbWFjaGluZSBmcm9tCj4gdGhlIG1hY2hpbmUgbWVudSwgc2V0dGlu
ZyB1cCBwYXJhbWV0ZXJzIGxpa2UgUkFNIGFuZCBkaXNrIHNwYWNlLgo+Cj4gVGhlbiwgd2hlbiB0
aGUgbWFjaGluZSBpcyBjcmVhdGVkLCB5b3UgYXR0YWNoIHRoZSBpbnN0YWxsYXRpb24gSVNPIHRv
Cj4gaXRzIHZpcnR1YWwgQ0QvRFZEIHJvbSwgeW91IGNhbiBkbyB0aGlzIGluIHRoZSBtYWNoaW5l
IHNldHRpbmdzLCBTdG9yYWdlCj4gdGFiLCBJREUgY29udHJvbGxlciAoaWYgeW91IGRvbid0IHNl
ZSBpdCBpbiB0aGUgbGlzdCwgaW5jcmVhc2UgdGhlCj4gbnVtYmVyIG9mIHNhdGEgcG9ydHMgdG8g
MikuCj4KPgo+IEFmdGVyIHN0YXJ0aW5nIHRoZSBtYWNoaW5lIHdpdGggdGhlIGlzbyBhdHRhY2hl
ZCwgaXQgc2hvdWxkIGJvb3QKPiBhdXRvbWF0aWNhbGx5IGFuZCBzdGFydCB0aGUgaW5zdGFsbGF0
aW9uLgo+Cj4KPiBXaGVuIHlvdSdyZSBkb25lLCB5b3UgY2FuIHJlbW92ZSB0aGUgaW5zdGFsbGF0
aW9uIGRpc2sgZnJvbSB0aGUgZHJpdmUsCj4gaW4gZmFjdCB0aGlzIGlzIHNvbWV0aW1lcyBkb25l
IGF1dG9tYXRpY2FsbHksIGJ1dCBJIHNhdyBjYXNlcyB3aGVyZSBpdAo+IHN0YWllZCB0aGVyZSwg
c28gSSBhbHdheXMgY2hlY2sgaXQuCj4KPgo+IFRoZW4sIHlvdSBjYW4gc3RhcnQgdGhlIFZNIGVp
dGhlciBmcm9tIHRoZSBWaXJ0dWFsQm94IG1hbmFnZXIsIG9yIGZyb20KPiBpdHMgLnZib3ggc2hv
cnRjdXQuCj4KPgo+IEEgZmluYWwgbm90ZSwgd2hlbiBydW5uaW5nIHRoZSBtYWNoaW5lLCBrZXli
b2FyZCBpcyBncmFiYmVkIGJ5Cj4gVmlydHVhbEJveCBmb3IgaXQuIElmIHlvdSBuZWVkIHRvIHNl
bmQga2V5cyB0byB5b3VyIGhvc3Qgc3lzdGVtLCBwcmVzcwo+IHRoZSByaWdodCBjdHJsIG9uIHlv
dXIga2V5Ym9hcmQsIGl0IHdvcmtzIGluIHRoZSBzYW1lIHdheSBhcwo+IE9yY2ErQmFja3NwYWNl
IGNvbWJpbmF0aW9uIGZvciBPcmNhLCB3aXRoIHRoZSBleGNlcHRpb24gdGhhdCB0aGUKPiBrZXli
b2FyZCB3aWxsIGJlIGdyYWJiZWQgYWdhaW4gb25seSB3aGVuIHlvdSByZWVudGVyIHRoZSB3aW5k
b3cgb2YgdGhlCj4gbWFjaGluZSwgc28geW91IGNhbiB3b3JrIGluIHlvdXIgaG9zdCBzeXN0ZW0g
d2l0aG91dCBhbnkgaXNzdWVzLgo+Cj4KPiBCZXN0IHJlZ2FyZHMKPgo+Cj4gUmFzdGlzbGF2Cj4K
Pgo+IETFiGEgMTAuIDguIDIwMjEgbyAxMjo1NSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIG5hcMOtc2FsKGEpOgo+PiBIaSBhbGwsCj4+Cj4+Cj4+IEFzIEkgc3RhdGVkIGJlZm9y
ZSwgSSBhbSBydW5uaW5nIFNsaW50IG9uIHRoZSBiYXJlIG1ldGFsLCBob3dldmVyIG15Cj4+IHdv
cmsgZW50YWlscyB0ZWFjaGluZyBOVkRBIHRvIGNsaWVudHMsIG9idmlvdXNseSBydW5uaW5nIFdp
bmRvd3MuCj4+Cj4+Cj4+IFRoZXJlZm9yIEkgZGVzcGVyYXRlbHkgbmVlZCBhIFdpbmRvd3MgVk0s
IHNvIEkgY2FuIG1ha2UgYSBsaXZpbmcuIEkKPj4gY2Fubm90IGZpZ3VyZSBxZW11LCB2aXJ0dWFs
LWJveCwgSSBoYXZlIG5vIGlkZWEsIGFuZCBWTVdhcmUgV29ya3N0YXRpb24KPj4gUGxheWVyIGRv
ZXNuJ3Qgd2FudCB0byBpbnN0YWxsIHVuZGVyIFNsaW50Lgo+Pgo+Pgo+PiBDb3VsZCBzb21lb25l
IHBsZWFzZSwgcGxlYXNlLCBnaXZlIG1lIGNvbmNpc2UgaW5zdHJ1Y3Rpb25zIGZvciBzZXR0aW5n
Cj4+IHVwIGEgVk0gdXNpbmcgcWVtdSBpbiBTbGludD8KPj4KPj4KPj4gV2FybSByZWdhcmRzLAo+
Pgo+Pgo+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Cj4+Cj4+IFNlbnQgZnJvbSBteSBnYXNzIHBvd2Vy
ZWQgU2xpbnQgaGFpciBkcnllci4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

