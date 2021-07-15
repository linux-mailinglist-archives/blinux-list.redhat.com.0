Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C18F03CA025
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 15:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626357310;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aCruDRqPqYtIZsfqGRgts70PX1vTWKDuYNFMOvhNwtw=;
	b=D8rrU+KRs5rnkgRhPLPQMU0mpZ4Kl6RL6FEPKGiU1lq89ewrSgEEaYKzw/MRPBMDWMXV2g
	LYkrgOCXMosovyR3qU8aEhIaS8HivMmwWBYFnLixAAo/LHSrc5zqsIhO4+Gesse46fQ/2d
	5O1UrgSgT6B5Lp74oDgSYd5lr7SgWOg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-6l4liCheOw-d3ViDbaMubA-1; Thu, 15 Jul 2021 09:55:08 -0400
X-MC-Unique: 6l4liCheOw-d3ViDbaMubA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B8CB362FC;
	Thu, 15 Jul 2021 13:55:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 470255C1BB;
	Thu, 15 Jul 2021 13:55:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 460F34EA2F;
	Thu, 15 Jul 2021 13:54:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16FDskaC001702 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 09:54:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 80EEF2038A0A; Thu, 15 Jul 2021 13:54:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B9D421CB240
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 13:54:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7627F866DF4
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 13:54:43 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-100-WgE9y8YLPxSLGYaGdSVTFA-1; Thu, 15 Jul 2021 09:54:41 -0400
X-MC-Unique: WgE9y8YLPxSLGYaGdSVTFA-1
Received: by mail-oi1-f175.google.com with SMTP id w194so6677643oie.5
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 06:54:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=7rhLah0Lvq+L2AXj/4XaREQ3uIsHjw/zuMKOz+D1lMQ=;
	b=sOr7cfJ9WpDEAzECXBnl7/BJwGV9+d19kss1dzJvalFJ3y3CmqdLCnAUg2oMAC3rze
	/qXWF1N2+meLu4O2N9fkioR4l3gfehlM+FZawT4DPfn2npLJqdGOR7zVi8C/szChoFPy
	gqFfkoDu8J5cA1yIUs5DWL1EPQuyVJuqi7AHLAJXolHOtltn2kHpsRHzHsCweYi4O0aP
	ZC8ggGKJ4qAPA5aoZMhY9F6uqe8HV+MupfP4/1WuM3gqPdQQCxHGPLaZF5FVfkSczJMa
	9pNn5wLEDBpiGyMr4gErCAdIS3SzOLlpzSOUFcnrMjwBpBVKTrGD4P+Ip5o80ZsnVMeM
	4xzg==
X-Gm-Message-State: AOAM533d7EpBAJhrw6kdRHUR2s0zqRM9XHS4qGbq/cchDfIIWgaJmNPN
	N8Z+WMr8TwAJKu7xlFOKWrr9YI8lY6g=
X-Google-Smtp-Source: ABdhPJxC9dl9T2ui8w6w20m9A0q1+Vl5uze1m0b7K+o9/n3x2r0oDd+hjM1AcbeZs0jKwI7gNRe/GA==
X-Received: by 2002:aca:af01:: with SMTP id y1mr3873495oie.6.1626357280662;
	Thu, 15 Jul 2021 06:54:40 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:c943:c073:1777:fb7c?
	([2601:3c2:8200:9360:c943:c073:1777:fb7c])
	by smtp.gmail.com with ESMTPSA id
	t207sm1221428oif.27.2021.07.15.06.54.39 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Jul 2021 06:54:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Subject: Re: Cloud service
Date: Thu, 15 Jul 2021 08:54:38 -0500
References: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
Message-Id: <6C9F5852-561F-45DC-9FE9-808FC5ADC953@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16FDskaC001702
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2l0aCBsaW51eCwgSSBoYXZlIG5vdCB5ZXQgZm91bmQgaG93IHRvIHVzZSBkcm9wYm944oCZcyBz
bWFydCBzeW5jIGZ1bmN0aW9uLgpBbHNvLCB3aGF0IGlzIGdub21lIDQwPwoKPiBPbiBKdWwgMTQs
IDIwMjEsIGF0IDk6NTQgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IEhpLAo+IAo+IHdoZW4gSSB1c2UgV2lu
ZG93cywgSSB1c2UgT25lZHJpdmUuIEl0IGNhbiBzdG9yZSBmaWxlcyBvbmxpbmUgYW5kIGRvd25s
b2FkIHRoZW0gb25seSBpZiBuZWVkZWQuIE5vdywgSSB3YW50IHRvIGZ1bGx5IG1pZ3JhdGUgdG8g
TGludXgsIG1heWJlIHRvIEFyY2guIFdoaWNoIGNsb3VkIHN0b3JhZ2UgaXMgYmVzdCBmb3IgTGlu
dXggLyBhY2Nlc3NpYmlsaXR5PyBEcm9wYm94PyBJIHdpbGwgdXNlIE1hdGUgZGVza3RvcCwgYmVj
YXVzZSBHbm9tZSA0MCBpcyBjYXRhc3Ryb3BoaWNhbCBmb3IgbWUgYW5kIEkgbmVlZCBzdG9yZSBm
aWxlcyBvbmxpbmUgYW5kIGRvZm5sb2FkIHRoZW0gb25seSBpZiBuZWVkZWQgZmVhdHVyZS4KPiAK
PiBUaGFua3MsCj4gCj4gUGF2ZWwKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

