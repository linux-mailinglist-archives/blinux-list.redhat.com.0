Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E135934B0
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 20:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660588017;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DhXaY073ztPeB5buwzEmGUqLfZ+Ugc65id8O75SO5Ms=;
	b=NA0XeK8sj+lXUfHK3C4+wlzi0OHUsjBGW7TUcCaK1zbSGsKWvyoluyMlh7rhHposHJYZsG
	nfc5Db5hs7q6yYuqefn924/gfUbc8xUg+7939jiQdMlShP5a4tbnnbR53VHA9e11yCLYQ/
	ZiqV7BviDk31oBw3ldaVaC0TG4cZEHw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-655-h59X-MCOPvS9PhjstLX9Qg-1; Mon, 15 Aug 2022 14:26:53 -0400
X-MC-Unique: h59X-MCOPvS9PhjstLX9Qg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC1D1382ECC3;
	Mon, 15 Aug 2022 18:26:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4FF022026D64;
	Mon, 15 Aug 2022 18:26:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3E68A194034E;
	Mon, 15 Aug 2022 18:26:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 15 Aug 2022 14:17:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: Blinux <blinux-list@redhat.com>
Subject: Need help with a Youtube terminal app
Message-ID: <mailman.693.1660588007.10505.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RGVhciBMaXN0LAoKSSBpbnN0YWxsZWQgbXBzeXQgYWxzbyBrbm93biBhc8KgIG1wcy15b3V0dWJl
LgoKYWZ0ZXIgZG9pbmcgYSBzZWFyY2ggSSBnZXQgdGhpcyBlcnJvci4KCgpFcnJvciBmZXRjaGlu
ZyBkYXRhLiBQb3NzaWJsZSBuZXR3b3JrIGlzc3VlLgpZb3V0dWJlIEVycm9yIDQwMzogVGhlIHJl
cXVlc3QgY2Fubm90IGJlIGNvbXBsZXRlZCBiZWNhdXNlIHlvdSBoYXZlIApleGNlZWRlZCB5b3Vy
IDxhIGhyZWY9Ii95b3V0dWJlL3YzL2dldHRpbmctc3RhcnRlZCNxdW90YSI+cXVvdGE8L2E+LgoK
ClNvIGlmIHRoaXMgaXMgbm90IGEgZ29vZCBhcHAsCgpXaGF0IHdvdWxkIHlvdSBzdWdnZXN0PwoK
SSB3YW50IHRvIHBsYXkgeW91dHViZSB2aWRlb3MgaW4gdGhlIHRlcm1pbmFsLgoKVGhhbmtzLAoK
Um9iCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

