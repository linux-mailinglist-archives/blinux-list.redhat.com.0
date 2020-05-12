Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 3614F1CFCAC
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 19:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589306044;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4Jc4RuYYmDF+4TB9aD8nvXtigCOQRA9xbh8MtYyDgKE=;
	b=gW8YXMLf0bHEakN8XprHUY1dv49KXOglZouoGfbmrnSjhcowHdV52Fg4fwIaVs5gOeK4Fy
	yGZI6hlfe17TYYBeN0COksp446eVnwwYxsUfkah6+R40FAOsQ1hXELOiuMv/TfNV0EMkcW
	vK0SfBc5t0EwoMwR2mqRghLKQzZW2uc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-385-SUc_tPXwPNu2_guxT0TtcQ-1; Tue, 12 May 2020 13:54:02 -0400
X-MC-Unique: SUc_tPXwPNu2_guxT0TtcQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3BDE48018AB;
	Tue, 12 May 2020 17:53:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AADB438E;
	Tue, 12 May 2020 17:53:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF8FD1809543;
	Tue, 12 May 2020 17:53:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CHrqiw005386 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 13:53:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9FFE9200A773; Tue, 12 May 2020 17:53:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C243202683E
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:53:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2DBB8007C8
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:53:49 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-398-YGCAynOBNzy0rsqwHiNLNA-1; Tue, 12 May 2020 13:53:47 -0400
X-MC-Unique: YGCAynOBNzy0rsqwHiNLNA-1
Received: by mail-qt1-f174.google.com with SMTP id h26so11842429qtu.8
	for <blinux-list@redhat.com>; Tue, 12 May 2020 10:53:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=brPcvQ2/vyDeT5ir68kArm7W+KYn0wKxErHGW6JuZkw=;
	b=O7dW77r+qeunnsPc/ZGwQ9XQ+swn6+ZT2wC14q8NOXzLoTblsQcyzDfdBrgaH/tHyl
	dPCZl+1TlBnxGwyn59KMEjGPA7v2xH4LkXxphV01yv3mgnrtMk4eiQD2FH7QMfaxq1LX
	mMlQS2J70XeRBN0Q+ctJj2hB6q+XjMBGARpFd21kgnEIi6rZS1b3GUC7i6eKcBf07kRM
	RpbmcP/GstgL9bviDUSHLcFpsv2F5ongf+VgocBwoLU77pD5x5KLDGI5+kTNY9TSNHzd
	B2fv2+WwAuvfZ65CP1hDMb2W7djMeRjz7PsNLEm2sEg/0SRB1zal55ubOgF+CsjdxH3f
	3FbQ==
X-Gm-Message-State: AGi0PuYF3vmbdENSEDXZc/phLOqxc2kveJbt9+zGWPphVeWWcDvq8AUe
	q/p60EmsT4O5++DaBU2fxYVqGEJ3
X-Google-Smtp-Source: APiQypJywfw64Dqe874lZmdLIzkGiYS8MOHMOoH+4KgeOj3dBxIH99hy1KechS6bd7xqG0RrnGOAPQ==
X-Received: by 2002:ac8:688c:: with SMTP id m12mr22769945qtq.238.1589306026515;
	Tue, 12 May 2020 10:53:46 -0700 (PDT)
Received: from xu4.kyle.tk
	(2606-a000-111a-8d0a-0000-0000-0000-065f.inf6.spectrum.com.
	[2606:a000:111a:8d0a::65f]) by smtp.gmail.com with ESMTPSA id
	g57sm9475989qtb.48.2020.05.12.10.53.45 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 12 May 2020 10:53:45 -0700 (PDT)
Subject: Re: please help Me to build Shortwave radio player
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ>
Message-ID: <2f0f2b9c-737f-b8f7-f207-fc90c038e6b0@gmail.com>
Date: Tue, 12 May 2020 13:53:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:68.0) Gecko/20100101
	Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SWYgeW91IGhhdmUgdGhlIGZ1bmRzIGZvciBzdWNoIGEgZGV2aWNlLCBJIGNhbiByZWNvbW1lbmQg
