Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AC1453680
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 16:56:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637078211;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wPyKsptQ6Nd9an9Z9+7ceMfcKIG0tqJe3rEWk5Q2eCA=;
	b=DUlbg6Ooffvnoq6G90b86HK+9h3q6rRgpx02rTHJDd1YYaUOjej5HlPOi7NQDsRtTey78G
	5AZ8VdL8OwLfDF3KhukNEJRXmmaoD2XVTDeRnuxw+L2lPNC0jbuU67Zlz/7sLy0X4ePUut
	YlXCOCX2lIEebc0b1GZH46UKm6B66+I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-3B9FtXR2NEqAYrkK7UwuJw-1; Tue, 16 Nov 2021 10:56:47 -0500
X-MC-Unique: 3B9FtXR2NEqAYrkK7UwuJw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38A76802E65;
	Tue, 16 Nov 2021 15:56:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92AA860BD8;
	Tue, 16 Nov 2021 15:56:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 115BE4EA2A;
	Tue, 16 Nov 2021 15:56:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGFqedU015623 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 10:52:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 378A2404727A; Tue, 16 Nov 2021 15:52:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33AC74047272
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 15:52:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1BFE58057DB
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 15:52:40 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-252-fndxDYwUPLOnn6dYbs5c8Q-1; Tue, 16 Nov 2021 10:52:38 -0500
X-MC-Unique: fndxDYwUPLOnn6dYbs5c8Q-1
Received: by mail-qt1-f173.google.com with SMTP id f20so19055163qtb.4
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 07:52:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=Uu/rglmJAPogWpGM/KeLlsVDLVuz/xAUD/vhpSO1I40=;
	b=1AlXqsCABEbplofY+18RKRNOpuZcNKO3BbBNFyPSf9/H6q8zW1QExy8AiicHPwRgKq
	uiK7D1r6irC6hQkaYH5EnJWiM+Ze0tvaIkIGlaoPqlSoeO59fMY/G+3rZUfDXGlwB9zV
	zfwoWpiCqLb+k3J0gLfC9K5VYEKPn5WcYYX3ES4uQrtrakMHZ0ko+y2V14yW0iw0dyiX
	YFqOC8n8wSE8oM7XgB3HyEP4zVgYpFL/fJn8ZYO8tBsjcKBZmla5LDpknLWqGHgJ18KF
	WlKRGU/34m9lKUZc40Zn94o93/xqcHiv7z34Gs5JrHgfX1yw8WYJA3kwriiM+gnF+UDg
	gCHQ==
X-Gm-Message-State: AOAM531F4NtePA0YqACmDEfgQw7rAdUeVKjHAbsY5lrggG1teNbFmZ/O
	5Rn9hcRude9KRZ+frcOq1jQ0ClBVRholSzHJUzGI1NqF
X-Google-Smtp-Source: ABdhPJzajniH89mQUkQN9QQn2AyWuH0XSEGZwB5cUE2V1AvM5BWnmAtA1ricfFnTvdOEvp1IRpMsoHZR711fvKhAYMI=
X-Received: by 2002:ac8:5fc2:: with SMTP id k2mr8752375qta.310.1637077957593; 
	Tue, 16 Nov 2021 07:52:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 16 Nov 2021 07:52:37
	-0800 (PST)
In-Reply-To: <1ab13c2c-36e7-ba0d-7f57-b68e5f3b36d3@gmail.com>
References: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
	<09164111-9929-1755-6e5a-88cf448f663b@slint.fr>
	<1ab13c2c-36e7-ba0d-7f57-b68e5f3b36d3@gmail.com>
Date: Tue, 16 Nov 2021 15:52:37 +0000
Message-ID: <CAO2sX30DevqjQHLE79JO6YBNisS6=VuG0sq9gH7Jycp48Jk8pw@mail.gmail.com>
Subject: Re: any good accessible OCR for linux?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AGFqedU015623
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

