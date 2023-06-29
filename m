Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A6174270A
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jun 2023 15:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688044306;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qE1p6AVsCRp0/94SKnEFwxLLi3mR+p7V3dkb0I35pBw=;
	b=enz1V4zKtRzg2dy4FHvyWoJFKZXLOJ9atxocHdFDL5m9RXzeytV+TOUP6DhN1b5lKibFWf
	Jebpl7WL9cBxZKLlUUYV8f6w2vC30WlvvAgotMG8f3l0msGI2I48q9xymPchw2rsQDsDux
	pWZgfR1is8XiP6X7Wpv2cDVvJYBKbM8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-359-UVcyyfaOO4WOqssautxPTA-1; Thu, 29 Jun 2023 09:11:43 -0400
X-MC-Unique: UVcyyfaOO4WOqssautxPTA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13BAE1C0A5A7;
	Thu, 29 Jun 2023 13:11:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8320E1121314;
	Thu, 29 Jun 2023 13:11:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 89A3A1946A66;
	Thu, 29 Jun 2023 13:11:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.1068.1687974160.3098368.blinux-list@redhat.com>
 <mailman.1101.1687976238.3098364.blinux-list@redhat.com>
 <mailman.964.1687976680.3098361.blinux-list@redhat.com>
 <mailman.962.1688008087.3098369.blinux-list@redhat.com>
 <mailman.1064.1688028412.3098363.blinux-list@redhat.com>
In-Reply-To: <mailman.1064.1688028412.3098363.blinux-list@redhat.com>
Date: Thu, 29 Jun 2023 06:11:14 -0700
Subject: Re: The Weirdness Just Keeps on Coming (was Can I run a .bat file
 from basica
To: blinux-list@redhat.com
Message-ID: <mailman.1333.1688044290.3098370.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKdW4gMjksIDIwMjMgYXQgMTo0N+KAr0FNIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24KPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gSGksCj4gYmFz
aWNhIHdhcyBvbiB0aGUgaWJtIGFuZCBzYXQgbW9zdGx5IGluIHJvbS4KPiBJZiB5b3UgY2FuIGZp
bmQgZ3diYXNpYy5leGUgc29tZXdoZXJlIGl0bWlnaHQgc29sdmUgeW91ciBwcm9ibGVtLgoKPGh0
dHA6Ly9ndy1iYXNpYy5jb20vRG93bmxvYWQuaHRtbD4KLS0gCltOb3RpY2Ugbm90IGluY2x1ZGVk
IGluIHRoZSBhYm92ZSBvcmlnaW5hbCBtZXNzYWdlOiAgVGhlIFUuUy4gTmF0aW9uYWwKU2VjdXJp
dHkgQWdlbmN5IG5laXRoZXIgY29uZmlybXMgbm9yIGRlbmllcyB0aGF0IGl0IGludGVyY2VwdGVk
IHRoaXMKbWVzc2FnZS5dCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIMKvXF8o44OEKV8vwq8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QK

