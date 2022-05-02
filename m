Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E8539516E03
	for <lists+blinux-list@lfdr.de>; Mon,  2 May 2022 12:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651486549;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QfLuKpuRM+mw1WF6uEBJJlNuOSJQDrkwoTWgHdoTtvw=;
	b=TAWNIMwyYKj27cxOTZeWMGBbylXj2mpywGgxyX8MXW1JMHNG5KXhDZR/LZ6tN6TQ0cqXi+
	6MdNo8L/5l7/Gk+R7Binu36ypUmJ1awoujtW7w9PNBRN3ekNbTZxAV7QoBpTxUmO1OSezD
	O6hTiNN9456tkmln/RpgqqpYrtzMGpQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-634-JfkCs8ycM4aWbKyeK_XrMg-1; Mon, 02 May 2022 06:15:46 -0400
X-MC-Unique: JfkCs8ycM4aWbKyeK_XrMg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05488833942;
	Mon,  2 May 2022 10:15:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4409F40CFD0C;
	Mon,  2 May 2022 10:15:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F06D81947063;
	Mon,  2 May 2022 10:15:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 2 May 2022 12:15:14 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Does anyone know of any accessible SQL programs for Slint?
In-Reply-To: <mailman.12400.1651435045.111208.blinux-list@redhat.com>
References: <mailman.12284.1651434266.111201.blinux-list@redhat.com>
 <mailman.12400.1651435045.111208.blinux-list@redhat.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.12131.1651486541.111207.blinux-list@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksClRvIGdldCB0aGUgbXlzcWwgY2xpZW50IHRvIHByaW50IHRoZSBvdXRwdXQgaW4gdmVydGlj
