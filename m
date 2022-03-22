Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF104E3755
	for <lists+blinux-list@lfdr.de>; Tue, 22 Mar 2022 04:17:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647919036;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C7TsQLmmDivlNDOR52sMt8LXmgdzldCrEtcFl/9s3Fk=;
	b=YItjxCkfWcABnNO0a51V5tU0HOw9uYHJOfzVrZnjNq6DPoJYBq+tmdplMmbyyTW43Uw1rO
	woZrX53h8oEX9oXo5ZXerUwJ41KupTweM6phMcDKzC8OeA+pi/Op+HifWrQUWPZO1fkQtx
	YU86tPZoqs6mrTKXDAXQpgCRXbmul9o=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-625-GqVqGc7HO0WljDGSvnio1w-1; Mon, 21 Mar 2022 23:17:13 -0400
X-MC-Unique: GqVqGc7HO0WljDGSvnio1w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80A19185A79C;
	Tue, 22 Mar 2022 03:17:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E682A2026D07;
	Tue, 22 Mar 2022 03:17:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1BEC11940345;
	Tue, 22 Mar 2022 03:17:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 22 Mar 2022 10:16:40 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Crypted LVM and beep tones
To: blinux-list@redhat.com
References: <mailman.1528.1647024450.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.1528.1647024450.111210.blinux-list@redhat.com>
Message-ID: <mailman.3404.1647919023.111208.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSSBoYXZlIHRoZSBzYW1lIHByb2JsZW0uIE9uZSBzb2x1dGlvbiB0aGF0IEkgZm91bmQg
aXMgdG8gdXNlIGNsZXZpcyBpbiAKY29uanVuY3Rpb24gd2l0aCBkcmFjdXQgKGh0dHBzOi8vZ2l0
aHViLmNvbS9sYXRjaHNldC9jbGV2aXMpCgoKUmVxdWlyZW1lbnRzOgoKLSBMYXB0b3Agd2l0aCBU
UE0gMi4wCgpSZWRIYXQgYmFzZWQgZGlzdHJvCgoKVGhpcyBhbGxvdyBtZSB0byBieXBhc3MgaW5p
dGlhbCBHUlVCIHBhc3N3b3JkIGFuZCBnb2VzIHN0cmFpZ2h0IHRvIGxvZ2luIApzY3JlZW4gKHdo
aWNoIGhhcyBvcmNhIHJ1bm5pbmcpCgoKQ29uczoKCi0gV29ya3Mgb24gUmVkSGF0IGJhc2VkIGRp
c3Ryby4gSGF2ZSBub3QgdHJpZWQgdGhpcyBvbiBBcmNoIG9yIFNsaW50LiBBIApidWcgaW4gZGVi
aWFuIHByZXZlbnQgY2xldmlzIGZyb20gd29ya2luZyBwcm9wZXJseS4KCi0gV29ya3Mgb24gbmV3
IGxhcHRvcCAobGF0ZXIgdGhhbiAyMDE3KSB3aGljaCB1c3VhbGx5IGhhdmUgVFBNIDIuMAoKCkh0
SAoKT24gMy8xMi8yMiAwMTozOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBIaSwKPgo+IEkgaGF2ZSB0byBjcnlwdCBteSBoYXJkZGlzayBmb3IgbXkgd29ya2lu
ZyBsYXB0b3AuIEFsbHRob3VnaCBpdCBpcyBubyAKPiBiaWcgcHJvYmxlbSB0byBlbnRlciB0aGUg
ZW5jcnlwdGlvbiBwYXNzd29yZCBzb21lIHNlY29uZHMgYWZ0ZXIgZ3J1YiBJIAo+IHdvbmRlciBp
ZiBhIGFjdXN0aWNhbCBzaWduYWwgY291bGQgYmUgcGxheWVkIHRoYXQgdGVsbHMgbWUgdGhhdCB0
aGUgCj4gcGFzc3dvcmQgcHJvbXB0IGlzIGRpc3BsYXllZC4gQWxzbyBhIHNpZ25hbCBhYm91dCBz
dWNjZXNzZnVsbHkgZW50ZXJlZCAKPiB0aGUgcGFzc3dvcmQgb3Igbm90IHdvdWxkIGJlIHJlYWxs
eSBjb29sLgo+Cj4gRG9lcyBhbnlvbmUga25vdyBpZiBhY3VzdGljYWwgc2lnbmFscyBhcmUgcG9z
c2libGUgZm9yIHRoZSBkZXNjcmliZWQgCj4gc2l0dWF0aW9uPyBCZWVwIHRvbmVzIGxpa2UgZm9y
IGdydWIgd291bGQgYmUgYWJzb2x1dGVseSBlbm91Z2guCj4KPiBDaGVlcnMsCj4KPiDCoCBTY2hv
ZXBwCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KLS0g
CkVkaG9hcmkgU2V0aXlvc28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

