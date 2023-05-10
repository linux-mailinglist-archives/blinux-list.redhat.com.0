Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 898EC6FDC9C
	for <lists+blinux-list@lfdr.de>; Wed, 10 May 2023 13:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683717838;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OSXv8zAhqOc2MU3JCL+r6A+T3CkSX6JxKpdM63ybBl8=;
	b=X7kxJ9RyYEQobZ0kZI5jMQuWEa1a1rbG972bM8G5FSE9rzbNFFonsnokiOh86GTw9nnfRR
	FzIgJrc52u955IyQaFGiNB2Dn5yfHsg9xtRmowbivwu6lwAh4CZ6iDDlUKGe0/QGHUL1gD
	XbnL6TtS4qQL32OUNbWzIOGTYbJbzMU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-478-RB_Q4DxJN1-5qeKaslPigA-1; Wed, 10 May 2023 07:23:56 -0400
X-MC-Unique: RB_Q4DxJN1-5qeKaslPigA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 92585101A531;
	Wed, 10 May 2023 11:23:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 748374078906;
	Wed, 10 May 2023 11:23:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CD12719451C2;
	Wed, 10 May 2023 11:23:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 10 May 2023 11:23:17 +0000
To: blinux-list@redhat.com
Subject: Re: Lios and Lios-git Arch linux, packages in conflict
In-Reply-To: <mailman.908.1683656585.2822857.blinux-list@redhat.com>
References: <mailman.908.1683656585.2822857.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1489.1683717824.2822852.blinux-list@redhat.com>
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

SGksCgppdCBzaG91bGQgYmUgb2theSwgSSBkb24ndCBoYXZlIGVzcGVhayBlaXRoZXIgYW5kIEkn
bSBmaW5lLgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgOS4gNS4gMjAyMyBvIDIw
OjIzIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gSGks
Cj4KPiBJIHdhbnQgdG8gaW5zdGFsbCBMaW9zIG9yIG1heWJlIExpb3MtZ2l0IHRvIG15IEFyY2gg
TGludXgsIGJ1dCBlc3BlYWstbmcKPiB3aGljaCBJIHVzZSBpcyBpbiBjb25mbGljdCB3aXRoIEVz
cGVhaywgd2hpY2ggTGlvcy1naXQgd2FudHMgdG8gaW5zdGFsbC4KPiBDYW4gSSBza2lwIHRoaXMg
ZGVwZW5kZW5jaSwgb3IgbXVzdCB0aGUgcmVwbyBiZSB1cGRhdGVkPyBMaW9zIGlzIHdvcmtpbmcK
PiB3aXRoIGVzcGVhay1uZywgc28gRXNwZWFrIGlzIG5vdCBuZWVkZWQuCj4KPiBUaGFua3MsCj4K
PiBQYXZlbAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

