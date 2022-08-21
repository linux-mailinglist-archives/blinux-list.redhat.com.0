Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C398459B401
	for <lists+blinux-list@lfdr.de>; Sun, 21 Aug 2022 15:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661089084;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7dRC/xGjAbcJkYGN4agx0RiQ8u6BZ8LAE0RkqI8j0o4=;
	b=M6YZiyeIhHFUAO9l1r2AJkTT9+A3jIKLIv8sZopWng65sSazzYR8aHt4goH9p4onN63M6L
	k+hlIo2HT7uQBcQabJfMDIIviN0QYShPxr4IhKzxquyI+2mjmrgvRd+TE5c9HvH3W/QYrc
	r5OQz0SGVRweraUhlhzQULZC2Wl9B+8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-CuRi87D4O-6t3VYiisBdyg-1; Sun, 21 Aug 2022 09:38:01 -0400
X-MC-Unique: CuRi87D4O-6t3VYiisBdyg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79E981C08963;
	Sun, 21 Aug 2022 13:38:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DB52B14152E1;
	Sun, 21 Aug 2022 13:37:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 549651946A4B;
	Sun, 21 Aug 2022 13:37:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 21 Aug 2022 15:37:47 +0200
MIME-Version: 1.0
Subject: Re: Raspberry pi 3
To: blinux-list@redhat.com
References: <58F588DF-F64C-482C-A02D-E5F1EF0C664C.ref@yahoo.com>
 <mailman.2381.1661038130.10504.blinux-list@redhat.com>
In-Reply-To: <mailman.2381.1661038130.10504.blinux-list@redhat.com>
X-Spam-Flag: NO
Message-ID: <mailman.2643.1661089072.10503.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 8/21/2022 1:28 AM, Linux for blind general discussion wrote:
> Hi guys,

Do not forget the laydies!!! :)

> I am taking a class on IOT and they are saying I need to order a raspberry pi 3 Canakit and a monitor to do the work in the class. Does anyone know if this could be connected into a system running Slint so I > can do my work on it?
 >

You could maybe use the miniUART [1] to connect from the distro of your
choise.


[1]
https://raspberrypi.stackexchange.com/questions/45570/how-do-i-make-serial-work-on-the-raspberry-pi3-pizerow-pi4-or-later-models/45571#45571

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

