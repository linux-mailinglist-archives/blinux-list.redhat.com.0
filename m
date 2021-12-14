Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 05631474113
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 12:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639479952;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NUGRTdIdLWHE5I8xqWMueNMQSwsLf7WIEaDEeb3+YZk=;
	b=RUCAJvgbd+JX0foyrmLgKMuKqVmLXZDI4F9Gx9ksXy/5Nq64FxxFkndTysgrUiJwZX2v51
	EtKYTVUiHdFqFKq4o0ADwuF8HcbaaWGB3YIsWGx9IG2GucoEftGRujoZlP0Mr4AKQk+htf
	DW9vhhQAqVWCKLDbRzQ7pqnWNjNe3cg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-587-7Nczh6JWMVOc_nCe-Q9i_g-1; Tue, 14 Dec 2021 06:05:49 -0500
X-MC-Unique: 7Nczh6JWMVOc_nCe-Q9i_g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 531D6874984;
	Tue, 14 Dec 2021 11:05:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D8775BE2A;
	Tue, 14 Dec 2021 11:05:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8CF1F1809CBA;
	Tue, 14 Dec 2021 11:05:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEB5WEE021153 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 06:05:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 38FB640D1B98; Tue, 14 Dec 2021 11:05:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3486240C1247
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 11:05:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CEC1800B29
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 11:05:32 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-354-jb2Af5NWNiCIjvKWAq_cug-1; Tue, 14 Dec 2021 06:05:30 -0500
X-MC-Unique: jb2Af5NWNiCIjvKWAq_cug-1
Received: by mail-wm1-f49.google.com with SMTP id
	n33-20020a05600c502100b0032fb900951eso15953639wmr.4
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 03:05:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=3WJPIsjuoD9VkHwmFXMcv3WAKkgeToPJ1SkB0Xtxmjk=;
	b=gbSVqsl+JT1HbjWJuvljJHDrpsvjBiqHdbZNnC7VW1iBhIUtmPvTr5s7KblH/8P7m0
	ASyhRgEjD9D4WmRnV59YG6N0TDwqK8SeP7QIICS3e973x5XMIuK7tKwhKFaP5E2Ue0Cq
	n1ViymQ6RDwfrrwkvM5rdYqHFF6LlyLQBild1Gty/MCYmJB97UWA/ePV87h7d8xh2eT4
	JvzDnMrrBcJ8zSgC834GcTnUzKe4mWvyVuYC/w1WMX3VeAc/mkfn9AeS2lYF5GwySiq4
	LVOU7Ngl5QwEBRi8fc3vicl5nNNUXF+Zl/Omf0vaSdG+g0CMweeDi50I8DqdQj2NfIWl
	PP3w==
X-Gm-Message-State: AOAM533mUszmhYwm7HQd/rHTDH+4xWkTogMJTeFMqXx3H02rbnY/6vHo
	Ljab8ixDF3Wm9dsBAPMjSGRYdUK/dvI/4A==
X-Google-Smtp-Source: ABdhPJzOIlqsf8tre+Qqp401l2yBWF8UcLYVVKKjyCtotaRsEnGHeXfWZs2RQtXcshdBfslJ+rI9Rg==
X-Received: by 2002:a7b:c2f7:: with SMTP id e23mr45444840wmk.92.1639479929021; 
	Tue, 14 Dec 2021 03:05:29 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	q24sm1697210wmj.21.2021.12.14.03.05.28 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 03:05:28 -0800 (PST)
Message-ID: <426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
Date: Tue, 14 Dec 2021 11:05:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: Attempting a Jenux install, again.
To: blinux-list@redhat.com
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
In-Reply-To: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
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

