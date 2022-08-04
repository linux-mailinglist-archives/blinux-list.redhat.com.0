Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4ECB58A007
	for <lists+blinux-list@lfdr.de>; Thu,  4 Aug 2022 19:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659635426;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R2xwVEFaHBV0oOgy7RLq0t4/vxsYI9i1bFy2OhgaFzE=;
	b=d18P2Mcc7yWj8nE5c56rIo1kZpnDC8eQDMfJuPb94+mlhjZzUQn1KQZUI5gqChU1VoBne/
	Vznbb6HPPqkP2On8nEp3jmD4YqS5Sn+BF6mwXrD2oEovkwRebZoT/oAz1dAwymDoqXOqs6
	OSXMeVjDVWRzXZc8K755bgW59TGzK0o=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-606-x_P1rFs_PQSo2tesj0tN7Q-1; Thu, 04 Aug 2022 13:50:25 -0400
X-MC-Unique: x_P1rFs_PQSo2tesj0tN7Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42634101A586;
	Thu,  4 Aug 2022 17:50:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 078E54010E37;
	Thu,  4 Aug 2022 17:50:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5EBB91946A6B;
	Thu,  4 Aug 2022 17:50:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Cant require password at log on
Date: Thu, 4 Aug 2022 13:41:25 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.1366.1659635417.2505309.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBMaXN0LApJIGluc3RhbGxlZCBMaW51eCBNaW50IE1hdGUgMjEuCkF0IGluc3RhbGxhdGlv
biwgSSBjaG9zZSBhdXRvbWF0aWMgc2lnbiBpbi4KTm93IEkgd2FudCB0byBjaGFuZ2UgaXQgdG8g
cmVxdWlyZSBteSBwYXNzd29yZCB0byBsb2cgaW4uCgpJIGNhbuKAmXQgc2VlbSB0byBkbyBpdC4g
QW55IHN1Z2dlc3Rpb25zPwoKClRoYW5rcywKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cg==

