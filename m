Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E95259B0E9
	for <lists+blinux-list@lfdr.de>; Sun, 21 Aug 2022 01:43:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661039009;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xsvmKJ46NqUlQrbWia6Yg4LGHq/6mLlZdn6WXStenl8=;
	b=HdkRF+CFr7+gjuiq1fPwVQgu7Ibw+mOhXVNMmRGMILQYjtfjmQlRD/1WhXVM1yFaf5ibAv
	aJzud+eaZ9wD+fvj9HsaGvbe7dcvoHDvatxUskgdk3uFNhhuVFLCw3Y0eoA62/8e40cH6h
	wkiHTS2domZpL+OgnzSBK+1DexzAY58=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-213-KqFsZylBPompUt1lXLQFkA-1; Sat, 20 Aug 2022 19:43:25 -0400
X-MC-Unique: KqFsZylBPompUt1lXLQFkA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AE7629AB40E;
	Sat, 20 Aug 2022 23:43:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F205E2166B26;
	Sat, 20 Aug 2022 23:43:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 998951946A4B;
	Sat, 20 Aug 2022 23:43:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.2381.1661038130.10504.blinux-list@redhat.com>
References: <58F588DF-F64C-482C-A02D-E5F1EF0C664C.ref@yahoo.com>
 <mailman.2381.1661038130.10504.blinux-list@redhat.com>
Date: Sat, 20 Aug 2022 23:43:15 +0000
Subject: Re: Raspberry pi 3
To: blinux-list@redhat.com
Message-ID: <mailman.2449.1661039000.10500.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Slint is exclusively an x86 distro, so no way to run it directly on
the Pi, but you should be able to write any image to an SD card using
any flavor of Linux, and as long as an ssh server is installed and
enabled on the Pi, you should be able to access it from any Linux
system with a ssh client.

That said, you might want to check out raspberryvi.org and the
Raspberry VI mailing list which are dedicated specifically to using
the Pi as a visually impaired or blind user.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

