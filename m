Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8AD78951F
	for <lists+blinux-list@lfdr.de>; Sat, 26 Aug 2023 11:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693042256;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9qbFzyoXTHl0EK1hv9NddDdyUQdUaKe9iTTodZDkER8=;
	b=hB/5f2dJnBRc/ETYNizQMzz2dQId7KWvxurwh+QWpBgdcPyVzyLyz2I3Lov6n1OgpTpgyb
	unMHrCn1GubgjVMJnaxFmAUgGfqE1lWXkwqT2XHR6d5A2TorWw0ZAuQYZpMTNkZU12j1rI
	q93b7LFyOKVrehuUvA/uw+03/qqCWss=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-70-XgLZplbLPfm-tXnK5P_bTw-1; Sat, 26 Aug 2023 05:30:53 -0400
X-MC-Unique: XgLZplbLPfm-tXnK5P_bTw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65FC685C6E2;
	Sat, 26 Aug 2023 09:30:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 29D8F2166B27;
	Sat, 26 Aug 2023 09:30:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A64BF19465B8;
	Sat, 26 Aug 2023 09:30:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Aug 2023 12:29:39 +0300 (EEST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: microknoppix download
In-Reply-To: <mailman.17.1693035673.1829984.blinux-list@redhat.com>
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
 <mailman.1821.1692956046.18725.blinux-list@redhat.com>
 <mailman.1702.1692956975.18731.blinux-list@redhat.com>
 <mailman.17.1693035673.1829984.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.23.1693042250.1829984.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8KCkVycm9yIDQwNCBtZWFucyAgZmlsZSBub3QgZm91bmQuIEhvd2V2ZXIgIGkgY2FuIGRv
d25sb2FkIGl0ICBzbyAKZG91YmxlLWNoZWNrIHRoZSB1ci4gVGhlIGZpbGUgIGlzIG9ubHkgOTAg
a2J5dGVzIHNvIGkgY2FuIHNlbmQgaXQgIGFzIGFuIAphdHRhY2htZW50LgoKCgotLSAKbXIuIE0w
MTUxMCAmIGd1aWRlIExvYWRzdG9uZS1HUFMgIExhdDogNjIuMzg3MTgsIGxvbjogMjUuNjQ2NzIK
aGtwOi8vd3d3a2V5cy5wZ3AubmV0IEI3ODREMDIwIGZwOjBDMUY2QTc2IERDOURERDU4IDMzODM4
QjVEIDBFNzY5NjAwIEI3ODQwRDAyCmh0dHA6Ly9zb2trb25hLmFyaW1vLmluZm8KCgogIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24ga2lyam9pdHRpCj4gU3ViamVjdDogUmU6IG1p
Y3Jva25vcHBpeCBkb3dubG9hZAo+IERhdGU6IFNhdCwgMjYgQXVnIDIwMjMgMTA6NDE6MTAKPiBG
cm9tOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRo
YXQuY29tPgo+IFRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPgo+IAo+IE5vLCBJIGdvdCBlcnJvciA0MDQgd2hlbiB0cnlpbmcgdG8g
Z2V0IHRoYXQgdG9ycmVudC4KPgo+Cj4gLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNv
bT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiBkZWZlbnNlIG9mIGxpYmVy
dHk6IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdAo+IG9y
ZGVyLiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KPgo+IE9uIEZyaSwgMjUgQXVnIDIwMjMsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gVGhlIHRvcnJlbnQgZmls
ZSBmb3IgbWljcm9rbm9wcGl4IEVuZ2xpc2ggaXNvIGRvd25sb2FkIGlzIGhlcmU6Cj4+IGh0dHA6
Ly90b3JyZW50LnVuaXgtYWcudW5pLWtsLmRlL3RvcnJlbnRzL0tOT1BQSVhfVjkuMURWRC0yMDIx
LTAxLTI1LUVOLnRvcnJlbnQKPj4KPj4gSFRICj4+IGd1ZW50ZXIKPj4KPj4gQW0gMjUuMDguMjMg
dW0gMTE6Mjggc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+PiA+
IEhleSBKdWRlLAo+PiA+IHRoZXJlIGlzIGFtIEVuZ2xpc2ggdmVyc2lvbiBvZiB0aGUgc2l0ZToK
Pj4gPiBodHRwOi8vd3d3Lmtub3BwZXIubmV0L2tub3BwaXgva25vcHBpeDYwLWVuLmh0bWwKPj4g
Pgo+PiA+IEhUSCwKPj4gPiBndWVudGVyCj4+ID4KPj4gPiBBbSAyNS4wOC4yMyB1bSAxMDo1NyBz
Y2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+ID4+IEhhcyBhbnlv
bmUgZ290IGEgZG93bmxvYWQgdGhhdCBjYW4gZG93bmxvYWQgdGhlIGxhdGVzdCBlbmdsaXNoIHZl
cnNpb24gb2YKPj4gPj4gbWljcm9rbm9wcGl4P8KgIEV2ZXJ5b25lIG9mIHRoZSBtaXJyb3JzIG9u
bHkgaGFzIGdlcm1hbiB0ZXh0IG9uIGl0IGFuZCBJCj4+ID4+IGRpZG4ndCBzdHVkeSB0aGF0IGxh
bmd1YWdlIGVub3VnaCB0byB1bmRlcnN0YW5kIHRoZSB3ZWJzaXRlJ3MgY29udGVudC4KPj4gPj4g
SSdtIGhhdmluZyBiZXR0ZXIgbHVjayBkb3dubG9hZGluZyB0aHJvdWdoIGJpdHRvcnJlbnQgdGhl
c2UgZGF5cyB0aGFuIHdpdGgKPj4gPj4gb3RoZXIgZG93bmxvYWRlcnMgZ2l2ZW4gdGhlIGxvdyBn
cmFkZSBvZiB2ZXJpem9uIGZpb3MgY29ubmVjdGl2aXR5Lgo+PiA+PiB3Z2V0IGZvciBpbnN0YW5j
ZSBpcyBkb3dubG9hZGluZyBpc28ncyB0aGF0IGZhaWwgc2hhMjU2c3VtIC1jIHRlc3RzIG9uY2UK
Pj4gPj4gZG93bmxvYWRlZCBhbmQgaXQgZG9lcyB0aGF0IHBlcnNpc3RlbnRseS4KPj4KPj4gLS0K
Pj4gLgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

