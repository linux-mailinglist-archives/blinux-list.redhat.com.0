Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3CC882F5094
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 18:04:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610557460;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c67SUQViXESOFmOeA2n/B8e6g1DP2DaZQtZqqHPNYpQ=;
	b=aWw5W/SVjTwDw2OcQreSscob3PEX5QBSl6oWiT5iU+0HKAPk8iUW8ZNxSm/Mput4BLKFS8
	fouaLVRwuBM5OqenMN6gFOoECRRNMgHjfMr9Q9ZmhjluhPBasC4dgD6oi7QM9GqRfJr8il
	GwXlbr6mFI1eUlx0ZRjKIIQbDL0DRr8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-574-O7LzkjGmMxavNIMTRn17JQ-1; Wed, 13 Jan 2021 12:04:15 -0500
X-MC-Unique: O7LzkjGmMxavNIMTRn17JQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DCAD01005E42;
	Wed, 13 Jan 2021 17:04:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C40955D9EF;
	Wed, 13 Jan 2021 17:04:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A0A124BB7B;
	Wed, 13 Jan 2021 17:04:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10DH1w0A002180 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 12:01:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B3B76D7B1E; Wed, 13 Jan 2021 17:01:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADF3DD7B01
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 17:01:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C8E0803C9F
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 17:01:56 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-577-W715l9XKPd2VxY9fGQ6OnA-1; Wed, 13 Jan 2021 12:01:54 -0500
X-MC-Unique: W715l9XKPd2VxY9fGQ6OnA-1
Received: by mail-ot1-f41.google.com with SMTP id b24so2579402otj.0
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 09:01:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=j2dABKqTeBlkEcDYQAbHXwiyh9g47k4AUktmSmFeiBM=;
	b=Q9Ap08DGqybcjXfde4IxJppGKD0jobCN3SkYre9gZO1xtIfwExkDNtBYLFuA1fjcZf
	lIVMlCRsNdPgwTXqKENyLFFZSKbS9KrQ7WPjYO7xSo+X0HaM18F+f8PBzVjYkuWmLkwC
	8ghTwrIAE0E3LSGlQRQFbRy48YWB3Rh4bQJ7JzrI/KXBO4Vz7wK5n7ZDkAMV+wGBTwLS
	i9txXxpsJnxqH7TS4/gnojRsT3G+QfoSF6srTqsd2H6FsxlFVGF/1o2d4zPPInpKev/d
	/nARd01Ms7aCB+lYwxL7HiqxdITNGAMBAwg2OIFOgRsUH6pendt5MXUGRIOaInEnRaI1
	U8Ng==
X-Gm-Message-State: AOAM531YCYvb3GrBLCkAyk0ZEZ3IrezKB40jNVK6l5MePTQY9gys8AkE
	frP7pPwVcREw3WrlPORQeh1dokGm635NbQ==
X-Google-Smtp-Source: ABdhPJzl5q2ulrC1s9Su56h0D1du1pKCbxIZwBLLUc/Tkc1WNUK5UjTwri1UdS6QYl7F2A064cERDQ==
X-Received: by 2002:a05:6830:148e:: with SMTP id
	s14mr1880973otq.195.1610557311433; 
	Wed, 13 Jan 2021 09:01:51 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:b09a:ec02:2ca3:b7a5?
	([2601:3c2:8200:9360:b09a:ec02:2ca3:b7a5])
	by smtp.gmail.com with ESMTPSA id i16sm490332otc.61.2021.01.13.09.01.49
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jan 2021 09:01:50 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
Subject: Re: Does anyone on here read code in braille?
Date: Wed, 13 Jan 2021 11:01:49 -0600
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>
	<A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
	<alpine.DEB.2.22.394.2101130842170.2197@precision-M2800>
To: blinux-list@redhat.com
In-Reply-To: <alpine.DEB.2.22.394.2101130842170.2197@precision-M2800>
Message-Id: <108A8E49-CA6F-4343-A117-892A84702025@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10DH1w0A002180
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIGFuIG9yYml0LgpXaGF0IEkgZG8gaXMgcHV0IHRleHQgZmlsZXMgYWJvdXQgbGludXgg
aW4gdG8gdGhlIG9yYml0LCBhbmQgcmVhZCB0aGVtIHRoZXJlLgoKPiBPbiBKYW4gMTMsIDIwMjEs
IGF0IDEwOjQ1IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBJIHVzZSBicmFpbGxlIGV4Y2x1c2l2ZWx5IChv
ciB0cnkgdG8gYW55d2F5KSBvbiBsaW51eCBhbmQgd2luZG93cy4gIEkgdXNlIGVpdGhlciBhbiA0
MCBvciA4MCBjZWxsIG9uZSBsaW5lIGRpc3BsYXkgZGVwZW5kaW5nIG9uIGRlc2sgc3BhY2UuICBZ
ZXMgdGhleSBhcmUgZXhwZW5zaXZlIGJ1dCBmb3IgY29kZSBJIGZpbmQgdGhlbSBpbmRpc3BlbnNp
YmxlLiAgRXNwZWNpYWxseSBpZiB5b3UgYXJlIHdvcmtpbmcgd2l0aCBjb2RlIHRoYXQgdXNlcyBs
b3RzIG9mIHNob3J0IG5hbWVzLgo+IAo+IFRvbQo+IAo+IAo+IE9uIFdlZCwgMTMgSmFuIDIwMjEs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4+IAo+PiAKPj4g
QXNobGV5Cj4+IAo+PiBCZWdpbiBmb3J3YXJkZWQgbWVzc2FnZToKPj4gCj4+PiBGcm9tOiBBc2hs
ZXkgQnJlZ2VyIDxhYnJlZ2VyQGl2eXRlY2guZWR1Pgo+Pj4gRGF0ZTogSmFudWFyeSAxMywgMjAy
MSBhdCAxMjozNToxOSBBTSBDU1QKPj4+IFRvOiBBc2hsZXkgQnJlZ2VyIDxhc2hicmVnZXJAeWFo
b28uY29tPgo+Pj4gU3ViamVjdDogRndkOiBEb2VzIGFueW9uZSBvbiBoZXJlIHJlYWQgY29kZSBp
biBicmFpbGxlPwo+Pj4g77u/Cj4+PiBBc2hsZXkKPj4+IEJlZ2luIGZvcndhcmRlZCBtZXNzYWdl
Ogo+Pj4+IEZyb206IEFzaGxleSBCcmVnZXIgPGFicmVnZXJAaXZ5dGVjaC5lZHU+Cj4+Pj4gRGF0
ZTogSmFudWFyeSAxMywgMjAyMSBhdCAxMjoyNToxMSBBTSBDU1QKPj4+PiBUbzogTGludXggPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+Cj4+Pj4gU3ViamVjdDogRG9lcyBhbnlvbmUgb24gaGVyZSBy
ZWFkIGNvZGUgaW4gYnJhaWxsZT8KPj4+PiDvu79IaSBndXlzIEkgd2FzIHdvbmRlcmluZyBpZiBh
bnlvbmUgb24gaGVyZSByZWFkcyBjb2RlIGluIGJyYWlsbGU/IElmIHNvIGRvIHlvdSByZWFkIGl0
IGxpbmUgYnkgbGluZSBvciBhcmUgeW91IGFibGUgdG8gcmVhZCBtdWx0aXBsZSBsaW5lcyBhdCBv
bmNlPyBBbmQgd2hhdCBkaXNwbGF5cyBkbyB5b3UgdXNlIGZvciByZWFkaW5nIGNvZGU/Cj4+Pj4g
QXNobGV5Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

