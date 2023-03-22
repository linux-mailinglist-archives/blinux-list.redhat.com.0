Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7106C5362
	for <lists+blinux-list@lfdr.de>; Wed, 22 Mar 2023 19:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679508899;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KPfZFxKOki9qNA6WqsK4mGozy6AVrL2Ge2S9gj/MZkg=;
	b=ijRrxQqS1BGOV0K6S7XtwgQiMZANKjDeIaE1vLwX4kccW801i7n7WesKMRqgWvH3sUxJZ9
	ATctVMgWgmigW7wamqA81HSYjFhp61hciCaIwSgaVvA+BmvBX1m33zJBttUCib8UL0jswG
	85MoQf8KzoFt7biTVCLBGWSdN8d/xDM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-460-WgbIfqF7MH6NkUEtV3u5fw-1; Wed, 22 Mar 2023 14:14:57 -0400
X-MC-Unique: WgbIfqF7MH6NkUEtV3u5fw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51941887404;
	Wed, 22 Mar 2023 18:14:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AE8421121315;
	Wed, 22 Mar 2023 18:14:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3534C1946597;
	Wed, 22 Mar 2023 18:14:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Mar 2023 19:14:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
To: blinux-list@redhat.com
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1003.1679507434.636361.blinux-list@redhat.com>
 <mailman.1128.1679507738.636367.blinux-list@redhat.com>
In-Reply-To: <mailman.1128.1679507738.636367.blinux-list@redhat.com>
Message-ID: <mailman.1106.1679508893.636360.blinux-list@redhat.com>
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

SXQncyBhbGwgd3JpdHRlbiBpbiB0aGUgYW5ub3VuY2VtZW50OiBodHRwczovL29kaWxpYS5hcHAv
bmV3cy9yZWxlYXNlXzAtMS0wLwoKQXMgaXQgc2F5cyBhbW9uZyB0aGUgY2FwYWJpbGl0aWVzOgpD
b25maWd1cmFibGUgdm9pY2VzL3JhdGUgdmlhIHNwZWVjaGQuY29uZgpJIGFzc3VtZSBhIHRoYXQg
aXQgY2FuIHVzZSB0aGUgc2FtZSBUVFMgYW5kIHZvaWNlcyBhcyBPcmNhLgoKQW5kIGl0IGlzIG9i
dmlvdXNseSBub3QgYW4gT3JjYSBjbG9uZS4KCkRpZGllcgoKTGUgMjIvMDMvMjAyMyDDoCAxODo1
NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEFjdHVh
bGx5IGl0IGRpZCByZWFkIGZpbmUsIGJ1dCBJIHdvbmRlciBpcyB0aGlzIGFuIE9SQ0EgY2xvbmUs
IG9yIGEgYnJhbmQgbmV3Cj4gc2NyZWVuLXJlYWRlcj8gQW5kIHdoYXQgc3BlZWNoIGVuZ2luZXMg
d2lsbCBpdCBoYXZlPyBUaGFua3MgaW4gYWR2YW5jZQo+IENoaW1lCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

