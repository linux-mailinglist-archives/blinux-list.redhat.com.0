Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE196F6453
	for <lists+blinux-list@lfdr.de>; Thu,  4 May 2023 07:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683177681;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0x+AxQ/7IzwUxSGXmhT7cpY3QSijeAk7Fw4y+bcBKOo=;
	b=YeBhaa4TPRGo3ZOUZrgHekCZBzK+sDNyEIAyG8yOkCH+tZlGZ6RyLuRXz24v3m5ft1kDt4
	CQ3D7oQSn1RW2OeHBqKTu7ZTANqrE1PDXEFgFLgS4k4G8CmniGKcjoXPM4ks9C8ydTGIwe
	EJsmjXnk+UX4xb9MmplCuMziTxliSns=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-43-lcWy0JW1MrK-lX2BoARALg-1; Thu, 04 May 2023 01:21:17 -0400
X-MC-Unique: lcWy0JW1MrK-lX2BoARALg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD64A1C04B40;
	Thu,  4 May 2023 05:21:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A6DE4492C18;
	Thu,  4 May 2023 05:21:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CB9B41946A42;
	Thu,  4 May 2023 05:21:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: audio device underrun detected
Date: Thu, 04 May 2023 00:16:25 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.4.5.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ZaHURahYHLc=;n2ZeuC4Z7vHi+haF79CDvr/gD9o
 ePNEYwCNE2cJEuWRS6sdVuajYARHgbFSPi4fTnQ3lv+rcaITtFrb188PDd6fFoxBCiL0nYD/f
 xYTG2meVI+LfYp4unXu9nS9c5IfKm8zQFhOcjXv2LcRb0Vw71zJ92m+COhjj1rnXHHvIL+G41
 CRoWNKOreNiVUdO7FnXIIhF7fKX0Bxfv4RUwh1uO3bWKPO+1Is0yMafeevoiIPnViUMv9nNrF
 ob6xdDvc4zS+ilgIz9hQJMFguW0F2uGkp0z6bLgrQI8CX8SwEgFeSXOuYD+6Lv/PrK+FenquO
 5yDZT7p/gk7Zw524zqoluHr569OaqlBdld0w35pQQg7LuIXxifrVBHpjn0AoPRM3a7eyI+yDc
 mwXvvkQbw/ijuiyFnpWPIxCV9AOqVX5n/5J360onLVl409DgPWuGGpHHs2l1iJ1cIEjT5ELqf
 +zJM5WMy9+1qjBEBhsDZ81B08t/oo3fRjHFhabIWKvju1ZUzdAUJK/vtbPitwLQhw0grbWXdY
 UAeOp/M4VVepNdyAoeytMbtk5ziudYUM70bFzfWkBvCNzBCi3PhRUXtclI+/aRyGxT/mpmpgu
 IYOTjqonC7f9eT4DnArpJk0jzU5z/3SOAnmelZktdjhd52iMU12kZDJLmv/ozeUb7l8oUdOBA
 BkaooXvwkARiL1bjf4sBW6F0iAw9iq8swTxf+fFkk/P0rBWX8giBKnAz9EONecKdbcSRdEP/q
 LD2yKQ/qHcIcAovataPZSrQ4J+tYwJsBb0PuWfyxR5zz0ZME8O0nbj3XKpoIEN5qfUd6wT3nt
 3ZzOjm8vvCgL2AcyVaRSMQs0po5L+Mf6JTv1pLAGK2Qcs5Ao+ZkFsgOLMWhrR5RdNXjHs9tyD
 ruhpbNrwmLf44k4QLdV5sz5kFtbCyC9MemU49RlcCEHX+8kbM1ZB65tTGEYgVM9d1W1zfnsBp
 w+jxRtOPi1zM9fQsQ5mgLJc93dM=
Message-ID: <mailman.1646.1683177670.290943.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm using mpv to play files.
The default audio device looks like this in mpv.conf:

audio-device=pulse/alsa_output.pci-0000_00_1b.0.analog-surround-51

I set default sample rate to 44100 in /etc/pulse/daemonc.conf
But every so often this message pops up

Audio device underrun detected
And the audio stops, and then five seconds or so later, resumes.
What's causing this?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

