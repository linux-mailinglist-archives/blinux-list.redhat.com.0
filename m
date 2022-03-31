Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 728A44EE18E
	for <lists+blinux-list@lfdr.de>; Thu, 31 Mar 2022 21:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648754271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K9v+I5yWzTkBLyjyBo091IS5fYb8o9awqcT8FdI2hQM=;
	b=UAgkND2b2ePbxk6stc3uSCiawZlj45uGHXfa20in+gCH42Hs9DdqPHALn9Y/o3z+nVqeb/
	SrMtZweUgj4rJfYrMrB8oKSZ6h1k388Xcuk44q5dOzdj/0x4w84F54kr1VQbDnyik6AH2q
	iu/T8zIh8gdowOW8euReXZ7XYx9p/Rs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-612-BXXLROZMMz6nkuDjtb6NOw-1; Thu, 31 Mar 2022 15:17:48 -0400
X-MC-Unique: BXXLROZMMz6nkuDjtb6NOw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68BB1899ECF;
	Thu, 31 Mar 2022 19:17:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 94BDC1121314;
	Thu, 31 Mar 2022 19:17:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F213D1949761;
	Thu, 31 Mar 2022 19:17:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Generating tactile drawings.
Date: Thu, 31 Mar 2022 14:17:26 -0500
References: <mailman.5804.1648747398.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.5804.1648747398.111202.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.5707.1648754260.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgd2Ugd2FudCBwYXJpdHksIHdlIG5lZWQgcmVhbCB0YWN0aWxlIGRpc3BsYXlzLiBNb3N0IHNp
Z2h0ZWQgcGVvcGxlIEkga25vdyBkb24ndCBvd24gcHJpbnRlcnMgZWl0aGVyLiBUaGV5IGNlcnRh
aW5seSBkb24ndCBwcmludCBvdXQgYSBuZXcgaGFyZC1jb3B5IGdyYXBoaWMgZWFjaCB0aW1lIHRo
ZXkgem9vbSBvciBwYW4gZWFjaCBpbWFnZSB0aGF0IHRoZXkgdmlldy4gV2Ugd2lsbCBoYXZlIGEg
YmV0dGVyIGNoYW5jZSBvZiBrZWVwaW5nIHVwIHdoZW4gdGhlIEdyYXBoaXRpIHRhY3RpbGUgZGlz
cGxheSBldmVudHVhbGx5IGRlY3JlYXNlcyBpbiBwcmljZSwgYW5kIGlzIG1vcmUgd2lkZXNwcmVh
ZC4KCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIE1hciAzMSwgMjAyMiwgYXQgMTI6MjMgUE0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgo+IAo+IO+7v1sgU29ycnk7IGhpdCBzZW5kIGJlZm9yZSBJIHdhcyByZWFsbHkg
cmVhZHkuICAtciBdCj4gCj4gSGVyZSdzIFdpa2lwZWRpYSdzIHRha2Ugb24gc3dlbGwgcGFwZXIs
IGJ1cmllZCBpbiBhIHBhZ2Ugb24gdGFjdGlsZSBncmFwaGljczoKPiAKPj4gU3dlbGwgcGFwZXIg
aGFzIGEgc3BlY2lhbCBjb2F0aW5nIG9mIGhlYXQtcmVhY3RpdmUgY2hlbWljYWxzLiBNaWNyb2Nh
cHN1bGVzCj4gb2YgYWxjb2hvbCBpbXBsYW50ZWQgaW4gdGhlIHBhcGVyIGZyYWN0dXJlIHdoZW4g
ZXhwb3NlZCB0byBoZWF0IGFuZCBtYWtlIHRoZQo+IHN1cmZhY2Ugb2YgdGhlIHBhcGVyIGluZmxh
dGUuIFBsYWNpbmcgYmxhY2sgaW5rIG9uIHRoZSBwYXBlciBwcmlvciB0byBhIGhlYXQKPiBwcm9j
ZXNzIHByb3ZpZGVzIGNvbnRyb2wgb3ZlciB0aGUgcmFpc2VkIHN1cmZhY2UgYXJlYXMuIC4uLgo+
IAo+IC0tIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1RhY3RpbGVfZ3JhcGhpYwo+IAo+
PiAuLi4gaG93IGRvIHlvdSB0cmFuc2ZlciBpbWFnZXMgZnJvbSB0aGUgbm9ybWFsIHBhcGVyIHRv
IHRoZSBzd2VsbCBwYXBlcgo+IAo+IEkgdXNlZCBhIG11bHRpZnVuY3Rpb24gZGV2aWNlIChmYXgs
IHByaW50ZXIsIHNjYW5uZXIpIGFzIGEgY29weWluZyBtYWNoaW5lLgo+IFRoZSByZWFzb24gSSBk
aWQgdGhpcyBpcyB0aGF0IHRoZSBpbmsgaW4gbXkgbm9ybWFsIHByaW50ZXIgc21lYXJlZCBvbiB0
aGUKPiByYXRoZXIgc2xpY2sgc3VyZmFjZSBvZiB0aGUgc3dlbGwgcGFwZXIuICBJIGd1ZXNzIHRo
ZSBpbmsgaW4gdGhlIGNvcGllciBjb21lcwo+IG91dCBhIGJpdCBkcnllci4uLgo+IAo+IEZZSSwg
YW55IGRldmljZSB1c2VkIHRvIHByb2Nlc3Mgc3dlbGwgcGFwZXIgbmVlZHMgdG8gaGF2ZSBhIHJl
YXNvbmFibHkKPiBzdHJhaWdodCBwYXBlciBwYXRoLCB0byByZWR1Y2UgdGhlIHJpc2sgb2YgamFt
bWluZywgZGFtYWdpbmcgdGhlIHBhcGVyLCBldGMuCj4gQWxzbywgdGhlIGluayBuZWVkcyB0byBo
ZWF0IHVwIHNpZ25pZmljYW50bHkgd2hlbiBleHBvc2VkIHRvIHRoZSBicmlnaHQKPiBsaWdodCBp
biB0aGUgZXhwYW5zaW9uIHVuaXQuICBDYXJib24tYmFzZWQgaW5rcyBzZWVtIHRvIHdvcmsgd2Vs
bCBmb3IgdGhpcy4KPiAKPiAtIFJpY2ggTW9yaW4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cg==

