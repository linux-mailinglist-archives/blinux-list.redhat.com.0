Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9A869FAC2
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 19:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677089290;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qRSoZgcuHn67XYQNnZqpHGNKadBmhittPiCYljMsTL4=;
	b=BCaqdlSSDlDD/wBrHcKkOgK+Ei7lI0rR4kj1ISIS/CTBFn2nxboT8dlrrnrDlWzOlw7Gsx
	sdn0QMOUczzHIsQUiF8DaWGP5mAbxVtesqh/pKIRuY+lXdG7ZawK6f+Lsy/iEufbhCWSqN
	pLdKgXyE24CJLly3uzvFDseuRZUHydY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-407-iHfgLPtgOcezNMlMrtOX0w-1; Wed, 22 Feb 2023 13:08:08 -0500
X-MC-Unique: iHfgLPtgOcezNMlMrtOX0w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C5A0101A521;
	Wed, 22 Feb 2023 18:08:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 95D69C15BA0;
	Wed, 22 Feb 2023 18:08:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3775C19465B1;
	Wed, 22 Feb 2023 18:08:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 18:57:17 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [DECtalk] Report of a successful use of dectalk with graphical
 Linux. (fwd)
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.887.1677042909.686535.blinux-list@redhat.com>
 <mailman.988.1677043847.686540.blinux-list@redhat.com>
 <mailman.1140.1677079370.686543.blinux-list@redhat.com>
 <mailman.1802.1677088197.686542.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1802.1677088197.686542.blinux-list@redhat.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Message-ID: <mailman.1775.1677089285.686538.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiwgbGUgbWVyLiAyMiBmw6l2ci4gMjAy
MyAxMjo0NDozNSAtMDUwMCwgYSBlY3JpdDoKPiBKb3NoIGp1c3QgcG9zdGVkIHRvIHRoZSBPcmNh
IGxpc3Qgc2F5aW5nIHRoYXQgaXQncyBvcGVuIHNvdXJjZSwKPiB3aGljaCBpcyB0ZWNobmljYWxs
eSBpbmNvcnJlY3QgdW50aWwgb3IgdW5sZXNzIHdlIGNhbiBnZXQgdGhlIHByb3Blcgo+IHBlcm1p
c3Npb24sIHN0YXRlZCBpbiB0aGUgTElDRU5TRSBmaWxlLCB0aGF0IGl0IGlzIGxlZ2FsIGZvciB1
cyB0bwo+IGJ1aWxkIHRoZSBzb3VyY2UgY29kZSBhbmQgdXNlIHRoZSBzb2Z0d2FyZS4KClRoZSBM
SUNFTkNFIGZpbGUgc2F5czoKClBvc3Nlc3Npb24sIHVzZSwgb3IgY29weWluZyBvZiB0aGlzIHNv
ZnR3YXJlIGFuZCBtZWRpYSBpcyBhdXRob3JpemVkCm9ubHkgcHVyc3VhbnQgdG8gYSB2YWxpZCB3
cml0dGVuIGxpY2Vuc2UgZnJvbSBGT05JWCBvciBhbiBhdXRob3JpemVkCnN1YmxpY2Vuc29yCgpT
byB5ZXMsIHlvdSBuZWVkIGFuIGFjdHVhbCBsaWNlbmNlIHRvIGJlIGFibGUgdG8gZG8gYW55dGhp
bmcgd2l0aCB0aGUKc29mdHdhcmUuCgpTYW11ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QK

