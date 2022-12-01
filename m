Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B078363F96F
	for <lists+blinux-list@lfdr.de>; Thu,  1 Dec 2022 21:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669927879;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ClemRKYMnakLlAhl39TC43yubh80Dpo2TmArVA4JKsc=;
	b=WPFCfeHpgEfSsII3PnLykUZOVxww48Qbu0+yH0mAWk5tnNyK08J1Icd2G1tv8iV17XSbjv
	dy6wjYzL05Gu76r3u0Wsnq1xClwtea6uSELkeyLCLQesY0YmKxQDi+4/FxKIzv7fNaWrhI
	tvydVchqt9kwD/AaV2vUZeE0W4KjuyQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-136-ic3OtWbqNF6WFbanbK9U2A-1; Thu, 01 Dec 2022 15:51:16 -0500
X-MC-Unique: ic3OtWbqNF6WFbanbK9U2A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 005E1800159;
	Thu,  1 Dec 2022 20:51:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 767061401C31;
	Thu,  1 Dec 2022 20:51:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DCD3C19465B8;
	Thu,  1 Dec 2022 20:51:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Can one run Fedra core on a VMware virtual machine?
Date: Thu, 1 Dec 2022 20:50:25 +0000
To: blinux-list@redhat.com
X-Spam-Status: No, score=-0.01
Message-ID: <mailman.3553.1669927861.6927.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U28gbXkgc3ViamVjdCAgbGluZSwgc2F5cyBpdCBhbGwuIEkgYW0gdHJ5aW5nIHRvIHJ1biBGZWRv
ciwgd29yayBzdGF0aW9uIDM3ICBvbiBhIE1hYyB1c2luZyBWbSBXYXJlIGZ1c2lvbiB2ZXJzaW9u
IDEzICB2aXJ0dWFsIG1hY2hpbmUuIFRoaXMgaXMgcnVubmluZyBvbiBhIEludGVsIGJhc2VkICBN
YWMgIHRoZSBvcGVyYXRpbmcgIGlzICBWTWFjIE9zVmVudHVyYXZlcnNpb24gMTMgb24gdGhlIG1h
Y09TIHZlcnNpb24gMTMuMDEuCgpJIGtub3cgdGhpcyBtYXkgYmUgdG9vIG11Y2ggZGV0YWlsIG9y
IHNvbWUgYnV0IHNvbWVvbmUgc2FpZCBub3QgZW5vdWdoLiBCdXQgdGhlIGJpZyBpc3N1ZSBpcyBz
dW5yaXNlIGRvd25sb2FkIHZpZGVvLCBzbyB3aGF0IGFyZSB5b3UgZHVtYiwgYW5kIHRoZW4gcnVu
IGEgbm9ybWFsIGluc3RhbGwuIElzIHRoZXJlIHNvbWV0aGluZyBJIGhhdmUgdG8gZG8gZGlmZmVy
ZW50bHk/IEZpbmFsbHksIHNob3VsZCBJIGp1c3QgYWJhbmRvbiBMaXN0IGRpc3RyYXVnaHQgYW5k
IHRyeWluZyBzb21ldGhpbmcgZWxzZS4gV2UgZGlkbuKAmXQgd2FudCB0byAgc3dpdGNoIHRvIHNv
bWV0aGluZyBlbHNlLiBwbGVhc2Ugbm90ZSwgdGhhdCBldmVyeXRoaW5nIGFib3ZlIHRoaXMgb25l
IGhhcyBiZWVuIGRpY3RhdGVkIHRvIG15IHBob25lLiBIb3BlZnVsbHkgeW914oCZbGwgYmUgYWJs
ZSB0byB1bmRlcnN0YW5kIGl0LCBtYWtlIHNlbnNlIG9mIGl0LiBJZiB0aGVyZSByZWFsbHkgaXMg
c29tZXRoaW5nIHlvdSBkb27igJl0IHVuZGVyc3RhbmQsIGFuZCBjYW7igJl0IGZpZ3VyZSBvdXQs
IHBsZWFzZSBhc2sgbWU/IFdoYXQgZGlkIEkgcmVhbGx5IG1lYW4/IFRoYW5rIHlvdSBpbiBhZHZh
bmNlIGZvciByZWFkaW5nIHRoaXM/IFRoYW5rIHlvdSBpbiBhZHZhbmNlIGZvciBhbnkgYXNzaXN0
YW5jZS4gWW91IG1heSBiZSB3aWxsaW5nIHRvIG9mZmVyPyAgCgpNYXVyaWNlIE1pbmVzLgpCb2Fy
ZCBtZW1iZXIgbmF0aW9uYWwgRmVkZXJhdGlvbiBvZiB0aGUgYmxpbmQsIGRlYWYsIGJsaW5kIGRp
dmlzaW9uLgpmaXJzdCwgdmljZSBwcmVzaWRlbnQsIG5hdGlvbmFsIEZlZGVyYXRpb24gb2YgdGhl
IEJsaW5kIG9mIENhbGlmb3JuaWEsIGRlYXRoIGJsaW5kIGRpdmlzaW9uLgpWaWNlIHByZXNpZGVu
dCBuYXRpb25hbCBGZWRlcmF0aW9uIG9mIHRoZSBCbGluZCBvZiBDYWxpZm9ybmlhIEJha2Vyc2Zp
ZWxkIGNoYXB0ZXIuCkRpcmVjdCB2b2ljZW1haWwgdG8gdGV4dCA2NjEtODY4LTk2NDcuCkFtYXRl
dXIgcmFkaW8gY2FsbHNpZ24sIGtkMGlrby4KUGxlYXNlIGJlIGF3YXJlIHRoYXQgd2hlbiBsZWF2
aW5nIG1lIGEgdm9pY2VtYWlsLCBJIGNhbm5vdCBoZWFyIHRyYWRpdGlvbmFsIHZvaWNlbWFpbC4g
VGhhdCBtZWFucyBwbGVhc2Ugc3BlYWsgY2xlYXJseSwgYW5kIHNsb3dseSwgc28gdGhhdCBpdCBj
YW4gdHJhbnNjcmliZSB3aGF0IHlvdeKAmXJlIHNheWluZyBwcm9wZXJseS4gUmVtZW1iZXIsIHBs
ZWFzZSBsZWF2ZSB5b3VyIG51bWJlciB0d2ljZSBpZiB5b3Ugd2lzaCBmb3IgbWUgdG8gY2FsbCB5
b3UgYmFjay4gSWYgeW91IGFyZSB0ZXh0aW5nLCBwbGVhc2UgcmVtZW1iZXIgdG8gcmVtaW5kIG1l
IG9mIHRoYXQgc28gdGhhdCBJIGNhbiB0ZXh0IHlvdSwgdGhhbmsgeW91IGZvciByZWFkaW5nIHRo
aXMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

