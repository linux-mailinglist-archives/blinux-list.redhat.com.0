Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CDA5846B6
	for <lists+blinux-list@lfdr.de>; Thu, 28 Jul 2022 22:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659038509;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1yTMzIh2jR6T/Iycg4AymFpo9r5pUM0jwdUZ29kuz8M=;
	b=CRXjEx6xZaqnAWaOYcSvbxuSX5QKJY6sfL9jqsQityJyyVEJLQqN5pCxv+kr5qmBJTmgG1
	+wTuYA0+jXlfkcEWd+NOKA6zNE14kE01mkmJhN1tq6VWDNc/meMn7sEPp4pB2mgJgV3y28
	kbFQ8zxXjQQmXgPNA+pZW2kG9fCvV8A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-328-78gnodFKMBmLWUa90VyHqQ-1; Thu, 28 Jul 2022 16:01:46 -0400
X-MC-Unique: 78gnodFKMBmLWUa90VyHqQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0791A857CEA;
	Thu, 28 Jul 2022 20:01:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1B0172026D64;
	Thu, 28 Jul 2022 20:01:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3AC711945DAE;
	Thu, 28 Jul 2022 20:01:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 28 Jul 2022 19:53:50 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: What is the current state of LIOS?
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.38252.1659038495.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gbGlzdCwKCnRvZGF5LCBJIGZpbmFsbHkgZGVjaWRlZCB0byBnZXQgbXkgc2Nhbm5lciB3
b3JraW5nLCBhbmQgdGh1cywgdHJ5IG91dApMSU9TIGFzIHdlbGwuCgoKVW5mb3J0dW5hdGVseSwg
dGhpcyB0dXJuZWQgb3V0IHRvIGJlIGEgbGl0dGxlIG1vcmUgdHJvdWJsZXNvbWUgb25lIHdvdWxk
CmV4cGVjdC4KCgpGaXJzdCBvZiBhbGwsIExJT1Mgd2FzIHVuYWJsZSB0byBwYXJzZSB0aGUgaW5m
b3JtYXRpb24gb2YgbXkgbmV0d29yawpzY2FubmVyLCB0aGVyZSBhbHJlYWR5IHNlZW1zIHRvIGJl
IGFuIGlzc3VlIGFib3V0IHRoaXMgb24gdGhlIHByb2plY3QncwpHaXRIdWIsIGlmIHRoZSBjYXVz
ZXMgYXJlIGlkZW50aWNhbC4KCgpUaGlzIGRpZG4ndCByZWFsbHkgc3VycHJpc2UgbWUsIHRoZXJl
IGFyZSBtYW55IHNjYW5uZXJzIGFuZCBJJ20gbm90IHN1cmUKaG93IHByZWNpc2VseSBhcmUgdGhl
eSBmb2xsb3dpbmcgdGhlIHN0YW5kYXJkcywgc28gb2theSwgSSBkaXZlZCBpbnRvCnRoZSBjb2Rl
IGFuZCBmaXhlZCBkdGhlIHBhcnNpbmcgb24gdGhlIHBsYWNlIHdoZXJlIGl0IGJyb2tlLgoKCkJ1
dCB0aGUgb3RoZXIgaXNzdWVzIEkgZm91bmQgd2VyZSBmYXIgbW9yZSBzdHVubmluZy4KCgpGaXJz
dCBvZiBhbGwsIHRoZSB1cGRhdGUgc2Nhbm5lcnMgbGlzdCBmdW5jdGlvbiBkb2Vzbid0IGhhdmUg
c2NvcGVkCnRyeS9leGNlcHQgYmxvY2tzLCBidXQgcmF0aGVyIG9uZSBiaWcsIHRoYXQgYmFzaWNh
bGx5IGNvdmVycyBhbGwgdGhlCmZ1bmN0aW9uJ3MgY29kZS4KCgpXaGF0IHRoaXMgbWVhbnMgaW4g
cHJhY3RpY2UgaXMsIHRoYXQgaWYgTElPUyBmYWlscyB0byBvcGVuIGEgc2Nhbm5lcgoobGlrZSBp
dCBkaWQgd2l0aCBtaW5lKSwgaW5zdGVhZCBvZiBwcm9jZWVkaW5nIHRvIG90aGVycywgdGhlIGZ1
bmN0aW9uCnNpbXBseSBhYm9ydHMgYW5kIHRoYXQncyB0aGF0LgoKCk15IHNjYW5uZXIgaXMgcmVw
cmVzZW50ZWQgYnkgYXBwcm94LiAzIG9yIDQgZGV2aWNlcywgSSBnZXQgb25lIGluIHRoZQpsaXN0
LCBzaW5jZSB0aGUgb3BlbmluZyBvZiB0aGUgc2Vjb25kLW9uZSBjcmFzaGVzIGFuZCB0aGUgb3Ro
ZXJzIGFyZQp0aHVzIG5vdCBsb2FkZWQuCgoKSSdtIG5vdCBzdXJlIHdoZXRoZXIgdGhlcmUgaXMg
YW55IGRpZmZlcmVuY2UgYmV0d2VlbiB0aGVtIGluIHRoaXMKcGFydGljdWxhciBzY2VuYXJpbywg
YnV0IGlmIHRoZWlyIG9yZGVyIHdhcyBlaXRoZXIgZGlmZmVyZW50IG9yIEkgaGFkCm11bHRpcGxl
IGNvbm5lY3RlZCBzY2FubmVycywgdGhlIGRldmljZXMgZXZhbHVhdGVkIGFmdGVyIHRoZQpwcm9i
bGVtYXRpYy1vbmUgd291bGQgYmUgc2ltcGx5IHVucmVhY2hhYmxlLgoKCkFuZCB0aGVyZSBpcyBh
bm90aGVyIGlzc3VlLCB0aGF0J3MgdG90YWxseSBjcnlwdGljIHRvIG1lLgoKCldoZW4gSSBjaG9v
c2UgdG8gc2NhbiBhbiBpbWFnZSB3aXRoIHRoZSBzY2FubmVycyBhbHJlYWR5IGxvYWRlZCwgaW5z
dGVhZApvZiBzaW1wbHkgdXNpbmcgdGhlIHNlbGVjdGVkLW9uZSwgTElPUyB1cGRhdGVzIHRoZSBs
aXN0IGZpcnN0ICh3aGF0CnRha2VzIHF1aXRlIGEgc29tZSB0aW1lKSwgYW5kIGp1c3QgYWZ0ZXJ3
YXJkcyBtYWtlcyB0aGUgc2Nhbi4KCgpUaGF0J3MganVzdCBvYnZpb3VzbHkgd3JvbmcsIHNvIEkg
Y2hlY2tlZCB0aGUgY29kZSBhZ2FpbiwgYW5kIHRoaXMgaXMKd2hhdCBJIGZvdW5kIGluIHRoZSBz
Y2FuIG1ldGhvZHM6CgoKIMKgwqAgwqDCoMKgwqAgaWYobm90IHNlbGYuaXNfdXBkYXRpbmdfc2Nh
bm5lcl9saXN0IG9yCmxlbihzZWxmLnNjYW5uZXJfb2JqZWN0cykgPT0gMCk6CiDCoMKgIMKgwqDC
oMKgIMKgwqDCoCBzZWxmLnVwZGF0ZV9zY2FubmVyX2xpc3QoKTsKClRyYW5zbGF0ZWQgdG8gZW5n
bGlzaCwgdGhpcyBzYXlzOiBpZiB0aGUgc2Nhbm5lciBsaXN0IGlzIG5vdCBiZWluZwp1cGRhdGVk
IG9yIHRoZXJlIGFyZSBubyBzY2FubmVycywgdXBkYXRlIHRoZSBsaXN0LgoKClRoaXMga2luZCBv
ZiBzaG9ja2VkIG1lLiBZb3UgZG9uJ3QgZXZlbiBuZWVkIHRvIGJlIGEgcHJvZ3JhbW1lciB0byBr
bm93Cml0J3Mgd3JvbmcsIHRoZSBjb3JyZWN0IGZvcm11bGF0aW9uIHdvdWxkIGJlOiBpZiB0aGUg
bGlzdCBvZiBzY2FubmVycyBpcwpub3QgYmVpbmcgdXBkYXRlZCBhbmQgdGhlcmUgYXJlIG5vIHNj
YW5uZXJzLCB1cGRhdGUgdGhlIGxpc3QuCgoKaS5lLiB5b3UgbmVlZCB0byBjaGFuZ2Ugb25lIHdv
cmQuIEEgdHJpdmlhbCwgZWxlbWVudGFyIG1pc3Rha2UuCgpJJ20gbm90IHN1cmUgd2hvIGRpZCBp
dCwgSSBraW5kIG9mIGNhbid0IGJlbGlldmUgc29tZW9uZSB3aG8gY29kZWQgYQpwcm9ncmFtIG9m
IHRoaXMgY29tcGxleGl0eSB3b3VsZCwgcGVyaGFwcyBpdCBjYW1lIHdpdGggYSBQUi4KCgpXaGF0
IGJvdGhlcnMgbWUgbW9yZSBpcyB3aHkgZGlkbid0IGl0IGdldCBmaXhlZCwgaXQncyBub3Qgc29t
ZXRoaW5nCnlvdSdyZSBnb2luZyB0byBvdmVybG9vayBhcyBzY2FubmluZyBpcyB0aGUgbWFpbiBm
dW5jdGlvbiBvZiB0aGUKcHJvZ3JhbSwgYW5kIGRzaW5jZSBpdCdzIHNvIGVhc3kgdG8gZml4LCBJ
IHdvdWxkIGV4cGVjdCBpdCB0byBiZSBhbHJlYWR5CnJlcGFpcmVkLgoKClNvLCB0aGUgcXVlc3Rp
b24gaXMsIGRvZXMgYW55b25lIGhhdmUgYW55IGluZm9ybWF0aW9uIG9uIHdoYXQncyB0aGUKY3Vy
cmVudCBzdGF0dXMgb2YgdGhlIGRldmVsb3BtZW50PwoKCklzIGl0IHN0aWxsIGFjdGl2ZSwgYXJl
IFBScyBhY2NlcHRlZCBvciwgZGlkZCBhbnlvbmUgY3JlYXRlIGEgZm9yayBpZiBub3Q/CgoKVGhh
bmtzIQoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cg==

