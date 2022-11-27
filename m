Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC166399CF
	for <lists+blinux-list@lfdr.de>; Sun, 27 Nov 2022 10:37:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669541865;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JOeNufGVM7jHydGQda+XHpP9PUls4vfcxU79QDZW/lo=;
	b=SQTvNfyYCwEH1I5FLXJ/4pM3uDDhAAUuGN8jRa5XvSMLkrzuZffBXYVbyFMMGjTIa3iPFt
	ZIOyQq+V5rnUATVcuA+GTpTf/LSKEvpU3q0DP2j3vrIgWzQrrPQvxcqDx/9zMzmS2qTGnV
	/2qnhPRWInBkEUNb33GtCCmNv9gDCmQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-529-zM-fX3c3NpWcutYafgViAw-1; Sun, 27 Nov 2022 04:37:41 -0500
X-MC-Unique: zM-fX3c3NpWcutYafgViAw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D85B23C025CF;
	Sun, 27 Nov 2022 09:37:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5A626C15BA4;
	Sun, 27 Nov 2022 09:37:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C853919465A8;
	Sun, 27 Nov 2022 09:37:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 27 Nov 2022 10:37:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Accessible front ends for Pleroma?
To: blinux-list@redhat.com
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
 <mailman.1994.1669440416.6925.blinux-list@redhat.com>
 <mailman.1917.1669441933.6934.blinux-list@redhat.com>
 <mailman.1960.1669443853.6931.blinux-list@redhat.com>
 <mailman.2025.1669474541.6925.blinux-list@redhat.com>
 <mailman.2084.1669487263.6926.blinux-list@redhat.com>
In-Reply-To: <mailman.2084.1669487263.6926.blinux-list@redhat.com>
Message-ID: <mailman.2048.1669541853.6931.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpMZSAyNi8xMS8yMDIyIMOgIDE5OjI3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSSBqdXN0IHJlYWxpemVkIHRoYXQgc3BpIG5lZWRzIGEg
cmVidWlsZCBmb3IgU2xpbnQgMTUuMCwgbWVhbndoaWxlIHlvdSBjYW4ganVzdAo+IHVzZSBzbGFw
dC1nZXQgYW5kIHNsYXB0LXNyYyBkaXJlY3RseS4KCnNwaSBoYXMgYmVlbiBmaXhlZC4gbm93IHRo
ZSBjb21tYW5kOgpzcGkgdG9vdApsaXN0cyBhbW9uZyBvdGhlcnM6CnRvb3QgW05vdCBpbnN0YWxs
ZWRdOiB0b290IChhIE1hc3RvZG9uIENMSSBjbGllbnQpCgpDaGVlcnMsCkRpZGllcgotLSAKRGlk
aWVyIFNwYWllcgpkaWlkZXJhdHNsaW50ZG90ZnIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QK

