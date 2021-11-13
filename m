Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E492844F544
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 21:26:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636835194;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LM27jOSE47B0pxjUVK4PSXod9iz1f7T6yJHvS+RGkdQ=;
	b=YSP4zARilwisuYF6fhShi38zM9qU5OfTyEQEqWfaaqJowEmp2wtxNd/k1l/ldJrwiI9VdM
	67TE5ava/hZC/M2Gu1vvnKY0jJcOz9bxQVL+cYkhKlWf8x8QTCoKz+sHCT/gw/f+gy1cNc
	uVUU3eupUBnjKfex4YxQwMwBI9hBlDg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-Jj0TTDIPOjG1PaEX0RQlbg-1; Sat, 13 Nov 2021 15:26:30 -0500
X-MC-Unique: Jj0TTDIPOjG1PaEX0RQlbg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C42E0802C91;
	Sat, 13 Nov 2021 20:26:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FA9110016FC;
	Sat, 13 Nov 2021 20:26:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E844181A1D0;
	Sat, 13 Nov 2021 20:26:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADKQMsH022065 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 15:26:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E7A502026D7F; Sat, 13 Nov 2021 20:26:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E20F02026D48
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 20:26:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58D93185A7BA
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 20:26:17 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-140-vcUjXc7wPW6cqJNC-C_zaQ-1; Sat, 13 Nov 2021 15:26:15 -0500
X-MC-Unique: vcUjXc7wPW6cqJNC-C_zaQ-1
Received: by mail-qt1-f181.google.com with SMTP id f20so11507559qtb.4
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 12:26:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=XCVi1mnbQPXPv8V7Syh9MfZ9Ecq/bSo7tSxaiyxtOMo=;
	b=r+YbmZRyCq/AhcC/RzXSIEqVFMYeH2tjGLUkE+tFu44yXr6U4IjjQKlzvqVgkfnvIX
	ZFxds9NjyZOjPPI/Urhcl0Qx0cNCQW4tV70Eq1yzUbXLzkC+glSopZW1RgKRxv64PSFe
	G/S2MfLQVGIc+sJmRNJZo1vCXKa4p/m4Agsp9Z8U+LQpZnYB3h/BXopvS6dXmeC9jYS+
	5b5QgcOLOHCaxCg94OgVoxTFEdJOj5j2cd49cOYGTykeeQPn7LTImuzEi1uaL+OSMG4T
	NMmqGO7dntlmm8D1sDeuHhTAV29Nh9JBsp5hPwPDq9ZpaoqTjnhd6wzF0oOwF+gj3Yx+
	wVpQ==
X-Gm-Message-State: AOAM530qYfGxfi8ctvxqIBOXGtX46O7Q5BiiVJ/5M0VNHUpNtRx4l3IH
	0ddZ4wBfXnQgZ+x1Unis3vfkB5Zt5DEXZA==
X-Google-Smtp-Source: ABdhPJx7xZAC9qz1YNYJ1Rs+jD9tlS2lHiRO2uVDoJMTy/1JKh6We7Hl3Vsu2T+9fdZo+LRD75oU9w==
X-Received: by 2002:a05:622a:11d6:: with SMTP id
	n22mr27785597qtk.3.1636835174750; 
	Sat, 13 Nov 2021 12:26:14 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id 8sm4248954qtz.28.2021.11.13.12.26.13
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 12:26:13 -0800 (PST)
Message-ID: <e3357441-0f17-9da7-7eb1-4c5f913e0598@gmail.com>
Date: Sat, 13 Nov 2021 15:26:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
	<CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
	<1338bc21-40df-abe9-2c5e-98902de1854f@gmail.com>
	<fb7c47d4-620f-b25f-e018-619dfde616c7@gmail.com>
	<32965805-ab69-0a83-37c0-b1a86b281e80@gmail.com>
In-Reply-To: <32965805-ab69-0a83-37c0-b1a86b281e80@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

U2FtZSBoZXJlLCB3YXMganVzdCBwb2ludGluZyBvdXQgdGhhdCBJJ20gZ3VpIHBlcnNvbiwgbGF0
ZWx5LCBhbmQgbm8gCmxvbmdlciBmaW5kIHBsZWFzdXJlIGluIHNwZW5kaW5nIGhvdXJzIHJlYWRp
bmcgZG9jdW1lbnRhdGlvbiwgaGFja2luZyAKTGlzcCBjb2RlIChyZWZlcnJpbmcgdG8gZW1hY3Nw
ZWFrIGhlcmUpLCBvciB0aGUgbGlrZSwganVzdCB0byByZWFkIGVtYWlsIAphbmQgY2FsZW5kYXJz
LsKgIFN1cmUsIHVzaW5nIHRoZSBndWksIHlvdSBjYW4ganVzdCBnbyBhaGVhZCBhbmQgZ2V0IHN0
dWZmIApkb25lLgoKCkkgbWlzc3Bva2UsCgoKRGF2ZcKgIEguCgoKCgpPbiAxMS8xMy8yMSAxNToy
MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiB0ZXJtaW5hbC4g
V2hlbiBJIHdhbnQgdG8gcmVhbGx5IGdldCBzb21ldGhpbmcgZG9uZSwgdGhlIE1BVEUgZGVza3Rv
cCAKPiBhbmQgZ3JhcGhpY2FsIGFwcGxpY2F0aW9ucyBtYWtlIG1lIHByb2R1Y3RpdmUsIG5vdCBs
YXp5LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

