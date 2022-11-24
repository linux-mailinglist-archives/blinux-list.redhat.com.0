Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2146373F8
	for <lists+blinux-list@lfdr.de>; Thu, 24 Nov 2022 09:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669278800;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xpCNd/yx7yQKlK3br9zYKkj2T+DdXf9s7MUyJBpDfCs=;
	b=Hhw1/EHHU24zQE7sPA7NSUMzAEKK80uUGR7oPdyYo9IiPL5w6X7kjaOxVP/XQCkoutSMzV
	dtDWI86GoG0Ay0AWQJxzDxM1gRf0q8T6+ERI+6shg3Tbw1p4fRD1wbk4TUZpd0CA+av+BS
	CMeLDEm3c3ffuavm+wAbRYw/A9CFxGw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-85--xYNGdE6Nta2AnJHmjK8rA-1; Thu, 24 Nov 2022 03:33:14 -0500
X-MC-Unique: -xYNGdE6Nta2AnJHmjK8rA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E80487A9E1;
	Thu, 24 Nov 2022 08:33:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D29C81415119;
	Thu, 24 Nov 2022 08:33:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7D36C1946595;
	Thu, 24 Nov 2022 08:33:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: Re: How to hear sounds from line-in jack? (fwd)
In-Reply-To: Your message of Wed, 23 Nov 2022 21:39:45 +0800 (CST)
 <mailman.1365.1669212143.6934.blinux-list@redhat.com>
References: <mailman.1365.1669212143.6934.blinux-list@redhat.com>
Date: Thu, 24 Nov 2022 09:32:58 +0100
Message-ID: <mailman.1556.1669278785.6934.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi list,

I don't know which soundcard you are using, but in mine I have following
parameters:
1. "Line",0 - set it to the full volume and turn it on,
2. "Line Boost",0 - set it to full volume if previous set won't help.
3. "Input Source",0 - it is enum parameter; in my soundcard it has 3 items:
"Front Mic", "Rear Mic" and "Line". If you have similar choice, set to "L
"Front Mic", "Rear Mic" and "Line". If you have similar choice set it to
"Line".

These all parameters should be helpfull. Set them with amixer command:
amixer sset "Line",0 100% on - for example.

If it won't help try to set a "Capture",0 parameter to full volume and 
turn it on if it has such option.

Greetings.
Artur

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

