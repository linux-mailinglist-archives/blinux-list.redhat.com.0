Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5926A3CC3F3
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 17:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626534255;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KvCTbZDYFDr5ftPHFemhw4Gpf9Kl31cixLCLwTJARxk=;
	b=CvjN291UHh4fqN2ikaXATBLIMaiMSAMVH4+6Dk6UvA5yXMT7HU0aljRbHJx8jwd0OxRDOh
	fXQbQ9hSiKo182CMn0taHM7nNmH23PJ9QD4oESy2cx+fSrYAHK7FZlEr3zqJYatCRGsDAR
	hiNDHKCCdgomK4MiGVAWG4HkmsgU4eA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-a067ZqIoOB-_X2MdiR60xA-1; Sat, 17 Jul 2021 11:04:13 -0400
X-MC-Unique: a067ZqIoOB-_X2MdiR60xA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8DB75801107;
	Sat, 17 Jul 2021 15:04:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5FFF5D6AB;
	Sat, 17 Jul 2021 15:04:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9A23B4EA2A;
	Sat, 17 Jul 2021 15:03:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16HF3EM0007032 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Jul 2021 11:03:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 17DC76E1A1; Sat, 17 Jul 2021 15:03:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12BD06D9F2
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 15:03:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06BA496B047
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 15:03:10 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-559-jpqcFjGoOSGCq4tpvvPY2w-1; Sat, 17 Jul 2021 11:03:06 -0400
X-MC-Unique: jpqcFjGoOSGCq4tpvvPY2w-1
Received: by mail-wm1-f49.google.com with SMTP id f190so5975254wmf.4
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 08:03:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=43Wss7uoWDskaLPnkuEyQm87p/M5/OudIy+vegMHmHQ=;
	b=htlgJaup3D+D+KursMj3ELWWgsvgaB0g79ADDBzq8oLndJOBgvngzZOCpTbHcWOywA
	FOU+9sV/dtnZa4UGhpBV9DCZ0r5r3vxPxRrhY2V1CQCvV0mf1Eq9eaLgLsIMsPJUz7t3
	95sqKKoQw9nf7XgVf7B4eGk6jtw4vDKnJdivwQ2f0tcCigi/aiKxGnCCApbgCDjiNSOs
	4mXULsJGRoUBEf7GsEL3xCyBom7O1OQztmyCzkdMwFNelkvXI7Uqhb3tmw4iCk3BUNxk
	vJo4jH1DEpWGyHKt/GkGVPnztptXxtbiseQUx14usetqQoRLsKhTO/j5t2R8B4tW0F7S
	yH1g==
X-Gm-Message-State: AOAM531IAU9WyhHEa+/NPowG5xw7LWduiA8+buLYt4ShB48yO60qVcIT
	fqRm8DukOcRoe3EZHM+y3cix+mpphmg=
X-Google-Smtp-Source: ABdhPJxarpA6d0BxdXZVqOeQwIiA4fCvmTIRr71jPqOSM3jJXn1t0nAYmg9x6Y6uxfHbWn0Zj4OS6w==
X-Received: by 2002:a05:600c:190a:: with SMTP id
	j10mr22368089wmq.109.1626534185310; 
	Sat, 17 Jul 2021 08:03:05 -0700 (PDT)
Received: from smtpclient.apple ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id
	b16sm14200168wrw.46.2021.07.17.08.03.03 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 17 Jul 2021 08:03:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Fedora pros and cons
Date: Sat, 17 Jul 2021 17:02:59 +0200
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
Message-Id: <74CC17E1-4CF3-41EA-A314-75A2D0ADB886@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB0cmllZCBpbnN0YWxsaW5nIEZlZG9yYSBpbiBWTVdhcmUgd29ya3N0YXRpb24gaW4gV2luZG93
cywgYnV0IEkgaGF2ZSBubyBpZGVhIHdoYXQgdG8gZG8gYWZ0ZXIgcG93ZXJpbmcgb24gdGhlIFZN
LgoKUGxlYXNlIGhlbHA/CgpXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZy
b20gbXkgTWFjQm9vayBBaXIKCkNvbnRhY3Q6CgpQaG9uZTogKzI3ICgwKTYwIDUyNSA5MTgxIDx0
ZWw6Ly8rMjc2MDUyNTkxODE+CgpFbWFpbDogYnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20gPG1h
aWx0bzpicmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbT4KClR3aXR0ZXI6IEBicmFuZHRzdGVlbmth
bXAgPGh0dHA6Ly93d3cudHdpdHRlci5jb20vYnJhbmR0c3RlZW5rYW1wPgoKCgoKPiBPbiAxNiBK
dWwgMjAyMSwgYXQgMTc6NDIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IFdpdGggRmVkb3JhLCB5b3UgYXQgbGVh
c3Qga25vdyB0aGF0IHRoZSBNYXRlIGluc3RhbGxlciBpcyBhY2Nlc3NpYmxlLiBVYnVudHUgTWF0
ZeKAmXMgaW5zdGFsbGVyIGlzbuKAmXQgYWNjZXNzaWJsZSwgd2l0aCB0aGUgbGF0ZXN0IDIwLjEw
IHJlbGVhc2UuIEZlZG9yYeKAmXMgTWF0ZSBzcGluLCB3aGljaCBJIGp1c3QgaW5zdGFsbGVkIHRv
ZGF5LCAqaXMqIGFjY2Vzc2libGUuIFlvdSBzdGlsbCBoYXZlIHRvIGVuYWJsZSBBc3Npc3RpdmUg
VGVjaG5vbG9neSBzdXBwb3J0LCBhbmQgdHVybiBvbiBPcmNhLCBhbmQgc2V0IGEga2V5Ym9hcmQg
Y29tbWFuZCBmb3IgT3JjYSwgYnV0IHRoYXTigJlzIG5vdCB0b28gaGFyZCB0byBkby4KPiBEZXZp
biBQcmF0ZXIKPiByLmQudC5wcmF0ZXJAZ21haWwuY29tCj4gCj4gSHR0cHM6Ly9kZXZpbnByYXRl
ci5mbG91bmRlci5vbmxpbmUKPiAKPj4gT24gSnVsIDE2LCAyMDIxLCBhdCAxMDoyOSBBTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4+IAo+PiBIZWxsbywgSSBhbSBpbnRlcmVzdGVkIGluIGFkdmFudGFnZXMgYW5kIGRp
c2FkdmFudGFnZXMgb2YgRmVkb3JhIHZzIFVidW50dS1iYXNlZCBsaW51eC4KPj4gCj4+IAo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

