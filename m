Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA01608D9A
	for <lists+blinux-list@lfdr.de>; Sat, 22 Oct 2022 16:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666447710;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CAS6K77h5iCc1Ch/k+4cf/HUrbvKiQgXbG4J/FkYCVw=;
	b=g4qAp7Gmgc6yMNHD+nErDqjxPKE1NTj7PPhpwB6Ngfy6g5d5VHcAKO/d17ROUvfleE7NAF
	x3LjkzgQ949Fwr+GApAV/NFv/aCP2WbRYdtKKeC/2D05VDxnWWMiS9l1QeCSnDhTCRcHLP
	uKqVZZXt5RXBOECV3hLueofSvuTD2vA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-78-WOgQ2JdIPOq8lMMs2lh0eA-1; Sat, 22 Oct 2022 10:08:27 -0400
X-MC-Unique: WOgQ2JdIPOq8lMMs2lh0eA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF7DA101A52A;
	Sat, 22 Oct 2022 14:08:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F1D5F2024CBF;
	Sat, 22 Oct 2022 14:08:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6EF60194658D;
	Sat, 22 Oct 2022 14:08:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Konsole progress/any good alternatives?
Date: Sat, 22 Oct 2022 16:08:12 +0200
References: <mailman.1962.1666446531.3005.blinux-list@redhat.com>
In-Reply-To: <mailman.1962.1666446531.3005.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.1925.1666447704.3004.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpXZWxsIHRoZSBpc3N1ZXMgSSBpZGVudGlmaWVkIGFyZSBvbmx5IHJlbGF0ZWQgdG8g
S29uc29sZS4gV2l0aG91dCBmaXJlIHRoZSBwcm9wZXIgZXZlbnRzIG9yY2EgaXMgbm90IGFibGUg
dG8gcmVhY3QuIE9uY2UgdGhvc2UgZ290IGZpeGVkIHdlIGNhbiBvcHRpbWl6ZSBpdC4gSSB3aWxs
IHRha2UgYSBsb29rIGF0IHRoaXMgaW4gdXBjb21pbmcgZGF5cy4KCkNocnlzCgo+IEFtIDIyLjEw
LjIwMjIgdW0gMTU6NDkgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiAKPiDvu79Pbmx5IG9uZSB3YXkgdG8ga25vdyBm
b3Igc3VyZSwgd29yayBvbiBrZGUgYWNjZXNzaWJpbGl0eSBoYXMgYmVlbiByZWNlbnQKPiBzbyBt
YXliZSBvcmNhIGNhbiBiZSBhZGp1c3RlZCB0byBleHBsb2l0IHRoYXQgd29yay4KPiAKPiAKPiAK
PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMg
dG8gYmUgdXNlZCBpbgo+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPiBzb2FwLCBiYWxsb3QsIGp1cnks
IGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+IC1FZCBIb3dkZXJzaGVsdCAo
QXV0aG9yLCAxOTQwKQo+IAo+IC4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

