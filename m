Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D97336373FD
	for <lists+blinux-list@lfdr.de>; Thu, 24 Nov 2022 09:34:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669278844;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ucNlMe+46Gopmxb1qd42mCw5zkdmyaogVcyKiIgXKrI=;
	b=FIbcWSIpBIoMNnsltXNAflYR7L+maAJzdvLGnI3xriUcg1j4sY2tI76ympX4eB4WvpP11o
	ZfPP1FXf4GjXw+no2Z1cDirDz4yb03ThwcDzCWdceKLkgqe44BC5AgFn8d3RBeBlo1Kp4/
	2hp0e3l5P99V5LjS5KozhBFZIkPmQ5o=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-209-Hc2u1ryfPz68cDTNwjAqKg-1; Thu, 24 Nov 2022 03:34:01 -0500
X-MC-Unique: Hc2u1ryfPz68cDTNwjAqKg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BEF8833A20;
	Thu, 24 Nov 2022 08:33:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2AC11141511E;
	Thu, 24 Nov 2022 08:33:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A44051946595;
	Thu, 24 Nov 2022 08:33:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 23 Nov 2022 22:29:39 -1000
To: blinux-list@redhat.com
Subject: Re: How to hear sounds from line-in jack? (fwd)
References: <mailman.1365.1669212143.6934.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1365.1669212143.6934.blinux-list@redhat.com>
Message-ID: <mailman.1491.1669278837.6927.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLS0KPiBEYXRlOiBXZWQsIDIz
IE5vdiAyMDIyIDIxOjM2OjUzICswODAwIChDU1QpCj4gRnJvbTog6auY55Sf5pe6IDxjb3NjZWxs
QGdtYWlsLmNvbT4KPiBUbzogc2xpbnRAZnJlZWxpc3RzLm9yZwo+IFN1YmplY3Q6IEhvdyB0byBo
ZWFyIHNvdW5kcyBmcm9tIGxpbmUtaW4gamFjaz8KPiAKPiBTb3VuZHMgZnJvbSBsaW5lLWluIGNh
biBiZSByZWNvcmVkLCBidXQgaG93IHRvIGhlYXIgdGhlbSBpbiB0aW1lPwo+IFdoaWNoIGNvbnNv
bGUgY29tbWFuZCBjYW4gYmUgdXNlZCBmb3IgdGhpcyBwdXJwb3NlPwoKSGksIAoKTm90IGFsbCBz
b3VuZCBjYXJkcyBhcmUgY2FwYWJsZSBvZiBzaW11bHRhbmVvdXMKaW5wdXQgYW5kIG91dHB1dCAo
ZHVwbGV4IG9wZXJhdGlvbi4pCgpBbHNvLCBtb3N0IGRpc3RyaWJ1dGlvbnMgaGF2ZSBwdWxzZWF1
ZGlvIGluc3RhbGxlZAphcyBhIGxheWVyIG9mIG92ZXIgQUxTQS4gCgpPbmUgc29sdXRpb24gdXNp
bmcgQUxTQSAod2l0aCBQQSBkaXNhYmxlZCkgd291bGQgYmUKdXNpbmcgZWNhc291bmQuCgplY2Fz
b3VuZCAtaSBhbHNhLGRlZmF1bHQgLW8gYWxzYSxkZWZhdWx0CgpZb3UgY291bGQgYWxzbyB0cnkg
YWxzYWh3LDAgaW5zdGVhZCBvZgphbHNhLGRlZmF1bHQsIG9yIGFsc2FodywxLCBldGMuIGRlcGVu
ZGluZwpvbiB0aGUgbnVtYmVyIG9mIHlvdXIgc291bmQgY2FyZC4gWW91CmNhbiBhbHNvIHVzZSB0
aGUgbmFtZS4KCkZvciBkZXRhaWxzIHVzZSBgY2F0IC9wcm9jL2Fzb3VuZC9jYXJkc2AuCgpIYXZl
IGZ1biwKCkpvZWwKCgotLSAKSm9lbCBSb3RoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cg==

