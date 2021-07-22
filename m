Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id CD3473D21C3
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 12:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626948576;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cFAx6hywocWJ/q9/HFoLbxJHSP8plfDqrK6JSN5EZ2E=;
	b=NyDHY6mmLpxwgUme9nzo3W/msx94Vu/8Qf8yXpdijEq+F5gDTDaBLl2TIZBHPwegAsJ8Qx
	gxjXrJsTexqmoKgsHb+OEwgRFKo+iDkysGI3cKuOIFdkof1lFJ1jz1e8qn3LcfyTOi9QtI
	n8htoOSQjE7XqCTrKhNg4lD90A+9SKg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-GBXqTm4gMpuv1HvJRn6Odg-1; Thu, 22 Jul 2021 06:09:35 -0400
X-MC-Unique: GBXqTm4gMpuv1HvJRn6Odg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4F2439385;
	Thu, 22 Jul 2021 10:09:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D577266A16;
	Thu, 22 Jul 2021 10:09:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0BE6B180BAB1;
	Thu, 22 Jul 2021 10:09:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MA9PVG022822 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 06:09:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5BA1C207AEB9; Thu, 22 Jul 2021 10:09:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5607D207B165
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:09:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 62EB180B71F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:09:22 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
	[209.85.218.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-527-n5aTw52jNuabeOdkPdKXpQ-1; Thu, 22 Jul 2021 06:09:20 -0400
X-MC-Unique: n5aTw52jNuabeOdkPdKXpQ-1
Received: by mail-ej1-f50.google.com with SMTP id hr1so7610942ejc.1
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 03:09:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=7i9t41wkAFIDU+f/Po1Kps/TjZGl8oS+f9qaOS8MX3Q=;
	b=r4Kq2A3xRxaBvww6K9kL2Uz0UHIuo41wyT4KajFGqCdn48TN4vddMWrLWRr/JqLqrv
	tsqbMzwPDWyfZebG1Hp7F4fr9btJtPgQpW8u8U68eWvSxXRlAsq1sxuelAQsZQuZhleo
	gkj3FfeV+CU7DJiUOgWcw3CR0W9l1EW+g/o4PLmHNOJw8UoIXbw4W7gLhYwGGb6ynvuk
	uSc+6ZQTHw5S17AQcR0cHLsTDBy+VlW9XPiY9+F9YgBX4GeC4PBLpIOMpP50gwciza2R
	6YGVIBtsKeM1Est+hl4bjA6s2MlXPMiU3UvthoHxe4QDmoTQx9oiXij3WqwxS4wSeuRY
	OHzg==
X-Gm-Message-State: AOAM531yFUj8gP57XEsVfY5SPQiJrH1n3BVVCUSXaCCUjp1nLx1AXrFa
	eQiAC3/gJVJ5Z7NcRrC8eeLmt+k9GuXOUQ==
X-Google-Smtp-Source: ABdhPJwr2t7DjMCibl9MPywxi81UHMXWRAbjFGbel7f1qmiPxO9MgK0iUv8OGBZaD2SSJK/uEKuBeQ==
X-Received: by 2002:a17:906:814f:: with SMTP id
	z15mr42974074ejw.178.1626948558570; 
	Thu, 22 Jul 2021 03:09:18 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id
	o26sm12103794edt.18.2021.07.22.03.09.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 03:09:18 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: A question on speakup
Message-ID: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
Date: Thu, 22 Jul 2021 12:09:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I use to know how to store and then restore my speakup settings, 
however, to my utter shame, I forgot how to do this.


I also read somewhere that there is a software Dectalk synthesizer 
available. If anyone knows how to install and configure this to work 
with speakup, it would really be appreciated.

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

