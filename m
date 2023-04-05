Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7F06D8397
	for <lists+blinux-list@lfdr.de>; Wed,  5 Apr 2023 18:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680711910;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QtW1ywxtcKUNVMa4+v5LZuWY+rZwLP0xl14RnBSf+KU=;
	b=POwBLZGhXnDSXLSz6oaCv9dJ3BZ4GlCqVYFifX5bgABCPSnl3uP2tKmGgfrIymtoo7ynEY
	iTUKKtjLBVW7BHqddwCEN2tF35TOU0tVFjqOZoy2h9SYIhnhSyi72wFRqj9g4FFx3StMNr
	6cfMfa5gO4PE85ws2+Z/hSlSE/99d0Q=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-17-iFSJvwcmMECaEDTNxcPktQ-1; Wed, 05 Apr 2023 12:25:08 -0400
X-MC-Unique: iFSJvwcmMECaEDTNxcPktQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5ECFB88905B;
	Wed,  5 Apr 2023 16:25:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 78614400F57;
	Wed,  5 Apr 2023 16:25:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CECAB19465A4;
	Wed,  5 Apr 2023 16:24:59 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 5 Apr 2023 18:24:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Debian beginner questions/looking for a good rolling distro
To: blinux-list@redhat.com
References: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
 <mailman.1949.1680706766.558770.blinux-list@redhat.com>
 <mailman.2039.1680707830.558774.blinux-list@redhat.com>
 <mailman.2141.1680708565.558772.blinux-list@redhat.com>
In-Reply-To: <mailman.2141.1680708565.558772.blinux-list@redhat.com>
Message-ID: <mailman.2157.1680711899.558772.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgMDUvMDQvMjAyMyDDoCAxNzoyOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdMKgOgo+IEFzIGZvciB3aGF0IEkgdXNlIG9uIGEgZGFpbHkgYmFzaXM/Cj4gaTMg
Zm9yIGEgd20KPiBGaXJlZm94IGZvciBhIGJyb3dzZXIKPiBQaWRnaW4gZm9yIElNL0lSQyBhbmQg
c28gb24KPiBUZXh0IGVkaXRvcnMKPiBLb2RpIGZvciBhIG1lZGlhIGNlbnRlcgo+IG1wdiBmb3Ig
cGxheWluZyB0aGluZ3MgaW4gdGhlIHRlcm1pbmFsLgoKRm9yIHlvdXIgaW5mb3JtYXRpb24gYWxs
IG9mIHRoZW0gYXJlIGluY2x1ZGVkIGluIFNsaW50IHdpdGggb25lIGV4Y2VwdGlvbjoga29kaQoK
RGlkaWVyCmRpZGllcmF0c2xpbnQuZnIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

