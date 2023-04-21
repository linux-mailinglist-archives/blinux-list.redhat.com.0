Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A904C6EA811
	for <lists+blinux-list@lfdr.de>; Fri, 21 Apr 2023 12:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682072212;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iL0XznWg6ZmtINR1QY2zyHt0tiE/jw/C2OLqfw0qsa0=;
	b=JU1w2NKXefsjSs4RqWVh2fN7thtueudRGQl6b7/655D97WT/ZNYItRwpO4FTYfHpPPAdYC
	T/q16fK0wzFJQpwk6OkEYvan5hkykBX8mZ7jRhv+AbLS5efBPFJ3hr4HUrp05joHit4whk
	W+WZpxYbS/yCYw5jRD42hxedZDzKmoQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-458-pYDamAiLM0at6wudZ0MiNg-1; Fri, 21 Apr 2023 06:16:50 -0400
X-MC-Unique: pYDamAiLM0at6wudZ0MiNg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E536A101A552;
	Fri, 21 Apr 2023 10:16:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2F6552166B33;
	Fri, 21 Apr 2023 10:16:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 908A41946A4A;
	Fri, 21 Apr 2023 10:16:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 21 Apr 2023 12:16:36 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: OT: Could someone from outside South Africa try to install
 iSinkwe?
In-Reply-To: <mailman.2253.1682071239.283955.blinux-list@redhat.com>
References: <mailman.2160.1682070035.283959.blinux-list@redhat.com>
 <mailman.2253.1682071239.283955.blinux-list@redhat.com>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2267.1682072207.283956.blinux-list@redhat.com>
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

