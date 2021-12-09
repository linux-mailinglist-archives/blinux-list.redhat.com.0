Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3FB46F443
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 20:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639079463;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nW6Lko1tdjdPVnwsAtxinGq//C2QgDVF0H+iiif4Zu0=;
	b=JX5Rb5f3uZ1EfkEHC1PF+QodEVWQaWaLNBMny573blW6eJIJRyXVmDKnrEQxZejM9bup33
	MVLFd5A2cPtuJB/g/k2YDzXzcfmm2aNg2q5wFvbyVnUf8XyaW00YgUKaOniHdenAmVlO26
	yLG8uo5LQtOdERU7TMVbX39TEUPRUUk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-237-5tEFSJ9qN7aujkBGmfEkXg-1; Thu, 09 Dec 2021 14:50:43 -0500
X-MC-Unique: 5tEFSJ9qN7aujkBGmfEkXg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79F68101F7A3;
	Thu,  9 Dec 2021 19:50:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EFA060C25;
	Thu,  9 Dec 2021 19:50:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7848A1809CB9;
	Thu,  9 Dec 2021 19:50:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B9JoSPV001226 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Dec 2021 14:50:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D0789492CA4; Thu,  9 Dec 2021 19:50:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC38E492CA3
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 19:50:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6312101A52D
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 19:50:28 +0000 (UTC)
Received: from smtprelay06.ispgateway.de (smtprelay06.ispgateway.de
	[80.67.18.29]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-312-VCccdZHrPguhwj8HNzv4lw-1; Thu, 09 Dec 2021 14:50:26 -0500
X-MC-Unique: VCccdZHrPguhwj8HNzv4lw-1
Received: from [37.4.229.93] (helo=smtpclient.apple)
	by smtprelay06.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1mvPQg-0004km-I4
	for blinux-list@redhat.com; Thu, 09 Dec 2021 20:50:10 +0100
Mime-Version: 1.0 (1.0)
Subject: Re: State of Fenrir?
Date: Thu, 9 Dec 2021 20:50:20 +0100
Message-Id: <C8EEB98A-70FB-4517-87BA-AE0FA700A610@linux-a11y.org>
References: <41682d4e-5479-cc52-ef99-d06f51d12d3f@gmail.com>
In-Reply-To: <41682d4e-5479-cc52-ef99-d06f51d12d3f@gmail.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B9JoSPV001226
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpZZWEsIGkgc3RpbGwgd29yayBvbiB0aGF0IGJ1dCBjb25jZW50cmF0ZSBteSB0aW1l
IG9uIHNwZW5kaW5nIG9yY2EgYW4gbmljZSBwbHVnaW4gc3lzdGVtLiBUaGF0LCByZW5vdmF0aW9u
IG9mIG15IG5ldyBob3VzZSBhbmQgIGFuZCBhIGh1Z2UgRVJQIHByb2plY3Qgd2hhdCBpIHdhcyBp
bnZvbHZlZCBpbiwgY29uc3VtZWQgYWxtb3N0IGFsbCBvZiBteSBzcGFyZXRpbWUuIEkgcHJvbWlz
ZSBjaGFuZ2VzIDopLiBUaGluZ3MgYXJlIGdldHRpbmcgbW9yZSBxdWl0ZS4KCkFyZSB5b3Ugc3Vy
ZSB0aGF0IGl0IGlzIGJyb2tlbj8gTWFzdGVyIHJ1bnMganVzdCBmaW5lIGhlcmUuIFdoYXQgdmVy
c2lvbiBhcmUgeW91IHVzaW5nPyAKCkkgd2FudGVkIHRvIHJlbGVhc2UgYSBuZSB2ZXJzaW9uIHNv
bWUgbW9udGhzIGFnbywgYnV0IHB5cGkgKG9yIGJldHRlciBpdGEgd2Vic2VydmljZSBmb3IgdXBs
b2FkaW5nIHBhY2thZ2VzKSB3YXMgZG93biBieSBhbiBERE9TIGF0dGFjay4KCkNhbiB5b3UgdHJ5
IG1hc3Rlcj9pdHMgYWxzbyBhYmFpbGFibGUgaW4gQVVSIGFzIGZlbnJpci1naXQuICBJdHMgc3Rh
YmxlIGZvciBhIHdoaWxlIG5vdy4gSSBjYXJlZnVsbHkgdHJ5IHRvIG5vdCBicmVhayBtYXN0ZXIu
IFRoYXRzIHdoeSBhbGwgZGVzdHJ1Y3RpdmUgY2hhbmdlcyBhcmUgZG9uZSBpbiBvdGhlciBicmFu
Y2hlcyBhbmQgb25seSBnZXQgbWVyZ2VkIHdoZW4gdGhleSBzdXBwb3NlIHRvIHdvcmsuaXQgd29y
a3MgZm9yIHlvdSBpIHJlY2hlY2sgcHlwaXMgb25saW5lIHN0YXRlIGFuZCBmaXJlIGEgZnJlc2gg
cmVsZWFzZS4gCgpDaGVlcnMgY2hyeXMKCj4gQW0gMDkuMTIuMjAyMSB1bSAyMDozOCBzY2hyaWVi
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+Ogo+IAo+IO+7v0p1c3QgY3VyaW91cywgd2hhdCdzIHRoZSBzdGF0ZSBvZiBwbGF5IHdpdGgg
RmVucmlyIHRoZXNlZGF5cz8gSSBjYW1lIGFjcm9zcyBpdCBpbiB0aGUgQVVSIGFuZCBpdCBnb3Qg
bWUgd29uZGVyaW5nIGlmIGl0J3MgYmVlbiB3b3JrZWQgb24gb3I/Cj4gCj4gSSBzZWVtIHRvIHJl
bWVtYmVyIGluIGF0IGxlYXN0IG9uZSByZXBvIGl0IHdhcyBicm9rZW4gYW5kIEknbSBub3Qgc3Vy
ZSBpZiB0aGF0IHdhcyBldmVyIGZpeGVkCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3Q=

