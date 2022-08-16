Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E9E59614F
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 19:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660671698;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BZmcV2qf8VWmyyOUkMsRqp6YAMrO5Xoo+mVNZabgI38=;
	b=IzCe0b5ZwiWCac9mQ0JkYp4yN8/U2e4Urr5oB5BFVb7kSpKpX3D5VYIiuZYhzN0aVBMN64
	pk56+soXbNSXOB+zvnM91CGhnRzGMbe2X0yrIxoSm/FttRA0zk9iG/ClBh+KKPMVh059Jr
	l4n7ZHqqAQHJdlNYvUJM5FunZHj4ILk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-EogVCRrVN1ycs5QGqa5HEw-1; Tue, 16 Aug 2022 13:41:35 -0400
X-MC-Unique: EogVCRrVN1ycs5QGqa5HEw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B53F0382ECC0;
	Tue, 16 Aug 2022 17:41:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9E9D32166B29;
	Tue, 16 Aug 2022 17:41:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 24DBA193F6E8;
	Tue, 16 Aug 2022 17:41:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 Aug 2022 18:41:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: Impossible to know sender info
To: blinux-list@redhat.com
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
 <mailman.770.1660603181.10501.blinux-list@redhat.com>
 <mailman.731.1660603954.10502.blinux-list@redhat.com>
 <mailman.750.1660608876.10499.blinux-list@redhat.com>
 <mailman.792.1660609999.10506.blinux-list@redhat.com>
 <mailman.848.1660651179.10499.blinux-list@redhat.com>
 <mailman.1113.1660659487.10506.blinux-list@redhat.com>
In-Reply-To: <mailman.1113.1660659487.10506.blinux-list@redhat.com>
Message-ID: <mailman.1216.1660671692.10502.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Tm9wZSwgcmVhZHMgYXMgdGlsZGVLeWxlwqAgaGVyZSB3aXRoIHRoZSBsYXRlc3QgdGhpbmdzIGlu
IEFyY2ggdGhvdWdoIHNvIApub3Qgc3VyZSB3aGF0IGhhcHBlbmVkIHdpdGggc29tZSBzZXR1cHMg
dG8KClRoYXQgYmVpbmcgc2FpZCwgSSBkbyBmZWVsIGxpa2UgcGVvcGxlIGhhdmUgZGlzdGluY3Qg
cG9zdGluZyBzdHlsZXMuIEkgCmFic29sdXRlbHkgaGF0ZSB0aGUgb3Zlcmx5IGZvcm1hbCBzdHls
ZSBzb21lIGJsaW5kIHBlb3BsZSBkbywgZS5nLgoKCkhlbGxvCgpUaGlzIGlzIG15IGV4YW1wbGUK
CgpZb3VycyBraW5kbHkKQmxpbmQgUGVyc29uCgpZb3UgYXJlbid0IHdyaXRpbmcgYSBsZXR0ZXIg
b2YgcmVjb21tZW5kYXRpb24sIHlvdSdyZSBub3QgYXBwbHlpbmcgZm9yIGEgCmpvYiBvciB3cml0
aW5nIHRvIHlvdXIgYmFuaywgbGFuZGxvcmQsIGV0Yy4gWW91J3JlIHJlcGx5aW5nIHRvIHNvbWUg
CnJhbmRvbSBKb2Ugb3IgSmFuZSBTY2htb2Ugb24gdGhlIGludGVyd2Vicywgb24gYSBtYWlsaW5n
IGxpc3QsIHdobyAKaXNuJ3QsIDk5LjglIG9mIHRoZSB0aW1lLCBzdXBlciBpbXBvcnRhbnQgb3Ig
d29ydGggZ2V0dGluZyBmb3JtYWwgb3Zlci4gCkp1c3QgbWFrZSB5b3VyIHBvaW50IGFuZCBzZW5k
IHRoZSBtZXNzYWdlIElNSE8KCgpPbiA4LzE2LzIyIDE1OjE3LCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEkndmUgYWx3YXlzIGp1c3Qgc2lnbmVkIG15IGZpcnN0
IG5hbWUgaW4gbW9zdCBwbGFjZXMuIEJ1dCBhcyBmYXIgYXMgSSAKPiBrbm93LCBJJ20gb25lIG9m
IG9ubHkgdHdvIEt5bGVzIHdobyB3b3VsZCBiZSBvbiB0aGlzIGxpc3QsIGFuZCBJIHRlbmQgCj4g
dG8gdXNlIHRoZSB0aWxkZSAofikgYXR0cmlidXRpb24gY2hhcmFjdGVyIGJlZm9yZSBteSBuYW1l
LCBzb21ldGhpbmcgSSAKPiBwaWNrZWQgdXAgeWVhcnMgYWdvIGZyb20gb25lIG9mIG15IHNvY2lh
bCBtZWRpYSBmcmllbmRzIHRoYXQganVzdCAKPiBraW5kYSBzdHVjay4gVW50aWwgcmVjZW50IGNo
YW5nZXMgdG8gc3BlZWNoLWRpc3BhdGNoZXIsIG15IHNpZ25hdHVyZSAKPiBhbHdheXMgc2FpZCAi
dGlsZGUgS3lsZSwiIGJ1dCB0aGF0IHNlZW1zIG5vIGxvbmdlciB0byB3b3JrIHNpbmNlIGEgZmV3
IAo+IG1vbnRocy4KPgo+IH5LeWxlCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

