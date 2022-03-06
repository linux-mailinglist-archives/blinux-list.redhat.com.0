Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AA74CED39
	for <lists+blinux-list@lfdr.de>; Sun,  6 Mar 2022 19:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646591998;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BLbwsbGFzxW42H1xnpcARoQtdEiF59OzkimiEUtlnWk=;
	b=AUSIiUII95PfzlUVhThWttEMWDag8mi2cfhCg/a8/j/oDNmFDF0btCV405YVAK08SIpIfI
	iW2B40a0Q7dVnK0gr37dESmyA0eO9Pe8Zn3iUOTJfvZ6S9sf2Oe41gpn+WBrGzM1/p5LDW
	GGBhE5D25KN28s1d3NNokVE9MIv+Nfs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-228-ePtplwVCN0uh7tPGcqVN4g-1; Sun, 06 Mar 2022 13:39:54 -0500
X-MC-Unique: ePtplwVCN0uh7tPGcqVN4g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E7751C05AB8;
	Sun,  6 Mar 2022 18:39:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1827DC0809B;
	Sun,  6 Mar 2022 18:39:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3EA401931BD1;
	Sun,  6 Mar 2022 18:39:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 6 Mar 2022 19:39:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Is Their a Later Version of Speechd-up?
To: blinux-list@redhat.com
References: <mailman.9.1646583072.111206.blinux-list@redhat.com>
 <mailman.14.1646588250.111205.blinux-list@redhat.com>
 <mailman.17.1646589207.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.17.1646589207.111205.blinux-list@redhat.com>
Message-ID: <mailman.11.1646591988.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpMZSAwNi8wMy8yMDIyIMOgIDE4OjQ0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIGEgw6ljcml0wqA6Cj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiwg
bGUgZGltLiAwNiBtYXJzIDIwMjIgMTg6Mzc6MTEgKzAxMDAsIGEgZWNyaXQ6Cj4+IHRoZSBtb3N0
IHJlY2VudGx5IHVwZGF0ZWQgZ2l0IHJlcG8gaXMgdGhlIG9uZSBmcm9tIENocnlzOgo+PiBodHRw
czovL2dpdGh1Yi5jb20vY2hyeXM4Ny9zcGVlY2hkLXVwCj4+Cj4+IEFGQUlLIHRoZXJlIGlzIG5v
IHNwZWFrLXdpdGggY29tbWFuZCBpbiBEZWJpYW4sIG9ubHkgaW4gU2xpbnQsIGJ1dCBJIGNvdWxk
IGJlIHdyb25nLgo+IAo+IEl0IHdvdWxkIGJlIHVzZWZ1bCB0byBzdWJtaXQgdGhlIHNwZWFrLXdp
dGggc2NyaXB0IHRvIHVwc3RyZWFtLCBzbyB0aGF0Cj4gYWxsIGRpc3RyaWJ1dGlvbnMgYmVuZWZp
dCBmcm9tIGl0LCBhbmQgbm90IG9ubHkgU2xpbnQuCj4KPiBTYW11ZWwKCgpJIGR1bm5vIHdoaWNo
IHVwc3RyZWFtIChzcGVjaGQtdXA/IGVzcGVha3VwPyBmZW5yaXI/IHNwZWFrdXA/Li4uKSwgYW55
d2F5IHRoaXMKb25lIGFuZCBvdGhlcnMgYXJlIGhlcmU6Cmh0dHBzOi8vZ2l0aHViLmNvbS9EaWRp
ZXJTcGFpZXIvc2xpbnQtc2NyaXB0cwoKQ2hlZXJzLApEaWRpZXIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

