Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 604D74CEC8D
	for <lists+blinux-list@lfdr.de>; Sun,  6 Mar 2022 18:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646588261;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7fZWJk/w7EuxGyg7pBjw+HU3m1xISvhhs7/7BrJmM80=;
	b=gGKSb9ISboUmJ9OMcfRnCHmHeGA0jvgEA9PWlplshfSmVTBdjldYykP0X/WzXGudH6wfUh
	aWz3aoo8PrlLfDBVHcjpvUpH/76lVEsSu+uohTXF9TNp4DZCF5b4Xh0OJqE0596SbMdOzp
	pNiEM/5l6p3ZbHLpZLt71kD4mS/6GyE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-270-S9xXsWafPXagGWyhhYc7Eg-1; Sun, 06 Mar 2022 12:37:37 -0500
X-MC-Unique: S9xXsWafPXagGWyhhYc7Eg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 387A6101AA42;
	Sun,  6 Mar 2022 17:37:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6A9DF53CE;
	Sun,  6 Mar 2022 17:37:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AE3C91931BD1;
	Sun,  6 Mar 2022 17:37:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 6 Mar 2022 18:37:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Is Their a Later Version of Speechd-up?
To: blinux-list@redhat.com
References: <mailman.9.1646583072.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.9.1646583072.111206.blinux-list@redhat.com>
Message-ID: <mailman.14.1646588250.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hpbWUsCgp0aGUgbW9zdCByZWNlbnRseSB1cGRhdGVkIGdpdCByZXBvIGlzIHRoZSBvbmUg
ZnJvbSBDaHJ5czoKaHR0cHM6Ly9naXRodWIuY29tL2NocnlzODcvc3BlZWNoZC11cAoKQUZBSUsg
dGhlcmUgaXMgbm8gc3BlYWstd2l0aCBjb21tYW5kIGluIERlYmlhbiwgb25seSBpbiBTbGludCwg
YnV0IEkgY291bGQgYmUgd3JvbmcuCgpJZiB5b3UgcnVuIERlYmlhbiB5b3UgY291bGQgcmVxdWVz
dCBoZWxwIG9uIHRoZWlyIGFjY2Vzc2liaWxpdHkgbWFpbGluZyBsaXN0LgoKSW4gYW55IGNhc2Ug
dGVsbGluZyB3aGF0IGVycm9ycyBleGFjdGx5IHlvdSBnZXQgd291bGQgaGVscCBpbnZlc3RpZ2F0
ZS4KCkFsc28geW91IGNvdWxkIHRyeSBmZW5yaXIsIHdoaWNoIGNhbiBhbHNvIHJlbHkgb24gc3Bl
ZWNoLWRpc3BhdGNoZXIuCgpDaGVlcnMsCkRpZGllcgoKTGUgMDYvMDMvMjAyMiDDoCAxNzoxMSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIEFsbDog
VHJ5aW5nIHRvIGluc3RhbGwgQWxsaXNvbiBlbWJlZGRlZCB2b2ljZXMgZnJvbSBWb3hpbiwgYnV0
IHJ1bm5pbmcgYW4gYXB0Cj4gaW5zdGFsbCBzcGVlY2hkLXVwwqAgaXQgcHJvZHVjZXMgZXJyb3Jz
IGluIHZlcnNpb24gMC41IGZyb20gMjAxMS4gUmlnaHQgbm93IG9uCj4gdGhpcyBtYWluIGRlc2t0
b3AgbWFjaGluZSB3ZSBoYXZlIGEgRGVjVGFsayBVIFMgQiBidXQgd291bGQgbGlrZSB0byB0cnkg
QWxsaXNvbiwKPiBhbHNvLCBtYXliZSBlYXNpbHkgc3dpdGNoIGJhY2stYW5kLWZvcnRoLiBTdXBw
b3NlZGx5IHRoZXJlIGlzIHNwZWFrLXdpdGg/IENhbiBJCj4gcnVuIGJvdGggdGhpcyBEZWNUYWxr
LWFuZC1BbGxpc29uIHRvZ2V0aGVyPyBUaGFua3Mgc28gbXVjaCBpbiBhZHZhbmNlLgo+IENoaW1l
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

