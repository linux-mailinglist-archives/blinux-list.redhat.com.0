Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 500DE5E551C
	for <lists+blinux-list@lfdr.de>; Wed, 21 Sep 2022 23:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663795337;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JyOJIOxWOBbbzoXrKWd+Fs9pN0Ckc8I1BUnOgrCkzus=;
	b=WXv6ZknV+6fSRxMNC3oH57/wCCz7OHCO8wSaH4xaJ6xkoL9A5/COTmGqzvmh+npNF6OIr1
	YxAy2Rb1dB8r34bRtVLjtON3aPM6qD5P+cQ1oQn+4jHLOEiGr9kYZK2ixL5te9QmtM/X4U
	l+xiEqPvABXN6izWpUszkEAdpskUj3w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-402-OddGQS-uNi6HUbAUdYNx7w-1; Wed, 21 Sep 2022 17:22:14 -0400
X-MC-Unique: OddGQS-uNi6HUbAUdYNx7w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10DD483B9DF;
	Wed, 21 Sep 2022 21:22:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D5D63C15BA5;
	Wed, 21 Sep 2022 21:22:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7CBD219465B9;
	Wed, 21 Sep 2022 21:22:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 21 Sep 2022 21:12:52 +0000
To: blinux-list@redhat.com
Subject: Re: F 105 crashing, anyone else?
In-Reply-To: <mailman.1902.1663760173.6083.blinux-list@redhat.com>
References: <mailman.1902.1663760173.6083.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.2208.1663795326.6077.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCBVYnVudHUgTWF0ZSAyMi4wNCA2NC1iaXQsIEZpcmVmb3ggMTA1IGZyb20gTW96aWxsYSBw
cGEuCgpJIHVzZWQgMTA0IGJlZm9yZSBhbmQgZG9uJ3QgcmVtZW1iZXIgaXQgY3Jhc2hpbmcgb24g
bXkgc3lzdGVtLCBidXQgMTA1CmNyYXNoZXMgcXVpdGUgZnJlcXVlbnRseS4KCgpFaXRoZXIgYWZ0
ZXIgYWN0aXZhdGluZyBhIGxpbmssIHdoZW4gdGhlIG5ldyBwYWdlIGlzIGxvYWRlZCwgb3IgZXZl
bgpvbi1wYWdlIG5hdmlnYXRpb24gY2FuIGNhdXNlIGNyYXNoZXMgaGVyZSBhbmQgdGhlcmUuCgoK
QmVzdCByZWdhcmRzCgoKUmFzdGlzbGF2CgoKRMWIYSAyMS4gOS4gMjAyMiBvIDEzOjM1IExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gSXMgaXQganVzdCBt
ZSwgb3IgaXMgRkYgMTA1LjAgY3Jhc2hpbmcgbW9yZSB0aGFuIDEwNC5YIHVzZWQgdG8/Cj4KPgo+
IE9wZW4gYSBwcml2YXRlIHdpbmRvdyBhbmQgdHlwZSBpbiBhIFVSTCwgY3Jhc2gKPgo+Cj4gVHJ5
IGdvaW5nIHRvIGEgVVJMIGluIHRoZSBtYWluIHdpbmRvdz8gQ3Jhc2gKPgo+Cj4gQ3VycmVudGx5
IGNvbXBpbGluZyBGRiBFU1IgdG8gc2VlIGlmIHRoaXMgZml4ZXMgaXQuIFRoZSBvbmx5IHRoaW5n
cyBpbgo+IHRoZSBjcmFzaCBsb2cgYXJlIHNpZ3NlZyBhbmQgc2lnIGZhdWx0cyB3aGljaCBhcmUg
bm90IGhlbHBmdWwsIHRoZQo+IGNvbnNvbGUgb25seSBnaXZlcyBtZSBhIGNoYW5uZWwgZXJyb3Ig
dG8gd29yayB3aXRoCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

