Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6CF58CB3D
	for <lists+blinux-list@lfdr.de>; Mon,  8 Aug 2022 17:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659972298;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GIfjtEnhY7ku37YyR9gXZ/LCvOr9gC4VS/IcChkzork=;
	b=MYeKQH2MCEYARSuqie6Dt5ycH7nzYjCc7VHFOkm6c+RLlr9qA0oCkAUMZM/b/itlv3H759
	QW/MBzUf7UmL22xUxBnrEKaBypFEKoZefEiLh6KzPdYJEv5uUG+wokr7n4n18hKG4tce7F
	xfCZ4fPt7PE9Q1x9/+YJxcCFdh3JBZ0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-397-sritbYChNvC6x-cIir8uSA-1; Mon, 08 Aug 2022 11:24:52 -0400
X-MC-Unique: sritbYChNvC6x-cIir8uSA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 694B01019DE2;
	Mon,  8 Aug 2022 15:24:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 27A2D140EBE3;
	Mon,  8 Aug 2022 15:24:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 987AE1946A5A;
	Mon,  8 Aug 2022 15:24:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 8 Aug 2022 17:24:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: Console based email and Gmail, any luck?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.40282.1659945837.111210.blinux-list@redhat.com>
 <mailman.1449.1659962856.3159725.blinux-list@redhat.com>
 <mailman.1450.1659963206.3159725.blinux-list@redhat.com>