YWwgZm9ybWF0LCBwdXQgdGhlIAotLXZlcnRpY2FsIG9wdGlvbiBvbiB0aGUgY29tbWFuZCBsaW5l
LgpCeSB0aGUgd2F5LCBJIHRoaW5rIHRoZSB3aW5kb3dzIHZlcnNpb24gb2YgdGhlIG15c3FsIGNs
aWVudCBzaG91bGQgYWxzbyBiZSAKYWNjZXNzaWJsZSwgYWx0aG91Z2ggSSBuZXZlciB1c2Ugd2lu
ZG93cy4KUGVyaGFwcyB5b3Ugc2hvdWxkIGdpdmUgYW4gZXhhbXBsZSBvZiB0aGUga2luZCBvZiBz
dHVmZiB5b3UgY2Fubm90IHJlYWQgCm5pY2VseS4KSFRILCBXaWxsZW0KCgpPbiBTdW4sIDEgTWF5
IDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhlbGxv
LCBJ4oCZbSBub3Qgc3VyZSBpZiB0aGlzIHdvdWxkIHdvcmsuIEkgc3RhcnRlZCB0YWtpbmcgYSBk
YXRhYmFzZSBjbGFzcyBmb3IgY29sbGVnZSBhbmQgbW9zdCBvZiB0aGUgdGhpbmdzIHRoYXQgd2Ug
ZG8gbm93IEkgYW0gdW5hYmxlIHRvIHJlYWQgdW5sZXNzIHRoZXkgYXJlIGNvcGllZCBpbnRvIHRo
ZSBub3RlcGFkIGFuZCBwYXN0ZWQgaW50byBhIHdvcmQgZG9jdW1lbnQgc28gSSB3YXMganVzdCBj
dXJpb3VzIGlmIHRoZXJlIHdhcyBhbnl0aGluZyBmb3IgTGludXguIAo+Cj4gQXNobGV5IEJyZWdl
cgo+Cj4+IE9uIE1heSAxLCAyMDIyLCBhdCAzOjQ0IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4gCj4+IO+7vwo+
Pj4gCj4+PiBPbiBNYXkgMSwgMjAyMiwgYXQgMTI6MTEsQXNobGV5IEJyZWdlciB3cm90ZToKPj4+
IAo+Pj4gLi4uIEkgYW0gbG9va2luZyBmb3IgYW4gYWNjZXNzaWJsZSBTUUwgcHJvZ3JhbSB0byB1
c2Ugb24gbXkgU2xpbnQgc3lzdGVtLiAuLi4KPj4gCj4+IHRsO2RyIC0gbm8gcmVhbCBhbnN3ZXJz
LCBidXQgc29tZSBxdWVzdGlvbnMgYW5kIGlkZWFzLi4uCj4+IAo+PiBJJ20gYXNzdW1pbmcgdGhh
dCB5b3UncmUgcmVmZXJyaW5nIHRvIFNRTCwgYSBsYW5ndWFnZSBmb3IgaW50ZXJhY3Rpbmcgd2l0
aCByZWxhdGlvbmFsIGRhdGFiYXNlcyAoaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvU1FM
KS4gIElmIG5vdCwgcGxlYXNlIGluZGljYXRlIHdoYXQgZWxzZSB5b3UgaGF2ZSBpbiBtaW5kLgo+
PiAKPj4gVGhlcmUgYXJlIGxvdHMgb2YgZGF0YWJhc2VzIHRoYXQgc3VwcG9ydCBTUUwsIHRob3Vn
aCB0aGUgZmVhdHVyZXMgYW5kIHN5bnRhY3RpYyBkZXRhaWxzIGNhbiB2YXJ5IGEgbG90LiAgSG93
ZXZlciwgbW9zdCBvZiB0aGVtIGhhdmUgYSBjb21tYW5kLWxpbmUgaW50ZXJmYWNlIHdoaWNoIHlv
dSBjYW4gdXNlIHRvIHN1Ym1pdCBTUUwgcXVlcmllcywgZXRjLiAgU28sIHRoZXkgc2hvdWxkIGJl
IHByZXR0eSBibGluZC1hY2Nlc3NpYmxlLCBhdCBsZWFzdCBvbiB0aGUgaW5wdXQgc2lkZS4KPj4g
Cj4+IE91dHB1dCBpcyBhbm90aGVyIHF1ZXN0aW9uLiAgQmVjYXVzZSByZWxhdGlvbmFsIGRhdGFi
YXNlcyBvcGVyYXRlIG9uIHJlY3Rhbmd1bGFyIHRhYmxlcywgdGhleSB0ZW5kIHRvIHVzZSB0ZXh0
LWJhc2VkIGZvcm1hdHRpbmcgdG8gZGVsaW5lYXRlIHJvd3MgYW5kIGNvbHVtbnMuICBTbywgZm9y
IGV4YW1wbGUsIHlvdSBtaWdodCBnZXQgbG9uZyBzdHJpbmdzIG9mIHNwYWNlcyBhbmQgdmVydGlj
YWwgYmFycyBzdWNoIGFzIHRoaXM6Cj4+IAo+PiB8ICAgZm9vIHwgICBiYXIgfCAgIGJheiB8Cj4+
IHwgICAxMjMgfCAgIDQ1NiB8ICAgNzg5IHwKPj4gfCAgMTIzNCB8ICA0NTY3IHwgIDc4OTAgfAo+
PiAKPj4gVW5sZXNzIHlvdSBoYXZlIGEgc2NyZWVuIHJlYWRlciB0aGF0IGNhbiBsZXQgeW91IG5h
dmlnYXRlIHRoaXMgc29ydCBvZiB0aGluZywgZmluZGluZyB0aGUgcmVsZXZhbnQgdGFibGUgY2Vs
bHMgY291bGQgYmUgcHJldHR5IHRlZGlvdXMuCj4+IAo+PiBPZiBjb3Vyc2UsIHdpdGggYSBzdWZm
aWNpZW50bHkgY2xldmVyIHF1ZXJ5LCB5b3UgY2FuIChzb21ldGltZXMgOi0pIHBhcmUgZG93biB0
aGUgb3V0cHV0IHRvIGp1c3QgYSBmZXcgY2VsbHMuICBJIGRvIHNvbWV0aGluZyBsaWtlIHRoaXMg
d2hlbiB3cml0aW5nIGRlYnVnZ2luZyB0cmFjZSBjb2RlLCB0byBhdm9pZCBoYXZpbmcgdG8gZGln
IHRocm91Z2ggbGFyZ2UgcGlsZXMgb2Ygb3V0cHV0Lgo+PiAKPj4gT25lIHRob3VnaHQgSSBoYXZl
IGhhZCwgZnJvbSB0aW1lIHRvIHRpbWUsIGlzIHRoYXQgaXQgd291bGQgYmUgbmljZSB0byBoYXZl
IHRvb2xpbmcgdGhhdCB0cmFuc2Zvcm1zIHZhcmlvdXMgdGFidWxhciBvdXRwdXQgZm9ybWF0cyBp
bnRvIEhUTUwgdGFibGVzLiAgVGhpcyBjb3VsZCBsZXQgdGhlIHVzZXIgZW1wbG95IHNjcmVlbiBy
ZWFkZXIgbmF2aWdhdGlvbiB0byBjcmF3bCBhcm91bmQgdGhlIHRhYmxlLiAgSG93ZXZlciwgSSBo
YXZlIG5vIGlkZWEgaWYgYW55dGhpbmcgb2YgdGhpcyBzb3J0IGV4aXN0cy4KPj4gCj4+IEFzc3Vt
aW5nIHRoYXQgdGhlcmUgYXJlIHNvbWUgYmxpbmQtYWNjZXNzaWJsZSBzcHJlYWRzaGVldCBwcm9n
cmFtcywgeW91IG1pZ2h0IGJlIGFibGUgdG8gZHVtcCB0aGUgdGFidWxhciBvdXRwdXQgaW50byBh
IGZpbGUgKGUuZy4gQ1NWKSBhbmQgdGhlbiBleGFtaW5lIGl0IHVzaW5nIHRoZSBzcHJlYWRzaGVl
dCBwcm9ncmFtLiAgTWlnaHQgdGhpcyB3b3JrIGZvciB5b3U/Cj4+IAo+PiAtIFJpY2ggTW9yaW4K
Pj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4g
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

