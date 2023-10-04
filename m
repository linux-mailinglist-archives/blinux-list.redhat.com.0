Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4ED7B7E0C
	for <lists+blinux-list@lfdr.de>; Wed,  4 Oct 2023 13:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696418334;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ViDRP3i/WczhX7ogy/vLXZtcj7uI1UFfc8f2sy3aWt8=;
	b=g0h3HEBPsyrunrKlAunEEVlb44hoEZl38myd8gvImHokFqxpyEPiwDqUdP5u9gl43mFyqf
	HaYBjplxV3THqbRKoAc5Bb9TbZRA90l1Zc8TNVnGeppLi39KyJzwomjBJcqYG3yOPQ1oLL
	oPs095Uewjaa5XdASCzuqSlt2PNVVWU=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-586-OzqfEB_jOA2vebo_qHJwig-1; Wed, 04 Oct 2023 07:18:51 -0400
X-MC-Unique: OzqfEB_jOA2vebo_qHJwig-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8AA6528237CD;
	Wed,  4 Oct 2023 11:18:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DB20B493113;
	Wed,  4 Oct 2023 11:18:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2BDFB19465A3;
	Wed,  4 Oct 2023 11:18:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Intro.
Date: Wed, 4 Oct 2023 12:18:35 +0100
Importance: normal
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZ3V5cywgc28gZ2xhZCB0byBiZSBqb2luaW5nIHRoaXMgZ3JvdXAuIEkga25vdyBub3RoaW5n
IGFib3V0IExpbnV4IHBsYXRmb3JtIGJ1dCB3b3VsZCBsaWtlIHRvIHRyeSBMaW51eCBmb3IgbXlz
ZWxmLiBUaGUgcHJvYmxlbSBpcyBJIHdvdWxkbuKAmXQga25vdyB3aGljaCB2ZXJzaW9uIHRvIHRy
eSBvdXQgZmlyc3QgYW5kIHRoYXQgaXMgb25lIHJlYXNvbiBmb3Igam9pbmluZyB0aGlzIGdyb3Vw
LiBJIGFtIGEgYmxpbmQgcGVuc2lvbmVyIGxpdmluZyBpbiBTY290bGFuZCBVSy4gSUYgeW91IGNv
dWxkIHByb3ZpZGUgbWUgd2l0aCBoZWxwL2FkdmljZSBvbiB3aGljaCB2ZXJzaW9uIG9mIExpbnV4
IHdvdWxkIGJlIGJlc3QgZm9yIG1lIEkgd291bGQgYXBwcmVjaWF0ZSBpdCBpbmRlZWQsIEJpbGx5
ICAKClNlbnQgZnJvbSBNYWlsIGZvciBXaW5kb3dzCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cg==

