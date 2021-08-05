Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4E6AD3E1199
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 11:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628156755;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oU2y+Qgj3Tfxp5TUxoRBd63RRneg12yYXfvzQ2zFD3I=;
	b=cbPz8QqnDubgFTAy7d9uKziRQhV1+VXFcfcKG/Y8CGGDX7lDagdSQbsRUHaBLoyn1GDWTY
	pbCUz2c2KqrEp9YSMAlLDUD3C+uSDIgUVyThlrO3zxDZmO+h5nHS6cKQPCkwN81rhYGNun
	XircQYTFE9FDzAxFj6T9FBuRPFT213c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-61-iAydYck3M1ixEHrf0XNVzg-1; Thu, 05 Aug 2021 05:45:53 -0400
X-MC-Unique: iAydYck3M1ixEHrf0XNVzg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72EF4CC626;
	Thu,  5 Aug 2021 09:45:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 369C218B42;
	Thu,  5 Aug 2021 09:45:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22FFF4BB7C;
	Thu,  5 Aug 2021 09:45:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1759jgoA018279 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 05:45:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 01E4E208DD87; Thu,  5 Aug 2021 09:45:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F135F208DD83
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 09:45:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 632FC18A01A0
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 09:45:38 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-453-vqsowKjBN5ehUvQiptgbTA-1;
	Thu, 05 Aug 2021 05:45:35 -0400
X-MC-Unique: vqsowKjBN5ehUvQiptgbTA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id ACA75A3F70
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 09:45:29 +0200 (CEST)
Subject: Re: Looking for help with switching on the bare metal.
To: blinux-list@redhat.com
References: <005601d789d0$5ca614b0$15f23e10$@gmail.com>
Message-ID: <e4f1c84a-4ba4-156e-bcc9-50d1b7accf7f@slint.fr>
Date: Thu, 5 Aug 2021 11:45:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <005601d789d0$5ca614b0$15f23e10$@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1759jgoA018279
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

SGkgQnJhbmR0LAoKZXhwZWN0IHplcm8gaXNzdWUgdG8gaW5zdGFsbCBTbGludCBvbiB0aGlzIG1h
Y2hpbmUgaWYgU2VjdXJlIEJvb3QgY2FuIGJlCmRpc2FibGVkLgoKSSBkaWRuJ3QgZmluZCBhbnkg
aW5mb3JtYXRpb24gb24gdGhlIG5ldCBhYm91dCB0aGlzIG1vZGVsLCBhbmQgY2hhdHRpbmcgd2l0
aApIdWF3ZWkncyBjb25zdW1lciBzZXJ2aWNlIGluIEZyYW5jZSBkaWRuJ3QgaGVscC4gVGhlIGxh
ZHkgZG9lc24ndCBrbm93IHRoaXMKbW9kZWwuCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3Bh
aWVyCnNsaW50IG1haW50YWluZXIKCgpMZSAwNS8wOC8yMDIxIMOgIDEwOjAzLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkgYWxsLAo+IAo+ICAgCj4g
Cj4gQXQgdGhlIG1vbWVudCBJIGFtIHJ1bm5pbmcgbXkgTGludXggaW4gdmlydHVhbCBNYWNoaW5l
cywgc2ltcGx5IGJlY2F1c2UgSSBkbwo+IG5vdCBoYXZlIGhhcmR3YXJlIHRoYXQgSSB0cnVzdCB0
byB3b3JrIGNvcnJlY3RseS4gSSBhbSBjdXJyZW50bHkgdXNpbmcgYQo+IEh1YXdlaSBNYXRlYm9v
ayBzZWUgc3BlY3MgYmVsb3cuCj4gCj4gICAKPiAKPiBEZXZpY2UgbmFtZSAgICAgIExBUFRPUC01
N1ZDTUNGMQo+IAo+IFByb2Nlc3NvciAgICAgICAgICAgIEludGVsKFIpIENvcmUoVE0pIGk1LTEw
MjEwVSBDUFUgQCAxLjYwR0h6ICAgMi4xMSBHSHoKPiAKPiBJbnN0YWxsZWQgUkFNICAgIDE2LDAg
R0IgKDE1LDggR0IgdXNhYmxlKQo+IAo+IERldmljZSBJRCAgICAgICAgICAgICBFNTMzREJBRC01
MEZBLTQ4RkYtQTlBQy00QjFCOUJCQzQ2MkQKPiAKPiBQcm9kdWN0IElEICAgICAgICAgIDAwMzQy
LTQxNDI4LTQ2NzY3LUFBT0VNCj4gCj4gU3lzdGVtIHR5cGUgICAgICAgIDY0LWJpdCBvcGVyYXRp
bmcgc3lzdGVtLCB4NjQtYmFzZWQgcHJvY2Vzc29yCj4gCj4gUGVuIGFuZCB0b3VjaCAgIE5vIHBl
biBvciB0b3VjaCBpbnB1dCBpcyBhdmFpbGFibGUgZm9yIHRoaXMgZGlzcGxheQo+IAo+ICAgCj4g
Cj4gVGhpcyBtYWNoaW5lLCBhcyBmYXIgYXMgSSBjYW4gdGVsbCwgaXMgcmF0aGVyIG5ldy4gSSBo
YXZlIHRyaWVkIGxvb2tpbmcKPiBvbmxpbmUsIGJ1dCBhbSBub3Qgc3VyZSBhYm91dCB3aGF0IEkg
YW0gZmluZGluZywgb3IgZm9yIHRoYXQgbWF0dGVyLCBub3QKPiBmaW5kaW5nLiBJZiBhbnlvbmUg
Y2FuIGhlbHAgbWUgd2l0aCB0aGlzIG1hY2hpbmUsIEknZCBiZSBncmF0ZWZ1bC4KPiAKPiAgIAo+
IAo+IFdhcm0gcmVnYXJkcywKPiAKPiAgIAo+IAo+IEJyYW5kdAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

