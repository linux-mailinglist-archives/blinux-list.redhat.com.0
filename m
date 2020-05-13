Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 496D81D16AD
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 16:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589378441;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yEDad3rDBt8TFZIeeb6qA1xdkHddIC5ffTtj4WwSNBk=;
	b=i4EskUl+ksScywsjeSg15cCJ8cvibi7eEqYD3zp3gy3yUoYM0cO+TwqEQvMZDGleBVKjTK
	V8OhIZ7F6pgRW+CxenJd6dZYVCqCiC6JbFtIxa3LlVIN3iysQvsJORwKx/sihEvKWxX6Gw
	tZEgen1o5qykQhcMMv0FTux5zNUZi7I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-511-3qeaUfkrO8qdMlpiXw5LcQ-1; Wed, 13 May 2020 10:00:38 -0400
X-MC-Unique: 3qeaUfkrO8qdMlpiXw5LcQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C340C1005510;
	Wed, 13 May 2020 14:00:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D34566B8C2;
	Wed, 13 May 2020 14:00:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 45A1A4E982;
	Wed, 13 May 2020 14:00:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04DE0Kah026151 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 10:00:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 13EA810ABCBD; Wed, 13 May 2020 14:00:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 036DC10AF42E
	for <blinux-list@redhat.com>; Wed, 13 May 2020 14:00:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 384A9916118
	for <blinux-list@redhat.com>; Wed, 13 May 2020 14:00:16 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-129-u1DaNTCtNT-vyWrueHda_A-1; Wed, 13 May 2020 10:00:10 -0400
X-MC-Unique: u1DaNTCtNT-vyWrueHda_A-1
Received: by mail-pg1-f175.google.com with SMTP id p21so1963361pgm.13
	for <blinux-list@redhat.com>; Wed, 13 May 2020 07:00:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=05iZKd2rxmlyJFoNbTlNLztXvReAVrr9ImN2dksvGJQ=;
	b=NodEtOnqtO2/HuOfJ5l/QCuKyTQqrv5XZFDkMM9gqtE7w67UEnnIQQht7NRBUyN7nN
	YDFMtxMpukhf20EyKH285vOXNQB4QN8ERGMcd3MZ1lV4flI+Mx+LBUIaiXhzUYWUP0aI
	Gi6wgXEqIGVxJ5D5Do/BNTXV1cmOKZgApFgVyIkYqjwHLPc+L0oqULBhqq5eb2Zuxq/z
	4pgLUnSM6wKC6QhGEuz1/9V/ddFs6Pq9sZepfZ1d7LdM3FxzQb8gwjhk8iuV9+1qB/uX
	vDnwVt0h+f9lChD7xwbG+RM7ULbfYXaigkQe6kuO/+Dwsw7mlashGAertJOrAGaVvAZy
	h63g==
X-Gm-Message-State: AGi0PuZUbE+LCLX65yPFE4zStX+j8wz7fHkf959CN0QiBxtfAgvRAIXj
	DAqMSG7K/p3cykBb0EruawsCzQVs8PM=
X-Google-Smtp-Source: APiQypKQlsslqL1qIANBLoKSzcL2Kh+wNpsjYl5o6TUZIuPfJZr9F0Iwja/CisIPf5aL0Z7c5bc8LQ==
X-Received: by 2002:a63:e74a:: with SMTP id j10mr23708775pgk.261.1589378408767;
	Wed, 13 May 2020 07:00:08 -0700 (PDT)
Received: from [192.168.1.8] (024-197-047-106.biz.spectrum.com.
	[24.197.47.106]) by smtp.gmail.com with ESMTPSA id
	x12sm14781682pfq.209.2020.05.13.07.00.06 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 May 2020 07:00:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: b s d and orca
Date: Wed, 13 May 2020 09:00:05 -0500
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
Message-Id: <D5BAA36E-584B-40B2-9968-7D103EC14B12@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWNjb3JkaW5nIHRvIEBzb2xlbmVAYnNkLm5ldHdvcmsgPG1haWx0bzpzb2xlbmVAYnNkLm5ldHdv
cms+IChNYXN0b2RvbikgT3JjYSBpcyBhdmFpbGFibGUgb24gT3BlbiBCU0QuIFRoZXkgZG8gc2Vl
bSB3aWxsaW5nIHRvIGhlbHAsIGFzIHdlbGwuIEkgZG9u4oCZdCBrbm93IGlmIHRoaXMgaXMgdGhl
IFRoZW8geW91IG1lbnRpb25lZCwgYnV0IGl0IGRvZXMgc2VlbSB0aGF0IGF0IGxlYXN0IG9uZSBC
U0QgcGVyc29uIHdvdWxkIGhlbHAuCgo+IE9uIE1heSAxMywgMjAyMCwgYXQgMTI6NDYgQU0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+IAo+IERvbuKAmXQgY291bnQgb24gaXQgZXZlciBiZWluZyB1c2FibGUgb24gT3Bl
bkJTRC4gVGhlbywgaW4gaGlzIGluZmluaXRlIHdpc2RvbSwgaGFzIHByZXR0eSBtdWNoIGJsb3du
IG9mZiBhbnkgcmVxdWVzdHMgZm9yIGFjY2Vzc2liaWxpdHkgZm9yIHRoZSBibGluZCBvbiB0aGF0
IHBsYXRmb3JtLiBZb3UgbWlnaHQgaGF2ZSBiZXR0ZXIgbHVjayBvbiBvbmUgb2YgdGhlIG90aGVy
IEJTROKAmXMgKGxpa2UgRnJlZUJTRCkKPiAKPiBXaGF0IEkgd291bGRu4oCZdCBnaXZlIHRvIGdv
IHVwIHRvIENhbmFkYSwga25vY2sgb24gVGhlb+KAmXMgZnJvbnQgZG9vciBhbmQgc2hvdmUgYSBs
YXB0b3Agd2l0aCBPcGVuQlNEIGludG8gaGlzIGhhbmRzIGFuZCB0ZWxsIGhpbSB0byBmaXggaXQu
IEl0IHdvdWxkIGJlIGEgbGl0dGxlIGhhcmQgdG8gaWdub3JlIGF0IHRoYXQgcG9pbnQsIGRvbuKA
mXQgeW91IHRoaW5rPwo+IAo+IC1FcmljCj4gCj4gCj4+IE9uIE1heSAxMiwgMjAyMCwgYXQgNzo0
MiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4+IAo+PiBBbnlvbmUga25vdyBvZiBhIGRpc3RyaWJ1dGlvbiBvZiBi
IHMgZCB3aXRoIG9yY2EgaW4gaXRzIGluc3RhbGxlcj8KPj4gSSBoYWQgbmV2ZXIgdXNlZCBiIHMg
ZCBiZWZvcmUsIGJ1dCB0aG91Z2h0IG9mIGdpdmluZyBpdCBhIHRyeS4KPj4gCj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPiAKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

