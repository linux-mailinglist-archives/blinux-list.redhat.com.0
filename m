Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E86EF757F23
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jul 2023 16:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689689636;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=009nVzTy1a1L7g+jyewQnb0EKz8LOnrDuRSuI7FQ4dk=;
	b=Pljb6QjQw954If9LgfOWm5DAvcUMulqdxDksyEBkPsmXUWWRQyTOPJsar7eGTU9NHvsd7h
	KvaUN7+DWPSmWD3zJ01UemD/Jam3HJdanb7FFAldgOvVfjAZhybl6qX6dhjbu85VUg4/I/
	6BooyTXlbKA/QQryMvSQqf6eUhKmb8M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-79-hUZZt70MOEyvjKdzQ2buZg-1; Tue, 18 Jul 2023 10:13:53 -0400
X-MC-Unique: hUZZt70MOEyvjKdzQ2buZg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F593185A7A5;
	Tue, 18 Jul 2023 14:13:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 98AA456D1F2;
	Tue, 18 Jul 2023 14:13:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A642519465A0;
	Tue, 18 Jul 2023 14:13:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: Fixing a corrupted partition table using orca?
Date: Tue, 18 Jul 2023 09:12:59 -0500
References: <mailman.287.1689646905.687810.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.287.1689646905.687810.blinux-list@redhat.com>
Message-ID: <mailman.418.1689689614.687810.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYWQgbm8gaWRlYSBvbmUgY291bGQgdXNlIGxpbnV4IG1pbnQgd2l0aCBvcmNhLgpJIHRyaWVk
IHRvIHJ1biBtaW50LCBhbmQgY291bGQgbm90IGdldCBvcmNhIHRvIHJ1biBvbiB0aGUgaW5zdGFs
bC4KCj4gT24gSnVsIDE3LCAyMDIzLCBhdCAyMToyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gSGksCj4gTXkg
TGludXggbWFjaGluZSBoYXMgYSBjb3JydXB0ZWQgcGFydGl0aW9uIHRhYmxlLgo+IElzIGl0IHBv
c3NpYmxlIGZvciBtZSB0byBmaXggaXQsIHVzaW5nIHRoZSBvcmNhIHNjcmVlbiByZWFkZXI/Cj4g
SeKAmW0gdXNpbmcgTGludXggTWludCAyMS4xIHdpdGggT3JjYSA0Mi4KPiAKPiAKPiBUaGFua3Ms
Cj4gSmVzc2ljYSBEYWlsCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

