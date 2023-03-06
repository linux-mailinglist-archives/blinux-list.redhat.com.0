Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A48686ACF69
	for <lists+blinux-list@lfdr.de>; Mon,  6 Mar 2023 21:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678135650;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2NYF+KceDT83uGnoxHvXLrI1CCqhSg43WPSIaQD+uSQ=;
	b=dN3xhe2TCsq1nxV+l5QoViGj0IZ9OxoTcmZyZoKOhZahdG4QGa68ymqiYQxrBFOt1L/aAc
	muUsHTNgJDAxE3SOwZ0SUPnU4PbDakKvpGCt8wZpGFjfcP1WZS2cISC5uHKjJTj4ZQqbh0
	OEVCTBBisMmUeP5arS3IOPHEb1U43JU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-134-vxiKxkcZOyOWvcT0BXAHRQ-1; Mon, 06 Mar 2023 15:47:27 -0500
X-MC-Unique: vxiKxkcZOyOWvcT0BXAHRQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D240299E743;
	Mon,  6 Mar 2023 20:47:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 371B3400DFA1;
	Mon,  6 Mar 2023 20:47:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D515E19465A2;
	Mon,  6 Mar 2023 20:47:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Wsl orca
Date: Mon, 6 Mar 2023 15:47:00 -0500
To: blinux-list@redhat.com
Message-ID: <mailman.424.1678135637.1521164.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSeKAmW0gaGF2aW5nIGEgcHJvYmxlbSBnZXR0aW5nIG9yY2EgdG8gcnVuIHdpdGggZWl0aGVy
IHdzbGcgb3IgZ3dzbCBJIGdldCBhIG1lc3NhZ2UgYWJvdXQgbm8gc3BlZWNoIG9yIGF1ZGlvIGFu
ZCBpdCBqdXN0IHNpdHMgdGhlcmUgSSBoYXZlIHRvIGtpbGwgb3JjYSB0byBnZXQgY29udHJvbCBi
YWNrIHRoYW5rcwoKNzMsCkRhcnJlbiBUb21ibGluIEtDOUpKSgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo=

