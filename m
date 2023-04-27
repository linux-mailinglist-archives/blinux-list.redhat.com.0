Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C8C6F06EB
	for <lists+blinux-list@lfdr.de>; Thu, 27 Apr 2023 16:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682604070;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3mxye3rc69SCFSkz5Y76aKbKoGPS90Uy95WwJnRL4n0=;
	b=g8LiFZPou5WUBXB6k34IJkHvVNZCLPccAeF+aa+oo2e5bVXoYir6dJWQ3GhNzqxTXKiuVt
	EKS0vx7p78l25sCh60kPOk5pCb8eFyDS6DBJJ6zBtpF00r/LBNCIIit6k5XIDsXz25Alyi
	+GtSZLSTc4JzmzJjB6pbG6Qm/Df4Oj4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-CwopzveTMNeJPKlcxYMekA-1; Thu, 27 Apr 2023 10:01:06 -0400
X-MC-Unique: CwopzveTMNeJPKlcxYMekA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71C7538149B7;
	Thu, 27 Apr 2023 14:01:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D74A01400C1C;
	Thu, 27 Apr 2023 14:01:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 716271946A51;
	Thu, 27 Apr 2023 14:01:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Apr 2023 09:58:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Configuring terminal and referencing username in bash scripts.
To: blinux-list@redhat.com
References: <mailman.1671.1682536977.2351823.blinux-list@redhat.com>
In-Reply-To: <mailman.1671.1682536977.2351823.blinux-list@redhat.com>
Message-ID: <mailman.1865.1682604061.2351824.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBJZiBpdCB1c2VzIE1hdGUgdGVybWluYWwsIHRoZSAuYmFzaF9wcm9maWxlIGRvZXNu
J3QgZ2V0IHJlYWQgYnkgCmRlZmF1bHQuwqAgWW91IGNvdWxkIHB1dCB0aGVtIGluIC5iYXNocmMg
YW5kIGl0IHNob3VsZCByZWFkIHRoZW0gd2hlbiB0aGUgCnRlcm1pbmFsIGlzIG9wZW5lZC7CoCBJ
IHRoaW5rIC5iYXNocmMgaXMgcmVhZCBldmVyeSB0aW1lIGEgc2hlbGwgaXMgCmludm9rZWQsIHNv
IHRoYXQgaXMgc29tZXRoaW5nIHRvIGJlIGF3YXJlIG9mLgoKWW91IGNhbiBhbHNvIGhhdmUgTWF0
ZSB0ZXJtaW5hbCBpbnZva2UgYSBzY3JpcHQgZm9yIHlvdSwgYnV0IEkndmUgbmV2ZXIgCmRvbmUg
dGhhdC7CoCBUeXBlIG1hbiBtYXRlLXRlcm1pbmFsLgoKCgoKPiBPa2F5LCBzbyBJJ3ZlIGJlZW4g
dXNpbmcgYSB+Ly5iYXNoX3Byb2ZpbGUgZmlsZSB3aXRoIHRoZSBmb2xsb3dpbmcgY29udGVudHM6
Cj4KPiBybSAtZiB+Ly5iYXNoX2hpc3RvcnkKPiBleHBvcnQgUFMxPSckKHR0eSB8IHNlZCAncyNe
L2Rldi90dHkjIycpXCQnCj4gZXhwb3J0IFBBVEg9fi9Qcm9ncmFtbWluZy9iYXNoLXNjcmlwdHM6
JFBBVEgKPgo+IFRvIGNsZWFyIHRoZSBjb21tYW5kIGhpc3RvcnkgZnJvbSB0aGUgcHJldmlvdXMg
c2Vzc2lvbiwgY2hhbmdlIHRoZQo+IHByb21wdCB0byBzb21ldGhpbmcgZXh0cmVtZWx5IHNob3J0
IGluc3RlYWQgb2YgdGhlIGRlZmF1bHQgdXNlckBob3N0Cj4gL3BhdGgvdG8vd29ya2luZy9kaXJl
Y3RvcnksIGFuZCB0byBhZGQgdGhlIGRpcmVjdG9yeSB3aGVyZSBJIHN0b3JlIG15Cj4gYmFzaCBz
Y3JpcHRzIHRvIG15IHBhdGguCj4KPiBJdCB3b3JrcyB3aGVuIGxvZ2dpbmcgaW50byB0aGUgY29u
c29sZSwgYnV0IEkgcmVjZW50bHkgYm91Z2h0IGEgbmV3Cj4gZGVza3RvcCBhbmQgZGVjaWRlZCB0
byBnaXZlIHJ1bm5pbmcgYSBmdWxsIGRlc2t0b3AgYSBnbyBzaW5jZSBJJ20gbm8KPiBsb25nZXIg
cnVubmluZyBhIDEyLXllYXItb2xkIENQVSB3aXRoIDRHQiBvZiBSQU0sIGFuZCB3aGljaGV2ZXIK
PiB0ZXJtaW5hbCBlbXVsYXRvciBEZWJpYW4gTWF0ZSB1c2VzIGJ5IGRlZmF1bHQgaXMgY2xlYXJs
eSBpZ25vcmluZwo+IH4vLmJhc2hfcHJvZmlsZS4KPgo+IFNvIGlzIHRoZXJlIHNvbWV3aGVyZSBJ
IGNhbiBwdXQgdGhlIGFib3ZlIGxpbmVzIHNvIHRoZXknbGwgYmVzb3VyY2VkCj4gYm90aCB3aGVu
IGxvZ2dpbmcgaW50byBhIHRleHQtb25seSBjb25zb2xlIGFuZCB3aGVuIGxhdW5jaGluZyBhCj4g
dGVybWluYWwgZW11bGF0b3I/Cj4KPiBBbHNvLCBJIGhhdmUgc29tZSBzY3JpcHRzIHRvIGF1dG9t
YXRlIHNzaGluZyBpbnRvIHNvbWUgcmVtb3RlIGhvc3RzIG9yCj4gbW91bnRpbmcgdGhlIHJlbW90
ZSBmaWxlc3lzdGVtcyBsb2NhbGx5LCBhbmQgcGFydCBvZiBpdCBpbnZvbHZlcwo+IGNyZWF0aW5n
IGEgbW91bnR0dCBwb2ludCB0aGF0IG5lZWRzIHRvIGJlIGNob3duIHRvIG15IHVzZXIuIElzIHRo
ZXJlIGEKPiBzaGVsbCB2YXJpYWJsZSBJIGNhbiB1c2UgdG8gbWFrZSB0aGVzZSBzY3JpcHRzIHdv
cmsgZm9yIGFueSB1c2VyCj4gaW5zdGVhZCBvZiBuZWVkaW5nIHRvIGVkaXQgdGhlIHNjcmlwdCB0
byB1c2UgdGhlIG5hbWUgb2YgdGhlIHVzZXIgSSdtCj4gbG9nZ2VkIGluIGFzPwo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

