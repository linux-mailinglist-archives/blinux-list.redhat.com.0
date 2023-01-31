Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E086833D7
	for <lists+blinux-list@lfdr.de>; Tue, 31 Jan 2023 18:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675186091;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EoQtQKNYENi+kUNB6mXiV48B9oOW7UH8OZgLH0RCpgY=;
	b=GfKX+mq8sLrQttvA1XyyyADN1l0gUCcBnLla7pGvP/6VqHf+gqfFJZbT7NRo6Mswq4dcTv
	h7V6aYAI4qJ6aha/pDObRSAiT1XTIxKlrRd1YvqZmesVUvXdKKTv/LXxoj8lYZSEpq7rll
	VOBbSbAtwrZLg9X0likN5n4ovpv+24w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-18-xkr6DgurM7y5ert36jjCFQ-1; Tue, 31 Jan 2023 12:28:09 -0500
X-MC-Unique: xkr6DgurM7y5ert36jjCFQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFDC2100F82C;
	Tue, 31 Jan 2023 17:28:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 30D39112132C;
	Tue, 31 Jan 2023 17:28:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B995619465A0;
	Tue, 31 Jan 2023 17:28:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 31 Jan 2023 18:27:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: fenrir installation
To: blinux-list@redhat.com
References: <mailman.2734.1675183128.8173.blinux-list@redhat.com>
In-Reply-To: <mailman.2734.1675183128.8173.blinux-list@redhat.com>
Message-ID: <mailman.3015.1675186081.8175.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Tm8gcGFja2FnZSBpcyBwcm92aWRlZCBmb3IgZmVkb3JhIGF0IHRpbWUgb2Ygd3JpdGluZy4KCkZv
ciBVYnVudHUsIGp1c3QgdHlwZSBhcyByb290IG9yIHVzaW5nIHN1ZG86CmFwdCBpbnN0YWxsIGZl
bnJpci4KVGhlbiBzb21lIGNvbmZpZ3VyYXRpb24gd2lsbCBiZSBuZWVkZWQuCgpDaGVlcnMsCkRp
ZGllcgotLSAKRGlkaWVyIFNwYWllcgpkaWRpZXJhdHNsaW50ZG90ZnIKCkxlIDMxLzAxLzIwMjMg
w6AgMTY6NDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoK
PiBJIGhhdmUgYSBtYWNoaW5lIHdpdGggZmVkb3JhLCBhbmQgYW4gZXh0ZXJuYWwgZHJpdmUgd2l0
aCB1YnVudHUuCj4gSSB3b3VsZCBsaWtlIHRvIGluc3RhbGwgZmVucmlyIHNjcmVlbi1yZWFkZXIg
b24gYm90aCBzeXN0ZW1zLCBhbmQgd291bGQgd2VsY29tZSBhbnkgaW5mb3JtYXRpb24gb24gZG9p
bmcgdGhhdC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