VGhhbmtzIERpZGllci4KV2VsbCBpZiBpdCBpcyBub3QgYXZhaWxhYmxlIGluIFBhcmlzLCBpdCBp
cyBsaWtlbHkgb25seSBhdmFpbGFibGUgb24gdGhlIApwbGF5c3RvcmUgaGVyZSBpbiBTb3V0aCBB
ZnJpY2EuClRoYW5rcyBmb3IgY2hlY2tpbmcgZm9yIG1lLgoKSSBmb3Jnb3QgdG8gcHJvdmlkZSBt
eSBhZGRyZXNzIGluIHRoZSBtZXNzYWdlLCBzb3JyeSBhYm91dCB0aGF0LgpGb3IgdGhlIHJlc3Qs
IGl0IGlzIHd2ZHdhbHRAY3Npci5jby56YQoKWWVzLCBpU2lua3dlIGlzIHRoZSBadWx1IG5hbWUg
Zm9yIHRoZSBidXNoYmFieS4KQSBidXNoYmFieSBoYXMgbGFyZ2UgZXllcyBhbmQgbGFyZ2UgZWFy
cy4KVGhpcyBwb2ludHMgdG8gdGhlIGZhY3QgdGhhdCBvbmUgY2FuIHJlYWQgYW5kIGxpc3RlbiB0
byB0aGUgc2FtZSBjb250ZW50IAphdCB0aGUgc2FtZSB0aW1lIGFzIHRoZSB0ZXh0IGlzIGJlaW5n
IGhpZ2hsaWdodGVkIGFzIGl0IGlzIHNwb2tlbi4KClRoZSBhcHAgaXMganVzdCB0aGUgcmVhZGVy
LCBidXQgb3VyIHJlYWwgcHJvZHVjdCBpcyB0aGUgc29mdHdhcmUgdGhhdCAKY3JlYXRlcyB0aGUg
ZXB1YiB3aXRoIHRoZSBtZWRpYSBvdmVybGF5cyBmcm9tIGEgc3RhbmRhcmQgZXB1YjMgZmlsZS4K
UmVnYXJkcywgV2lsbGVtCgoKT24gRnJpLCAyMSBBcHIgMjAyMywgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGkgV2lsbGVtLAo+Cj4gbm90IGZvdW5kIGZyb20g
UGFyaXMsIEZyYW5jZSBpbiB0aGUgUGxheSBTdG9yZS4KPgo+IGFib3V0IHRoZSBuYW1lLCBmb3Vu
ZCB0aGlzOiAiVGhlIHdvcmQgIklTSU5LV0UiIChwcm9ub3VuY2VkICJJIiAtICJzaW5rIiAtCj4g
IndlIiksIGlzIHRoZSBadWx1IHRyYW5zbGF0aW9uIG9mIHRoZSBUaGljayBUYWlsZWQgQnVzaGJh
YnkuIFRoZXNlIHN0cmFuZ2UKPiBub2N0dXJuYWwgYW5pbWFscyBhcmUgY2xhc3NpZmllZCB1bmRl
ciB0aGUgcHJpbWF0ZSBmYW1pbHkgYW5kIGZyZXF1ZW50IHRoZSBsb2RnZQo+IGF0IG5pZ2h0LiBU
aGVpciBkaXN0aW5jdGl2ZSBhbmQgdGhyaWxsaW5nIG5pZ2h0LXRpbWUgY3JpZXMgYXJlIHBhcnQg
b2YgdGhlCj4gZXZlbmluZyBidXNoIHNvdW5kcy4iCj4KPiBUbyByZWNlaXZlIGFuc3dlcnMgb2Zm
IGxpc3QgeW91IG5lZWQgdG8gaW5kaWNhdGUgeW91ciBlbWFpbCBhZGRyZXNzLCBhcyBpdCBpcwo+
IHJlbW92ZWQgZnJvbSB0aGUgIkZyb20iIGhlYWRlcnMgYnkgdGhpcyBsaXN0LiBJIGtub3cgaXQg
YW5kIGd1ZXNzZWQgeW91IGFyZQo+IFdpbGxlbSB2YW4gZGVyIFdhbHQsIGJ1dCB0aGF0J3MgYmVj
YXVzZSB3ZSBoYXZlIGNvbW11bmljYXRlZCBiZWZvcmUuCj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4g
LS0gCj4gRGlkaWVyIFNwYWllcgo+IGRpZGllcmF0c2xpbnRkb3Rmcgo+Cj4gTGUgMjEvMDQvMjAy
MyDDoCAxMTozNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKg
Ogo+PiBHb29kIGRheSwKPj4gV2UgYXQgdGhlIFZvaWNlIENvbXB1dGluZyByZXNlYXJjaCBncm91
cCBhdCB0aGUgQ1NJUiBoYXZlIHJlbGVhc2VkIGFuIEFuZHJvaWQKPj4gYXBwIGNhbGxlZCBpc2lu
a3dlLgo+PiBJdCBpcyBhbiBlcHViMyByZWFkZXIgc3VwcG9ydGluZyBtZWRpYSBvdmVybGF5cy4K
Pj4gCj4+IEkgd291bGQgbGlrZSB0byB2ZXJpZnkgdGhhdCBpdCBpcyBpbnN0YWxsYWJsZSBmcm9t
IGFub3RoZXIgY291bnRyeSB0aGFuIFNvdXRoCj4+IEFmcmljYS4KPj4gSXQgaXMgYSBmcmVlIGlu
c3RhbGwuCj4+IEp1c3Qgc2VhcmNoIGZvciBpc2lua3dlIGluIHRoZSBwbGF5c3RvcmUuCj4+IEl0
IHdvcmtzLCBidXQgaXMgc3RpbGwgYmV0YSBzb2Z0d2FyZS4KPj4gSXQgd2lsbCBsaWtlbHkgYmUg
ZGlzY3Vzc2VkIGF0IGEgY29uZmVyZW5jZSBpbiB0aGUgTmV0aGVybGFuZHMgaWYgdGhlIHBhcGVy
IGlzCj4+IGFjY2VwdGVkLgo+PiBQZW9wbGUgY2FuIGFuc3dlciBtZSBvZmYtbGlzdCBpZiB0aGV5
IGxpa2UuCj4+IFRJQSwgV2lsbGVtCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

