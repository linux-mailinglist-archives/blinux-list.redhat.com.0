Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F40751679B
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 21:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651435049;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lcoJ56s3EmxQQZOC2/I2PuAKzUKgxUYGJOhmhCXPz9w=;
	b=Y+4Kkl7pqKe8jqh7dUMwVEsHEzKZ5uaDUpFN5Uk/abyidtXRoPpO65/1ucJ6sVggTFUYv3
	Okkj0BbgXzSlxumJPfJfqGrMCta8s4avwN+Ya2TfXADLI+4gNVv4OCILrq62p9SfFSCxVG
	slhgSOe9Y93uW1NCnJjpZXAkIubCsJs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-hiuODa0YPM2qiwWttZ0d8w-1; Sun, 01 May 2022 15:57:28 -0400
X-MC-Unique: hiuODa0YPM2qiwWttZ0d8w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98B8329AB3F2;
	Sun,  1 May 2022 19:57:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1A608400E57B;
	Sun,  1 May 2022 19:57:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 868811947063;
	Sun,  1 May 2022 19:57:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Does anyone know of any accessible SQL programs for Slint?
Date: Sun, 1 May 2022 15:57:12 -0400
References: <mailman.12284.1651434266.111201.blinux-list@redhat.com>
In-Reply-To: <mailman.12284.1651434266.111201.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.12400.1651435045.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sIEnigJltIG5vdCBzdXJlIGlmIHRoaXMgd291bGQgd29yay4gSSBzdGFydGVkIHRha2lu
ZyBhIGRhdGFiYXNlIGNsYXNzIGZvciBjb2xsZWdlIGFuZCBtb3N0IG9mIHRoZSB0aGluZ3MgdGhh
dCB3ZSBkbyBub3cgSSBhbSB1bmFibGUgdG8gcmVhZCB1bmxlc3MgdGhleSBhcmUgY29waWVkIGlu
dG8gdGhlIG5vdGVwYWQgYW5kIHBhc3RlZCBpbnRvIGEgd29yZCBkb2N1bWVudCBzbyBJIHdhcyBq
dXN0IGN1cmlvdXMgaWYgdGhlcmUgd2FzIGFueXRoaW5nIGZvciBMaW51eC4gCgpBc2hsZXkgQnJl
Z2VyCgo+IE9uIE1heSAxLCAyMDIyLCBhdCAzOjQ0IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu78KPj4g
Cj4+IE9uIE1heSAxLCAyMDIyLCBhdCAxMjoxMSxBc2hsZXkgQnJlZ2VyIHdyb3RlOgo+PiAKPj4g
Li4uIEkgYW0gbG9va2luZyBmb3IgYW4gYWNjZXNzaWJsZSBTUUwgcHJvZ3JhbSB0byB1c2Ugb24g
bXkgU2xpbnQgc3lzdGVtLiAuLi4KPiAKPiB0bDtkciAtIG5vIHJlYWwgYW5zd2VycywgYnV0IHNv
bWUgcXVlc3Rpb25zIGFuZCBpZGVhcy4uLgo+IAo+IEknbSBhc3N1bWluZyB0aGF0IHlvdSdyZSBy
ZWZlcnJpbmcgdG8gU1FMLCBhIGxhbmd1YWdlIGZvciBpbnRlcmFjdGluZyB3aXRoIHJlbGF0aW9u
YWwgZGF0YWJhc2VzIChodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9TUUwpLiAgSWYgbm90
LCBwbGVhc2UgaW5kaWNhdGUgd2hhdCBlbHNlIHlvdSBoYXZlIGluIG1pbmQuCj4gCj4gVGhlcmUg
YXJlIGxvdHMgb2YgZGF0YWJhc2VzIHRoYXQgc3VwcG9ydCBTUUwsIHRob3VnaCB0aGUgZmVhdHVy
ZXMgYW5kIHN5bnRhY3RpYyBkZXRhaWxzIGNhbiB2YXJ5IGEgbG90LiAgSG93ZXZlciwgbW9zdCBv
ZiB0aGVtIGhhdmUgYSBjb21tYW5kLWxpbmUgaW50ZXJmYWNlIHdoaWNoIHlvdSBjYW4gdXNlIHRv
IHN1Ym1pdCBTUUwgcXVlcmllcywgZXRjLiAgU28sIHRoZXkgc2hvdWxkIGJlIHByZXR0eSBibGlu
ZC1hY2Nlc3NpYmxlLCBhdCBsZWFzdCBvbiB0aGUgaW5wdXQgc2lkZS4KPiAKPiBPdXRwdXQgaXMg
YW5vdGhlciBxdWVzdGlvbi4gIEJlY2F1c2UgcmVsYXRpb25hbCBkYXRhYmFzZXMgb3BlcmF0ZSBv
biByZWN0YW5ndWxhciB0YWJsZXMsIHRoZXkgdGVuZCB0byB1c2UgdGV4dC1iYXNlZCBmb3JtYXR0
aW5nIHRvIGRlbGluZWF0ZSByb3dzIGFuZCBjb2x1bW5zLiAgU28sIGZvciBleGFtcGxlLCB5b3Ug
bWlnaHQgZ2V0IGxvbmcgc3RyaW5ncyBvZiBzcGFjZXMgYW5kIHZlcnRpY2FsIGJhcnMgc3VjaCBh
cyB0aGlzOgo+IAo+IHwgICBmb28gfCAgIGJhciB8ICAgYmF6IHwKPiB8ICAgMTIzIHwgICA0NTYg
fCAgIDc4OSB8Cj4gfCAgMTIzNCB8ICA0NTY3IHwgIDc4OTAgfAo+IAo+IFVubGVzcyB5b3UgaGF2
ZSBhIHNjcmVlbiByZWFkZXIgdGhhdCBjYW4gbGV0IHlvdSBuYXZpZ2F0ZSB0aGlzIHNvcnQgb2Yg
dGhpbmcsIGZpbmRpbmcgdGhlIHJlbGV2YW50IHRhYmxlIGNlbGxzIGNvdWxkIGJlIHByZXR0eSB0
ZWRpb3VzLgo+IAo+IE9mIGNvdXJzZSwgd2l0aCBhIHN1ZmZpY2llbnRseSBjbGV2ZXIgcXVlcnks
IHlvdSBjYW4gKHNvbWV0aW1lcyA6LSkgcGFyZSBkb3duIHRoZSBvdXRwdXQgdG8ganVzdCBhIGZl
dyBjZWxscy4gIEkgZG8gc29tZXRoaW5nIGxpa2UgdGhpcyB3aGVuIHdyaXRpbmcgZGVidWdnaW5n
IHRyYWNlIGNvZGUsIHRvIGF2b2lkIGhhdmluZyB0byBkaWcgdGhyb3VnaCBsYXJnZSBwaWxlcyBv
ZiBvdXRwdXQuCj4gCj4gT25lIHRob3VnaHQgSSBoYXZlIGhhZCwgZnJvbSB0aW1lIHRvIHRpbWUs
IGlzIHRoYXQgaXQgd291bGQgYmUgbmljZSB0byBoYXZlIHRvb2xpbmcgdGhhdCB0cmFuc2Zvcm1z
IHZhcmlvdXMgdGFidWxhciBvdXRwdXQgZm9ybWF0cyBpbnRvIEhUTUwgdGFibGVzLiAgVGhpcyBj
b3VsZCBsZXQgdGhlIHVzZXIgZW1wbG95IHNjcmVlbiByZWFkZXIgbmF2aWdhdGlvbiB0byBjcmF3
bCBhcm91bmQgdGhlIHRhYmxlLiAgSG93ZXZlciwgSSBoYXZlIG5vIGlkZWEgaWYgYW55dGhpbmcg
b2YgdGhpcyBzb3J0IGV4aXN0cy4KPiAKPiBBc3N1bWluZyB0aGF0IHRoZXJlIGFyZSBzb21lIGJs
aW5kLWFjY2Vzc2libGUgc3ByZWFkc2hlZXQgcHJvZ3JhbXMsIHlvdSBtaWdodCBiZSBhYmxlIHRv
IGR1bXAgdGhlIHRhYnVsYXIgb3V0cHV0IGludG8gYSBmaWxlIChlLmcuIENTVikgYW5kIHRoZW4g
ZXhhbWluZSBpdCB1c2luZyB0aGUgc3ByZWFkc2hlZXQgcHJvZ3JhbS4gIE1pZ2h0IHRoaXMgd29y
ayBmb3IgeW91Pwo+IAo+IC0gUmljaCBNb3Jpbgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

