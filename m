Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6DA6F6E85
	for <lists+blinux-list@lfdr.de>; Thu,  4 May 2023 17:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683212528;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zF4k+xwJz/FNFAy1B93FaylosYiYQTFXhquYzqvj3/c=;
	b=WyzXhWzXN9Sb5DxQD4irhkjikfcAp+enM+HBP0b2GA/EbInwnTHipjnO3RcVVdllZyshWE
	dvsD1DcmBn48esnYMHP/38HZGwxlODM9oJnEQBzI5lf9l4+4gB+im999DwPTMGOAYfQtLt
	9cXI4BApBcfWDg4bE6rbAsSLcgaLkDY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-340-XXenJzKZNMm2y4VApgNzCw-1; Thu, 04 May 2023 11:02:05 -0400
X-MC-Unique: XXenJzKZNMm2y4VApgNzCw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47F3929ABA21;
	Thu,  4 May 2023 15:02:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6272BC15BAE;
	Thu,  4 May 2023 15:01:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9FC0A1946A49;
	Thu,  4 May 2023 15:01:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 4 May 2023 17:01:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: Problem installing fenrir using pip in fedora 38 workstation
To: blinux-list@redhat.com
References: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
In-Reply-To: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
Message-ID: <mailman.1746.1683212513.290943.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHkgTWF0dGhldywKCmNhbiB5b3UgcG9zdCB0aGUgZXhhY3QgZXJyb3IgbWVzc2FnZT8KCndo
YXQgaGFwcGVucyBpZiB5b3UgZG86CnN1ZG8gcHl0aG9uIC1jICdpbXBvcnQgZXZkZXYnCgpkbyB5
b3UgZ2V0IGFuIGVycm9yIG1lc3NhZ2U/CgpjaGVlcnMgY2hyeXMKCgptIDAzLjA1LjIzIHVtIDIw
OjQyIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiBIaSBhbGws
Cj4KPgo+IEkgYW0gdXNpbmcgZmVkb3JhIDM4IHdvcmtzdGF0aW9uIGlmIHRoaXMgbWF0dGVycyBh
bmQgd2hlbiB0cnlpbmcgdG8gCj4gaW5zdGFsbCBmZW5yaXIgSSBnZXQgYSBlcnJvciBmcm9tIGV2
ZGV2IG9yIHNvbWV0aW5nIGFib3V0IGEgbm8gc3VjaCAKPiBmaWxlIG9yIGRpcmVjdG9yeS7CoCBJ
IGZpcnN0IGluc3RhbGxlZCBwaXAgdGhlbiByYW4gcGlwIGluc3RhbGwgYW5kIGdvdCAKPiB0aGF0
IGVycm9yLsKgIEFueXdheSB1c2luZyBmZW5yaXIgaW4gZmVkb3JhIGFuZCBob3cgZGlkIHlvdSBn
ZXQgaXQgCj4gd29ya2luZz/CoCBJcyB0aGVyZSBhbm90aGVyIHBhY2thZ2UgSSBuZWVkIHRvIGlu
c3RhbGwgc29tZXdhcmU/wqAgVGhhbmtzIAo+IGlmIGFueW9uZSBoYXMgYW55IGlkZWFzIG9uIHdo
YXQgbWlnaHQgYmUgZ29pbmcgb24gSSB3b3VsZCBsaWtlIHNvbWUgCj4gcG9pbnRlcnMgb24gdGhp
cyBvbmUuCj4KPgo+IE1hdHRoZXcKPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

