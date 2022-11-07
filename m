Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C7A61E7C9
	for <lists+blinux-list@lfdr.de>; Mon,  7 Nov 2022 01:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667779409;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3t2xJ2a48XQX61LZjzMhU11mrnmJqojqgFd3/AaBQx8=;
	b=W5TEodq3VZlh4JyzKR57Xy1s1/9lYIjqcTD3sAvB2p+oGHJws06E9nBDrr2e7jJl11z1I9
	bMyzG5oc8zfdm9hWAIjm0+Ardfl7cOHIDMu3gdR4omyZcEubdAmvICVKjNjITALKZIbveY
	uqjxPWLkK58AQi8VBfA9DsckKLqeQbY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-67-b3Ycr9qgMqSBgp0ndIFK6w-1; Sun, 06 Nov 2022 19:03:25 -0500
X-MC-Unique: b3Ycr9qgMqSBgp0ndIFK6w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8BF8E185A78F;
	Mon,  7 Nov 2022 00:03:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5BBF940C2064;
	Mon,  7 Nov 2022 00:03:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CE35E194658F;
	Mon,  7 Nov 2022 00:03:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 7 Nov 2022 01:02:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: [ANNOUNCE] Slint 15.0 has been released
Message-ID: <mailman.4922.1667779393.3009.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Slint 15.0 is fully accessible to the blind from the beginning of installation.
It includes a complete set of accessibility softwares for the console and
graphical environments.

Its web site https://slint.fr has also been rewritten and is fully accessible
using a text or graphical web browser, with a screen reader or a Braille device.

The home page lists its major distinctive features.

You can	install it on a	thumb drive, leaving untouched any other system.
Instructions here: https://slint.fr/en/HandBook.html#_install_slint

We need more translators, so please spread the word. The link for volunteers is:
https://slint.fr/doc/translate_slint.html

Cheers,
Didier Spaier
Slint maintainer
didieratslintdotfr

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

