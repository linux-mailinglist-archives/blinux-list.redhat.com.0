Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA17B6786D3
	for <lists+blinux-list@lfdr.de>; Mon, 23 Jan 2023 20:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674503426;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HnzQrupMZCfXQoSVbv37wALfTdNmzLo6mGOThS5Q2k0=;
	b=ZuCZXzDnsFQIsSUSbKmxUnCkxxOQYjk9T3SyroYXyrVGHWGwC7zbcUe/i8hYMLx09ACrEP
	cDsuzYBKzTvZK06qQCYdZ4mC7yojw/5BU38gELZzrAvZfINDOiPjNu0p3FQr9AxlOJptUr
	R/XceKTfNkwKqkI5MY4gBDwcFtOj+kw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-562-jiZwwc8ZNc6dMrXhADCDGQ-1; Mon, 23 Jan 2023 14:50:23 -0500
X-MC-Unique: jiZwwc8ZNc6dMrXhADCDGQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 386E82805589;
	Mon, 23 Jan 2023 19:50:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6DA0B42203;
	Mon, 23 Jan 2023 19:50:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3337E1946597;
	Mon, 23 Jan 2023 19:50:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 Jan 2023 20:50:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: mumble from old machine to new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.706.1674502389.8171.blinux-list@redhat.com>
In-Reply-To: <mailman.706.1674502389.8171.blinux-list@redhat.com>
Message-ID: <mailman.713.1674503420.8177.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q29weSBmcm9tIHRoZSBvbGQgdG8gdGhlIG5ldyBtYWNoaW5lIHRoZSBmaWxlOgp+Ly5sb2NhbC9z
aGFyZS9NdW1ibGUvTXVtYmxlL211bWJsZS5zcWxpdGUKCkNoZWVycywKRGlkaWVyCi0tCkRpZGll
ciBTcGFpZXIKU2xhaW4gbWFpbnRhaW5lcgoKTGUgMjMvMDEvMjAyMyDDoCAyMDozMiwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgaGF2ZSB0d28gbWFj
aGluZXMgd2l0aCBmZWRvcmEgMzcuCj4gTXVtYmxlIGlzIG9uIHRoZSBvbGQgbWFjaGluZSwgc2V0
IHVwIGFzIEkgbGlrZSBpdC4KPiBJIGhhdmUganVzdCBpbnN0YWxsZWQgbXVtYmxlIG9uIHRoZSBu
ZXcgbWFjaGluZSwsIGJ1dCBoYXZlIG5vdCB5ZXQgcHV0IGluIGFueXRoaW5nLgo+IElzIHRoZXJl
IGEgd2F5IHRvIG1vdmUgbXVtYmxlIHNldHRpbmdzIGFuZCBhbGwgZnJvbSB0aGUgb2xkIG1hY2hp
bmUgdG8gdGhlIG5ldyBtYWNoaW5lIHNvIEkgd2lsbCBub3QgbmVlZCB0byBjb25maWd1cmUgZnJv
bSBzY3JhdGNoPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