YXB0LWdldCBpbnN0YWxsIGZvbGxvd2VkIGJ5IHRoZSBuYW1lcyBvZiBvbmUgb3IgbW9yZSBwYWNr
YWdlcyBpcyB0aGUKc3RhbmRhcmQgd2F5IG9mIGluc3RhbGxpbmcgcHJlLWJ1aWx0IHBhY2thZ2Vz
IG9uIERlYmlhbiBhbmQgaXQncwpkZXJpdmF0aXZlcy4gVGhvdWdoLCBmb3IgaXQgdG8gYWN0dWFs
bHkgd29yaywgaXQgbmVlZHMgdG8gZWl0aGVyIGJlCnByZWZpeGVkIHdpdGggdGhlIHN1ZG8gY29t
bWFuZCBvciBiZSBydW4gaW4gYSByb290IHNoZWxsLgoKU2xpbnQgaXMgYmFzZWQgb24gU2xhY2t3
YXJlLCB3aGljaCB1c2VzIGEgZGlmZmVyZW50IHBhY2thZ2UgbWFuYWdlbWVudApzeXN0ZW0gZnJv
bSBEZWJpYW4gYW5kIGl0J3MgbWFueSBkZXJpdmF0aXZlcywgc28gSSBzdXNwZWN0IGFwdC1nZXQK
d291bGQganVzdCBnZXQgeW91IGEgY29tbWFuZCBub3QgZm91bmQgZXJyb3IuIEknbSByZWFsbHkg
b25seSBmYW1pbGlhcgp3aXRoIERlYmlhbiBhbmQgaXRzIGRlcml2YXRpdmVzLCBzbyBJIGhhdmUg
bm8gaWRlYSB3aGF0IHRoZSBlcXVpdmFsZW50CmNvbW1hbmQgb24gZWl0aGVyIFNsaW50IG9yIHZh
bmlsbGEgU2xhY2t3YXJlIHdvdWxkIGJlLiBBcyBmb3Igd2h5IGEKcGFja2FnZSBidWlsdCBmb3Ig
c2xpbnQgd291bGQgYmUgbWFraW5nIHN1Z2dlc3Rpb25zIHRoYXQgd291bGQgb25seSBiZQp1c2Vm
dWwgdG8gc29tZW9uZSBydW5uaW5nIGEgRGViaWFuLWJhc2VkIGRpc3RybywgSSBzdXNwZWN0IGl0
J3MgYSBjYXNlCm9mIERlYmlhbiBhbmQgaXQncyBkZXJpdmF0aXZlcyBhY2NvdW50aW5nIGZvciBh
IGxhcmdlIHBvcnRpb24gb2YgTGludXgKdXNlcnMocHJvYmFibHkgYSBwbHVyYWxpdHksIHBlcmhh
cHMgZXZlbiBtYWpvcml0eSBpZiB5b3UgZ3JvdXAgYWxsCmRpc3Ryb3MgaW50byBtYWpvciBmYW1p
bGllcyksIHRoZSBkZXZlbG9wZXIgdGFpbG9yaW5nIHRoZSBlcnJvcgptZXNzYWdlIHRvIHRoZSBs
YXJnZXN0IGdyb3VwIHBvc3NpYmxlLCBhbmQgdGhlIHNsaW50IG1haW50YWluZXJzKHdobyBJCnRo
aW5rIG1pZ2h0IGFjdHVhbGx5IGJlIGEgdGVhbSBvZiBvbmUpIG5vdCBoYXZpbmcgdGhlIHRpbWUg
b3IKcmVzb3VyY2VzIHRvIGdvIHRocm91Z2ggZXZlcnkgcGFja2FnZSBhbmQgcmVtb3ZlIGVycm9y
IGFuZCBoZWxwCm1lc3NhZ2VzIG9ubHkgcmVsZXZhbnQgdG8gb3RoZXIgZGlzdHJvcy4KCk9uIDEx
LzE2LzIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPiBUaGFua3MgYSBtaWxsaW9uIERpZGllciwKPgo+IFdvdWxkIGlz
c3VpbmcgdGhpcyBjb21tYW5kIGluc3RhbGwgdGhpcyBwYWNrYWdlIG9uIG15IGRlc2t0b3A/IExh
c3QKPiBuaWdodCB3aGVuIEkgdHJpZWQgdG8gcnVuIExpb3MgSXQgZ2F2ZSBtZSBhIGxvbmcgbWVz
c2FnZSBiYXNpY2FsbHkKPiB0ZWxsaW5nIG1lIHRoYXQgSSBoYXZlIHRvIGluc3RhbGwgZGljdGlv
bmFyaWVzIGZvciBBcmFiaWMgYW5kIG90aGVyCj4gbGFuZ3VhZ2VzLgo+Cj4gVGhlIGNvbW1hbmQg
aXQgc3VnZ2VzdGVkIHdhcyBzb21ldGhpbmcgbGlrZSB0aGlzOiAiYXB0LWdldCBpbnN0YWxsIC4u
Li4iCj4KPiBDaGVlcnMsCj4KPiBJYnJhaGltCj4KPgo+IE9uIDExLzE2LzIxIDc6MTYgQU0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhpIElicmFoaW0sCj4+
Cj4+IHRoaXMgY29tbWFuZDoKPj4gbW9zdCAvdmFyL2xvZy9wYWNrYWdlcy90ZXNzZXJhY3QtZGF0
YS00LjAuMC14ODZfNjQtMnNsaW50Cj4+IHNob3dzIHRoYXQgSSBoYXZlIHBhY2thZ2VkIHRyYWlu
ZWQgZGF0YSBmb3IgQXJhYmljIGFuZCBhbGwgTGF0aW4KPj4gc2NyaXB0cyBhbW9uZyBvdGhlcnMg
YnV0IG5vdCBIZWJyZXcgc28gZmFyLiBJZiB5b3Ugd2FudCBpdCBJIGNhbiBhZGQgaXQuCj4+Cj4+
IENoZWVycywKPj4gRGlkaWVyCj4+Cj4+IExlIDE2LzExLzIwMjEgw6AgMDM6NTMsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+IE9rYXkgZnJpZW5kcywK
Pj4+Cj4+PiBhZnRlciB0aHJlZSB3ZWVrcyBvZiB1c2luZyBTbGludCwgSSBhbSBub3cgZmluZGlu
ZyBteXNlbGYgdXNpbmcgbGludXgKPj4+IG1vcmUgYW5kIG1vcmUuwqAgSSBwcmFjdGljYWxseSBj
b25maWd1cmVkIGFsbCBvZiBteSBlbWFpbCBib3hlcyB0bwo+Pj4gd29yayBvbiBsaW51eC4gSSBh
bHNvIGFkZGVkIG15IGRyb3Bib3ggdG8gbGludXggYW5kIHNldHVwIG15IHdoYXRzYXBwCj4+PiB3
ZWIuCj4+Pgo+Pj4gTm93IEkgbmVlZCBhIGdvb2QgYWNjZXNzaWJsZSBvY3IgcGFja2FnZSwgcHJl
ZmVyYWJseSBtdWx0aS1saW5ndWFsCj4+PiB3aGljaCBjYW4gZG8gQXJhYmljLCBIZWJyZXcgYW5k
IEZyZW5jaCBiZXNpZGVzIEVuZ2xpc2guIEFtIEkgYmVpbmcKPj4+IHRvbyBkZW1hbmRpbmc/IERv
ZXMgc3VjaCBhIExsaW51eCBwYWNrYWdlIGV4aXN0Pwo+Pj4KPj4+IEkgaGF2ZSBhIHRlbiB5ZWFy
cyBvbGQgRXBzb24gc2Nhbm5lciB3aGljaCBJIHJlYWxseSBsaWtlLgo+Pj4gVW5mb3J0dW5hdGVs
eSwgd2luZG93cyB0ZW4gbm8gbG9uZ2VyIHN1cHBvcnRzIHRoaXMgc2Nhbm5lci4gSSBob3BlIGl0
Cj4+PiB3b3VsZCBydW4gZmluZSB3aXRoIExpbnV4LsKgIEkgY291bGQgbm90IHRyeSBpdCBiZWNh
dXNlIEkgaGF2ZSBubyBPQ1IKPj4+IHBhY2thZ2UgcnVubmluZyBvbiBteSBMaW51eCBEZXNrdG9w
Lgo+Pj4KPj4+IElmIHlvdSBndXlzIGhhdmUgYW55IHN1Z2dlc3Rpb25zLCBwbGVhc2UgaGVscC4K
Pj4+Cj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4KPj4+IElicmFoaW0KPj4KPj4KPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

