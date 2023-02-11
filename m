Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D21E869342C
	for <lists+blinux-list@lfdr.de>; Sat, 11 Feb 2023 23:27:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676154472;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/Gk7mEc4B0pM0Jc4c7iAx4VUYEiA3Zj3MIu2j01rqGE=;
	b=ZsvSHU1Ob3qGKyWLm7Z0oVX56T0oPgWDusJcT3w5msSUUsgTIIba7t4tv92XYOERkTyKpC
	XSVDSktROuoFTpJPMmFQvuWy/gF8JiR5OrWv0+uBHQFFwyVYVt65DCBYyCan05+hVUhWWW
	7KlrYPxtNIh+IHcKqL11k0xGtnjeXv8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-27Nqj_21NPygoFlui-5xtw-1; Sat, 11 Feb 2023 17:27:48 -0500
X-MC-Unique: 27Nqj_21NPygoFlui-5xtw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DDAFB29AA2E9;
	Sat, 11 Feb 2023 22:27:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2DCB62166B26;
	Sat, 11 Feb 2023 22:27:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 723F51946597;
	Sat, 11 Feb 2023 22:27:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 11 Feb 2023 23:27:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: Voxin
To: blinux-list@redhat.com
References: <mailman.50.1676151885.1039597.blinux-list@redhat.com>
In-Reply-To: <mailman.50.1676151885.1039597.blinux-list@redhat.com>
Message-ID: <mailman.52.1676154461.1039593.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgppbnN0cnVjdGlvbnMgaGVyZToKaHR0cHM6Ly9vcmFsdXgub3JnL2luZGV4LnBocD9teWxh
bmc9ZW4KCkNoZWVycywKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIKZGlkaWVyYXRzbGludGRvdGZy
CgpMZSAxMS8wMi8yMDIzIMOgIDIyOjQ0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIGEgw6ljcml0wqA6Cj4gSGkgSSB3YXMgd29uZGVyaW5nIGlmIGFueW9uZSBjb3VsZCBnaXZl
IG1lIHNvbWUgc3RlcHMgdG8gaW5zdGFsbCB0aGlzIEnigJl2ZSB0cmllZCBpdCBhbmQgSSBjYW7i
gJl0IGZpZ3VyZSBpdCBvdXQgdGhhbmtzIAo+IAo+IDczLAo+IERhcnJlbiBUb21ibGluIEtDOUpK
Sgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