ZWl0aGVyIHRoZSAKT2Ryb2lkIE4yIG9yIHRoZSBPZHJvaWQgQzQgdG8gcnVuIExpbnV4IGRpcmVj
dGx5IG9uIEFSTTY0IGRldmljZXMuIFRoZSAKQzQgaGFzIHNpbWlsYXIgc3BlY3MgdG8gdGhlIFJh
c3BiZXJyeSBQaTQsIHdoaWNoIGlzIGFsc28gYSBxdWl0ZSBjYXBhYmxlIApkZXZpY2UsIGJ1dCBp
dCBtYXkgbm90IGhhdmUgYSA2NC1iaXQga2VybmVsLCB1bmxlc3MgbWFpbmxpbmUgd29ya3Mgd2l0
aCBpdC4KCiDCoFRoZSBmaXJzdCBkZXZpY2VzIEkgbWVudGlvbiBhcmUgYm90aCByYXRoZXIgaW5l
eHBlbnNpdmUgQVJNNjQgCmNvbXB1dGVycy4gVGhlIE4yIGlzIHRoZSBtb3N0IHBvd2VyZnVsLCBi
dXQgdGhlIEM0IGlzIHRoZSBsZWFzdCAKZXhwZW5zaXZlLiBCb3RoIGhhdmUgNEdCIG9mIFJBTSwg
YnV0IHRoZSBOMiBoYXMgbW9yZSB0aGFuIHR3aWNlIHRoZSAKcHJvY2Vzc2luZyBwb3dlci4gSSBo
aWdobHkgcmVjb21tZW5kIHRoZXNlIGJlY2F1c2UgdGhleSBjYW4gYm9vdCBlaXRoZXIgCmZyb20g
aW5leHBlbnNpdmUgTWljcm9TRCBjYXJkcyBvciBmcm9tIGEgYml0IG1vcmUgZXhwZW5zaXZlIGJ1
dCBoaWdoZXIgCmVuZHVyYW5jZSBlTU1DIGNoaXBzLiBJIGhhdmUgaGFkIG9uZSBvZiB0aGVzZSBl
TU1DIGNoaXBzIHJ1bm5pbmcgYWxtb3N0IApjb25zdGFudGx5IGZvciBwcm9iYWJseSAzIHllYXJz
IGluIGFuIG9sZGVyIE9kcm9pZCBYVTQuIFRoZSBiZXN0IHRoaW5nIAphYm91dCB3b3JraW5nIHdp
dGggcHJldHR5IG11Y2ggYW55IG9mIHRoZXNlIHNpbmdsZS1ib2FyZCBjb21wdXRlcnMgaXMgCnRo
ZSBmYWN0IHRoYXQgYWJzb2x1dGVseSBldmVyeXRoaW5nIGlzIHN0b3JlZCBvbiB0aGUgc3RvcmFn
ZSBtZWRpYS4gClRoZXJlJ3Mgbm8gaW5hY2Nlc3NpYmxlIGJpb3Mgb3IgdWVmaSB0byBoYXZlIHRv
IGRlYWwgd2l0aCwgYXMgbW9zdCBvZiAKdGhlbSBlaXRoZXIgcnVuIFUtQm9vdCBvciBjYW4gb3Ro
ZXJ3aXNlIGJlIGNvbmZpZ3VyZWQgZnJvbSBhIHRleHQgZmlsZSAKdGhhdCBjYW4gYmUgZWRpdGVk
IGluIGFueSB0ZXh0IGVkaXRvciBvbiB0aGUgcnVubmluZyBzeXN0ZW0uIEkgZ2VuZXJhbGx5IApy
dW4gQXJjaExpbnV4QVJNIG9uIHRoZXNlIGNvbXB1dGVycywgYnV0IG90aGVyIG9wZXJhdGluZyBz
eXN0ZW1zIGFyZSAKYXZhaWxhYmxlIGZvciB0aGVtIGFzIHdlbGwsIGFsdGhvdWdoIEkgY2FuJ3Qg
Y29tbWVudCBvbiB0aGUgCmFjY2Vzc2liaWxpdHkgb2YgYW55IEFuZHJvaWQgaW1hZ2VzIGF2YWls
YWJsZSBmb3IgdGhlbSwgYmVjYXVzZSBJIApoYXZlbid0IHRyaWVkIHRoZW0uIE15IGd1ZXNzIHRo
b3VnaCBpcyB0aGF0IGl0IHNob3VsZCBiZSBwb3NzaWJsZSB0byAKZmxhc2ggdGhlIGFwayBmaWxl
cyBmb3IgVGFsa2JhY2sgYW5kIGZvciBhIHZvaWNlLCBJIHJlY29tbWVuZCBSSFZvaWNlLCAKYXMg
dGhlIGltYWdlIHNob3VsZCBiZSBhY2Nlc3NpYmxlIGZyb20gYW55IGNvbXB1dGVyIHdpdGggYSBj
YXJkIHJlYWRlciAKb3IgYSBVU0IgcG9ydCBmb3IgYW4gZU1NQyByZWFkZXIuIEp1c3Qgc29tZSBv
ZiBteSB0aG91Z2h0cywgSSBob3BlIEkgCmRpZG4ndCByYW1ibGUgdG9vIG11Y2guCgp+S3lsZQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

