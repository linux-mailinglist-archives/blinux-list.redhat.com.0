Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C936F5E50
	for <lists+blinux-list@lfdr.de>; Wed,  3 May 2023 20:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683139399;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=X6klCLX/bdKPtMxZK8Hvb/FgF7nIjuP8a1eZeNLY3zU=;
	b=ihKwjWwyGai8Gmo1m3pWCq0iletL6Qwn3mJ8n/AG4rUqzX7OWeGF5tzZLg8VTTKJj61sWE
	l7SGolqSMmyWx0BQnt3zU8PXg5Q33K4hC9lZXIwvn0GQA4dXG0OxoPsHu0IyltUeitcnKu
	WLjRZ61y0eQ1AiVpNfXZKt3B5ZS6pys=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-251-UaF8z_SPPuiYQx5Hapl4ng-1; Wed, 03 May 2023 14:43:17 -0400
X-MC-Unique: UaF8z_SPPuiYQx5Hapl4ng-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06541811E7C;
	Wed,  3 May 2023 18:43:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3D1D0492C13;
	Wed,  3 May 2023 18:42:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6BF271946A42;
	Wed,  3 May 2023 18:42:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 3 May 2023 14:42:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: "Linux, Blind" <blinux-list@redhat.com>
Subject: Problem installing fenrir using pip in fedora 38 workstation
Message-ID: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
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

SGkgYWxsLAoKCkkgYW0gdXNpbmcgZmVkb3JhIDM4IHdvcmtzdGF0aW9uIGlmIHRoaXMgbWF0dGVy
cyBhbmQgd2hlbiB0cnlpbmcgdG8gCmluc3RhbGwgZmVucmlyIEkgZ2V0IGEgZXJyb3IgZnJvbSBl
dmRldiBvciBzb21ldGluZyBhYm91dCBhIG5vIHN1Y2ggZmlsZSAKb3IgZGlyZWN0b3J5LsKgIEkg
Zmlyc3QgaW5zdGFsbGVkIHBpcCB0aGVuIHJhbiBwaXAgaW5zdGFsbCBhbmQgZ290IHRoYXQgCmVy
cm9yLsKgIEFueXdheSB1c2luZyBmZW5yaXIgaW4gZmVkb3JhIGFuZCBob3cgZGlkIHlvdSBnZXQg
aXQgd29ya2luZz/CoCAKSXMgdGhlcmUgYW5vdGhlciBwYWNrYWdlIEkgbmVlZCB0byBpbnN0YWxs
IHNvbWV3YXJlP8KgIFRoYW5rcyBpZiBhbnlvbmUgCmhhcyBhbnkgaWRlYXMgb24gd2hhdCBtaWdo
dCBiZSBnb2luZyBvbiBJIHdvdWxkIGxpa2Ugc29tZSBwb2ludGVycyBvbiAKdGhpcyBvbmUuCgoK
TWF0dGhldwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