IMKgb3IgTWFuamFybyBBcmNoaXRlY3QuCgpQZXJzb25hbGx5LiBJJ3ZlIGhhZCBzdWNjZXNzIHdp
dGggdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5kIHRoZSBndWlkZWQgCmluc3RhbGxlciAodGhlIGFy
Y2hpbnN0YWxsIG9uZSksIEkganVzdCBzZXQgaXQgdG8gYm9vdCB1cCB0YWxraW5nLCB3ZW50IAp0
aHJvdWdoIGl0IGFuZCBhZGRlZCBpbiBhbHNhLXV0aWxzL2VzcGVha3VwIGFuZCB0aGVuIHB1dCAK
c3BlZWNoLWRpc3BhdGNoZXIvT3JjYS92b2ljZXMgYW5kIGEgd2luZG93IG1hbmFnZXIgb24gb25j
ZSB0aGUgc3lzdGVtIAp3YXMgaW5zdGFsbGVkLgoKCkplbnV4IGhhcyBuZXZlciByZWFsbHkgd29y
a2VkIGZvciBtZSBvbiBhIFZNIG9yIGJhcmUgbWV0YWwgYXQgYWxsLCAKd2hlcmVhcyB0aGUgb2Zm
aWNpYWwgYXJjaCBJU08gaXMgd29ya2luZyByYXRoZXIgd2VsbCwgYW5kIEkgZHVubm8gaWYgdGhl
IApBcmNoaXRlY3QgZWRpdGlvbiBpcyAzNi82NCBiaXQgb3IgMzJiaXQgb25seSBvciA2NGJpdCBv
bmx5LiBBZG1pdHRlZGx5LCAKSSd2ZSBnb3QgYSA2NGJpdCBVRUZJIHN5c3RlbSBzbyB0aGUgb2Zm
aWNpYWwgSVNvIHdvcmtzIGZsYXdsZXNzbHkgb24gaXQgCmhvd2V2ZXIsIGJ1dCBZTU1WIG9uIHRo
YXQgb25lWWVzLCBidXQgeW91IHByb2JhYmx5IGRvbid0IHdhbnQgdG8gaGVhciBpdCAKaWYgeW91
IGFyZSBzZXQgb24gdXNpbmcgSmVudXggaG93ZXZlci4KCk9uIDEyLzE0LzIxIDA5OjE4LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpIGFsbCwKPgo+IEkgZGVj
aWRlZCB0byBnaXZlIEplbnV4IGFub3RoZXIgZ28sIGxhc3QgdGltZSwgbm8gbWF0dGVyIHdoYXQg
SSB0cmllZCwgSSBjb3VsZG4ndCBnZXQgb3JjYSB0byBjb21lIG9uIGFmdGVyIGxvZ2dpbmcgaW4g
dG8gdGhlIHN5c3RlbS4KPgo+IERvZXMgYW55b25lIGhhdmUgYW55IGFkdmljZT8KPgo+IEFsc28s
IGlmIHRoaXMgZG9lc24ndCB3b3JrIG91dCwgaXMgdGhlcmUgYSBndWlkZSBmb3IgZG9pbmcgYSBN
YW5qYXJvIGFyY2hpdGVjdCBpbnN0YWxsPyAiTWFuamFybyBUYWxraW5nIiBnb3QgdXBkYXRlZCBh
IGxpdHRsZSB3aGlsZSBhZ28sIGFuZCBpZiwgYXMgSSBzYWlkLCBKZW51eCBkb2Vzbid0IHdvcmsg
b3V0LCBJJ2QgbGlrZSB0byBnaXZlIHRoYXQgb25lIGEgZ28uCj4KPiBUaGFua3Mgc28gbG9uZy4K
Pgo+IFdhcm0gcmVnYXJkcywKPgo+IEJyYW5kdCBTdGVlbmthbXAKPgo+IFNlbnQgZnJvbSBteSBN
YWNCb29rIEFpcgo+Cj4gQ29udGFjdDoKPgo+IFBob25lOiArMjcgKDApNjAgNTI1IDkxODEgPHRl
bDovLysyNzYwNTI1OTE4MT4KPgo+IEVtYWlsOiBicmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbSA8
bWFpbHRvOmJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tPgo+Cj4gVHdpdHRlcjogQGJyYW5kdHN0
ZWVua2FtcCA8aHR0cDovL3d3dy50d2l0dGVyLmNvbS9icmFuZHRzdGVlbmthbXA+Cj4KPgo+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