In-Reply-To: <mailman.1450.1659963206.3159725.blinux-list@redhat.com>
Message-ID: <mailman.1477.1659972283.3159725.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKTm8sIGlmIHlvdSB1c2UgYW4gYXBwIHBhc3N3b3JkLCB5b3VyIGVtYWlsIGNsaWVudCB3
b3VsZCBsb2cgaW4gdXNpbmcgCnRoYXQgcGFzc3dvcmQuIE5vIG5lZWQgZm9yIG9uZSB0aW1lIHBh
c3N3b3JkIHZlcmlmaWNhdGlvbi4gT1RQcyBhcmUgdXNlZCAKd2hlbiB5b3Ugd2FudCB0byBhY2Nl
c3MgYSByZXNvdXJjZSB2aWEgYSB3ZWIgaW50ZXJmYWNlLiBUaGUgd2hvbGUgaWRlYSAKb2YgYW4g
YXBwIHBhc3N3b3JkIGlzIHRoYXQgYSBtYWNoaW5lIGxvZ3MgaW50byBhIHJlc291cmNlIHVzaW5n
IGl0cyBvd24gCmRlZGljYXRlZCBwYXNzd29yZC4gU28gdGhhdCBwYXNzd29yZCBpcyBzcGVjaWZp
YyB0byB0aGF0IG1hY2hpbmUgb3IgCmFwcGxpY2F0aW9uLiBJZiBhbnkgc2VjdXJpdHkgYnJlYWNo
IGhhcHBlbnMgdGhyb3VnaCB0aGF0IG1hY2hpbmUsIGl0IAp3b3VsZCBub3QgY29tcHJvbWlzZSBv
dGhlciBwYXJ0cyBvZiB0aGUgc3lzdGVtLiBGb3IgZXhhbXBsZSwgaWYgeW91IGxvc2UgCnlvdXIg
cGhvbmUgb3IgY29tcHV0ZXIgdGhhdCBpcyBhbHJlYWR5IGxvZ2dlZCBpbiB3aXRoIHRoZSBhcHAg
cGFzc3dvcmQsIAp5b3UgY2FuIHNpbXBseSBsb2cgaW50byBHbWFpbCBhbmQgZGlzYWJsZSB0aGF0
IHBhc3N3b3JkLiBJbiBhbnkgY2FzZSwgCnRoZSBwYXNzd29yZCBpcyBmb3IgZW1haWwgYWNjZXNz
IGFuZCBub3QgZm9yIHNheSwgR29vZ2xlIGRyaXZlLiBTbyB5b3UgCmNhbiB1c2UgeW91ciBhcHAg
cGFzc3dvcmQgc2FmZWx5LgoKCkkgdGhpbmsgaXQgaXMgcHJ1ZGVudCB0aGF0IGlmIGFueSBzZXJ2
aWNlIHlvdSB1c2UgaGFzIGdvdCB0d28tZmFjdG9yLCAKanVzdCBnZW5lcmF0ZSBhbiBhcHAgcGFz
c3dvcmQgYW5kIHR1cm4gdHdvLWZhY3RvciBvbi4gVGhlbiBzdXBwbHkgdGhlIAphcHAgcGFzc3dv
cmQgdG8gTXV0dCBhbmQgcHVsbCB5b3VyIGVtYWlscy4KCgoKCgpPbiA4LzgvMjAyMiAxNDo1Mywg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBUaW0KPgo+Cj4gV2Fz
IHRyeWluZyB0byBnZXQgaXQgbGl2ZSB2aWEgSU1BUCwgYW5kIGNvcnJlY3QgbWUgaWYgSSdtIHdy
b24gYnV0IAo+IGRvZXNuJ3QgYW4gYXBwIHNwZWNpaWMgcGFzc3dvcmQgbmVlZCBtZSB0byByZXNw
b25kIHRvIGFuIAo+IFNNUy9ub3RpZmljYXRpb24gb24gbXkgcGhvbmUgZXZlcnkgc2luZ2xlIHRp
bWUgSSB3YW50IHRvIHVzZSB0aGUgCj4gcGFzc3dvcmQgb3Igbm90PyBTb3VyY2VzIGRpZmZlciBv
biB0aGlzIHdpdGggc29tZSBzYXlpbmcgaXQgZG9lcywgCj4gb3RoZXJzIGl0IGRvZXNuJ3QKPgo+
Cj4gQXMgZm9yIHRoZSBzY3JpcHRzIG5vdCB3b3JraW5nLCB0aGV5IHNlbnQgbWUgdG8gNDAwIG9y
IDQwNCBlcnJvcnMsIGR1ZSAKPiB0byBHb29nbGUgc2hpZnRpbmcgdGhpbnMgYXJvdW5kIG9uIHRo
ZWlyIGVuZC4gVGhhdCdzIHdoYXQgSSBtZWFudCBieSAKPiBub3Qgd29ya2luZwo+Cj4KPgo+IE9u
IDgvOC8yMiAxMzo0MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4gVGltIGhlcmUuwqAgQXJlIHlvdSB0cnlpbmcgdG8gYWNjZXNzIHRoZSBhY2NvdW50IGxpdmUv
b25saW5lIG9yIHZpYQo+PiBwdWxsaW5nIG1haWwgbG9jYWxseSB3aXRoIHNvbWV0aGluZyBsaWtl
IFBPUDMgb3IgdXNpbmcgCj4+IG1ic3luYy9vZmZsaW5laW1hcAo+PiB0byBzeW5jIHVwIG1haWwg
dG8gYSBsb2NhbCBjYWNoZT8KPj4KPj4gQXMgc29tZW9uZSBlbHNlIG1lbnRpb25lZCwgdGhlIGVh
c2llc3Qgd2F5IGlzIHRvIHNldCB1cCBhbiAiYXBwCj4+IHBhc3N3b3JkIiwgdGhlbiB1c2UgdGhh
dCBhcyB5b3VyIGxvZ2luLCB3aGV0aGVyIHByb3ZpZGVkIGluIHlvdXIKPj4gfi8ubXV0dHJjIGZv
ciBtdXR0L25lb211dHQsIG9yIHVzaW5nIHRob3NlIGNyZWRlbnRpYWxzIGluIHlvdXIKPj4gfi8u
bWJzeW5jIG9yIH4vLm9mZmxpbmVpbWFwcmMgZmlsZSBmb3Igc3luY2luZyB0aGUgbWFpbCB0byBh
IGxvY2FsCj4+IG1haWxkaXIuCj4+Cj4+IC1UaW0KPj4KPj4KPj4gT24gTW9uLCBBdWcgMDgsIDIw
MjIgYXQgMDk6MDM6NTBBTSArMDEwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgCj4+IGRpc2N1
c3Npb24gd3JvdGU6Cj4+PiBBcyBpdCBzYXlzLCBhbnkgbHVjayB3aXRoIGNvbnNvbGUgYmFzZWQg
Y2xpZW50cz8gQWxsIEknbSBnZXR0aW5nIGlzIAo+Pj4gYmVpbmcKPj4+IHNlbnQgaW4gY2lyY2xl
cyB3aXRoIG5vbiB3b3JraW5nIFB5dGhvbiBzY3JpcHRzIGFuZCB2YWd1ZSBibG9nIHBhZ2VzLgo+
Pj4KPj4+Cj4+PiBJJ20gdHJ5aW5nIHRvIGdldCBNdXR0IG9yIE5lb211dHQgdG8gc3RpbGwgd29y
ayB3aXRoIEdtYWlsIHBvc3QgCj4+PiBudWtpbmcgb2YKPj4+IHBhc3N3b3JkcywgYnV0Li4uSSBj
YW4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

