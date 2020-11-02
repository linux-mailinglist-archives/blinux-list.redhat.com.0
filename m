Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 16DA42A28BF
	for <lists+blinux-list@lfdr.de>; Mon,  2 Nov 2020 12:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604315298;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W6OGhV+fjDog2SJT7dpzltNNkmYTqWgz9uim1ryAjqk=;
	b=PCTlh9R3tdsa/YWVu36bgf0Q/2mvneKes6UyW7dHc2g/1Att+jWcUAVjpuVxDsYSWkHxtc
	jUdpg9DNuKQe0ZZIvmD9NmK5ZWHhiXvmCYHza+mYBN9kYBc2Cme6R5x9/alZGp6nVZMXwF
	ZYQ8rtiLgCx3/mw0OFF10uPg/2pbao4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-E66-JRLjP7aXQmhBsXTTTA-1; Mon, 02 Nov 2020 06:08:16 -0500
X-MC-Unique: E66-JRLjP7aXQmhBsXTTTA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E44E9801FDB;
	Mon,  2 Nov 2020 11:08:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AA5A21E8A;
	Mon,  2 Nov 2020 11:08:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8434744A73;
	Mon,  2 Nov 2020 11:08:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A2B86i4015740 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Nov 2020 06:08:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 137182156A3A; Mon,  2 Nov 2020 11:08:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0DBF72156A39
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 11:08:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1CF0102F1E2
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 11:08:03 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
	[209.85.218.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-472--T2v44DxNdytjm_VknsACg-1; Mon, 02 Nov 2020 06:08:00 -0500
X-MC-Unique: -T2v44DxNdytjm_VknsACg-1
Received: by mail-ej1-f46.google.com with SMTP id dk16so17741628ejb.12
	for <blinux-list@redhat.com>; Mon, 02 Nov 2020 03:08:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=UMTtjh7K08FbzDw4378TWZlfElhVfdyLcjhrMTV0GEY=;
	b=NuDmZoalXiLVKBMaU62isrG5BrVTfgDvam/oBPt+kfl7/i8klqkIIAUNclBO+1AVoH
	Q4DJeiuYETJdAVbs8TydcAYp4ZsVNbmQCTrBrA9ZtlQUxnGL2dE3RjVuYXz6KfJK5Gfp
	zdDSs+Ahr98qTUdPhl3sGi5m12it9HW4n5OdeI9ksRBmIZtvTUS1UeDjSXWE19oSHphW
	mxd5eiuKdBc/K1MOoTqakgzjieYqwkz0H52nOq+p8QWhmVY5+Y3PKryTmEm4A5eAmeoY
	9No6b8X+AkKRDKbY1JpCrTi95ViuomxX4zVI1yXWnvmwXxquv0tWucFdUuIe+g6z2xqi
	uh4w==
X-Gm-Message-State: AOAM531OfLAZcgm82ttwGFgqgBVfuHBdtSbhH/jqk/gy0nSl0J1JStUa
	ezPYvV9BpIxYWiQa9xS3JjQA4aPXQghfPch/+a0=
X-Google-Smtp-Source: ABdhPJzpNsl7Jw7N+exA027+5CmcaCEKFLrfcSxYS8MeHE1jECFvYqfAobPykytbm0E+8E3rwcercw==
X-Received: by 2002:a17:906:1f86:: with SMTP id
	t6mr2157553ejr.325.1604315279351; 
	Mon, 02 Nov 2020 03:07:59 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id j6sm6249334edy.87.2020.11.02.03.07.58
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 02 Nov 2020 03:07:58 -0800 (PST)
Subject: Re: [orca-list] Arch Linux supports accessibility out of the box.
To: Christian Schoepplein <chris@schoeppi.net>
References: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
	<e26afd1b-3a05-bde9-019c-213f2291de34@schoeppi.net>
Message-ID: <28abae5f-a391-458a-fb64-44a90ad88b51@gmail.com>
Date: Mon, 2 Nov 2020 14:07:56 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <e26afd1b-3a05-bde9-019c-213f2291de34@schoeppi.net>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
Cc: Linux for blind general discussion <blinux-list@redhat.com>,
	orca-list@gnome.org
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MDIuMTEuMjAyMCAxMzo0NiwgQ2hyaXN0aWFuIFNjaG9lcHBsZWluIHZpYSBvcmNhLWxpc3Qg0L/Q
uNGI0LXRgjoKCj4gSGksCmhlbGxvLgo+IEFtIDAyLjExLjIwMjAgdW0gMDE6NDkgc2NocmllYiBB
bGV4YW5kZXIgRXBhbmVzaG5pa292IHZpYSBvcmNhLWxpc3Q6Cj4+IEkgYW0gcGxlYXNlZCB0byBh
bm5vdW5jZSB0aGF0IHN0YXJ0aW5nIGZyb20gdGhpcyBkYXksIGFyY2ggTGludXgKPj4KPj4gc3Vw
cG9ydHMgYWNjZXNzaWJpbGl0eSBvZmZpY2lhbGx5IG91dCBvZiB0aGUgYm94Lgo+Cj4gRG8gSSB1
bmRlcnN0YW5kIGNvcmVjdGx5LCB0aGF0IHNwZWVjaCBzdXBwb3J0IGR1cmluZyBpbnN0YWxsYXRp
b24gaXMgCj4gdGhlIG5ldyBhY2Nlc3NpYmlsaXR5IGZlYXR1cmUsIGJ1dCB0aGF0IGJyYWlsbGUg
c3VwcG9ydCBoYXMgYmVlbiBpbiAKPiB0aGUgaW5zdGFsbGVyIGZvciBhIGxvbmdlciB0aW1lIGFs
cmVhZHk/Cmluc3RhbGxhdGlvbiBpc28gaGFzbid0IHN1cHBvcnRlZCBub3Igc3BlZWNoIG5laXRo
ZXIgYnJhaWxsZSB0aWwgdGhpcyBkYXkuCj4gSW4gdGhlIERlYmlhbiBpbnN0YWxsZXIgYSBiZWVw
IHRvbmUgaXMgcGxheWVkIHdoZW4gdGhlIGJvb3QgbWVudWUgaXMgCj4gZGlzcGxheWVkLiBXb3Vs
ZG4ndCBpdCBiZSBoZWxwZnVsbCB0byBoYXZlIHRoaXMgYWxzbyBmb3IgdGhlIEFyY2ggCj4gaW5z
dGFsbGF0aW9uIG9yIGlzIHRoaXMgaW50ZWdyYXRlZCBhbHJlYWR5PwoKaSB1bmRlcnN0YW5kIHRo
YXQgYmVlcCB3b3VsZCBiZSBoZWxwZnVsLiBidXQgdW5mb3J0dW5hdGVseSBpIGNhbid0IGRvIAp0
aGF0LiB0aGUgZmFjdCBpcyB0aGF0IGFyY2ggSVNPIHVzZXMgdHdvIGJvb3Rsb2FkZXJzLiBzeXNs
aW51eCBmb3IgCmxlZ2FjeSBiaW9zIGFuZCBzeXN0ZW1kLWJvb3QgZm9yIGVmaS4gc3lzdGVtZC1i
b290IGRvZXMgbm90IHN1cHBvcnQgCmJlZXBzLiBzbyBpIGRlY2lkZWQgdG8gbm90IGltcGxlbWVu
dCB0aGlzIGZlYXR1cmUuCgpzb3JyeS4KCj4KPiDCoCBTY2hvZXBwIAotLSAKClNpbmNlcmVseSwg
QWxleGFuZGVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

