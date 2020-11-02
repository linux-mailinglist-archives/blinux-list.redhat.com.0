Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id EF5B42A2A41
	for <lists+blinux-list@lfdr.de>; Mon,  2 Nov 2020 13:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604318431;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iRZ3p1VHqDdPnOtwhsJs7XCDPXDJB0uOHWONjcb+qfo=;
	b=RJyw96V0zOpg366hYIG4Mneh1hPKmAZc/z1UzYS9hrIF96x4lVQ9Gnij0+WYXH2ivt8P+w
	tKZYEN6jDPsnrb+maqZby11t8D33JpRj851ZvGOiCLvlss6ujETp4WD319rfGecxoJ9n46
	8vrkJKiI0Atoa6pOdcOoDTHyP+oCcXo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-536-P77FINQjMjaxjLuPCieT_w-1; Mon, 02 Nov 2020 07:00:29 -0500
X-MC-Unique: P77FINQjMjaxjLuPCieT_w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC6BB1040C26;
	Mon,  2 Nov 2020 12:00:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 937C45B4DC;
	Mon,  2 Nov 2020 12:00:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6ADEC8C7B3;
	Mon,  2 Nov 2020 12:00:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A2C0LhD020055 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Nov 2020 07:00:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AFA53110F2C7; Mon,  2 Nov 2020 12:00:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB975110F2C6
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 12:00:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E589185A78B
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 12:00:19 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-480-c_IvzaOdPD6v4Zwgg7iNBw-1; Mon, 02 Nov 2020 07:00:16 -0500
X-MC-Unique: c_IvzaOdPD6v4Zwgg7iNBw-1
Received: by mail-wr1-f47.google.com with SMTP id w14so14245564wrs.9
	for <blinux-list@redhat.com>; Mon, 02 Nov 2020 04:00:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=hHjom8ErtG2mVsJzegh8k2f0U68DCxHrjtyXPv0yHZg=;
	b=MYvkDbvewMMnwd9ZckdtHttPO24Efibrw3erDPzneWuxchHlinwTPz60vKg5FGUCYo
	fgvhzvGzYRSHQc2Jq9gC2BnitFGBmXLHU3lijAsvXMeEbv++pGIpmt5QvSStBZPR/bAI
	11uvvq056HuBEyBau+Yla4fwZ6L9sGqmOIxU+0n0nBtQdt/r2qEspT0vgWFCEj2el0vq
	rICU2KjKyZ+pNPD2LqUP6XYxUmlgwJN26OKWnJWshNz4Cs4Esgh2XZmGHEvnTGAs2ywo
	RGp0sFR0JD2OT7TAUrm1aPZCWUPdyqS2bZnuNZZr3DFW2KH0c/aBGE5ilaLK2wm25Ds5
	hnOA==
X-Gm-Message-State: AOAM532th9XSHRhdmbt/3cjJzEIGBCvG9LvuaasCW27BOgEE1HMXkaig
	WwSIIR37JqBTbRzR/KMUX4yOZG0SpkfvEOz/Tps=
X-Google-Smtp-Source: ABdhPJydkzPQp3fdtI3qQgRms0cuzxQe9AjwAx9qsiE2/VftQvTgmWziGMjRaFk2/d+YcuPrIvFizQ==
X-Received: by 2002:aa7:dd42:: with SMTP id o2mr15872226edw.53.1604317694853; 
	Mon, 02 Nov 2020 03:48:14 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id j8sm8047974edk.79.2020.11.02.03.48.14
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 02 Nov 2020 03:48:14 -0800 (PST)
Subject: Re: [orca-list] Arch Linux supports accessibility out of the box.
To: Linux for blind general discussion <blinux-list@redhat.com>,
	orca-list@gnome.org
References: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
	<e26afd1b-3a05-bde9-019c-213f2291de34@schoeppi.net>
	<28abae5f-a391-458a-fb64-44a90ad88b51@gmail.com>
	<20201102112826.2qroagamtqcwhxoc@function>
Message-ID: <c9d5c53a-b268-d6ec-bfdf-6e965014b11f@gmail.com>
Date: Mon, 2 Nov 2020 14:48:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201102112826.2qroagamtqcwhxoc@function>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

aGVsbG8gU2FtdWVsLgoKMDIuMTEuMjAyMCAxNDoyOCwgU2FtdWVsIFRoaWJhdWx0IHZpYSBvcmNh
LWxpc3Qg0L/QuNGI0LXRgjoKPiBIZWxsbywKPgo+IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24sIGxlIGx1bi4gMDIgbm92LiAyMDIwIDE0OjA3OjU2ICswMzAwLCBhIGVjcml0Ogo+
PiBzeXN0ZW1kLWJvb3QgZm9yIGVmaS4gc3lzdGVtZC1ib290IGRvZXMgbm90IHN1cHBvcnQgYmVl
cHMuCj4gVGhhdCdzIG5vdCBjb21wbGV0ZWx5IGEgcmVhc29uIGZvciBnaXZpbmcgdXAgOikKPgo+
IEkgaGF2ZSByZXF1ZXN0ZWQgdGhlIGZlYXR1cmUgb24KPgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9z
eXN0ZW1kL3N5c3RlbWQvaXNzdWVzLzE3NTA4Cm9oIHRoYW5rcy4gdG8gYmUgaG9uZXN0LCBJIHdh
cyBwbGFubmluZyB0byBkbyBpdCBsaXRlcmFsbHkgaW4gdGhlIGNvbWluZyAKZGF5cywgYnV0IHlv
dSBnb3QgYWhlYWQgb2YgbWUuIEknbGwgbG9vayBhdCB0aGUgY29kZSwgbWF5YmUgaXQgd29uJ3Qg
YmUgCnZlcnkgZGlmZmljdWx0Lgo+IFNhbXVlbAotLQoKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

