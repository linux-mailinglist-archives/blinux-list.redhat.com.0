Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F35531522
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 18:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653325081;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4+ebysykOI4x2uAt7ooaiw9mOKKtmURRKZ3cqFUaeAU=;
	b=K2x7DnCs9HB9h4pBnkGkw5v0sq89qrTSc2emX1ME4y/a3AVwn77Mp/d4pyJ6/ptfYPri5h
	+xgzHe76mSSDgc5cSXK/prdtZhUyI53dp/IjgB3G6yBvvgFn4JVqeom/BH6gHVnDoXtAA/
	tkqd5RSHh61twVu8SJ8gDUlN+UGNChk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-609-rglux-4hM7u2zwb-GaM8fA-1; Mon, 23 May 2022 12:57:57 -0400
X-MC-Unique: rglux-4hM7u2zwb-GaM8fA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA50A80A0B5;
	Mon, 23 May 2022 16:57:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D2868492CA2;
	Mon, 23 May 2022 16:57:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 53B72194705F;
	Mon, 23 May 2022 16:57:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 May 2022 16:57:39 +0000
To: blinux-list@redhat.com
Subject: Re: I'm in crisis, help!!!
In-Reply-To: <mailman.17382.1653316520.111210.blinux-list@redhat.com>
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17727.1653315588.111206.blinux-list@redhat.com>
 <mailman.17535.1653315811.111208.blinux-list@redhat.com>
 <mailman.17382.1653316520.111210.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.17589.1653325072.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gZXZlcnlvbmUsCgpJIGp1c3Qgd2FudGVkIHRvIGFzaywgZGlkIGFueW9uZSBlbHNlIG5v
dGljZSBVYnVudHUgTWF0ZSAyMi4wNCBtZXNzaW5nCmF1ZGlvIGRldmljZXMgb24gc3RhcnR1cD8K
CgpJJ20ganVzdCBpbiBhIHRyYW5zaXQgcHJvY2Vzcywgd2hlcmUgSSBoYXZlIGluc3RhbGxlZCB0
aGUgbmV3IHN5c3RlbQppbnRvIGEgdmlydHVhbCBtYWNoaW5lIHRvIHNlZSB3aGV0aGVyIGl0J3Mg
b2theSwgc28gSSBjb3VsZCBpbnN0YWxsIGl0Cm9uIG15IGxhcHRvcCBhZnRlcndhcmRzLgoKCkkn
dmUgYmVlbiB1c2luZyB0aGUgVk0gZnJvbSB0aW1lIHRvIHRpbWUsIGFuZCBJIGRpZG4ndCBvYnNl
cnZlIGFueQphdWRpby1yZWxhdGVkIHByb2JsZW1zLgoKClRoYXQncyB3aHkgdGhpcyB0aHJlYWQg
c3VycHJpc2VkIG1lIGEgYml0LgoKCkFsc28sIHJlZ2FyZGluZyBHbm9tZSwgZG9lcyB0aGUgRmVk
b3JhIHZlcnNpb24gb2YgR25vbWUgd29yayBiZXR0ZXIgdGhhbgp0aGUgVWJ1bnR1LW9uZT8KCkkn
dmUgdHJpZWQgdGhlIG1haW4gdmVyc2lvbiBvZiBVYnVudHUgYXMgd2VsbCwganVzdCB0byBzZWUg
aG93IGl0J3MKZG9pbmcsIGFuZCBpdCB3ZXJlbid0IHVzYWJsZSBtdWNoLCBldmVuIGxlc3MgdGhh
biBpdCB1c2VkIHRvIGJlIGR1ZSB0bwp0aGUgcHJvYmxlbXMgd2l0aCB0aGUgY2Fwcy1sb2NrIGtl
eS4KCgpCZXN0IHJlZ2FyZHMKCgpSYXN0aXNsYXYKCgpExYhhIDIzLiA1LiAyMDIyIG8gMTY6MzUg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToKPiBCZSBWRVJZ
IGNhdXRpb3VzIGFib3V0IHdoYXQgeW91IHB1dCBpbiB0aGUgcmVzdG9yYXRpb24gc2NyaXB0LCBl
c3BlY2lhbGx5IGlmIGl0IGlzIHJ1biBhcyBhIHN0YXJ0dXAgc2NyaXB0LiAgSW4gcGFydGljdWxh
ciwgeW91IGRvbid0IHdhbnQgaXQgdG8gdHJhc2ggYW4gYWxyZWFkeSB3b3JraW5nIGNvbmZpZ3Vy
YXRpb24uCj4KPiAtcgo+Cj4+IE9uIE1heSAyMywgMjAyMiwgYXQgMDc6MjMsIEthcmwgV2lsYnVy
IHdyb3RlOgo+Pgo+PiAuLi4gWW91IGNhbiBhbHNvIGhvb2sgeW91ciBjdXN0b20gc2NyaXB0IGlu
dG8gc3RhcnR1cCBzbyB0aGF0IGl0IHJ1bnMKPj4gYXMgc29vbiBhcyBwb3NzaWJsZSB3aGVuIHRo
ZSBtYWNoaW5lIGlzIHJlYWR5IGZvciBpdC4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

