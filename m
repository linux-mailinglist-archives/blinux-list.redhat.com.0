Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 30685543FD5
	for <lists+blinux-list@lfdr.de>; Thu,  9 Jun 2022 01:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654730641;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=gD1JUp1RMMxDYid33bFeMOOlcuAwzLDe69ayEC4nXTg=;
	b=Omg1QxZiNpcjSC0/z8lLxMipZNv1zXgJTjTo1z9nGywTlFbprXpSl0loBiRHI49war0d0x
	soliIfj4ZWmStJCzYMbX704b6Crn8bI9GkfmEPXg0esd/dWz3BpPC3poXqDz1vPfZmgP/v
	xA0E5geXJ/H3SegQDRWEAXvKIKHqqKg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-154-rDXywrgXMPGWJg3372rrUQ-1; Wed, 08 Jun 2022 19:23:57 -0400
X-MC-Unique: rDXywrgXMPGWJg3372rrUQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4FA2929DD9A4;
	Wed,  8 Jun 2022 23:23:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2B9C2C33AE6;
	Wed,  8 Jun 2022 23:23:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B14D9194705E;
	Wed,  8 Jun 2022 23:23:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
to: blinux-list@redhat.com
Subject: Re: Buying from System76 or Slimbook?
Date: Thu, 09 Jun 2022 00:23:45 +0100
Message-ID: <mailman.23055.1654730629.111210.blinux-list@redhat.com>
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
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3179543612563053728=="

--===============3179543612563053728==
Content-Type: text/plain; charset="US-ASCII"; x-default=true

apologies if this isnt relevant, but similar idea though different supplier.
got a ryzen 3400g based desktop from ccl over here in the uk.
installed archlinux on it.
as long as its not secure boot, linux distros will nowadays instal on most x86-64 based systems.
only glitch i had was soundcard was card1 since hdmi was card0, was a bit ugg.
had to ssh in and sort it.

get cheap hdmi monitor and then u can ocr it if it hangs and thers no sign of life.
same as  u can ocr a screen capture on a vm.

anybody who sells pc without os should be ok, just if its secure boot it can be difficult/impossible.

ta
neil foster
>
>
>I purchased a computer from System76 and then installed Slint on my own. They were very fast and kept me updated every step of the process.
>
>Ashley Breger
>
>> On May 31, 2022, at 1:05 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> 
>> ﻿Hi all,
>> 
>> For future considderation, which is the better buying experience, System76.com, Slimbook.es, puri.sm, or any other specialist Linux computer building company?
>> 
>> I have never actually purchased a Linux first device, it's always something running Winbloat, unfortunately needed for making my living, but that's what VM's is for.
>> 
>> If anyone has bought a machine from any of the Linux specialist companies, please let us know about your buying experience. I, for one am curious.
>> 
>> -- 
>> Warm regards,
>> 
>> Brandt Steenkamp
>> 
>> Sent using Thunderbird from the Slint laptop
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list


--===============3179543612563053728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============3179543612563053728==--

