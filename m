Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3AB5EE179
	for <lists+blinux-list@lfdr.de>; Wed, 28 Sep 2022 18:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664381675;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x/mRmskH+6ndRPgpIGFPyivAYOe3TjWcVoLSUWfaKGs=;
	b=AezkzDH2ysjtqDiDyzgagV4hQ/WMN8/7kQqIs5/o+cYcROMcXFi71FB2cROkdA3d60PWcr
	pVjHmE6YoTiWru++ax37qD90dMf33YyVtCk27B3/gWJ//xaWEr/dQFjgiG5LBf7z0bzKJe
	lCEILLtQ46QL7AknR6d+ENb6WnhmsWo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-75-PkiyedJnNi6WU_JgiSMLOA-1; Wed, 28 Sep 2022 12:14:33 -0400
X-MC-Unique: PkiyedJnNi6WU_JgiSMLOA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 955DE381079B;
	Wed, 28 Sep 2022 16:14:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 90BFA2027062;
	Wed, 28 Sep 2022 16:14:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 02B001946A4E;
	Wed, 28 Sep 2022 16:14:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 28 Sep 2022 16:37:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: qtile notifications
Message-ID: <mailman.3526.1664381664.6078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SW4gYW5zd2VyIHRvIHRoZSBob3cgZG8gSSBnwqDCoMKgIGV0IG5vdGlmaWNhdGlvbnMgdG8gd29y
az8KCkkgcHV0IHRoaXMgaW4gbXkgYXV0b3N0YXJ0LnNoIHBhc3QgdGhlIGJpbi9iYXNoIHN0dWZm
IGluIHRoaXMgb3JkZXI6CgoKL3Vzci9saWIvbm90aWZpY2F0aW9uLWRhZW1vbi0xLjAvbm90aWZp
Y2F0aW9uLWRhZW1vbiAmCgpvcmNhCgoKVGhhdCBnaXZlcyBtZSBub3RpZmljYXRpb25zIGZvciB0
aGluZ3MgbGlrZSBtZXNzYWdlcywgZW1haWxzIGluIApUaHVuZGVyYmlyZCwgZXQgYWwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

