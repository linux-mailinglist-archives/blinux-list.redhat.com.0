Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 38B643E0C78
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 04:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628130751;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lx0s+OHmlMj9jJSW3CTbV3kUxNvUquZiBPuf8Vi9HD4=;
	b=FSyCEjySp4QSWR4KogyyOjPJTkWBCNGMcqZ+gWF72E2bHWeUtKu9Uw504YKeml/IR1tv2R
	AVQlGd3BwPGEYIP1OyvWyKmYavU4T9VvUbxGjOCQlnrR86VZmFAhUrrqwzot76+Cdz8RAt
	RLlXgSfQYeocAK7ZcMyk0DECUfdCHEo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-Xry3nbLqOme81pIEy587UA-1; Wed, 04 Aug 2021 22:32:29 -0400
X-MC-Unique: Xry3nbLqOme81pIEy587UA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E7CD87D543;
	Thu,  5 Aug 2021 02:32:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E84D717D85;
	Thu,  5 Aug 2021 02:32:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A609181A3F0;
	Thu,  5 Aug 2021 02:32:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1752WMmF007182 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 22:32:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0312810CB27E; Thu,  5 Aug 2021 02:32:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F23E410CB27D
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 02:32:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4210C101A529
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 02:32:19 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-314-bzHPsMcLNWG9zwy3ZRMvsg-1; Wed, 04 Aug 2021 22:32:17 -0400
X-MC-Unique: bzHPsMcLNWG9zwy3ZRMvsg-1
Received: by mail-ot1-f48.google.com with SMTP id
	o2-20020a9d22020000b0290462f0ab0800so3653240ota.11
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 19:32:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=/N6HD2v7U312vv6AYNlFwlylv+4ZmegnTVvY108G8+0=;
	b=Oh12WKHaDvFORbOObvv3sbY1YyvMLe5S7uXENLJqUnnEWKWtTI6Pb80ipWRMc3ClJl
	Rn+qvCKjVORdDvBCc8lFoKmPGirOn2+f8yZD/dsI7XjRu5k0LXmINpg9HGKMe0aNCIWu
	jItFfIaFQ8UywTwsSTeFoxKzmhHaVKCwRLY0JiL8c4NYJCh/Jf4EoD5dSxQk2/HJyH/1
	22Z02493rgVJrPAbZMNjc5IElV0JdxSCZ5cDLGsDGnH7JV92SdcB/kGbt8KXhBiGEOei
	5FLyaLiernV5TNiyfnOg6O2uZltfNYLfYTqgdyRtJrFAOsI50mCIhfdCEqJvcP1RkqrO
	UYsQ==
X-Gm-Message-State: AOAM533nuaJJRSlaig6X8u1ojzBZKzYzvN9UC/n+QnfX1gEqdRq870n2
	77pyqVeTWnPuq9wkjMnYvKj5LG3EREU=
X-Google-Smtp-Source: ABdhPJyMyitAsMqaWrCbTikd/4qs3xUDi7aoDAF3g0CpdJs3iBivoBuXH8IJJhFnZzqkI3zC/mXqBA==
X-Received: by 2002:a05:6830:4b0:: with SMTP id
	l16mr1944767otd.97.1628130736323; 
	Wed, 04 Aug 2021 19:32:16 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:45c9:39c8:e5af:5000])
	by smtp.gmail.com with ESMTPSA id f51sm720107otf.4.2021.08.04.19.32.15
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 19:32:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 21:32:14 -0500
References: <B9F8B793-E7C7-445B-91D4-27AE5BE5C394@gmail.com>
	<50777D22-914C-4419-983C-1EB067198F3E@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <50777D22-914C-4419-983C-1EB067198F3E@gmail.com>
