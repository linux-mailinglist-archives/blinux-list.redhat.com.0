Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8544838C8
	for <lists+blinux-list@lfdr.de>; Mon,  3 Jan 2022 23:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641248816;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2IS0p2wpPsUOQ+8CazOIXwUod8FpgqH1ZYxJR83zbCI=;
	b=FIbIFqQ+LlCthUOCkagS7pI4bFD3i69fXQ2KA6K6TLZegaixr05jDJGXMDVwOTkTL4NgXg
	0ZeoZfPFp5/mUbrrWVpJ3y6y2YY5uGYB+lMxbIHEMzzqxtYUsu0ZeDRKzaKfMYbvosXfk8
	R/KmP1wKw9+zxgEMvqZZgj6xjTx76wg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-505-1-_Jvh1wN4KOk3A1Z9Ub2w-1; Mon, 03 Jan 2022 17:26:51 -0500
X-MC-Unique: 1-_Jvh1wN4KOk3A1Z9Ub2w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 606F3801ADB;
	Mon,  3 Jan 2022 22:26:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F141B1007607;
	Mon,  3 Jan 2022 22:26:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 307824BB7C;
	Mon,  3 Jan 2022 22:26:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 203MQeZ7022678 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 3 Jan 2022 17:26:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2CDC02166B2F; Mon,  3 Jan 2022 22:26:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 278122166B2D
	for <blinux-list@redhat.com>; Mon,  3 Jan 2022 22:26:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 329271C0DC0B
	for <blinux-list@redhat.com>; Mon,  3 Jan 2022 22:26:37 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-503-i0OeUsr5Nmyn589ioSdrrA-1; Mon, 03 Jan 2022 17:26:33 -0500
X-MC-Unique: i0OeUsr5Nmyn589ioSdrrA-1
Received: by mail-qt1-f176.google.com with SMTP id m18so31902557qtk.3
	for <blinux-list@redhat.com>; Mon, 03 Jan 2022 14:26:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=aKFQU4RhPRs480YCa6MIg00/qaLt02IB83bwtwSveUI=;
	b=7sGjYm8iKELdw8y6uhzbnx+MxMuYOolHZoJtnNRcWKCtvZhsiz2tVPPGNuGwxgzUt+
	qzSvavXYA+fhDUvUVjYlJ82qLkNKQu2hmpW484yEeXOEI3z0xKDCvSv2UQX3PicmBqCV
	OpOVspAcEVWazqlW+AerFai8txBzc1BnY2JKL4+1wBvl2KYbOdWDnT9zFx37ohTs3XQ5
	NMltVhTF0L2unu0dofBtZ/ZFspR+jx+HnUfafvWDOwF3OYxK94udCUWCORz3fdmkkDTe
	TuhrrnYqbncsa+BCcgnV6G/roghdhrSBoUSJrp3z/Ct/BZ7eT0qMFsqiSXn87C1lsPlD
	LE3A==
X-Gm-Message-State: AOAM531gbCjIEyCkbzvr4EXpVsCdDxV8/dB53w5eFjnvMJ+mrgBov6TF
	Hih5tUyQgot0uxUo+Z8L7ZWI/phKW8AQpu32bcDjEQEqJc4=
X-Google-Smtp-Source: ABdhPJy67/8GiboeBjOsN8S9MdejB0VrA3hNL8z6vftt5X9AqBYU3gT2lDejJy8IPhtAg0TSU9C+CLfBNsRRqZkDlFk=
X-Received: by 2002:ac8:47d3:: with SMTP id d19mr42632511qtr.72.1641248792028; 
	Mon, 03 Jan 2022 14:26:32 -0800 (PST)
MIME-Version: 1.0
References: <2D360D45-88B2-4856-955A-9387ABC9085A@pipkrokodil.se>
In-Reply-To: <2D360D45-88B2-4856-955A-9387ABC9085A@pipkrokodil.se>
Date: Mon, 3 Jan 2022 17:26:21 -0500
Message-ID: <CAMuGJSk3s4O7_8e6SO_dcFBntphcBfMMxQNx8EghWttJoLKGrw@mail.gmail.com>
Subject: Re: Ubuntu 20.04 settings.
To: Linux for blind general discussion <blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbSB1c2luZyBVYnVudHUgMjAuMDQsIGluc3RhbGxlZCBvbiB0aGUgbWFjaGluZSwgbm90IGlu
IGEgVk0uIE9uY2UgbG9nZ2VkCmluLCBJIGNhbiB1c2UgdGhlIHN1cGVyIGtleSAoIldpbmRvd3Mi
IGtleTsgbGVmdCBzaWRlIG9mIGtleWJvYXJkIGJldHdlZW4KQ3RybCBhbmQgQWx0KSB0byBvcGVu
IHRoZSBzZWFyY2ggYm94LCB0aGVuIHR5cGUgInNldHRpbmdzIi4KClRoYXQgYWNjb3VudCBzZXR1
cCB0aGluZyBtaWdodCBiZSBwYXJ0IG9mIHRoZSBpbml0aWFsIGxvZ2luIHdoZXJlLCBhcyBhCiJj
b252ZW5pZW5jZSIsIHlvdSBhcmUgYXNrZWQgdG8gbG9nIGludG8gR29vZ2xlLCBGYWNlYm9vaywg
d2hhdGV2ZXIgLi4uSQpqdXN0IGlnbm9yZWQgdGhvc2UgKGhpdCBFc2Mgb3IgQWx0K0Y0IHVudGls
IGl0IGdvZXMgYXdheSkuCgotLQpLYXJsIFdpbGJ1cgo1MTMtMzIyLTI0ODEKa2FybEBrYXJsd2ls
YnVyLm5ldAoKCk9uIE1vbiwgSmFuIDMsIDIwMjIgYXQgNToxNiBQTSBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDwKYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cgo+IEhp
IQo+IEkgaGF2ZSBpbnN0YWxsZWQgVWJ1bnR1IDIwLjA0IG9uIGEgdmlydHVhbCBtYWNoaW5lIGlu
IFZNd2FyZSBGdXNpb24gb24gbXkKPiBNYWMuIEV2ZXJ5dGhpbmcgZ29lcyB3ZWxsIHVudGlsIEkg
YW0gbG9nZ2VkIGluLgo+IEJ1dCBJIGhhdmUgZm9yZ290dGVuIHRoZSBrZXlzdHJva2UgdG8gZ28g
dG8gc2V0dGluZ3Mgd2l0aCBPcmNhLgo+IFRoZSBvbmx5IHRoaW5nIHRoYXQgY29tZXMgdXAgaXMg
c29tZSBndWlkZSB0aGF0IHdhbnRzIG1lIHRvIHNldCB1cCBzZXZlcmFsCj4gYWNjb3VudHMuCj4g
SSBqdXN0IGRvbuKAmXQgd2FudCB0aGF0IGJ1dCBpdCBzZWVtcyBJIGNhbuKAmXQgZ2V0IGl0IGF3
YXkuCj4gQW55IGhlbHAgSXMgYXBwcmVjaWF0ZWQuCj4gL0EKPgo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

