Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B8A78841C
	for <lists+blinux-list@lfdr.de>; Fri, 25 Aug 2023 11:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692957288;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T+ddglu+fSSsZKKg2tsba+HuwL0wnwKNwuk1BWRElG4=;
	b=F1JF/88Z7AKHy7u6ayLj7g5dpfrlcjbo7ekKrMkUheoj5LIXM1QdEgEggNUUkM4d6VzHfC
	fxsOYC0wNJp1bDD7Yp9ByNWcrJGXOrg8/4282qgOxtG07SLf3YVxgZRqohXxtDCM9lFdnU
	Of6Sv2efq0q6psuWffm2A0NRV4TaNKU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-483-zK35NzO5N3yxThDaqwU02w-1; Fri, 25 Aug 2023 05:54:44 -0400
X-MC-Unique: zK35NzO5N3yxThDaqwU02w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0762F8030AC;
	Fri, 25 Aug 2023 09:54:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C5659140E950;
	Fri, 25 Aug 2023 09:54:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 349AC19465B7;
	Fri, 25 Aug 2023 09:54:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 25 Aug 2023 11:54:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: microknoppix download
To: blinux-list@redhat.com
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
 <mailman.1821.1692956046.18725.blinux-list@redhat.com>
 <mailman.1702.1692956975.18731.blinux-list@redhat.com>
In-Reply-To: <mailman.1702.1692956975.18731.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:FukSxwNAzvI=;sJYyHwvwxrU6d4SsJJyTeS7sTtX
 80+8EFXS1RszUmwHm/WJDu/xGX3lZQ5OC9d7q2vcStdbWIfQjR3xp52h4ny0GpcVtyKs68fFZ
 EpX2j+fLnt6KpvKsy8YCQhJRMqsvsZNfulDvOpqxLpjm5F1sE1x6jliYxbTePU4yR8PNQW5D0
 oA1KSb8KaaN9YE9qyWmEWdaPNKfqJUS3cD7azYIrRIhIiC3/RZDSeJmqWY7tCEMAYt8UsoR8k
 VYzwTa9m2BKueAu34rLse9TVqCahSXOJl+zmOR5dscWbNvALXadC7sYiBIsin/8kDkBDmXrL9
 i9e4EfgzQ9EpqIFRidlgBWHtZgrR23NraHCqha1B53kmVHXxaGEP63Qy1yBzbS1rG1HbAA06U
 yrSE6yziHEiZlq24G6U9WO4TQU0zI4ZSBzq/Jb65xItWboqcoUcVBIFwT1fuNr0kkHdJeRoG1
 keGDx5SIuiPeOSYt+G1aPkzu5f2+iXWNVCiOd5WImx5E3pRex0PYjudpH9GAGA4yLU8R7P/mJ
 OvywjbSNoQTMSIVfpiPq4fAsslfTAdp28lEa9T+ydSK6gALRkS8rhmw1qSLm8PjHDx14WA+YX
 L7JkHD5dALwEBvJaqSGstSlpXBr3M4d8IuZRXPG84epcipnFV5cJjbNULahCuRdWS0GJsJmlP
 xm7Czr6fZvJm23arsP/VsvmQ8ZC/Npsm9lx5RBfHDIRy4aZNjOzgRr1xNlkFEzRLNXdyzHfa3
 DhjWIrz3ApnuP9qVOqQZ5UTKfcVHzYmQ6GuiJjmL03OEWfWMK1QTHyvj0ds2m47AwRt/+d7IC
 PnB922QlyDGPvTTtD7I68lYQ1RY3TJLdzmAIIFnsg+ffFza9ezGfAhxI/9Qzg00uoi+KstiT+
 JsQWOcKDXB19uTFveooNzxRH85qnvvMtbROU3InTbNNZnyxuX38pz0uHlBwVN+uyS06Jch8OT
 wa1ZypUyE15/WJMv1zcWRnn375s=
Message-ID: <mailman.1703.1692957281.18731.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QW5kIHRoZSB0b3JyZW50IGZvciB0aGUgQ0QgaW1hZ2UgKDY2OCBtZWdhYnl0ZXMgb25seSB2ZXJz
dXMgYWJvdmUgRFZEIGltYWdlIG9mIDQuMzcgR0IpIGlzIGhlcmU6Cmh0dHA6Ly90b3JyZW50LnVu
aXgtYWcudW5pLWtsLmRlL3RvcnJlbnRzL0tOT1BQSVhfVjkuMUNELTIwMjEtMDEtMjUtRU4udG9y
cmVudAoKPj4gQW0gMjUuMDguMjMgdW0gMTA6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uOgo+Pj4gSGFzIGFueW9uZSBnb3QgYSBkb3dubG9hZCB0aGF0IGNhbiBk
b3dubG9hZCB0aGUgbGF0ZXN0IGVuZ2xpc2ggdmVyc2lvbiBvZgo+Pj4gbWljcm9rbm9wcGl4P8Kg
IEV2ZXJ5b25lIG9mIHRoZSBtaXJyb3JzIG9ubHkgaGFzIGdlcm1hbiB0ZXh0IG9uIGl0IGFuZCBJ
Cj4+PiBkaWRuJ3Qgc3R1ZHkgdGhhdCBsYW5ndWFnZSBlbm91Z2ggdG8gdW5kZXJzdGFuZCB0aGUg
d2Vic2l0ZSdzIGNvbnRlbnQuCj4+PiBJJ20gaGF2aW5nIGJldHRlciBsdWNrIGRvd25sb2FkaW5n
IHRocm91Z2ggYml0dG9ycmVudCB0aGVzZSBkYXlzIHRoYW4gd2l0aAo+Pj4gb3RoZXIgZG93bmxv
YWRlcnMgZ2l2ZW4gdGhlIGxvdyBncmFkZSBvZiB2ZXJpem9uIGZpb3MgY29ubmVjdGl2aXR5Lgo+
Pj4gd2dldCBmb3IgaW5zdGFuY2UgaXMgZG93bmxvYWRpbmcgaXNvJ3MgdGhhdCBmYWlsIHNoYTI1
NnN1bSAtYyB0ZXN0cyBvbmNlCj4+PiBkb3dubG9hZGVkIGFuZCBpdCBkb2VzIHRoYXQgcGVyc2lz
dGVudGx5LgoKLS0KLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