Message-Id: <A778FFDA-3C1F-428D-8F5B-5D471D9E755C@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1752WMmF007182
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Tm90IG11Y2ggY3JhY2tsZSBvbiB0aGUgbGl2ZSBkdmQgc28gZmFyLgpUb21vcnJvdyBJIG1heSB0
cnkgU29sdXMgZ25vbWUuCgo+IE9uIEF1ZyA0LCAyMDIxLCBhdCA5OjEwIFBNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
PiAKPiBCZWZvcmUgeW91IHRyeSB0aGEsIHlvdSBtYXkgaGF2ZSB0byBzZXQgdXAgcG93ZXIgYnV0
dG9uIGJlaGF2aW9yIGluIHNldHRpbmdzLiAgWW91IGNvdWxkIGdldCB0aGVyZSBieSBoaXR0aW5n
ICJzdXBlciIgYW5kIHR5cGluZyAicG93ZXIiLCBhbmQgZmluZGluZyB0aGUgc2V0dGluZ3Mgd2l0
aCB5b3VyIGFycm93cyBhbmQgc3R1ZmYuICBJIGRpZCBhIGxpdHRsZSBtb3JlIHBsYXkgd2l0aCBC
dWRnaWUsIG9uIHRoZSBsaXZlIHN5c3RlbSBhbmQgZmluZCB0aGF0IHRoZSAncnVuJyBkaWFsb2cg
aXMgaW5hY2Nlc3NpYmxlLiAgTm90IGEgYmxvY2tlciwgYnV0LCBhbiBhbm5veWluZyBkaXNjb3Zl
cnkuCj4gCj4gTWF5YmUgSSdsbCB0aHJvdyBCdWRneSBvciBHTk9NRSBvbiB0aGUgcHJvYm9vay4g
SSdtIGludGVyZXN0ZWQgaW4gd2hldGhlciB0aGUgc3BlZWNoIGNyYWNrbGlucyBnbyBhd2F5LiAg
SSB0aGluayB5b3UgbWVudGlvbmVkIHRoYXQgdGhleSBkb24ndCBzaG93IGluIHlvdXIgaW5zdGFs
bGVkIEJ1ZGdpZSBzeXN0ZW0/Cj4gCj4gQ2hlZXJzLAo+IAo+IERhdmUgSC4KPiAKPiAKPiAKPiBT
ZW50IGZyb20gbXkgaVBob25lCj4gCj4+IE9uIEF1ZyA0LCAyMDIxLCBhdCA5OjAyIFBNLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPj4gCj4+IO+7v0kgd2lsbCB0cnkgdGhhdC4KPj4gSSBoYXZlIGEgdGhpbmsgcGFkIHdo
aWNoIHdhcywgdW50aWwgYSBjb3VwbGUgZGF5cyBhZ28sIGEgd2luZG93cyB0ZW4gbWFjaGluZS4K
Pj4gTm93IGl0IGlzIGxpbnV4Lgo+PiAKPj4+IE9uIEF1ZyA0LCAyMDIxLCBhdCA3OjMwIFBNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29t
PiB3cm90ZToKPj4+IAo+Pj4gWW91IGNvdWxkIGhpdCB0aGUgcG93ZXItb2ZmIGJ1dHRvbiwgYW5k
IGl0IHdpbGwgYXNrIHdoYXQgeW91IHdhbnQgdG8gZG8uCj4+PiAKPj4+IAo+Pj4gLS0gIERhdmUg
IC0tCj4+PiAKPj4+IAo+Pj4gCj4+PiBTZW50IGZyb20gbXkgTGVub3ZvIFRoaW5rcGFkLCBydW5u
aW5nIFNsaW50IEdOVS9MaW51eC4gIGh0dHBzOi8vc2xpbnQuZnIgZm9yIGluZm8KPj4+IAo+Pj4+
IE9uIDgvNC8yMSA3OjUyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+Pj4+IEEgdmVyeSBiYXNpYyBxdWVzdGlvbiwgaG93IG1heSBJIHNodXRkb3duIG9yIHJl
c3RhcnQgYSBidWRnaWUgc3lzdGVtPwo+Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

