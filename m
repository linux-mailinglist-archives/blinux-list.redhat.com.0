Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D2A5EC9C0
	for <lists+blinux-list@lfdr.de>; Tue, 27 Sep 2022 18:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664296884;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+eAiA3C6eb6EeLuGWKTGKXpO8hTZTNMR6EKA14NUt9w=;
	b=bPtX4tKMg52Ck/PTMr3F9v2FuUiIgqulWMkMhspEfwKrPA5xhKM8HmeBAh75t3qBqf1DG9
	ZoMOTETU5Y60PgR4Ueyd84hsWjWBnUhgBAM+Z6ZvUEioPuFtCwjXmywB2/bj++pQd6f0dw
	EsdJjA6x8v1amOqon4jH4e2i5givuzE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-136-v6wkNWRpMDGRcM2gFMkWBQ-1; Tue, 27 Sep 2022 12:41:21 -0400
X-MC-Unique: v6wkNWRpMDGRcM2gFMkWBQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C28363C0F221;
	Tue, 27 Sep 2022 16:41:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EBD082027062;
	Tue, 27 Sep 2022 16:41:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8B41C1946A45;
	Tue, 27 Sep 2022 16:41:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 27 Sep 2022 12:34:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: How do I install i-bus braille on linux mint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2908.1664244908.6083.blinux-list@redhat.com>
 <mailman.3030.1664263863.6077.blinux-list@redhat.com>
In-Reply-To: <mailman.3030.1664263863.6077.blinux-list@redhat.com>
Message-ID: <mailman.3043.1664296870.6080.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgU2FtdWVsLAoKSGVyZSBpcyB0aGUgbmV3IGVycm9yLgoKc3VkbyBhcHQgaW5zdGFsbCAuL2li
dXMtYnJhaWxsZV8xLjEtMV9hbGwuZGViClJlYWRpbmcgcGFja2FnZSBsaXN0cy4uLiBEb25lCkJ1
aWxkaW5nIGRlcGVuZGVuY3kgdHJlZQpSZWFkaW5nIHN0YXRlIGluZm9ybWF0aW9uLi4uIERvbmUK
Tm90ZSwgc2VsZWN0aW5nICdpYnVzLWJyYWlsbGUnIGluc3RlYWQgb2YgJy4vaWJ1cy1icmFpbGxl
XzEuMS0xX2FsbC5kZWInClNvbWUgcGFja2FnZXMgY291bGQgbm90IGJlIGluc3RhbGxlZC4gVGhp
cyBtYXkgbWVhbiB0aGF0IHlvdSBoYXZlCnJlcXVlc3RlZCBhbiBpbXBvc3NpYmxlIHNpdHVhdGlv
biBvciBpZiB5b3UgYXJlIHVzaW5nIHRoZSB1bnN0YWJsZQpkaXN0cmlidXRpb24gdGhhdCBzb21l
IHJlcXVpcmVkIHBhY2thZ2VzIGhhdmUgbm90IHlldCBiZWVuIGNyZWF0ZWQKb3IgYmVlbiBtb3Zl
ZCBvdXQgb2YgSW5jb21pbmcuClRoZSBmb2xsb3dpbmcgaW5mb3JtYXRpb24gbWF5IGhlbHAgdG8g
cmVzb2x2ZSB0aGUgc2l0dWF0aW9uOgoKVGhlIGZvbGxvd2luZyBwYWNrYWdlcyBoYXZlIHVubWV0
IGRlcGVuZGVuY2llczoKIMKgaWJ1cy1icmFpbGxlIDogRGVwZW5kczogbGliYnJhaWxsZS1pbnB1
dCAoPj0gMC44KSBidXQgaXQgaXMgbm90IAppbnN0YWxsYWJsZQpFOiBVbmFibGUgdG8gY29ycmVj
dCBwcm9ibGVtcywgeW91IGhhdmUgaGVsZCBicm9rZW4gcGFja2FnZXMuCgoKT24gOS8yNy8yMiAw
MzoyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIZWxsbywK
Pgo+IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24sIGxlIGx1bi4gMjYgc2VwdC4g
MjAyMiAyMjowOTozNCAtMDQwMCwgYSBlY3JpdDoKPj4gRG8gYW55IG9mIHlvdSBrbm93IGhvdyB0
byBpbnN0YWxsIGktQnVzIEJyYWlsbGUgb24gTGludXggTWludD8KPj4KPj4gaHR0cHM6Ly9naXRo
dWIuY29tL3plbmRhbG9uYS9pYnVzLWJyYWlsbGUKPj4KPj4gSSBkb3dubG9hZGVkIHRoZSBpYnVz
LWJyYWlsbGVfMS4xLTFfYWxsLmRlYiwgYnV0IGdldCBhbiBlcnJvciBkZXBlbmRlbmN5IG5vdAo+
PiBzYXRpc2ZpYWJsZS4KPiBSYXRoZXIgdXNlCj4KPgo+IGFwdCBpbnN0YWxsIC4vaWJ1cy1icmFp
bGxlXzEuMS0xX2FsbC5kZWIKPgo+Cj4gdGhhdCdsbCByZXNvbHZlIHRoZSBkZXBlbmRlbmNpZXMu
Cj4KPiBTYW11ZWwKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

