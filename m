Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C277B82CE
	for <lists+blinux-list@lfdr.de>; Wed,  4 Oct 2023 16:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696431362;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mlNynrFtvNHRg6ZjFwOdcjRxjJ6p7i1rn5eISG4/8zA=;
	b=ORpDAZuYF9PlzDW0dLTrhSchhI8plJb30uG1Ju2D3YczLhTT00XOdJCBfUcR5Vvh7CbWuy
	nCilEEW1z/U/Ruzh3nZwu+QizxDLTJjU+E2ebjS42mO+fZ25Xl3PPPB7lffKk8S0Ozu/er
	gfYvp/QF/EQ16Bhj4+oEmK6Ppw1zW1M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-255-aVqJCPK-NKaxQWbkZaQnfg-1; Wed, 04 Oct 2023 10:55:56 -0400
X-MC-Unique: aVqJCPK-NKaxQWbkZaQnfg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C2BCF811E86;
	Wed,  4 Oct 2023 14:55:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7E1DE40C6EC0;
	Wed,  4 Oct 2023 14:55:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AD92919465A8;
	Wed,  4 Oct 2023 14:55:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.4\))
Subject: Re: Intro.
Date: Wed, 4 Oct 2023 10:45:48 -0400
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
Message-ID: <mailman.1265.1696431350.2981444.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkuCkNoZWNrIG91dCBMaW51eCBNaW50IE1hdGUKaHR0cHM6Ly9saW51eG1pbnQuY29tCgoKPiBP
biBPY3QgNCwgMjAyMywgYXQgNzoxOCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gSGkgZ3V5cywgc28gZ2xh
ZCB0byBiZSBqb2luaW5nIHRoaXMgZ3JvdXAuIEkga25vdyBub3RoaW5nIGFib3V0IExpbnV4IHBs
YXRmb3JtIGJ1dCB3b3VsZCBsaWtlIHRvIHRyeSBMaW51eCBmb3IgbXlzZWxmLiBUaGUgcHJvYmxl
bSBpcyBJIHdvdWxkbuKAmXQga25vdyB3aGljaCB2ZXJzaW9uIHRvIHRyeSBvdXQgZmlyc3QgYW5k
IHRoYXQgaXMgb25lIHJlYXNvbiBmb3Igam9pbmluZyB0aGlzIGdyb3VwLiBJIGFtIGEgYmxpbmQg
cGVuc2lvbmVyIGxpdmluZyBpbiBTY290bGFuZCBVSy4gSUYgeW91IGNvdWxkIHByb3ZpZGUgbWUg
d2l0aCBoZWxwL2FkdmljZSBvbiB3aGljaCB2ZXJzaW9uIG9mIExpbnV4IHdvdWxkIGJlIGJlc3Qg
Zm9yIG1lIEkgd291bGQgYXBwcmVjaWF0ZSBpdCBpbmRlZWQsIEJpbGx5ICAKPiAKPiBTZW50IGZy
b20gTWFpbCBmb3IgV2luZG93cwo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

