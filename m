Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6CA4FD2D8
	for <lists+blinux-list@lfdr.de>; Tue, 12 Apr 2022 10:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649751225;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fZtHLIgue3XACLy35rnowhZhErrMXSG3XnCo88+65Wk=;
	b=aBLVgNVWYokgDUvX+XYPbfTkifIPV3sbw5F084+iWUqTzF0dI+anCePaJZmefXY/bQ5SMg
	m4fD/AqJb9dzymceohoniJ3IJ8lWDh9A2fy0xDurf8iKp7Tp6v44drT0EI1quqgI0O9KPf
	iM9kcEWs3Lqsrx9XXPBLHWsE8n7JpCE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-664-YHIQoIuCM2iqX25YqBVzjA-1; Tue, 12 Apr 2022 04:13:42 -0400
X-MC-Unique: YHIQoIuCM2iqX25YqBVzjA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A1EB811E76;
	Tue, 12 Apr 2022 08:13:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 64BAA40EC000;
	Tue, 12 Apr 2022 08:13:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9259A1940369;
	Tue, 12 Apr 2022 08:13:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Dragonfm history vs show hidden
Date: Tue, 12 Apr 2022 10:13:27 +0200
References: <mailman.7788.1649720383.111203.blinux-list@redhat.com>
In-Reply-To: <mailman.7788.1649720383.111203.blinux-list@redhat.com>
To: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.7820.1649751213.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpBd3NvbWUuIExldCBtZSBrbm93IHdoZW4gc29tZXRoaW5nIGJyZWFrcyBvciBpcyBt
aXNzaW5nLiBkcmFnb25GTSBpcyB2ZXJ5IGVhc3kgdG8gZXh0ZW5kIGJ5IGRlc2lnbi4KCklmIHlv
dSBsaWtlIG15IHdvcmsgZmVlbCBmcmVlIHRvIHN1cHBvcnQgbWU6CgpodHRwczovL3d3dy5wYXRy
ZW9uLmNvbS9saW51eF9hMTF5CgpDaGVlcnMgY2hyeXMKCj4gQW0gMTIuMDQuMjAyMiB1bSAwMToz
OSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0
QHJlZGhhdC5jb20+Ogo+IAo+IO+7v0dvdCB0aGF0IHRvIHdvcmsuIEkgZmVlbCBsaWtlIGl0IGZp
dHMgaW50byBhIHN5c3RlbSBuaWNlbHkgYW5kIGRvZXMuLi5hYm91dCA4MC05MCUgb2Ygd2hhdCBD
YWphL05hdXRpbHVzL1BDbWFuZm0gZG9lcyB3aGljaCBzdWl0cyBtZSBqdXN0IGZpbmUuCj4gCj4g
U28gdW5sZXNzIHNvbWV0aGluZyBicmVha3MgSSBnb3Qgbm8gbW9yZSBmZWF0dXJlIHJlcXVlc3Rz
IGF0IGFsbAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

