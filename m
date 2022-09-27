Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D62A5ECF33
	for <lists+blinux-list@lfdr.de>; Tue, 27 Sep 2022 23:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664313534;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ggvLQqbFrMQhcVqRh3FWipq1Rsqf3GT7ATxDnFq7W5o=;
	b=QSTt7krj5yRYGkzT6KbYq2HoGB5OohFEDY4/Kkt3/rHHZKNMv1YE5okmNOBjNT5KY8p5Th
	w1pPmjloDHpAuPxMAJQKtVmje4QWe9Pv7TvzRgqYOBGLmR1p44ZihY0YjbxDgne1L0Nfj/
	ZSF45/gyjN0KZDzHjlLtQIGxUBVV6mY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-363-YyitbdzQNsKnrWvDG6fkjg-1; Tue, 27 Sep 2022 17:18:53 -0400
X-MC-Unique: YyitbdzQNsKnrWvDG6fkjg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 849573800C2D;
	Tue, 27 Sep 2022 21:18:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EC6E940C6EC2;
	Tue, 27 Sep 2022 21:18:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 548081946A47;
	Tue, 27 Sep 2022 21:18:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 27 Sep 2022 17:18:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: How do I install i-bus braille on linux mint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2908.1664244908.6083.blinux-list@redhat.com>
 <mailman.3030.1664263863.6077.blinux-list@redhat.com>
 <mailman.3043.1664296870.6080.blinux-list@redhat.com>
 <mailman.3159.1664297663.6081.blinux-list@redhat.com>
In-Reply-To: <mailman.3159.1664297663.6081.blinux-list@redhat.com>
Message-ID: <mailman.3279.1664313524.6075.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBhbSBub3cgdHlwaW5nIHRoaXMgbWVzc2FnZSBpbiBicmFpbGxlLgpUaGFua3MgZm9yIHlvdXIg
aGVscC4KUm9iCgpPbiA5LzI3LzIyIDEyOjU0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24sIGxlIG1h
ci4gMjcgc2VwdC4gMjAyMiAxMjozNDoyMiAtMDQwMCwgYSBlY3JpdDoKPj4gc3VkbyBhcHQgaW5z
dGFsbCAuL2lidXMtYnJhaWxsZV8xLjEtMV9hbGwuZGViCj4+IFJlYWRpbmcgcGFja2FnZSBsaXN0
cy4uLiBEb25lCj4+IEJ1aWxkaW5nIGRlcGVuZGVuY3kgdHJlZQo+PiBSZWFkaW5nIHN0YXRlIGlu
Zm9ybWF0aW9uLi4uIERvbmUKPj4gTm90ZSwgc2VsZWN0aW5nICdpYnVzLWJyYWlsbGUnIGluc3Rl
YWQgb2YgJy4vaWJ1cy1icmFpbGxlXzEuMS0xX2FsbC5kZWInCj4+IFNvbWUgcGFja2FnZXMgY291
bGQgbm90IGJlIGluc3RhbGxlZC4gVGhpcyBtYXkgbWVhbiB0aGF0IHlvdSBoYXZlCj4+IHJlcXVl
c3RlZCBhbiBpbXBvc3NpYmxlIHNpdHVhdGlvbiBvciBpZiB5b3UgYXJlIHVzaW5nIHRoZSB1bnN0
YWJsZQo+PiBkaXN0cmlidXRpb24gdGhhdCBzb21lIHJlcXVpcmVkIHBhY2thZ2VzIGhhdmUgbm90
IHlldCBiZWVuIGNyZWF0ZWQKPj4gb3IgYmVlbiBtb3ZlZCBvdXQgb2YgSW5jb21pbmcuCj4+IFRo
ZSBmb2xsb3dpbmcgaW5mb3JtYXRpb24gbWF5IGhlbHAgdG8gcmVzb2x2ZSB0aGUgc2l0dWF0aW9u
Ogo+Pgo+PiBUaGUgZm9sbG93aW5nIHBhY2thZ2VzIGhhdmUgdW5tZXQgZGVwZW5kZW5jaWVzOgo+
PiAgwqBpYnVzLWJyYWlsbGUgOiBEZXBlbmRzOiBsaWJicmFpbGxlLWlucHV0ICg+PSAwLjgpIGJ1
dCBpdCBpcyBub3QgaW5zdGFsbGFibGUKPj4gRTogVW5hYmxlIHRvIGNvcnJlY3QgcHJvYmxlbXMs
IHlvdSBoYXZlIGhlbGQgYnJva2VuIHBhY2thZ2VzLgo+IFNvIHlvdSBuZWVkIHRvIGZpcnN0IGlu
c3RhbGwgbGliYnJhaWxsZS1pbnB1dDoKPgo+IGh0dHBzOi8vZ2l0aHViLmNvbS96ZW5kYWxvbmEv
bGliYnJhaWxsZS1pbnB1dAo+Cj4gU2FtdWVsCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cg==

