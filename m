Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B699C4F9DB6
	for <lists+blinux-list@lfdr.de>; Fri,  8 Apr 2022 21:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649446602;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/b3I6roVrwftfcHw9eEeBaKX1MfcqnkFOsQLIrHNtGA=;
	b=ZmEaGJnA1yfDXFE/NTPM6DNqLHuICUaaHaqnoR115/HhHrJ8IZqwXh3wHu6vB/Vn8WtvuA
	8IlVQziiR30fkrrOMelyeW2olVn9P7HRVDKr5bpCy+HsKUmfvH22b2fu1VYz6e0GVEmABh
	1ZQXzfqPLAW0mWswJ/+lKZstoWM7mTI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-148-OQPyh27fNDuAv8aKJ32d2w-1; Fri, 08 Apr 2022 15:36:41 -0400
X-MC-Unique: OQPyh27fNDuAv8aKJ32d2w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9144C1C0B04D;
	Fri,  8 Apr 2022 19:36:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3537F8145;
	Fri,  8 Apr 2022 19:36:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 631A6194034C;
	Fri,  8 Apr 2022 19:36:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Dragonfm questions/NNN query
Date: Fri, 8 Apr 2022 21:36:28 +0200
References: <mailman.7318.1649436088.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.7318.1649436088.111207.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.7463.1649446594.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpXZWxsIHRoZXJlIGlzIGEgY29udGV4dCBtZW51ICAoIGRyYWdvbkZNIGNhbGxzIGl0
IERldGFpbHMsIGJlY2F1c2UgaXQgYWxzbyBzaG93cyBmaWxlIHByb3BlcnRpZXMgbGlrZSBzaXpl
LCBtaW1lIGFuZCBhIGxpc3Qgb2YgYXZhaWxhYmxlIGFjdGlvbnMpIHdpdGggYWxsIGF2YWlsYWJs
ZSBvcHRpb25zIGJ5IHByZXNzaW5nIEYxMCAKU29tZSBhY3Rpb25zIGFyZSBvbmx5IGF2YWlsYWJs
ZSBmb3IgZ2l2ZW4gbWltZSB0eXBlcyBsaWtlIGNvbXByZXNzIGN1cnJlbnQgb25seSBmb3Igemlw
IGFuZCB0YXIsIG90aGVycyBjb3VsZCBiZSBhZGRhZCB2ZXJ5IGVhc3kuIEJ5IGRlZmF1bHQgZHJh
Z29uZm0gZG9lcyBub3QgdXNlIGF0b29sIGJ1dCB1bnppcCBjb21tYW5kIGZvciB6aXAgZmlsZXMg
YW5kIHRhciBvZiBjb3Vyc2UgZm9yIHRhciB0aG9zZSBuZWVkIHRvIGJlIGluc3RhbGxlZCBvciBj
b25mdXJlZCB0byB1c2Ugc29tZXRoaW5nIGVsc2UuICAoSSBjYW4gZ2l2ZSB5b3UgYSBtb3JlIGRl
dGFpbGVkIGluZm9ybWF0aW9uIGhvdyB0byBjb25maWd1cmUgdGhvc2Ugc3R1ZmYgaWYgeW91IGFy
ZSBpbnRlcmVzdGVkIGluKQoKRHJhZ29uRk0gcmVhZHMgdGhlIEVzY2FwZSBzZXF1ZW5jZXMgZnJv
bSBzdGRpbiB0byBkZXRlY3Qgc2hvcnRjdXRzIChsaWtlIGFsbW9zdCBhbnkgb3RoZXIgQ0xJIGFw
cGxpY2F0aW9uKQpTb21lIGltcG9ydGFudCBiYXNpYyB0cmFuc2xhdGlvbiBoZWxwICh3ZSBzaG91
bGQgYWRkIHRoZSBzaG9ydGN1dHMgYXMgY29tbWVudHMgdG8gdGhlIHNldHRpbmdzIGZpbGUgbG9s
ICkKXiA9IENUUkwKWyA9IEFsdApVcHBlcmNhc2UgbGV0dGVyID0gc2hpZnQgKyBsZXR0ZXIKbG93
ZXJjYXNlIGxldHRlciA9IGp1c3QgdGhlIGxldHRlcgpBbiBvdGhlciBleGFtcGxlOgpeW3UgdHJh
bnNsYXRlcyBhcyBjdHJsICsgYWx0ICsgdQoKVGhlcmUgYXJlIHNvbWUgc3BlY2lhbHMgbGlrZSBh
cnJvdyBrZXlzIG9yIGVzY2FwZS4KRXNjYXBlIGlzIHRyYW5zbGF0ZWQgYnkgXlsKCihieSB0aGUg
d2F5IG1hbnkgc2hvcnRjdXRzIGFyZSBzaW1pbGFyIHRvIG90aGVyIGdyYXBoaWNhbCBmaWxlIG1h
bmFnZXJzIEJVVCBzaGlmdCArIGFycm93IGZvciBtYXJrIGZpbGVzIGlzIGRpZmZlcmVudCBhcyBp
IGNvdWxkIG5vdCBmaWd1cmUgaG93IHRvIHJlYWQgdGhpcyBmcm9tIGFuIGVzY2FwZSBzZXF1ZW5j
ZSwgYmVjYXVzZSB0aGVyZSBpcyBubyB1cHBlcmNhc2UgYXJyb3cgKnNtaWxlKikKCkRldmVsb3Bt
ZW50IHdhcyBzcG9uc29yZWQgYnkgRjEyMyBwcm9qZWN0LiBUb2RheSBrbm93biBhcyBzdG9ybXV4
LiBTYWRseSBpIGRpZCBub3Qgd2lyZSBhIGxvdCBvZiBkb2N1bWVudGF0aW9uIGJ1dCB5b3UgY2Fu
IGFzayBtZSBldmVyeXRoaW5nIHlvdSB3YW50IHRvIGtub3cgOikuCgpDaGVlcnMgY2hyeXMKCj4g
QW0gMDguMDQuMjAyMiB1bSAxODo0MSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+IO+7v1NvIEkgZ2F2ZSBpdCBh
IHNob3QgYW5kIGl0IGZlZWxzIGxvZ2ljYWwgYW5kIHdlbGwgbGFpZCBvdXQsIGZvciB0aGUgbW9z
dAo+IHBhcnQKPiAKPiBCVXQgSSdtIHN0cnVnZ2xpbmcgb24gYSBmZXcgdGhpbmdzLiBJIGhhdmUg
aXQgZ29pbmcgYW5kIHdhbnQgdG8gdW56aXAgYW4KPiBhcmNoaXZlIGZyb20gd2l0aGluIGl0LiBJ
biBOTk4gSSBjYW4ganVzdCBkbyB0aGF0IGFuZCB3b3JrIHdpdGggYXRvb2wuIEkKPiBjYW4ndCBz
ZWVtIHRvIGZpbmQgdGhlIGtleXMgdG8gc3RhcnQgZXh0cmFjdGluZyBhbiBhcmNoaXZlIG9yIGhv
dwo+IERyYWdvbmZtIGhhbmRsZXMgdGhhdCBhdCBhbGwsIEl2ZSBvbmx5IGZvdW5kIHVuZXh0cmFj
dCB3aXRoIF4oVSBpbiB0aGUKPiBjb25maWcsIHdoaWNoIEkndmUgbm8gY2x1ZSB3aGF0IGl0IHRy
YW5zbGF0ZXMgdG8gaW4gdGVybXMgb2YgYWN0dWFsIGtleXMKPiBhc2lkZSBmcm9tIGN0cmwgYW5k
IFUuIEl0J3MgdGhlICggSSdtIHN0dW1wZWQgb24KPiAKPiBTZWUgbXkgbWFpbiBncmlwZSB3aXRo
IE5OTiBpcyBpZiBJIHVzZSBpdCBpbiBhIHRlcm1pbmFsIEkgaGF2ZSB0byBoaXQgTywKPiB3M20g
YW5kIGMgdG8gb3BlbiBhbiBodG1sIGRvYyBpbiB3M20gZWxzZSBpdCBsb2FkcyB1cCBpbiBGaXJl
Zm94LiBOb3cKPiBncmFudGVkIEkndmUgbm90IHRyaWVkIGl0IG9uIGEgcHVyZSBUVFkgYnV0Li4u
b24gYSB0ZXJtaW5hbCwgeGRnLW9wZW4KPiBvdmVycmlkZXMgYnJvd3NlciBiZWluZyBzZXQgYXMg
YW4gZW52aXJvbm1lbnQgdmFyaWFibGUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cg==

