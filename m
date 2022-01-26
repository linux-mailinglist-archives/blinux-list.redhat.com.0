Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5B249D4C4
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 23:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643234491;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YSqPCEFk/84NnVzBu12zQnLbVfAG7d4ulxr3uR7LP4A=;
	b=ZopUpfDkt5ZekIiXbQ2LA6x2zU4wB8KZ9v/7BesnW+4r9+3GiFtSQxLrSmiZUur5xshEed
	NZzDeAyaNsEPGSYJCP2eds/pIt4UZBfUFe9ls7Y+KeCRz7dQKXF42erndbnk9EoQx82rbq
	QwV42Ecq/sPHtPMDEkiSORSSA0mRQbU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-668-DExZVjVCNlCOnMefDq5kbQ-1; Wed, 26 Jan 2022 17:01:27 -0500
X-MC-Unique: DExZVjVCNlCOnMefDq5kbQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C7CD6D4E7;
	Wed, 26 Jan 2022 22:01:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9B555DB91;
	Wed, 26 Jan 2022 22:01:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 815501809CB8;
	Wed, 26 Jan 2022 22:01:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QM1IT7029670 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 17:01:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9DC3D40CFD04; Wed, 26 Jan 2022 22:01:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 998E8400DFB6
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:01:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E95E85A5AA
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:01:18 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-349-DY_61crEP4SKMq0q17WgRw-1; Wed, 26 Jan 2022 17:01:16 -0500
X-MC-Unique: DY_61crEP4SKMq0q17WgRw-1
Received: by mail-qt1-f174.google.com with SMTP id i4so990857qtr.0
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 14:01:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=TFjfU56TgokZPaeFgWTjMC/LxsPlE3elPDmOk1yKmjY=;
	b=69UpNhDS7rRdp7Afaq3oKDuoC+AeEnxhbFtrXzOzopeBuXGQ/zxM10gAHU2oKFwTaK
	x5aQ+LZCE+IO4NttlMME6AoPAWPrShgRtqLtLjsxWRR7UyGPQM7hgVOJyoEL7lLoeBR9
	D/qJRHZ9d+dhGJZjzRph41Um5doFZ+0uaxHu2I0xEl+PZOAwLaXCHZkHnKTrjQ98Ly5w
	old1OIBOIH5EMRSMulm0hdoPs1XvCqtwuCtDdye8R2xHOo2UImODszEwbyJ57xBjbAhT
	D9TZ6xo7uyycBixTbmQKLXF5XawVDIA3QRhAJutDBlYdhEHekukTKRN9tHPNzzW9PSYv
	xhng==
X-Gm-Message-State: AOAM5306Adz3GDwQ4R2TXoe4csVC0CYgNGXjJ2Kfb/NPFk1twfxBjsW0
	Q68JndlwAcgz+wHXu10ZsKnAAOxb1jcFkw==
X-Google-Smtp-Source: ABdhPJykYGZJqOwZCR3GndC2kSRCnKsXlRWgspMYA4AagnzFVIL2nJRBM8slnVcSgxpOkkADhYHqkA==
X-Received: by 2002:a05:622a:88:: with SMTP id o8mr582627qtw.143.1643234475396;
	Wed, 26 Jan 2022 14:01:15 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	i129sm301649qkb.39.2022.01.26.14.01.14 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 26 Jan 2022 14:01:15 -0800 (PST)
Message-ID: <cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
Date: Wed, 26 Jan 2022 17:01:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: blinux-list@redhat.com
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhdCBiZWluZyBzYWlkLCB0aGUgYXVkaW9waGlsZSBpbiBtZSBjYW5ub3QgcmVzaXN0IHBvaW50
aW5nIG91dCB0aGF0IApwcm9udW5jaWF0aW9uIGFiaWxpdGllcyBvZiB0dHMgYXJlIG9mIGZhciBs
ZXNzIHF1YWxpdHkgdGhhbiB0aG9zZSAKcHJvdmlkZWQgYnkgbWFueSBhY3R1YWwgc2NyZWVuIHJl
YWRlcnMsIGF0IGxlYXN0IHRoZSBvbmVzIEkgaGF2ZSAKdXNlZC4uLndoaWNowqDCoCBkb2VzIG5v
dCBpbmNsdWRlIGFueSBmb3IgTGludXguCgoKVGhhdCBiZWluZyBzYWlkLCB0aGUgdGVjaG5vZmls
ZSBpbiBtZSBjYW5ub3QgcmVzaXN0IHBvaW50aW5nIG91dCB0aGUgCmZhY3QgdGhhdCBldmVyeSBz
Y3JlZW4gcmVhZGVyIGZvciBldmVyeSBPUyB1c2VzIG5vdGhpbmcgYnV0IFRUUyAKdGVjaG5vbG9n
eSB0byByZWFkIHRoZSBzY3JlZW4uIFdlbGwsIEkgZ3Vlc3MgQmVNeUV5ZXMgZG9lc24ndCwgYnV0
IGl0J3MgCm5vdCBleGFjdGx5IGEgc2NyZWVuIHJlYWRlciwgdW5sZXNzIHlvdSBuZWVkIHRoZSB2
b2x1bnRlZXIgdG8gcmVhZCBhIApzY3JlZW4gZm9yIHlvdS4KCn5LeWxlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

