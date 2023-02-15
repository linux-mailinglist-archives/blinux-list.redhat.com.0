Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47470697CA6
	for <lists+blinux-list@lfdr.de>; Wed, 15 Feb 2023 14:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676466206;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sOODTFFTN0Mj4Zhn6/2v6GNICRxfOBE8bDonuq8cXSo=;
	b=hoGuZ4CD1XzFqUHilEuJKcAqyQX5pFLyUo7utac8NDSslg9TEADPq/g+AjIxiSBIpiUSvp
	b7LyB6zZGhSSWIqrvqBxnOtsH7aGDdWVqsTsjwQz/1bDBvPvz4vqXKBxYtvY21gn4Dt/4D
	xCJ3I0PfRsw32BEMQTqe/9ct3pu3kGQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-640-dVXbplUwOIyvy2bcuZIIZw-1; Wed, 15 Feb 2023 08:03:22 -0500
X-MC-Unique: dVXbplUwOIyvy2bcuZIIZw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60FE5185A7A4;
	Wed, 15 Feb 2023 13:03:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A18CF492C3C;
	Wed, 15 Feb 2023 13:03:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D38731946595;
	Wed, 15 Feb 2023 13:03:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 15 Feb 2023 07:58:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Voxin
To: blinux-list@redhat.com
References: <mailman.50.1676151885.1039597.blinux-list@redhat.com>
In-Reply-To: <mailman.50.1676151885.1039597.blinux-list@redhat.com>
Message-ID: <mailman.1320.1676466191.1039588.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2FzIHdvbmRlcmluZyB3aHkgdm94aW4gaXMgY29uc2lkZXJlZCBicm9rZW4gb3Igd2h5IHRoZSBz
cGVlY2ggYWx3YXlzIApyZXNldHMgaXRzIHJhdGUgc2V0dGluZyBpbiB0aGUgbmV3ZXIgdmVyc2lv
bnMgYW5kIGhvdyB0aGlzIG1heSBiZSBmaXhlZC4KCk9uIDIvMTEvMjMgMTY6NDQsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgSSB3YXMgd29uZGVyaW5nIGlm
IGFueW9uZSBjb3VsZCBnaXZlIG1lIHNvbWUgc3RlcHMgdG8gaW5zdGFsbCB0aGlzIEnigJl2ZSB0
cmllZCBpdCBhbmQgSSBjYW7igJl0IGZpZ3VyZSBpdCBvdXQgdGhhbmtzCj4KPiA3MywKPiBEYXJy
ZW4gVG9tYmxpbiBLQzlKSkoKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

