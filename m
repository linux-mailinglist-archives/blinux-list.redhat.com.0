Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9765665EEC4
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jan 2023 15:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672929080;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HJYSP67dmTmZVAAtadu9l55eEOWqqpnzsxJsPjZ45j0=;
	b=Qm5cvN9P7ZpKP7scsN7vjeqemLRtFAO5EMamikowzQctokG0YNVpXbiMdUsr4+BCntvjVi
	0drkVyfzlGbP8R7aCZ7iGwHdf+h7RwOUqOIDBD/jcZPggenpE5GTXHUf8bu8dDv/mYxdTv
	OO+qo1x0u/T9XVYg2U08dudXn0b0vGc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-314-IKVR_AvlPt2FtIZJwQ2oQw-1; Thu, 05 Jan 2023 09:31:19 -0500
X-MC-Unique: IKVR_AvlPt2FtIZJwQ2oQw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8130183B3C1;
	Thu,  5 Jan 2023 14:31:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 71AE44014CEA;
	Thu,  5 Jan 2023 14:31:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B7D881946597;
	Thu,  5 Jan 2023 14:31:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.3026.1672894645.2515672.blinux-list@redhat.com>
References: <mailman.2948.1672861418.2515658.blinux-list@redhat.com>
 <mailman.2827.1672864702.2515671.blinux-list@redhat.com>
 <mailman.3059.1672865639.2515682.blinux-list@redhat.com>
 <mailman.2900.1672867046.2515669.blinux-list@redhat.com>
 <mailman.2839.1672867371.2515671.blinux-list@redhat.com>
 <mailman.3026.1672894645.2515672.blinux-list@redhat.com>
Date: Thu, 5 Jan 2023 07:30:56 -0700
Subject: Re: Java & Orca
To: blinux-list@redhat.com
Message-ID: <mailman.3052.1672929069.2515675.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sIHNvbWVvbmUgb24gdGhpcyBsaXN0IHdyb3RlOgoiSXMgdGhlcmUgc29tZSByZWFzb24g
dGhhdCBhIHdlYiBhcHAgd291bGRuJ3Qgd29yayBmb3IgeW91ciB1c2UgY2FzZT8KQSBncmVhdCBk
ZWFsIG9mIHdvcmsgaGFzIGJlZW4gZG9uZSBvbiBIVE1MIGFuZCBtb3N0IG1ham9yIHdlYiBicm93
c2VycwppbiBvcmRlciB0byBtYWtlIHRoZW0gcGxheSBuaWNlbHkgd2l0aCBzY3JlZW4gcmVhZGVy
cy7CoCBZb3UgY2FuIHRha2UKYWR2YW50YWdlIG9mIHRoaXMgZnJvbSBhbG1vc3QgYW55IGxhbmd1
YWdlLCBpbmNsdWRpbmcgSmF2YS4iCgpQZXJoYXBzIHRoZSBiZXN0IGFuZCBvbmx5IHJlYXNvbiwg
ZnJhbmtseSwgd2FzIGJlY2F1c2UgSSBkaWRuJ3Qgd3JpdGUKdGhlIHByb2dyYW0uIEkgd291bGRu
J3QgaGF2ZSB1c2VkIEphdmEgaWYgSSBoYWQsIHRiaC4KCk9uIDEvNC8yMywgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
IE9uIEphbiA0LCAyMDIzLCBhdCAxMzoyMiwgSmFja2llIE1jQnJpZGUgd3JvdGU6Cj4+Cj4+IEl0
J2xsIG5lZWQgc29tZSBzb3J0IG9mIHdpbmRvd2luZyBlbnZpcm9ubWVudC0teDExIGlzIGxpa2Vs
eSB0aGUgYmVzdC4KPj4gSXQncyBub3QgYSB3ZWIgYXBwLgo+Cj4gSXMgdGhlcmUgc29tZSByZWFz
b24gdGhhdCBhIHdlYiBhcHAgd291bGRuJ3Qgd29yayBmb3IgeW91ciB1c2UgY2FzZT8gIEEKPiBn
cmVhdCBkZWFsIG9mIHdvcmsgaGFzIGJlZW4gZG9uZSBvbiBIVE1MIGFuZCBtb3N0IG1ham9yIHdl
YiBicm93c2VycyBpbgo+IG9yZGVyIHRvIG1ha2UgdGhlbSBwbGF5IG5pY2VseSB3aXRoIHNjcmVl
biByZWFkZXJzLiAgWW91IGNhbiB0YWtlIGFkdmFudGFnZQo+IG9mIHRoaXMgZnJvbSBhbG1vc3Qg
YW55IGxhbmd1YWdlLCBpbmNsdWRpbmcgSmF2YS4KPgo+IFJpY2ggTW9yaW4KPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+CgoKLS0gCkphY2tpZSBNY0Jy
aWRlCkJlIGEgaGVyby4gRmlnaHQgU2NhbXMuIExlYXJuIGhvdyBhdCB3d3cuc2NhbTkxMS5vcmcK
QWxzbyBjaGVjayBvdXQgYnJpZ2h0c3RhcnN3ZWIuY29tICYgbXlzaXRlc2JlZW5oYWNrZWQuY29t
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

