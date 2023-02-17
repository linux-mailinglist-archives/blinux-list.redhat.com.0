Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6779369A9C2
	for <lists+blinux-list@lfdr.de>; Fri, 17 Feb 2023 12:08:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676632108;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0RZoN6Ud2dgw/Zf7NVO/zuuFNHzP/LoipK5UadD++PA=;
	b=WF125bUdfrOK5riom5vepsA8IutNU3aUtatu1nesW5d0/fAKg8E7Clv5gyyaafqk7pPwxc
	YQFKrvweXC00ZAFYEnWqXV+i4h2XvFdQRcmGVu0f+Or59Tl76iXkOAmRutYaW0wGEvrW61
	6ruwjqXLcBfncmiwdmEltYi/ml+Ar7s=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-478-aw15WGP-M1ySEzQpAg1gYg-1; Fri, 17 Feb 2023 06:08:25 -0500
X-MC-Unique: aw15WGP-M1ySEzQpAg1gYg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8AAAC3C218AB;
	Fri, 17 Feb 2023 11:08:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 151B3175A2;
	Fri, 17 Feb 2023 11:08:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6EEE41946597;
	Fri, 17 Feb 2023 11:08:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: audacity
Date: Thu, 16 Feb 2023 20:21:04 -0600
References: <mailman.72.1676559958.3521.blinux-list@redhat.com>
 <mailman.145.1676591074.3516.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.145.1676591074.3516.blinux-list@redhat.com>
Message-ID: <mailman.235.1676632100.3514.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGF2ZSB1c2VkIHNuYXAsIGhvdyBtYXkgb25lIHVzZSBmbGF0IHBhY2s/Cgo+IE9uIEZlYiAxNiwg
MjAyMywgYXQgMTc6NDMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51
eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IEhlbGxvLAo+IAo+IEF1ZGFjaXR5IGlzIGZp
bmUsIHNob3VsZCBiZSBhYmxlIHRvIGRvIHdoYXQgeW91IG5lZWQuCj4gCj4gSnVzdCBtYWtlIHN1
cmUgdG8gZG93bmxvYWQgdGhlIGxhdGVzdCB2ZXJzaW9uLCB0aGVyZSBhcmUgQXBwSW1hZ2VzIGFu
ZCBJCj4gdGhpbmsgZmxhdHBha3MgYXMgd2VsbC4KPiAKPiBEaXN0cm8gcmVwb3Mgb24gdWJ1bnR1
IDIyLjA0IGFyZSBzdGlsbCBzaGlwcGluZyBBdWRhY2l0eSAyLCB3aGljaCBpcwo+IHByYWN0aWNh
bGx5IHVudXNhYmxlIHdpdGggc2NyZWVucmVhZGVycy4KPiAKPiBJdCdzIGZpbmUgc2luY2UgdmVy
c2lvbiAzLgo+IAo+IAo+IEJlc3QgcmVnYXJkcwo+IAo+IAo+IFJhc3Rpc2xhdgo+IAo+IAo+IETF
iGEgMTYuIDIuIDIwMjMgbyAxNToyOSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IG5hcMOtc2FsKGEpOgo+PiBBbnlvbmUgZXZlciB1c2VkIGF1ZGFjaXR5IGJlZm9yZT8KPj4gQWxs
IEkgd2FudCB0byBkbyB3aXRoIGFuIGF1ZGlvIGZpbGUgaXMgdG8gcmFpc2UgaXRzIHZvbHVtZSBh
bmQgdGhlbiBzYXZlIGl0IGFnYWluLgo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+PiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

