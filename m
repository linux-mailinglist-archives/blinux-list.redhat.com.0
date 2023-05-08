Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAD06FB6C7
	for <lists+blinux-list@lfdr.de>; Mon,  8 May 2023 21:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683574686;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=be+F4OFYlytX9TaCAykPLw7GExmbKuhfw/k8uBqFgRk=;
	b=QBNZpcbS4oXVKlRRuYioS6KxXx+rIuYWnizghXLcg8vTq3rv1WpdJuWBDjoEDIAhkyLl3P
	13SQcHrklP0IjfqSNvFQzoydBpOcxUWl0jj3PtNKuxoPfR8ACS2riNK7QDiREbdF6pBZue
	f6Yc0C+EmUb/YulfwpSJZbq7N9IfW6w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-516-UzEJhzeCPfm4ksQapbfdEQ-1; Mon, 08 May 2023 15:38:05 -0400
X-MC-Unique: UzEJhzeCPfm4ksQapbfdEQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 09670185A790;
	Mon,  8 May 2023 19:38:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 410C11121315;
	Mon,  8 May 2023 19:37:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D4EB719465B1;
	Mon,  8 May 2023 19:37:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Getting 5.1 sound to work
Date: Mon, 08 May 2023 14:38:03 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.4.5.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:xQa49P/eFlo=;tVMC1pxnUtsidkiOBYyr1bIYLxM
 fXrAdVPXe3DPQVKi9jR+IwTq7a88kc95iBSTPmb85dpyHbQHTRDRujyo9nlBAwwU/49GIiQYL
 UQeZtKCw/2NO2M8h5wmLT/BBH74q+OmOIaSEvHutV7MRUF/jJPPkXJOTQrS9VmhwKqCV+zOur
 I2q9bDFuWYnvnHfCqT5BX0ARBP02iTNNVQQqRJtab4HvXQHjmt1AD+2Hiq97GZjns9wmW3vJA
 9HcK8hFbHBmTqRrVzeJsXCXgxHM4Y4jQ9fI+uiloDsBSv7a57aD6WNnBMp44L1VuRqh4VgLdu
 ASyQu+PrJ5LOBy57PsWoCzIrpRd4OCOR6vJKCNHo4QFDi1rVnRhBgnSCQvJQ70Dh+9X+1KITg
 3EfsY+1gJkka7uJULYn4DAyAeUJIfksq2oXritqaqmCxUAGZcH9SoOGBt626HHR2lpO3E6gid
 RdE7/yPlKzO+Irfmahnm0xsLjBPKU3JgOv6H46VY+UaFU56FPPjjU77cn5Hvb/D89+wV7aemg
 nJbw69h87gwH/9dOafXfTFIh5ufiwG5W4ze5h1mYlfW4F/KB2bHJHJ+ryBF7VuAzXLTxvEUdX
 ec7H6GqxsR07owmqKCMZJDrI82uK0h/x9Ef4qj9avhpDHu8cjK6+ZA26TeacU1aof+kO+nbG5
 z3J0TK1JOa9y1RJWQTyMrGnWcEoF+vxXuKb5x4MwKL8jedGLQMzUv1hdvGEgZKqyvAWBXeiZ2
 ppzAdklNFhXRNw6jWd/bVD01GyUhJjCzRKLzdmztNATCUpF3iTFZRL11hr0tm8UjmB1kx9zjB
 FS5FAVScMGRR+Csb2VSBuF34ZgvNbPE02dBATrAlooWr7XVcwgSKWBdOzcM1e+iT6gy1HL2ja
 +PeJFhmgKaMJlULNXTyiqTCkU9FMrqQkF/MvEllteCyw1Po+8OkAvbP//28rSnTLFfR/oyE4F
 emaQ42ICkdsq7x/q1JBAFhvUFsU=
Message-ID: <mailman.482.1683574671.2822851.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been trying to get 5.1 sound working on my linux system. Arch, if it matters, pulseaudio 16.16, pulseaudio-alsa 1:1.2.7.1-2. If any other package version numbers are needed I'll dig them up. But anyway.

When I play a movie in mpv encoded with 5.1 sound I can't hear dialog, which is on it's own channel I guess. I think all channels are turned up in amixer. And i'm pretty sure all the speakers are plugged in correctly. Sound comes out of all of them with regular 2.1 stereo sound. This is the default audio device in mpv.conf:

audio-device=pulse/alsa\_output.pci-0000\_00\_1b.0.analog-surround-51

Do I  maybe need to do some fiddling around in asound.conf or something to get surround working?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

