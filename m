Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 176E3687085
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 22:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675287584;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0SMZR3sTlUvrlC6pvSKlPLG1r6Y9P4I4CmhlWN+plws=;
	b=FgRAU9eteiZINrnErfL9RdTGWSqhq3/t3P8A/HED1MV5vay7PxwU3YSoJm4+UwWj4CBq76
	FGG3umo/THj6kzPvv9Em23t4wRLnhoiDJY7AP04Pm6AF7MEcat5lhByhjYks1SdxBBaoEw
	yf6nUFMWnGssERvZ3afbOY0I4zyDbN8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-515-ROqm0MKFNSaW2vJscYlKyA-1; Wed, 01 Feb 2023 16:39:40 -0500
X-MC-Unique: ROqm0MKFNSaW2vJscYlKyA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B65933C0D186;
	Wed,  1 Feb 2023 21:39:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 02EA9C15BA0;
	Wed,  1 Feb 2023 21:39:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7668E19465B7;
	Wed,  1 Feb 2023 21:39:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 22:39:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Jenux repo unavailable
To: blinux-list@redhat.com
References: <mailman.3810.1675256533.8169.blinux-list@redhat.com>
In-Reply-To: <mailman.3810.1675256533.8169.blinux-list@redhat.com>
Message-ID: <mailman.3624.1675287576.8173.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CldlbGwsIGF0IHRpbWUgb2Ygd3JpdGluZyB0aGUgcmVwb3NpdG9yeSBpcyBhdmFpbGFibGUuCkRh
bmllbCdzIHdlYnNpdGU6IGh0dHBzOi8vbmFzaGNlbnRyYWwuZHVja2Rucy5vcmcvCldlYiBwYWdl
IGZvciBhbGwgaGlzIGFjY2Vzc2liaWxpdHkgcHJvamVjdHM6Cmh0dHBzOi8vbmFzaGNlbnRyYWwu
ZHVja2Rucy5vcmcvcHJvamVjdHMuaHRtbApUaGUgbGluayB0byB0aGUgSVNPIGlzIGluIHRoaXMg
cGFnZToKaHR0cHM6Ly9uYXNoY2VudHJhbC5kdWNrZG5zLm9yZy9wcm9qZWN0cwpEaXJlY3RzIGxp
bmtzOgpJU086IGh0dHBzOi8vbmFzaGNlbnRyYWwuZHVja2Rucy5vcmcvcHJvamVjdHMvSmVudXgt
MjAyMy4wMS4xNy1kdWFsLmlzbwpTSEE1MTIgY2hlY2tzdW06Cmh0dHBzOi8vbmFzaGNlbnRyYWwu
ZHVja2Rucy5vcmcvcHJvamVjdHMvSmVudXgtMjAyMy4wMS4xNy1kdWFsLmlzby5zaGE1MTIKCkNo
ZWVycywKRGlkaWVyCi0tIApEaWRpZXIgU3BhaWVyCmRpZGllcmF0c2xpbnRkb3RmcgoKTGUgMDEv
MDIvMjAyMyDDoCAxNDowMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdMKgOgo+IEhpLAo+IAo+IFRoaXMgaXMganVzdCBhIHF1aWNrIGFubm91bmNlbWVudCBmb3Ig
YWxsIHRob3NlIHVzaW5nL3Rlc3RpbmcgSmVudXguCj4gCj4gQ3VycmVudGx5LCBpdCBhcHBlYXJz
IGFzIHRob3VnaCB0aGUgcmVwbyBpcyB1bmF2YWlsYWJsZS4KPiAKPiBBIGZyaWVuZCB0aGlzIG1v
cm5pZ24gdG9sZCBtZSB0aGV5IHdlcmUgaGF2aW5nIGlzc3VlcyB1cGRhdGluZyB0aGVpciBtYWNo
aW5lCj4gcnVubmluZyBKZW51eC4gVXBvbiB0YWtpbmcgYSBsb29rLCBJIGZvdW5kIHRoYXQgdGhl
IGlzc3VlIHdhcyBjYXVzZWQgYnkgamVudXguZGIKPiBmYWlsaW5nIHRvIGRvd25sb2FkIHdoZW4g
cmV0cmlldmVkIHdpdGggcGFjbWFuIC1TeXUuCj4gCj4gSSdtIHVuc3VyZSB3aGVyZSB0byBjb250
YWN0IHRoZSBtYWludGFpbmVyIHRvIGluZm9ybSB0aGVtIG9mIHRoaXMgcHJvYmxlbQo+IGhvd2V2
ZXIsIHNvIGFsbCBJIGNhbiBkbyBmb3IgdGhlIG1vbWVudCBpcyByZW1vdmUgdGhlIEplbnV4IHJl
cG8uCj4gCj4gVGhpcyBsZWF2ZXMgYSBsb3Qgb2YgcGFja2FnZXMgbmV3ZXIgdGhhbiB3aGF0IGFy
ZSBhdmFpbGFibGUgaW4gdGhlIGNvbW11bml0eQo+IHJlcG8sIGFuZCBldmVuIGluIHNvbWUgY2Fz
ZXMgbmV3ZXIgdGhhbiBpbiB0aGUgQVVSLgo+IAo+IEF0IGFueSByYXRlLCBJIGhvcGUgdGhpcyBo
ZWxwcyBzb21lb25lIHdobyBtaWdodCBoYXZlIGJlZW4gY29uZnVzZWQgYXMgdG8gd2h5Cj4gdGhl
aXIgc3lzdGVtIHdhcyBub3Qgd29ya2luZyBjb3JyZWN0bHkgd2hlbiBwZXJmb3JtaW5nIGFuIHVw
Z3JhZGUuIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

