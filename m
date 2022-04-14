Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F97501D53
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 23:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649971209;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g+9rgTsEKiZ2WdPLHKm84QGNfB3YWkLBhiGPgFESGxc=;
	b=Zq6hdd+TNSR31IamPVzFB7nWt8Flvpq2ofm3EoyMMIAmvfH+34Ti1ypO9ZhtUImbYKgHtN
	QW//amXN0UqsMMzid5YHbpKbW5i4YdApMLtN7/Uwm/Glvkt0UXw4v99vPefzgKJoyZuLIi
	zm/YpeNDTUCd/D/zEYC/y4wUPlMcq/g=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-272-u8MRLnaQPDqznhNeHbaS0Q-1; Thu, 14 Apr 2022 17:20:05 -0400
X-MC-Unique: u8MRLnaQPDqznhNeHbaS0Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 04A393C01D83;
	Thu, 14 Apr 2022 21:20:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CD88614583C1;
	Thu, 14 Apr 2022 21:20:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3EEDB194034E;
	Thu, 14 Apr 2022 21:20:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <Blinux-list@redhat.com>
Subject: Installing Mate Desktop on Raspberry Pi Gets Stuck After Reboot
Date: Thu, 14 Apr 2022 14:19:56 -0700
MIME-Version: 1.0
Thread-Index: AdhQRG19OOo4TfyoQQaO1W76yN7mjw==
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.8545.1649971202.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Everyone,

 

I recently found this list, and have enjoyed reading the various topics so
far. I have a Raspberry Pi 4 with 8 GB of RAM, that I would like to get up
and running with Orca and the Mate Desktop. I followed this excellent guide
from:

Getting the orca screen reader working on a raspberry pi 4 with Raspbian
buster and the mate desktop (techesoterica.com)
<https://techesoterica.com/getting-the-orca-screen-reader-working-on-a-raspb
erry-pi-4-with-raspbian-buster-and-the-mate-desktop/> 

Everything seems to go well, until I reboot at the final step. Instead of
receiving the message: "Screen Reader On", I am presented with the message:
"To install the screen reader, press ctrl+alt+space."

I have done this, (both left and right ctrl+alt combinations), but that
doesn't seem to be what the Pi will accept. I am using a standard USB QWERTY
keyboard. I have tried left super+alt+S, and alt+F2, then Orca, to no avail.

I had a previous image of Buster that I did this on, with the same results,
so I ran around raspi-config, thinking I needed to change the locale or
keyboard layout. I got into the weeds there, so re-wrote the image onto the
SD card, and started anew.

Any direction you all can give, would be most appreciated. I am, at this
point, stuck with the message on a 15-second loop, and installation cannot
proceed.

Thanks,

Rachel.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

