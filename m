Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CE73F6169DE
	for <lists+blinux-list@lfdr.de>; Wed,  2 Nov 2022 17:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667408331;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o5+XwuOOshDGx3hmLnXytQNwI8bqtAL6z9jMUTgZpkU=;
	b=FQNjl6X051iE23LAtjnW9FaQTVo9+ntddrH6L7xXCnTkD1tb4CAJhddm2kIFr14TnVZWHa
	dBjlv/mMTK7cyZFdwdt8oCrCqUCsg4fkNFF+Tp66Du4bSacDunZhPR/n+VlKr9SvHTNrLp
	lPCInv/E1qwosS6LY85UaQfWoPQ5lFA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-650-Xt4pVI1aPX2DK2OG339yfg-1; Wed, 02 Nov 2022 12:58:46 -0400
X-MC-Unique: Xt4pVI1aPX2DK2OG339yfg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3C5E3806700;
	Wed,  2 Nov 2022 16:58:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F1224C15BA5;
	Wed,  2 Nov 2022 16:58:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 802D11946A42;
	Wed,  2 Nov 2022 16:58:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 2 Nov 2022 17:57:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: Linux for blind general discussion <blinux-list@redhat.com>,
 raspberry-vi@freelists.org, ubuntu-accessibility@lists.ubuntu.com
Subject: Ubuntu 22.04 64 on Raspberry Pi
Message-ID: <mailman.4191.1667408320.3005.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

is some way to install Ubuntu Mate 22.04 64bit to Raspberry Pi without 
seeing assistance? And what to write to config.txt to use it without 
plugged screen? In 32bit Ubuntu version works this:
disable_overscan=1
dtoverlay=vc4-fkms-v3d
hdmi_drive=2
ttparam=audio=on
hdmi_force_hotplug=1

Thanks a lot.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

