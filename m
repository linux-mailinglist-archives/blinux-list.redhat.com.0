Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB136866A9
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 14:20:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675257606;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nlbpAC7ZUP9aUDeMyQuFjs9jYkkyQP610QiG1U3+9vw=;
	b=XHVlfn4yNq/uC6zpFLzoUS+wW3wWpr/9Q349VCy3q9eM9nzyk//3Us2WyRoOD21Fp5aqe6
	r+ChGylLILdnzqdgqwuYfeTSJT6rbCZlq/YGtmQ7N8JW0wVmAuKkB1Qf/EtjVq2Ivus+3i
	IAR720gIDU3ElZzgtKX/B9CQ5dw68Qc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-499-Q55H_E6aPU6dILp92-c6YQ-1; Wed, 01 Feb 2023 08:20:03 -0500
X-MC-Unique: Q55H_E6aPU6dILp92-c6YQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E4110100DEA1;
	Wed,  1 Feb 2023 13:20:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D17F340C2064;
	Wed,  1 Feb 2023 13:19:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 802E619465B7;
	Wed,  1 Feb 2023 13:18:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 13:17:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
To: blinux-list@redhat.com
Subject: Strange Arch linux arm issue with espeakup
Message-ID: <mailman.3734.1675257487.8172.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


I've been having a strange issue with Arch linux arm when installed 
using Asahi on an m1 macbook air.


When installed, I connect my Android phone to use as a personal hotspot, 
because network configuration is not completed in the install. I then 
install both alsa-utils and espeakup after doing a macman -Syu. They 
seem to install fine, and then I set the Master volume to 100% with:

amixer set Master 100

This seems to work fine. Then I enable espeakup with:

#systemctl enable espeakup.service

After this, I reboot, and this is where the problem happens.

Espeakup reads the first login prompt, including the kernel version and 
host name. But then, beyond that point, reads nothing, no matter what I 
do. Logging in correctly results in no speech, the same when entering an 
incorrect username and password.


Once logged in, doing:

say test

and:

espeak test

and also:

espeak-ng test

all result in the word "test" being read by espeak.


This is about as much detail as I can provide, being unable to use the 
system beyond that point. Any advice anyone has to solve this problem 
would be very much appreciated.


Thank you for reading,

Aaron

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

