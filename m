Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8853A4AA2AC
	for <lists+blinux-list@lfdr.de>; Fri,  4 Feb 2022 22:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644011877;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EU3fYopJQ/m4DluEJWZvfwfguYSIG4KLZ/hhzy6uMuc=;
	b=ICKxdu31fT+hkjYDs7udCkxoz9jGRC9RyI0u9t4k5jFuLKDRDINs97w1qlD5SLKifDYh0B
	bdekPYENUm/DwWhzkR59idAEmZ4c2XmCmGoTvJAgLTAm3/G4DLEMVeBQillumCmYjb2DMj
	hdoNL0tVd+6pUvtLHdiJhp7jB3tf/Cg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-7L0VP07FNRqq5VEJrV4e1w-1; Fri, 04 Feb 2022 16:57:54 -0500
X-MC-Unique: 7L0VP07FNRqq5VEJrV4e1w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6DB8B1019984;
	Fri,  4 Feb 2022 21:57:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71D4D5ED32;
	Fri,  4 Feb 2022 21:57:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 474E74BB7B;
	Fri,  4 Feb 2022 21:57:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 214Lvda7016481 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Feb 2022 16:57:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 90560200AD4E; Fri,  4 Feb 2022 21:57:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A8992026D6B
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 21:57:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D7B37811E78
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 21:57:29 +0000 (UTC)
Received: from smtprelay03.ispgateway.de (smtprelay03.ispgateway.de
	[80.67.18.15]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-53-FdQ5cZxlM7C1KZMM4otSrg-1; Fri, 04 Feb 2022 16:57:28 -0500
X-MC-Unique: FdQ5cZxlM7C1KZMM4otSrg-1
Received: from [37.4.229.93] (helo=smtpclient.apple)
	by smtprelay03.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1nG6a6-0006Ck-An
	for blinux-list@redhat.com; Fri, 04 Feb 2022 22:57:26 +0100
Mime-Version: 1.0 (1.0)
Subject: Re: Help with YT-DLP
Date: Fri, 4 Feb 2022 22:57:22 +0100
Message-Id: <87F1D5DF-B674-4C23-8D16-FA6F8E345415@linux-a11y.org>
References: <d3189fce-4aee-cb12-9498-2e19f7692ae0@icloud.com>
In-Reply-To: <d3189fce-4aee-cb12-9498-2e19f7692ae0@icloud.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 214Lvda7016481
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHkgUm9iLAoKV2VsbCB0aGVyZSBpcyBhbiBvcGVuIHNpbmdsZSB0aWNrIGJ1dCBtaXNzaW5n
IHRoZSBjbG9zaW5nIG9uZSBpbiAtbyBwYXJhbWV0ZXIuIFNvIHRoZSBzdHJpbmcgaXMgbm90IHRl
cm1pbmF0ZWQuCgpDaGVlcnMgY2hyeXMKCj4gQW0gMDQuMDIuMjAyMiB1bSAyMjo0MCBzY2hyaWVi
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+Ogo+IAo+IO+7v0hpLAo+IAo+IEkgYW0gdHJ5aW5nIHRvIHVzZSB5dC1kbHAgdG8gY29udmVy
dCBZb3VUdWJlIHZpZGVvIHRvIG1wMy4KPiAKPiBJIGluc3RhbGxlZCB0aGUgbGF0ZXN0IHZlcnNp
b24gb2YgeXQtZGxwIHVzaW5nIHRoZSBpbmZvIGJlbG93Lgo+IAo+IHN1ZG8gd2dldCBodHRwczov
L2dpdGh1Yi5jb20veXQtZGxwL3l0LWRscC9yZWxlYXNlcy9sYXRlc3QvZG93bmxvYWQveXQtZGxw
IC1PIC91c3IvbG9jYWwvYmluL3l0LWRscAo+IAo+IHN1ZG8gY2htb2QgYStyeCAvdXNyL2xvY2Fs
L2Jpbi95dC1kbHAKPiAKPiB1cGRhdGUgY29tbWFuZAo+IHl0LWRscCAtVQo+IAo+IFdoZW4gSSB1
c2UgdGhlIGJlbG93IGNvbW1hbmQsIEkgZ2V0IG5vdGhpbmcgYnV0IGEgZ3JlYXRlciB0aGFuIHNp
Z24uCj4gCj4geXQtZGxwIC1mICdiYScgLXggLS1hdWRpby1mb3JtYXQgbXAzIGh0dHBzOi8vd3d3
LnlvdXR1YmUuY29tL3dhdGNoP3Y9ZFF3NHc5V2dYY1EgLW8gJyUoaWQpcy5tcDMKPiAKPiAKPiBU
aGFua3MsCj4gCj4gUm9iCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

