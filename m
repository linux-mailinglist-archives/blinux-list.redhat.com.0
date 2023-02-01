Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF24686FF8
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 21:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675284418;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A3lft5ypCXWQ7Z3Sg93JBWnMsD9E8ibPOVUlVfbaNHo=;
	b=gADSmzIgg/dr1ATay/uKSW3wLYABc7oFa9Rv25+4sjzUjP+hEvI3Rp7p8ZFV1jDTPkZR+U
	shmnvavJsjixthIqIWP/8I+O8VIbpTudgsz4Hu6106xUyULndLODEH8TonJB6CoQcC6BUk
	VzVU9YPmonxN1HnKTu8gXLQB3SW7cwY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-10-jOQyDK5nNOeJiSapgCHmTA-1; Wed, 01 Feb 2023 15:46:56 -0500
X-MC-Unique: jOQyDK5nNOeJiSapgCHmTA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 15A5385CBE1;
	Wed,  1 Feb 2023 20:46:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4BB192026D4B;
	Wed,  1 Feb 2023 20:46:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 20CD219465BB;
	Wed,  1 Feb 2023 20:46:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 15:46:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Jenux repo unavailable
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3810.1675256533.8169.blinux-list@redhat.com>
In-Reply-To: <mailman.3810.1675256533.8169.blinux-list@redhat.com>
Message-ID: <mailman.3508.1675284413.8168.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKRGFuaWVsIG5hc2ggaXMgdGhlIG1haW50YW5lci7CoCBJIHRoaW5rIHlvdSBjYW4gZG8g
YSBnb29nbGUgc2VhcmNoIGZvciAKamVudXggYW5kIHNlZSBpZiBhbnl0aGluZyBjb21lcyB1cC7C
oCBJIGRvbid0IGhhdmUgYW4gZW1haWwgYWRkcmVzcyBmb3IgCmhpbSBvZmYgaGFuZC4KCgpIVEgK
CgpNYXR0aGV3CgoKCk9uIDIvMS8yMyAwODowMSBBTSwgTGludXggZm9yIGJsaW5kIGdlbgplcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4gSGksCj4KPiBUaGlzIGlzIGp1c3QgYSBxdWljayBhbm5vdW5j
ZW1lbnQgZm9yIGFsbCB0aG9zZSB1c2luZy90ZXN0aW5nIEplbnV4Lgo+Cj4gQ3VycmVudGx5LCBp
dCBhcHBlYXJzIGFzIHRob3VnaCB0aGUgcmVwbyBpcyB1bmF2YWlsYWJsZS4KPgo+IEEgZnJpZW5k
IHRoaXMgbW9ybmlnbiB0b2xkIG1lIHRoZXkgd2VyZSBoYXZpbmcgaXNzdWVzIHVwZGF0aW5nIHRo
ZWlyIAo+IG1hY2hpbmUgcnVubmluZyBKZW51eC4gVXBvbiB0YWtpbmcgYSBsb29rLCBJIGZvdW5k
IHRoYXQgdGhlIGlzc3VlIHdhcyAKPiBjYXVzZWQgYnkgamVudXguZGIgZmFpbGluZyB0byBkb3du
bG9hZCB3aGVuIHJldHJpZXZlZCB3aXRoIHBhY21hbiAtU3l1Lgo+Cj4gSSdtIHVuc3VyZSB3aGVy
ZSB0byBjb250YWN0IHRoZSBtYWludGFpbmVyIHRvIGluZm9ybSB0aGVtIG9mIHRoaXMgCj4gcHJv
YmxlbSBob3dldmVyLCBzbyBhbGwgSSBjYW4gZG8gZm9yIHRoZSBtb21lbnQgaXMgcmVtb3ZlIHRo
ZSBKZW51eCByZXBvLgo+Cj4gVGhpcyBsZWF2ZXMgYSBsb3Qgb2YgcGFja2FnZXMgbmV3ZXIgdGhh
biB3aGF0IGFyZSBhdmFpbGFibGUgaW4gdGhlIAo+IGNvbW11bml0eSByZXBvLCBhbmQgZXZlbiBp
biBzb21lIGNhc2VzIG5ld2VyIHRoYW4gaW4gdGhlIEFVUi4KPgo+IEF0IGFueSByYXRlLCBJIGhv
cGUgdGhpcyBoZWxwcyBzb21lb25lIHdobyBtaWdodCBoYXZlIGJlZW4gY29uZnVzZWQgYXMgCj4g
dG8gd2h5IHRoZWlyIHN5c3RlbSB3YXMgbm90IHdvcmtpbmcgY29ycmVjdGx5IHdoZW4gcGVyZm9y
bWluZyBhbiB1cGdyYWRlLgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

