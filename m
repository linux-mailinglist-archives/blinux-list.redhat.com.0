Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 45F963CC03C
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 02:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626482220;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WWKZ9KniNKuEvWmjQzgZgqxDA4Ilba3rU2gWbA00tN0=;
	b=UYcs4T6cVF25UgcmSbEMuFdT3omVjdbklcFqbPB8vp878rjXD6gpAvyu2sazhLXdt4co9S
	h1Br8DVNhbVkeUaCvqqLsTvvz3Sq0sh9Umgf7MPL1ElfZyUfWk9ekSkEaIbpygyNeIP/PM
	rrb1cg96nu+nvCtdhPZFyKD9brOkmDs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-SulkB5AJOU6pUoJ6jh2jgQ-1; Fri, 16 Jul 2021 20:36:58 -0400
X-MC-Unique: SulkB5AJOU6pUoJ6jh2jgQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EADC81084F56;
	Sat, 17 Jul 2021 00:36:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 416385C1B4;
	Sat, 17 Jul 2021 00:36:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 368804EA29;
	Sat, 17 Jul 2021 00:36:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16H0V51J012568 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 20:31:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9B353103F277; Sat, 17 Jul 2021 00:31:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 950A01054799
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 00:31:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E5311857F03
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 00:31:02 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-592-epE1a5KkNo-aMwqjk4HbTw-1; Fri, 16 Jul 2021 20:30:59 -0400
X-MC-Unique: epE1a5KkNo-aMwqjk4HbTw-1
Received: by mail-pf1-f170.google.com with SMTP id y4so10234874pfi.9
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 17:30:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=6WfW1QVUfI9O5yfX8ifEYwPf/E5LAuCG9ySxS/hY81A=;
	b=PhibnVqZH5qoZslAIe0ISmqz3BrPB/cH2oXbfATG8XgZoEeYUVtgBUaHgKB+pG7MMx
	OgGKc8WISF7S19b4DY4QvL2praMYTK/RbZY4+kZwRSt1JRUg88h4xTOjtQQolji1QCz3
	pjsbaFls1k/E2WczrELP35d7qKZiPGJXpm4ICH56klsfA2YxOv8TPsI56BT73BcLp5WG
	3ETmZLT6+/eA/WKYb8IV1nPfqeOLLxNsitnVnH1sX6jwMz4EhamAPyiCezi+cU4/mRRG
	KSBkSXYr5/BDH7jF/+xVLHlBjKzmZZmqCdyuTgFQH35trmmkIIZQs/BE53FmcGD1eAu0
	S1kA==
X-Gm-Message-State: AOAM533Bk5P3J7KDIMm+BxDcptijspLEwy3NsFntMKRUQXx5orv4Q2YI
	MsvWkH9/RVYCKXeGuFtrxRHx8JSu3jU=
X-Google-Smtp-Source: ABdhPJxvMFWWm49beK2VLp8BdoJA6sr3WKtrwmTOahMn3ihu05TCwILzRdNIDQ5tBEyNSrfiG7kiSQ==
X-Received: by 2002:a63:505d:: with SMTP id q29mr12562256pgl.137.1626481858531;
	Fri, 16 Jul 2021 17:30:58 -0700 (PDT)
Received: from smtpclient.apple ([2603:9005:401:e2d3:d07b:41f6:209a:4457])
	by smtp.gmail.com with ESMTPSA id
	s36sm12226958pgk.64.2021.07.16.17.30.57 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Jul 2021 17:30:58 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3681.0.2.1.2\))
Subject: Re: Fedora pros and cons
Date: Fri, 16 Jul 2021 19:30:56 -0500
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
	<CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
	<alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
	<6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
	<16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
	<71fec14a-4782-77b2-7e6c-354065ebf6d1@hubert-humphrey.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <71fec14a-4782-77b2-7e6c-354065ebf6d1@hubert-humphrey.com>
Message-Id: <D464B3F2-1585-4785-83D4-73E995D97527@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdOKAmXMgd2l0aCBPcmNhPwpEZXZpbiBQcmF0ZXIKci5kLnQucHJhdGVyQGdtYWlsLmNvbQoK
SHR0cHM6Ly9kZXZpbnByYXRlci5mbG91bmRlci5vbmxpbmUKCj4gT24gSnVsIDE2LCAyMDIxLCBh
dCA3OjE4IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlz
dEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBXZWxsLCBhcyBmYXIgYXMgZG91YmxlIHZvaWNlcywg
YXQgdGltZXMgb24gYSBsYXB0b3AsIFZveGluIHdpbGwgZG8gdGhhdC4gSWYgSSBoaXQgZG93bi1h
cnJvdyBlaXRoZXIgaW4gcmV2aWV3IG9yIGEgcmVndWxhciBhcnJvdywgSSBoZWFyIGEgc2hvcnQg
c25pcHBpdCBvZiB0aGUgcHJldmlldyBsaW5lIG1peGluZyB3aXRoIHRoZSBjdXJyZW50IGxpbmUu
IEkgaGF2ZSBtZW50aW9uZWQgdGhpcyB0byBHaWxsZXMuCj4gQ2hpbWUKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

