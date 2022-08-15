Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3215942C0
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 00:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660601103;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aUuv25OGJxOfyGnV2YkqpYqcNussnxyjM/9D7aND/OE=;
	b=DyWvkdu3+Nl4lm09P/1oRV4obf+Mkvb8hR3qpkRxvzQklhxrfbHxUQIUwL5DzUnSEgJNpW
	Ih5CRRBl2ivHH216bz09y3HlGGRBcJZpsGik9LZVShu/H8VUXO5huFkCAb1PnRLqdueBCR
	P+QTreJjco4v8yK9vQNfu+IBd/Ubr9Q=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-578-yUv1EgjjOKigUiRKoOuqmg-1; Mon, 15 Aug 2022 18:04:59 -0400
X-MC-Unique: yUv1EgjjOKigUiRKoOuqmg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 91F603C01D8E;
	Mon, 15 Aug 2022 22:04:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 77A77140EBE3;
	Mon, 15 Aug 2022 22:04:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8C0E61940353;
	Mon, 15 Aug 2022 22:04:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 Aug 2022 00:04:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: Need help with a Youtube terminal app
To: blinux-list@redhat.com
References: <mailman.693.1660588007.10505.blinux-list@redhat.com>
 <mailman.714.1660588859.10499.blinux-list@redhat.com>
 <mailman.724.1660597476.10502.blinux-list@redhat.com>
 <mailman.788.1660599633.10498.blinux-list@redhat.com>
In-Reply-To: <mailman.788.1660599633.10498.blinux-list@redhat.com>
Message-ID: <mailman.767.1660601093.10501.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

c3RyYXctdmlld2VyIGlzIGRlcHJlY2F0ZWQgIGhhcyBiZWVuIHN1cGVyc2VkZWQgYnkgcGlwZS12
aWV3ZXIsIGFjY29yZGluZyB0bwp0cml6ZW4sIGF1dGhvciBvZiBib3RoIGFuZCBhbHNvIG9mIHlv
dXR1YmUtdmlld2VyLiBBbmQgeWVzIGFzbyBpbnN0YWxsIHB1dAp5dC1kbHAgaWYgbm90IGFscmVh
ZHkgZG9uZS4KClVSTHM6Cmh0dHBzOi8vZ2l0aHViLmNvbS90cml6ZW4vcGlwZS12aWV3ZXIKaHR0
cHM6Ly9naXRodWIuY29tL3RyaXplbi95b3V0dWJlLXZpZXdlcgpodHRwczovL2dpdGh1Yi5jb20v
eXQtZGxwL3l0LWRscAoKQ2hlZXJzLApEaWRpZXIKCkxlIDE1LzA4LzIwMjIgw6AgMjM6NDAsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBXZWxsLCBSb2Is
IHRoZXNlIGRheXMgeW91dHViZS12aWV3ZXIgY2FuIHVzZSB5dC1kbHAgd2hpY2ggZG9lc24ndCBy
ZXF1aXJlIGEga2V5LAo+IGFsc28gaW4gbWFueSBjYXNlcyBkb3dubG9hZCBzcGVlZHMgYXJlIG5p
Y2VseSBpbmNyZWFzZWQuIEFub3RoZXIgc2ltaWxhciBwcm9ncmFtCj4gb2YgaGlzIGlzIHN0cmF3
LXZpZXdlci4KPiBDaGltZQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

