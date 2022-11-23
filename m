Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3B76360F7
	for <lists+blinux-list@lfdr.de>; Wed, 23 Nov 2022 15:02:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669212156;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8DgXrL54LTV7j3iYoIMK7k1QhJXK4cITtW0WBdnyCSo=;
	b=B42FHHAqtTSqd8hhCpVZYPQ5ac1cLvQPp6YiDdwmnwaUaUY2u6LaA99mIAhHNWsn7GMKlW
	PyVEns67WtAWE1gb1dY8Pl7L0KuBWToDe+fI8PFVqb3RF0cwLrD0cycMQsAZks4sPUn+Rp
	0+3rYvBaRb6Oh7Ey991eyggvIz5IIqM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-582-CyvMIO42PEGnj4HCI1X8wg-1; Wed, 23 Nov 2022 09:02:33 -0500
X-MC-Unique: CyvMIO42PEGnj4HCI1X8wg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D1FB1C075A4;
	Wed, 23 Nov 2022 14:02:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1C748111E414;
	Wed, 23 Nov 2022 14:02:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B03CA1946595;
	Wed, 23 Nov 2022 14:02:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 23 Nov 2022 21:39:45 +0800 (CST)
To: blinux-list@redhat.com
Subject: How to hear sounds from line-in jack? (fwd)
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.1365.1669212143.6934.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

CgotLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLS0KRGF0ZTogV2VkLCAyMyBO
b3YgMjAyMiAyMTozNjo1MyArMDgwMCAoQ1NUKQpGcm9tOiDpq5jnlJ/ml7ogPGNvc2NlbGxAZ21h
aWwuY29tPgpUbzogc2xpbnRAZnJlZWxpc3RzLm9yZwpTdWJqZWN0OiBIb3cgdG8gaGVhciBzb3Vu
ZHMgZnJvbSBsaW5lLWluIGphY2s/CgpTb3VuZHMgZnJvbSBsaW5lLWluIGNhbiBiZSByZWNvcmVk
LCBidXQgaG93IHRvIGhlYXIgdGhlbSBpbiB0aW1lPwpXaGljaCBjb25zb2xlIGNvbW1hbmQgY2Fu
IGJlIHVzZWQgZm9yIHRoaXMgcHVycG9zZT8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo=

