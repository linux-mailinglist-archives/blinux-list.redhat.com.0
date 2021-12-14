Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A69B474DBF
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 23:14:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639520075;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3MDuLzbrV1l/jn6uQ+RHPLLuJ/+ouNbImszuAjweQRI=;
	b=KzthTUGVPDAxxxQwVu5w5h/J/silcz4nTqjJr59h5mXhZJIzQHroeZ0yzMGR6pV39rti1d
	EK+PlpOqp0RUQBY3zQSceNO06EhR9d5mQ0HxOoqJ6cYIcepUitvaZkLuemOvTPbJIzpbq4
	u189++n2+ipQo5QhdID7Vrczv20AQ/8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-3wQ9U6OKNHKQPDITNnBd9A-1; Tue, 14 Dec 2021 17:14:31 -0500
X-MC-Unique: 3wQ9U6OKNHKQPDITNnBd9A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 155401015DA0;
	Tue, 14 Dec 2021 22:14:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 943D55635A;
	Tue, 14 Dec 2021 22:14:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3DF591809CB8;
	Tue, 14 Dec 2021 22:14:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEMEAuE021357 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 17:14:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6294B492D1D; Tue, 14 Dec 2021 22:14:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D801492D18
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 22:14:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 443D7811E80
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 22:14:10 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
	[209.85.219.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-510-UyodVOS4OwiRXIdXy8HRDA-1; Tue, 14 Dec 2021 17:14:08 -0500
X-MC-Unique: UyodVOS4OwiRXIdXy8HRDA-1
Received: by mail-qv1-f50.google.com with SMTP id i13so18635921qvm.1
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 14:14:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=UuUN8vQ6GujpNrPK7u/ZERp2lijsTcVk/NsgJgpdr8E=;
	b=jj0jHVmGwuSZ0a6sldazLyxhw8hLB0Tv83721MH3drAeXzJk5seOV1uPdEyMDwIjgx
	ILA6zI9JYt1W69ZggsMVQ7Ap7zk+YFvHWUczbh5SyD0UJ6ed4gQAWIlaOmXXuiJwsjH2
	Jx/7PQUCcYZNJSCxIVqh3ruAqI3+N1fMuTtw+7RqpdyiaPNobQoHDHNyEzXyUqXmoWR2
	bQx87Nh3vsrO7lkGlvz9FPcu1eVP/pZCQYD0p1fwganFRUWcJZweG/UgvwWeALiXsylN
	sifWF4+pGD5jh7V7ze9kiY2noCSn2a8KFpSDyWGi8pfTXGnq3yrtcln/LPLiG1jAagR9
	6+6Q==
X-Gm-Message-State: AOAM530UVqBRZ5jd+h1TcY5+RfcSdKq3TaXnXCzRvFI75D4Q5sH3kH6P
	0HuqW7rbMeUGjCOJtp7+Nx25GtYlPYEC8Q==
X-Google-Smtp-Source: ABdhPJwJlV3Rn9NBuBDrQ/10Fwds97ejMB9rBfPZphuBmddyKAz/vfOehXFYHGjRrR+TeUBeHcR++g==
X-Received: by 2002:a05:6214:260c:: with SMTP id
	gu12mr8681742qvb.87.1639520047748; 
	Tue, 14 Dec 2021 14:14:07 -0800 (PST)
Received: from ?IPV6:2603:6011:ba01:8300:1525:bc94:97e:7f98?
	(2603-6011-ba01-8300-1525-bc94-097e-7f98.res6.spectrum.com.
	[2603:6011:ba01:8300:1525:bc94:97e:7f98])
	by smtp.gmail.com with ESMTPSA id a24sm62064qtp.95.2021.12.14.14.14.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 14:14:07 -0800 (PST)
Message-ID: <443ab366-55dd-e615-ae30-f2db30bde319@gmail.com>
Date: Tue, 14 Dec 2021 17:14:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: Attempting a Jenux install, again.
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJlbnQsCgoKV2hlbiBmZW5yaXIgY29tZXMgdXAgYWZ0ZXIgdGhlIGluc3RhbGxlZCBzeXN0
ZW0gYm9vdHMsIGRvIGVpdGhlciAKY2Fwc2xvY2srRjPCoCBmb3IgbGFwdG9wIG9yIGZlbnJpciBr
ZXkrRjMgdG8gZGlzYWJsZSB0aGUgZmVucmlyIHNvdW5kcyAKdGhlbiBmZW5lcmlyIGtleStGNCB0
byBkaXNhYmxlIGZlbnJpciBzcGVlY2ggdGhlbiB0cnkgbG9naW5nIGluIGFuZCBzZWUgCmlmIG9y
Y2Egd2lsbCBzcGVhayB3aGVuIHRoZSBkZXNrdG9wIGNvbWVzIHVwLiBUaGlzIHdvcmtzIGZvciBt
ZS4KCgpNYXR0aGV3CgoKCgpPbiAxMi8xNC8yMDIxIDQ6MTggQU0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgYWxsLAo+Cj4gSSBkZWNpZGVkIHRvIGdpdmUg
SmVudXggYW5vdGhlciBnbywgbGFzdCB0aW1lLCBubyBtYXR0ZXIgd2hhdCBJIHRyaWVkLCBJIGNv
dWxkbid0IGdldCBvcmNhIHRvIGNvbWUgb24gYWZ0ZXIgbG9nZ2luZyBpbiB0byB0aGUgc3lzdGVt
Lgo+Cj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgYWR2aWNlPwo+Cj4gQWxzbywgaWYgdGhpcyBkb2Vz
bid0IHdvcmsgb3V0LCBpcyB0aGVyZSBhIGd1aWRlIGZvciBkb2luZyBhIE1hbmphcm8gYXJjaGl0
ZWN0IGluc3RhbGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRhdGVkIGEgbGl0dGxlIHdoaWxl
IGFnbywgYW5kIGlmLCBhcyBJIHNhaWQsIEplbnV4IGRvZXNuJ3Qgd29yayBvdXQsIEknZCBsaWtl
IHRvIGdpdmUgdGhhdCBvbmUgYSBnby4KPgo+IFRoYW5rcyBzbyBsb25nLgo+Cj4gV2FybSByZWdh
cmRzLAo+Cj4gQnJhbmR0IFN0ZWVua2FtcAo+Cj4gU2VudCBmcm9tIG15IE1hY0Jvb2sgQWlyCj4K
PiBDb250YWN0Ogo+Cj4gUGhvbmU6ICsyNyAoMCk2MCA1MjUgOTE4MSA8dGVsOi8vKzI3NjA1MjU5
MTgxPgo+Cj4gRW1haWw6IGJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tIDxtYWlsdG86YnJhbmR0
LnN0ZWVua2FtcEBnbWFpbC5jb20+Cj4KPiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1wIDxodHRw
Oi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPgo+Cj4KPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

