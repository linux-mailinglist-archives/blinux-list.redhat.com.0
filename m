Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0D3744842
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jul 2023 11:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688204287;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Y19CZzAY7YBW11DNMjrkjwVb73x4CKR+4wI8cXxWpgk=;
	b=GSbT/Jrdd9mIfE7XFd5O/BgPngOI14yh9qEDO62hEYPFcMTkhNoIZIH6SvdhP9jNPXDhbI
	RRPztwnDUQoTX6vETlP/eAu/nsap8WVmYjVoOj6mT9J5ZkpVKh7gGrKnyRpJhIt0m/PQg2
	iokxF020K8rzNsrpArwVZokurZNIuxw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-290-bjBD0bz3O42WFjaQ058rVQ-1; Sat, 01 Jul 2023 05:38:04 -0400
X-MC-Unique: bjBD0bz3O42WFjaQ058rVQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E9A1858F1E;
	Sat,  1 Jul 2023 09:38:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 73340F5CE5;
	Sat,  1 Jul 2023 09:37:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D35791946A5A;
	Sat,  1 Jul 2023 09:37:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 01 Jul 2023 09:37:40 +0000
To: blinux-list@redhat.com
Subject: Re: v p n and linux
In-Reply-To: <mailman.1554.1688134875.3098363.blinux-list@redhat.com>
References: <mailman.1554.1688134875.3098363.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.38.1688204274.1378982.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBpdCBjb21lcyB0byB1c2luZyBWUE4gZm9yIGRpc2d1aXNpbmcgaWRlbnRpdHksIHBlcnNv
bmFsbHkgSSBsb3ZlIApBaXJWUE4uCgpZb3UgY2FuIHB1cmNoYXNlIGFuIGFjY291bnQgd2l0aCBN
b25lcm8sIHdpdGhvdXQgcHJvdmlkaW5nIGFueSBwZXJzb25hbCAKaW5mb3JtYXRpb24uCgpBZnRl
cndhcmRzLCB5b3UgY2FuIHVzZSB0aGUgVlBOIGluIGEgVlBOIG92ZXIgVG9yIG1vZGUgaS5lLiB5
b3VyIHRyYWZmaWMgCmlzIHJvdXRlZCB0aHJvdWdoIHRoZSBUb3IgbmV0d29yayBiZWZvcmUgaXQg
cmVhY2hlcyB0aGUgVlBOIHNlcnZlcnMsIAp0aHVzIGhpZGluZyB5b3VyIGlkZW50aXR5IGZyb20g
dGhlIHNlcnZpY2UgcHJvdmlkZXIuCgoKVGhlIEFpclZQTiBzdGFjayBpcyBvcGVuIHNvdXJjZSwg
bWVhbmluZyB0aGUgc2VjdXJpdHkgYW5kIHJlbGlhYmlsaXR5IApzaG91bGQgYmUgcXVpdGUgdHJ1
c3Qtd29ydGh5LgoKCkkgYWxzbyBoYXZlIGV4cGVyaWVuY2Ugd2l0aCB0aGVpciBzdXBwb3J0IHN0
YWZmLCBhbmQgdGhleSdyZSByZWFsbHkgaGVscGZ1bC4KCgpCZXN0IHJlZ2FyZHMKCgpSYXN0aXNs
YXYKCgpExYhhIDMwLiA2LiAyMDIzIG8gMTU6NTAgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBuYXDDrXNhbChhKToKPiBJIGhhdmUgbmV2ZXIgdXNlZCBhIHYgcCBuIGJlZm9yZS4K
PiBXaGljaCBvbmUgbWlnaHQgd29yayB3ZWxsIHdpdGggbGludXg/Cj4gV2hpY2ggbWlnaHQgd29y
ayB3ZWxsIHdpdGggb3JjYT8KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

