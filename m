Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D824928B7
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 15:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642517414;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=S7g3AI3DeAvRjqb6n7H082xeH0B8N1gWRV/SqHjEzxw=;
	b=YkrmOt6jXBXLjbd4sczBS71AEmla/kjZLVxdP4X26m4vgcjDLufJDVErgKXjXU8wF0QaCU
	edLZv4mK2A7zuabzQv1jELc0YxvmmhLSHYh7rQCXx3n59SdTvAc6FuF2Lm/VR5F45xPDQL
	IognmHi4+OYwM8SOOqDC0OLdaJ/jE4I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-179-a7YAn9YmO0uBgnudkJVuKA-1; Tue, 18 Jan 2022 09:50:10 -0500
X-MC-Unique: a7YAn9YmO0uBgnudkJVuKA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CAF0100E325;
	Tue, 18 Jan 2022 14:50:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBFC95AB45;
	Tue, 18 Jan 2022 14:50:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 196C84BB7C;
	Tue, 18 Jan 2022 14:49:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20IEnndc019276 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Jan 2022 09:49:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0F8722166B4D; Tue, 18 Jan 2022 14:49:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B7732166B4B
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 14:49:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 82CDE3C01B8C
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 14:49:43 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-368-6iku3OPFMCWuUt10dqH5Qg-1; Tue, 18 Jan 2022 09:49:41 -0500
X-MC-Unique: 6iku3OPFMCWuUt10dqH5Qg-1
Received: by mail-qk1-f179.google.com with SMTP id z10so18528158qkf.7
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 06:49:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=BlulTLL7PmItAEIe56kg0GVbKp7eJy1gkxH2w4e/8uU=;
	b=8GYtD1Sk3FZCC/LolFT5xPy0oHbCBXj3zGqquj42tr4G6Mm/hsgab14Utut7ktLRVV
	w9maSn8l1zFhnwUTWEWE0yZxtCez+GK9Gi6D114BTR97ryN+DhUIDxJUURo1ORnQ7hZk
	GEL8TrnNTl5coOBffvJmwcTDVK7yOfXDKnhSx/0opRzwy2tMhot/6KKZUAa2jMY2fLJn
	0SfAoKjn6em4tLbFZfa//3Kh84cANenSRhCg/iJ++mJIQ0ObMvCFej0ZTaWNrcX/c8cC
	SOST5j/cV9iwOKHvDnzkv9sc6ODwYjyLDgtah3hAWZwymMNe7vHzjD7U8GE1L7wK92yE
	fzjA==
X-Gm-Message-State: AOAM531UIoSdhcBLsxEJJ8l4/XevFrKrGbQDPpPQ1/bTuueRJbsepXcZ
	T51dURzp1IoRpVWFVa+MjLF0Rccrt+fW4A==
X-Google-Smtp-Source: ABdhPJx91mbG+DIFoO2wpQzcZTIAgbdkYPPRECBePV8AvkefH5JMIe9g3l2ZCUSOu5zMuogNBLLsbQ==
X-Received: by 2002:a05:620a:4408:: with SMTP id
	v8mr18104143qkp.613.1642517381061; 
	Tue, 18 Jan 2022 06:49:41 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	bs34sm10854131qkb.57.2022.01.18.06.49.40 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 18 Jan 2022 06:49:40 -0800 (PST)
Message-ID: <6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
Date: Tue, 18 Jan 2022 09:49:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: starting out with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
In-Reply-To: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SW4gbXkgZXhwZXJpZW5jZSwgL2V0Yy92Y29uc29sZS5jb25mIG9ubHkgc2V0cyB0aGUgdGV4dCBt
b2RlIGtleWJvYXJkLiAKTXkgZGVza3RvcCBrZXlib2FyZCB3YXPCoCBzb21laG93IHVuYWZmZWN0
ZWQgYnkgdGhlIGNvbnRlbnRzIG9mIHRoYXQgCmZpbGUsIGFuZCBJIHN0aWxsIGhhZCB0byBjaGFu
Z2UgbGF5b3V0cyB1c2luZyB0aGUgZGVza3RvcCBpdHNlbGYuIFRoaXMgCndhcyBhIGNvdXBsZSBv
ZiB5ZWFycyBhZ28gd2hlbiBJIHdhcyBwbGF5aW5nIGFyb3VuZCB3aXRoIHRoZSBDb2xlbWFrIAps
YXlvdXQsIHNvIHRoaW5ncyBtYXkgYmUgZGlmZmVyZW50IG5vdy4KCn5LeWxlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

